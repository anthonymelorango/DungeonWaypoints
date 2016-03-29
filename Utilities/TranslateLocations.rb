# Open the CSV file with location information
csvFile = File.new("Locations.csv", "r")
contentArray = []
# Loop through all the lines in the file
while (line = csvFile.gets)
	# Add each line to an array, skipping the header row
	if (line.include? "Abbreviation")
		next
	end
	contentArray.push line.strip
end
# Close the CSV file
csvFile.close

# TODO: Comments starting here
# Open a LUA file to contain the location array
dungLuaFile = File.new("LocationsDungeons.lua", "w")
raidLuaFile = File.new("LocationsRaids.lua", "w")
engLuaFile = File.new("LocationsEnglishLocale.lua", "w")
locLuaFile = File.new("LocationsForeignLocale.lua", "w")

dungLuaFile.puts "-- Dungeons"
dungLuaFile.puts "[\"dungeons\"] = {"

raidLuaFile.puts "-- Raids"
raidLuaFile.puts "[\"raids\"] = {"

contentArray.each do |line|
	lineArray = line.split(',')
	#puts "#{lineArray}"

	if (lineArray[2].include? "Dungeon")
		if (lineArray[0].include? "Ragefire Chasm")
			dungLuaFile.puts "	-- Classic"
		elsif (lineArray[0].include? "Hellfire Ramparts")
			dungLuaFile.puts "	-- Burning Crusade"
		elsif (lineArray[0].include? "Utgarde Keep")
			dungLuaFile.puts "	-- Wrath of the Lich King"
		elsif (lineArray[0].include? "Blackrock Caverns")
			dungLuaFile.puts "	-- Cataclysm"
		elsif (lineArray[0].include? "Temple of the Jade Serpent")
			dungLuaFile.puts "	-- Mists of Pandaria"
		elsif (lineArray[0].include? "Bloodmaul Slag Mines")
			dungLuaFile.puts "	-- Warlords of Draenor"
		end
		dungLuaFile.puts "	[\"#{lineArray[1]}\"] = {"
		dungLuaFile.puts "		fullName = L[\"#{lineArray[0]}\"],"
		dungLuaFile.puts "		portal = {"
		dungLuaFile.puts "			zone = #{lineArray[3]},"
		dungLuaFile.puts "			x = #{lineArray[4]},"
		dungLuaFile.puts "			y = #{lineArray[5]}"
		dungLuaFile.puts "		},"
		if (not lineArray[0].include? "The Violet Hold")
			dungLuaFile.puts "		meetingStone = {"
			dungLuaFile.puts "			zone = #{lineArray[6]},"
			dungLuaFile.puts "			x = #{lineArray[7]},"
			dungLuaFile.puts "			y = #{lineArray[8]}"
		end
		if ((lineArray.length > 9))
			if (not lineArray[0].include? "The Violet Hold")
				dungLuaFile.puts "		},"
			end
			dungLuaFile.puts "		entrance = {"
			dungLuaFile.puts "			zone = #{lineArray[9]},"
			dungLuaFile.puts "			x = #{lineArray[10]},"
			dungLuaFile.puts "			y = #{lineArray[11]}"
			dungLuaFile.puts "		}"
		else
			dungLuaFile.puts "		}"
		end
		dungLuaFile.puts "	},"
	elsif (lineArray[2].include? "Raid")
		if (lineArray[0].include? "Molten Core")
			raidLuaFile.puts "	-- Classic"
		elsif (lineArray[0].include? "Karazhan")
			raidLuaFile.puts "	-- Burning Crusade"
		elsif (lineArray[0].include? "Vault of Archavon")
			raidLuaFile.puts "	-- Wrath of the Lich King"
		elsif (lineArray[0].include? "Baradin Hold")
			raidLuaFile.puts "	-- Cataclysm"
		elsif (lineArray[0].include? "Mogu'shan Vaults")
			raidLuaFile.puts "	-- Mists of Pandaria"
		elsif (lineArray[0].include? "Highmaul")
			raidLuaFile.puts "	-- Warlords of Draenor"
		end
		raidLuaFile.puts "	[\"#{lineArray[1]}\"] = {"
		raidLuaFile.puts "		fullName = L[\"#{lineArray[0]}\"],"
		raidLuaFile.puts "		portal = {"
		raidLuaFile.puts "			zone = #{lineArray[3]},"
		raidLuaFile.puts "			x = #{lineArray[4]},"
		raidLuaFile.puts "			y = #{lineArray[5]}"
		raidLuaFile.puts "		},"
		raidLuaFile.puts "		meetingStone = {"
		raidLuaFile.puts "			zone = #{lineArray[6]},"
		raidLuaFile.puts "			x = #{lineArray[7]},"
		raidLuaFile.puts "			y = #{lineArray[8]}"
		if ((lineArray.length > 9))
			raidLuaFile.puts "		},"
			raidLuaFile.puts "		entrance = {"
			raidLuaFile.puts "			zone = #{lineArray[9]},"
			raidLuaFile.puts "			x = #{lineArray[10]},"
			raidLuaFile.puts "			y = #{lineArray[11]}"
			raidLuaFile.puts "		}"
		else
			raidLuaFile.puts "		}"
		end
		raidLuaFile.puts "	},"
	else
		puts "Incorrect location type - #{lineArray[2]}: #{lineArray[0]} - #{lineArray[1]}"
	end

	engLuaFile.puts "L[\"#{lineArray[0]}\"] = true"
	locLuaFile.puts "L[\"#{lineArray[0]}\"] = \"#{lineArray[0]}\" -- Requires localization"
end

dungLuaFile.puts "}"
raidLuaFile.puts "}"

dungLuaFile.close
raidLuaFile.close
engLuaFile.close
locLuaFile.close
