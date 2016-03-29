-------------------------------------------------------------------------------
-- DungeonWaypoints by Artoo, US-Lightbringer
-- <Psychosocial>, http://psychosocial-lightbringer.enjin.com
-------------------------------------------------------------------------------
-- TODO: Notes
--  Options menu for selecting which dungeons you want to track
--  Get coordinates of where portals drop you - calculate shortest distance
--  Broker with menu that clicking gives you waypoint
--  Left click - all points from list configured
--  Right click - clear all our points

-- TODO: See what can be removed here and remove libraries from directory
local DungeonWaypoints = LibStub("AceAddon-3.0"):NewAddon("DungeonWaypoints", "AceConsole-3.0", "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0")
if not TomTom then return end

-- Libaries
local Locale = LibStub("AceLocale-3.0"):GetLocale("DungeonWaypoints", false)
local Astrolabe = DongleStub("Astrolabe-1.0")

-- Global variables
DungeonWaypoints.name = GetAddOnMetadata("DungeonWaypoints", "Title")
DungeonWaypoints.version = GetAddOnMetadata("DungeonWaypoints", "Version")

local waypoint
local db = {}

-- Default settings
local defaults = {
	char = {
		notices = true, -- Flag for debug notices, TODO: Flip to false for release
		addPortal = true, -- Flag to add portal waypoint
		addMeetingStone = false, -- Flag to add meeting stone waypoint, TODO: Flip to false for release
		addEntrance = true, -- Flag to add entrance waypoint, TODO: Flip to false for release
		waypoints = {"bwl", "kara", "ssc", "tk", "voa", "eoe", "ony"}, -- Array of abbreviations to add when no argument, TODO: Switch to {} for release
		-- TODO: Update these with real options in the future
		-- Not used in config frame
		firstLoad = false -- Flag to see if this is the first load
	}
}

function DungeonWaypoints:OnInitialize()
	-- Load the config
	self.db = LibStub("AceDB-3.0"):New("DungeonWaypoints", defaults)
	db = self.db.char

	-- Setup TomTom
	TomTom.profile.arrow.enable = true
	TomTom.profile.arrow.arrival = 15
	TomTom.profile.arrow.setclosest = true

	-- If this is the first time loaded, save this in case we need other initialization
	if not db.firstLoad then
		db.firstLoad = true
	end

	-- TODO: Set up config window
end

function DungeonWaypoints:OnEnable()
	-- Register chat command /dwp
	self:RegisterChatCommand("dwp", "HandleChatCommand")
end

function DungeonWaypoints:HandleChatCommand(args)
	-- TODO: Currently this will only pull one argument from the prompt, extend to accept more
	local command = self:GetArgs(args, 1)
	-- Pull the dungeon and raid locations from Locations.lua
	local dungLocs = self.locations["dungeons"]
	local raidLocs = self.locations["raids"]
	local unsupportedString = Locale["Unsupported command: %s"]
	local currentLocString = "Current Zone: %s, Current X: %s, Current Y: %s"

	if not command or command == "" or command == "all" then
		-- self:Print(Locale["Hello World!"])
		self:PrintLocations()
		-- TODO: Switch this to set all locations
		-- self:SetLocationWaypoints()
	elseif self:InTable(command, dungLocs) then
		local locInfo = dungLocs[command]
		--self:PrintLocation("dungeons", command, locInfo)
		self:SetWaypoint(locInfo)
	elseif self:InTable(command, raidLocs) then
		local locInfo = raidLocs[command]
		--self:PrintLocation("raids", command, locInfo)
		self:SetWaypoint(locInfo)
	-- TODO: Probably remove this, used to get print current position
	elseif command == "printLoc" then
		local m, f, x, y = TomTom:GetCurrentPlayerPosition()
		self:Print(currentLocString:format(m, x, y))
		--self:Print(TomTom:GetCurrentPlayerPosition())
	else
		self:Print(unsupportedString:format(command))
	end
end

function DungeonWaypoints:InTable(needle, haystack)
	for abbreviation, locInfo in pairs(haystack) do
		if abbreviation == needle then
			return true
		end
	end
	return false
end

function DungeonWaypoints:PrintLocations()
	local continueAdding = true
	-- Loop through the dungeon types available in waypoints array
	for abbreviation in self.waypoints do
		-- Print the waypoint with location information
		DungeonWaypoints:PrintWaypointByAbbrev(abbreviation)
		continueAdding = false
	end
	-- Check to see if we added a waypoint from the array
	if continueAdding then
		-- Loop through the dungeon types available in Locations.lua
		for dungType, dungLocations in pairs(self.locations) do
			-- Loop through the dungeons in each type
			for abbreviation, locInfo in pairs(dungLocations) do
				-- Send the location information to be printed
				self:PrintLocation(dungType, abbreviation, locInfo)
			end
		end
	end
end

function DungeonWaypoints:PrintWaypointByAbbrev(abbreviation)
	local unsupportedString = Locale["Unsupported command: %s"]
	-- Pull the dungeon and raid locations from Locations.lua
	local dungLocs = self.locations["dungeons"]
	local raidLocs = self.locations["raids"]

	-- Find which type the abbreviation is in and print the corresponding waypoint
	if self:InTable(abbreviation, dungLocs) then
		local locInfo = dungLocs[command]
		self:PrintLocation("dungeons", command, locInfo)
	elseif self:InTable(command, raidLocs) then
		local locInfo = raidLocs[command]
		self:PrintLocation("raids", command, locInfo)
	elseif db.notices then
		-- Otherwise, if debugging, print the abbreviation wasn't found
		self:Print(unsupportedString:format(abbreviation))
	end
end

function DungeonWaypoints:PrintLocation(dungType, abbreviation, locInfo)
	local labelString = "%s - %s"
	local dungString = "Dungeon Info: type - %s, abbrev - %s, label - %s, x - %s, y - %s, zone - %s"

	-- Get the current dungeon information
	local labelPrefix = locInfo.fullName
	local curPortal = locInfo.portal
	local curMeetStone = locInfo.meetingStone
	local curEntrance = locInfo.entrance

	-- Print the location information (if it's present)
	local label = labelString:format(labelPrefix, Locale["Portal"])
	self:Print(dungString:format(dungType, abbreviation, label, curPortal.x, curPortal.y, curPortal.zone))
	if curMeetStone then
		label = labelString:format(labelPrefix, Locale["Meeting Stone"])
		self:Print(dungString:format(dungType, abbreviation, label, curMeetStone.x, curMeetStone.y, curMeetStone.zone))
	end
	if curEntrance then
		label = labelString:format(labelPrefix, Locale["Entrance"])
		self:Print(dungString:format(dungType, abbreviation, label, curEntrance.x, curEntrance.y, curEntrance.zone))
	end
end

function DungeonWaypoints:SetLocationWaypoints()
	local continueAdding = true
	-- Loop through the dungeon types available in waypoints array
	for abbreviation in self.waypoints do
		-- Create the waypoint with location information
		DungeonWaypoints:SetWaypointByAbbrev(abbreviation)
		continueAdding = false
	end
	-- Check to see if we added a waypoint from the array
	if continueAdding then
		-- If not, loop through the dungeon types available in Locations.lua
		for dungType, dungLocations in pairs(self.locations) do
			-- Loop through the dungeons in each type
			for abbreviation, locInfo in pairs(dungLocations) do
				-- Create the waypoint with location information
				DungeonWaypoints:SetWaypoint(locInfo)
			end
		end
	end
end

function DungeonWaypoints:SetWaypointByAbbrev(abbreviation)
	local unsupportedString = Locale["Unsupported command: %s"]
	-- Pull the dungeon and raid locations from Locations.lua
	local dungLocs = self.locations["dungeons"]
	local raidLocs = self.locations["raids"]

	-- Find which type the abbreviation is in and add the corresponding waypoint
	if self:InTable(abbreviation, dungLocs) then
		local locInfo = dungLocs[command]
		self:SetWaypoint(locInfo)
	elseif self:InTable(command, raidLocs) then
		local locInfo = raidLocs[command]
		self:SetWaypoint(locInfo)
	elseif db.notices then
		-- Otherwise, if debugging, print the abbreviation wasn't found
		self:Print(unsupportedString:format(abbreviation))
	end
end

function DungeonWaypoints:SetWaypoint(locInfo)
	local labelString = "%s - %s"
	local notAddedString = Locale["Waypoint not added: %s"]
	-- Get the current dungeon information
	local labelPrefix = locInfo.fullName
	local curPortal = locInfo.portal
	local curMeetStone = locInfo.meetingStone
	local curEntrance = locInfo.entrance

	-- Set up the waypoint for the dungeon portal
	local label = labelString:format(labelPrefix, Locale["Portal"])
	local opts = {
		title = label,
		persistent = false,
		minimap = db.minimap,
		world = db.worldmap,
		crazy = db.arrow,
		callbacks = {},
		silent = not db.notices
	}
	opts.callbacks = TomTom:DefaultCallbacks(opts)

	-- If the option is selected, add the portal waypoint
	if db.addPortal then
		waypoint = TomTom:AddMFWaypoint(curPortal.zone, 0, curPortal.x/100, curPortal.y/100, opts)
	elseif db.notices then
		-- Otherwise, if debugging, print the waypoint wasn't added
		self:Print(notAddedString:format(label))
	end

	-- Make sure there's a meeting stone
	if curMeetStone then
		-- Set up the waypoint for the dungeon meeting stone
		local label = labelString:format(labelPrefix, Locale["Meeting Stone"])
		local opts = {
			title = label,
			persistent = false,
			minimap = db.minimap,
			world = db.worldmap,
			crazy = db.arrow,
			callbacks = {},
			silent = not db.notices
		}
		opts.callbacks = TomTom:DefaultCallbacks(opts)

		-- If the option is selected, add the meeting stone waypoint
		if db.addMeetingStone then
			waypoint = TomTom:AddMFWaypoint(curMeetStone.zone, 0, curMeetStone.x/100, curMeetStone.y/100, opts)
		elseif db.notices then
			-- Otherwise, if debugging, print the waypoint wasn't added
			self:Print(notAddedString:format(label))
		end
	end

	-- Make sure there's a entrance
	if curEntrance then
		-- Set up the waypoint for the dungeon entrance
		local label = labelString:format(labelPrefix, Locale["Entrance"])
		local opts = {
			title = label,
			persistent = false,
			minimap = db.minimap,
			world = db.worldmap,
			crazy = db.arrow,
			callbacks = {},
			silent = not db.notices
		}
		opts.callbacks = TomTom:DefaultCallbacks(opts)

		-- If the option is selected, add the portal entrance
		if db.addPortal then
			waypoint = TomTom:AddMFWaypoint(curEntrance.zone, 0, curEntrance.x/100, curEntrance.y/100, opts)
		elseif db.notices then
			-- Otherwise, if debugging, print the waypoint wasn't added
			self:Print(notAddedString:format(label))
		end
	end
end
