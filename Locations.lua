-------------------------------------------------------------------------------
-- DungeonWaypoints by Artoo, US-Lightbringer
-- <Psychosocial>, http://psychosocial-lightbringer.enjin.com
-------------------------------------------------------------------------------
local DungeonWaypoints = LibStub("AceAddon-3.0"):GetAddon("DungeonWaypoints")
local L = LibStub("AceLocale-3.0"):GetLocale("DungeonWaypoints", false)

-- Dungeon Location Waypoints for TomTom
DungeonWaypoints.locations = {
	-- Dungeons
	["dungeons"] = {
		-- Classic
		["rfc"] = {
			fullName = L["Ragefire Chasm"],
			portal = {
				zone = 321,
				x = 52.61,
				y = 57.81
			},
			meetingStone = {
				zone = 321,
				x = 51.41,
				y = 57.96
			},
			entrance = {
				zone = 321,
				x = 84.75,
				y = 32.71
			}
		},
		["vc"] = {
			fullName = L["The Deadmines"],
			portal = {
				zone = 39,
				x = 38.27,
				y = 77.48
			},
			meetingStone = {
				zone = 39,
				x = 41.63,
				y = 72.32
			},
			entrance = {
				zone = 39,
				x = 42.57,
				y = 71.76
			}
		},
		["wc"] = {
			fullName = L["Wailing Caverns"],
			portal = {
				zone = 11,
				x = 42.12,
				y = 66.59
			},
			meetingStone = {
				zone = 11,
				x = 40.67,
				y = 68.06
			},
			entrance = {
				zone = 11,
				x = 38.91,
				y = 69.14
			}
		},
		["sfk"] = {
			fullName = L["Shadowfang Keep"],
			portal = {
				zone = 21,
				x = 44.8,
				y = 67.82
			},
			meetingStone = {
				zone = 21,
				x = 46.17,
				y = 68.19
			}
		},
		["bfd"] = {
			fullName = L["Blackfathom Deeps"],
			portal = {
				zone = 43,
				x = 16.53,
				y = 11.03
			},
			meetingStone = {
				zone = 43,
				x = 15.3,
				y = 15.56
			},
			entrance = {
				zone = 43,
				x = 13.96,
				y = 13.78
			}
		},
		["stocks"] = {
			fullName = L["The Stockade"],
			portal = {
				zone = 301,
				x = 50.52,
				y = 66.5
			},
			meetingStone = {
				zone = 301,
				x = 53.26,
				y = 70.14
			}
		},
		["gnomer"] = {
			fullName = L["Gnomeregan"],
			portal = {
				zone = 27,
				x = 25.3,
				y = 36.9
			},
			meetingStone = {
				zone = 895,
				x = 32.56,
				y = 38.46
			},
			entrance = {
				zone = 27,
				x = 31.19,
				y = 38.02
			}
		},
		["smhalls"] = {
			fullName = L["Scarlet Monastery: Scarlet Halls"],
			portal = {
				zone = 20,
				x = 85.3,
				y = 32.17
			},
			meetingStone = {
				zone = 20,
				x = 82.1,
				y = 39.12
			},
			entrance = {
				zone = 20,
				x = 82.56,
				y = 32.93
			}
		},
		["smcath"] = {
			fullName = L["Scarlet Monastery: Scarlet Cathedral"],
			portal = {
				zone = 20,
				x = 84.86,
				y = 30.59
			},
			meetingStone = {
				zone = 20,
				x = 82.1,
				y = 39.12
			},
			entrance = {
				zone = 20,
				x = 82.56,
				y = 32.93
			}
		},
		["rfk"] = {
			fullName = L["Razorfen Kraul"],
			portal = {
				zone = 607,
				x = 40.73,
				y = 94.42
			},
			meetingStone = {
				zone = 607,
				x = 42.69,
				y = 94.58
			}
		},
		["marao"] = {
			fullName = L["Maraudon Orange"],
			portal = {
				zone = 101,
				x = 35.98,
				y = 64.26
			},
			meetingStone = {
				zone = 101,
				x = 31.51,
				y = 62.24
			},
			entrance = {
				zone = 101,
				x = 29.1,
				y = 62.55
			}
		},
		["marap"] = {
			fullName = L["Maraudon Purple"],
			portal = {
				zone = 101,
				x = 30.25,
				y = 54.57
			},
			meetingStone = {
				zone = 101,
				x = 31.51,
				y = 62.24
			},
			entrance = {
				zone = 101,
				x = 29.16,
				y = 61.36
			}
		},
		["uldaman"] = {
			fullName = L["Uldaman"],
			portal = {
				zone = 17,
				x = 34.3,
				y = 10.35
			},
			meetingStone = {
				zone = 17,
				x = 45.52,
				y = 12.68
			},
			entrance = {
				zone = 17,
				x = 41.65,
				y = 11.62
			}
		},
		["scholo"] = {
			fullName = L["Scholomance"],
			portal = {
				zone = 22,
				x = 69.05,
				y = 72.94
			},
			meetingStone = {
				zone = 22,
				x = 69.59,
				y = 74.47
			},
			entrance = {
				zone = 22,
				x = 69.77,
				y = 73.5
			}
		},
		["rfd"] = {
			fullName = L["Razorfen Downs"],
			portal = {
				zone = 61,
				x = 47.62,
				y = 23.64
			},
			meetingStone = {
				zone = 61,
				x = 42.25,
				y = 26.03
			}
		},
		["dmeast"] = {
			fullName = L["Dire Maul: East"],
			portal = {
				zone = 121,
				x = 64.85,
				y = 30.23
			},
			meetingStone = {
				zone = 121,
				x = 58,
				y = 44.55
			}
		},
		["dmnorth"] = {
			fullName = L["Dire Maul: North"],
			portal = {
				zone = 121,
				x = 62.51,
				y = 24.9
			},
			meetingStone = {
				zone = 121,
				x = 58,
				y = 44.55
			}
		},
		["dmwest"] = {
			fullName = L["Dire Maul: West"],
			portal = {
				zone = 121,
				x = 60.49,
				y = 30.72
			},
			meetingStone = {
				zone = 121,
				x = 58,
				y = 44.55
			}
		},
		["zf"] = {
			fullName = L["Zul'Farrak"],
			portal = {
				zone = 161,
				x = 39.22,
				y = 21.29
			},
			meetingStone = {
				zone = 161,
				x = 39.04,
				y = 21.96
			}
		},
		["stratlive"] = {
			fullName = L["Stratholme: Live Side"],
			portal = {
				zone = 23,
				x = 27.09,
				y = 11.59
			},
			meetingStone = {
				zone = 23,
				x = 27.09,
				y = 12.47
			}
		},
		["stratdead"] = {
			fullName = L["Stratholme: Dead Side"],
			portal = {
				zone = 23,
				x = 43.74,
				y = 17.46
			},
			meetingStone = {
				zone = 23,
				x = 27.09,
				y = 12.47
			},
			entrance = {
				zone = 23,
				x = 43.45,
				y = 19.39
			}
		},
		["st"] = {
			fullName = L["Sunken Temple"],
			portal = {
				zone = 38,
				x = 76.03,
				y = 45.22
			},
			meetingStone = {
				zone = 38,
				x = 68.93,
				y = 55.06
			},
			entrance = {
				zone = 38,
				x = 69.66,
				y = 53.56
			}
		},
		["brd"] = {
			fullName = L["Blackrock Depths"],
			portal = {
				zone = 28,
				x = 26.95,
				y = 72.52
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			},
			entrance = {
				zone = 29,
				x = 18.54,
				y = 25.11
			}
		},
		["lbrs"] = {
			fullName = L["Lower Blackrock Spire"],
			portal = {
				zone = 29,
				x = 27.58,
				y = 25.45
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			},
			entrance = {
				zone = 29,
				x = 23.83,
				y = 26.09
			}
		},
		["ubrs"] = {
			fullName = L["Upper Blackrock Spire"],
			portal = {
				zone = 29,
				x = 27.26,
				y = 23.75
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			},
			entrance = {
				zone = 29,
				x = 23.83,
				y = 26.09
			}
		},
		-- Burning Crusade
		["ramps"] = {
			fullName = L["Hellfire Citadel: Hellfire Ramparts"],
			portal = {
				zone = 465,
				x = 47.64,
				y = 53.56
			},
			meetingStone = {
				zone = 465,
				x = 48.44,
				y = 52.37
			}
		},
		["bf"] = {
			fullName = L["Hellfire Citadel: The Blood Furnace"],
			portal = {
				zone = 465,
				x = 46.01,
				y = 51.85
			},
			meetingStone = {
				zone = 465,
				x = 48.44,
				y = 52.37
			}
		},
		["sp"] = {
			fullName = L["Coilfang Reservoir: The Slave Pens"],
			portal = {
				zone = 467,
				x = 48.94,
				y = 35.8
			},
			meetingStone = {
				zone = 467,
				x = 52.38,
				y = 36.1
			},
			entrance = {
				zone = 467,
				x = 50.37,
				y = 40.87
			}
		},
		["ub"] = {
			fullName = L["Coilfang Reservoir: The Underbog"],
			portal = {
				zone = 467,
				x = 54.23,
				y = 34.43
			},
			meetingStone = {
				zone = 467,
				x = 52.38,
				y = 36.1
			},
			entrance = {
				zone = 467,
				x = 50.37,
				y = 40.87
			}
		},
		["mt"] = {
			fullName = L["Auchindoun: Mana-Tombs"],
			portal = {
				zone = 478,
				x = 39.63,
				y = 57.69
			},
			meetingStone = {
				zone = 478,
				x = 39.79,
				y = 64.8
			},
			entrance = {
				zone = 478,
				x = 39.63,
				y = 60.32
			}
		},
		["ac"] = {
			fullName = L["Auchindoun: Auchenai Crypts"],
			portal = {
				zone = 478,
				x = 34.35,
				y = 65.61
			},
			meetingStone = {
				zone = 478,
				x = 39.79,
				y = 64.8
			},
			entrance = {
				zone = 478,
				x = 36.08,
				y = 65.61
			}
		},
		["sethekk"] = {
			fullName = L["Auchindoun: Sethekk Halls"],
			portal = {
				zone = 478,
				x = 44.93,
				y = 65.61
			},
			meetingStone = {
				zone = 478,
				x = 39.79,
				y = 64.8
			},
			entrance = {
				zone = 478,
				x = 43.19,
				y = 65.61
			}
		},
		["oh"] = {
			fullName = L["Caverns of Time: Old Hillsbrad Foothills"],
			portal = {
				zone = 161,
				x = 55.39,
				y = 53.54
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["slabs"] = {
			fullName = L["Auchindoun: Shadow Labyrinth"],
			portal = {
				zone = 478,
				x = 39.63,
				y = 73.54
			},
			meetingStone = {
				zone = 478,
				x = 39.79,
				y = 64.8
			},
			entrance = {
				zone = 478,
				x = 39.63,
				y = 70.89
			}
		},
		["bm"] = {
			fullName = L["Caverns of Time: The Black Morass"],
			portal = {
				zone = 161,
				x = 57.06,
				y = 62.33
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["sv"] = {
			fullName = L["Coilfang Reservoir: The Steamvault"],
			portal = {
				zone = 467,
				x = 50.33,
				y = 33.32
			},
			meetingStone = {
				zone = 467,
				x = 52.38,
				y = 36.1
			},
			entrance = {
				zone = 467,
				x = 50.37,
				y = 40.87
			}
		},
		["shatthalls"] = {
			fullName = L["Hellfire Citadel: The Shattered Halls"],
			portal = {
				zone = 465,
				x = 47.51,
				y = 52.05
			},
			meetingStone = {
				zone = 465,
				x = 48.44,
				y = 52.37
			}
		},
		["arc"] = {
			fullName = L["Tempest Keep: The Arcatraz"],
			portal = {
				zone = 479,
				x = 74.46,
				y = 57.69
			},
			meetingStone = {
				zone = 479,
				x = 66.16,
				y = 65.23
			}
		},
		["botanica"] = {
			fullName = L["Tempest Keep: The Botanica"],
			portal = {
				zone = 479,
				x = 71.75,
				y = 54.98
			},
			meetingStone = {
				zone = 479,
				x = 66.16,
				y = 65.23
			}
		},
		["mech"] = {
			fullName = L["Tempest Keep: The Mechanar"],
			portal = {
				zone = 479,
				x = 70.6,
				y = 69.74
			},
			meetingStone = {
				zone = 479,
				x = 66.16,
				y = 65.23
			}
		},
		["mgt"] = {
			fullName = L["Magisters' Terrace"],
			portal = {
				zone = 499,
				x = 61.2,
				y = 30.87
			},
			meetingStone = {
				zone = 499,
				x = 60.08,
				y = 30.48
			}
		},
		-- Wrath of the Lich King
		["uk"] = {
			fullName = L["Utgarde Keep"],
			portal = {
				zone = 491,
				x = 57.3,
				y = 46.8
			},
			meetingStone = {
				zone = 491,
				x = 58.67,
				y = 46.73
			},
			entrance = {
				zone = 491,
				x = 57.99,
				y = 50
			}
		},
		["nexus"] = {
			fullName = L["The Nexus"],
			portal = {
				zone = 486,
				x = 27.5,
				y = 26.02
			},
			meetingStone = {
				zone = 486,
				x = 28.31,
				y = 28.96
			}
		},
		["an"] = {
			fullName = L["Azjol-Nerub"],
			portal = {
				zone = 488,
				x = 25.96,
				y = 50.87
			},
			meetingStone = {
				zone = 488,
				x = 26.29,
				y = 50.44
			},
			entrance = {
				zone = 488,
				x = 26.37,
				y = 49.22
			}
		},
		["ok"] = {
			fullName = L["Ahn'kahet: The Old Kingdom"],
			portal = {
				zone = 488,
				x = 28.45,
				y = 51.71
			},
			meetingStone = {
				zone = 488,
				x = 26.29,
				y = 50.44
			},
			entrance = {
				zone = 488,
				x = 26.37,
				y = 49.22
			}
		},
		["dtk"] = {
			fullName = L["Drak'Tharon Keep"],
			portal = {
				zone = 496,
				x = 28.52,
				y = 86.93
			},
			meetingStone = {
				zone = 496,
				x = 28.94,
				y = 86.87
			},
			entrance = {
				zone = 496,
				x = 28.94,
				y = 83.94
			}
		},
		["vh"] = {
			fullName = L["The Violet Hold"],
			portal = {
				zone = 504,
				x = 68.47,
				y = 70.2
			},
			entrance = {
				zone = 504,
				x = 66.62,
				y = 67.99
			}
		},
		["gd"] = {
			fullName = L["Gundrak"],
			portal = {
				zone = 496,
				x = 76.16,
				y = 21.02
			},
			meetingStone = {
				zone = 496,
				x = 77.2,
				y = 21.89
			}
		},
		["hos"] = {
			fullName = L["Halls of Stone"],
			portal = {
				zone = 495,
				x = 39.57,
				y = 26.9
			},
			meetingStone = {
				zone = 495,
				x = 43.71,
				y = 26.22
			}
		},
		["hol"] = {
			fullName = L["Halls of Lightning"],
			portal = {
				zone = 495,
				x = 45.39,
				y = 21.38
			},
			meetingStone = {
				zone = 495,
				x = 43.71,
				y = 26.22
			}
		},
		["up"] = {
			fullName = L["Utgarde Pinnacle"],
			portal = {
				zone = 491,
				x = 57.25,
				y = 46.62
			},
			meetingStone = {
				zone = 491,
				x = 56.99,
				y = 45.8
			}
		},
		["occ"] = {
			fullName = L["The Oculus"],
			portal = {
				zone = 486,
				x = 27.52,
				y = 26.66
			},
			meetingStone = {
				zone = 486,
				x = 28.31,
				y = 28.96
			}
		},
		["cos"] = {
			fullName = L["Caverns of Time: The Culling of Stratholme"],
			portal = {
				zone = 161,
				x = 60.96,
				y = 62.09
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["tochamp"] = {
			fullName = L["Trial of the Champion"],
			portal = {
				zone = 492,
				x = 74.18,
				y = 20.49
			},
			meetingStone = {
				zone = 492,
				x = 76.92,
				y = 21.19
			}
		},
		["fos"] = {
			fullName = L["The Forge of Souls"],
			portal = {
				zone = 492,
				x = 54.9,
				y = 89.79
			},
			meetingStone = {
				zone = 492,
				x = 54.53,
				y = 90.74
			},
			entrance = {
				zone = 492,
				x = 52.62,
				y = 89.34
			}
		},
		["pos"] = {
			fullName = L["Pit of Saron"],
			portal = {
				zone = 492,
				x = 54.79,
				y = 91.79
			},
			meetingStone = {
				zone = 492,
				x = 54.53,
				y = 90.74
			},
			entrance = {
				zone = 492,
				x = 52.62,
				y = 89.34
			}
		},
		["hor"] = {
			fullName = L["Halls of Reflection"],
			portal = {
				zone = 492,
				x = 55.44,
				y = 90.86
			},
			meetingStone = {
				zone = 492,
				x = 54.53,
				y = 90.74
			},
			entrance = {
				zone = 492,
				x = 52.62,
				y = 89.34
			}
		},
		-- Cataclysm
		["brc"] = {
			fullName = L["Blackrock Caverns"],
			portal = {
				zone = 29,
				x = 27.38,
				y = 27.86
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			},
			entrance = {
				zone = 29,
				x = 24.53,
				y = 29.96
			}
		},
		["tott"] = {
			fullName = L["Throne of the Tides"],
			portal = {
				zone = 614,
				x = 69.43,
				y = 25.09
			},
			meetingStone = {
				zone = 614,
				x = 67.93,
				y = 24.54
			},
			entrance = {
				zone = 614,
				x = 70.54,
				y = 29.69
			}
		},
		["sc"] = {
			fullName = L["The Stonecore"],
			portal = {
				zone = 640,
				x = 47.58,
				y = 52.01
			},
			meetingStone = {
				zone = 640,
				x = 46.83,
				y = 52.22
			}
		},
		["vp"] = {
			fullName = L["The Vortex Pinnacle"],
			portal = {
				zone = 720,
				x = 76.79,
				y = 84.52
			},
			meetingStone = {
				zone = 720,
				x = 77.22,
				y = 85.28
			}
		},
		["gb"] = {
			fullName = L["Grim Batol"],
			portal = {
				zone = 700,
				x = 19.17,
				y = 53.96
			},
			meetingStone = {
				zone = 700,
				x = 22.97,
				y = 55.45
			}
		},
		["hoo"] = {
			fullName = L["Halls of Origination"],
			portal = {
				zone = 720,
				x = 69.09,
				y = 52.95
			},
			meetingStone = {
				zone = 720,
				x = 72.33,
				y = 52.44
			},
			entrance = {
				zone = 720,
				x = 71.64,
				y = 52.18
			}
		},
		["lct"] = {
			fullName = L["Lost City of the Tol'vir"],
			portal = {
				zone = 720,
				x = 60.54,
				y = 64.3
			},
			meetingStone = {
				zone = 720,
				x = 60.76,
				y = 64.01
			}
		},
		["za"] = {
			fullName = L["Zul'Aman"],
			portal = {
				zone = 463,
				x = 82.13,
				y = 64.33
			},
			meetingStone = {
				zone = 463,
				x = 75.65,
				y = 65.66
			}
		},
		["zg"] = {
			fullName = L["Zul'Gurub"],
			portal = {
				zone = 37,
				x = 72.13,
				y = 32.91
			},
			meetingStone = {
				zone = 37,
				x = 71.75,
				y = 33.82
			}
		},
		["et"] = {
			fullName = L["End Time"],
			portal = {
				zone = 161,
				x = 60.93,
				y = 52.41
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["woe"] = {
			fullName = L["Well of Eternity"],
			portal = {
				zone = 161,
				x = 54.57,
				y = 58.75
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["hot"] = {
			fullName = L["Hour of Twilight"],
			portal = {
				zone = 161,
				x = 62.67,
				y = 52.4
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		-- Mists of Pandaria
		["tojs"] = {
			fullName = L["Temple of the Jade Serpent"],
			portal = {
				zone = 806,
				x = 56.2,
				y = 57.88
			},
			meetingStone = {
				zone = 806,
				x = 55.63,
				y = 58.19
			}
		},
		["sb"] = {
			fullName = L["Stormstout Brewery"],
			portal = {
				zone = 807,
				x = 36.09,
				y = 69.24
			},
			meetingStone = {
				zone = 807,
				x = 35.69,
				y = 65.74
			}
		},
		["spm"] = {
			fullName = L["Shado-Pan Monastery"],
			portal = {
				zone = 809,
				x = 36.7,
				y = 47.44
			},
			meetingStone = {
				zone = 809,
				x = 35.84,
				y = 48.66
			}
		},
		["msp"] = {
			fullName = L["Mogu'shan Palace"],
			portal = {
				zone = 811,
				x = 80.86,
				y = 32.71
			},
			meetingStone = {
				zone = 811,
				x = 82.95,
				y = 41
			}
		},
		["gss"] = {
			fullName = L["Gate of the Setting Sun"],
			portal = {
				zone = 811,
				x = 15.85,
				y = 74.15
			},
			meetingStone = {
				zone = 811,
				x = 15.63,
				y = 76.67
			}
		},
		["snt"] = {
			fullName = L["Siege of Niuzao Temple"],
			portal = {
				zone = 810,
				x = 34.67,
				y = 81.46
			},
			meetingStone = {
				zone = 810,
				x = 36.63,
				y = 83.82
			}
		},
		-- Warlords of Draenor
		["bsm"] = {
			fullName = L["Bloodmaul Slag Mines"],
			portal = {
				zone = 941,
				x = 49.83,
				y = 24.72
			},
			meetingStone = {
				zone = 941,
				x = 50.54,
				y = 25.56
			},
			entrance = {
				zone = 941,
				x = 50.17,
				y = 24.94
			}
		},
		["id"] = {
			fullName = L["Iron Docks"],
			portal = {
				zone = 949,
				x = 45.42,
				y = 13.53
			},
			meetingStone = {
				zone = 949,
				x = 45.12,
				y = 12.99
			}
		},
		["auch"] = {
			fullName = L["Auchindoun"],
			portal = {
				zone = 946,
				x = 46.28,
				y = 73.94
			},
			meetingStone = {
				zone = 946,
				x = 46.18,
				y = 75.11
			}
		},
		["sr"] = {
			fullName = L["Skyreach"],
			portal = {
				zone = 948,
				x = 35.58,
				y = 33.61
			},
			meetingStone = {
				zone = 948,
				x = 35.63,
				y = 33.09
			}
		},
		["eb"] = {
			fullName = L["The Everbloom"],
			portal = {
				zone = 949,
				x = 59.59,
				y = 45.55
			},
			meetingStone = {
				zone = 949,
				x = 59.11,
				y = 44.91
			}
		},
		["grimrail"] = {
			fullName = L["Grimrail Depot"],
			portal = {
				zone = 949,
				x = 55.05,
				y = 31.33
			},
			meetingStone = {
				zone = 949,
				x = 55.71,
				y = 33.34
			},
			entrance = {
				zone = 949,
				x = 55.25,
				y = 32.16
			}
		},
		["smbg"] = {
			fullName = L["Shadowmoon Burial Grounds"],
			portal = {
				zone = 947,
				x = 31.86,
				y = 42.56
			},
			meetingStone = {
				zone = 947,
				x = 32.43,
				y = 42.15
			}
		}
	},

	-- Raids
	["raids"] = {
		-- Classic
		["mc"] = {
			fullName = L["Molten Core"],
			portal = {
				zone = 29,
				x = 18.27,
				y = 24.97
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			}
		},
		["bwl"] = {
			fullName = L["Blackwing Lair"],
			portal = {
				zone = 29,
				x = 23.94,
				y = 32.21
			},
			meetingStone = {
				zone = 29,
				x = 21.38,
				y = 28.71
			},
			entrance = {
				zone = 29,
				x = 23.83,
				y = 26.09
			}
		},
		["aq20"] = {
			fullName = L["Ruins of Ahn'Qiraj (AQ 20)"],
			portal = {
				zone = 261,
				x = 36.43,
				y = 94.1
			},
			meetingStone = {
				zone = 261,
				x = 35.6,
				y = 88.36
			}
		},
		["aq40"] = {
			fullName = L["Temple of Ahn'Qiraj (AQ 40)"],
			portal = {
				zone = 261,
				x = 24.29,
				y = 87.31
			},
			meetingStone = {
				zone = 261,
				x = 35.6,
				y = 88.36
			}
		},
		-- Burning Crusade
		["kara"] = {
			fullName = L["Karazhan"],
			portal = {
				zone = 32,
				x = 46.87,
				y = 74.7
			},
			meetingStone = {
				zone = 32,
				x = 46.55,
				y = 75.8
			}
		},
		["gruul"] = {
			fullName = L["Gruul's Lair"],
			portal = {
				zone = 475,
				x = 69.32,
				y = 23.73
			},
			meetingStone = {
				zone = 475,
				x = 67.62,
				y = 23.6
			}
		},
		["mags"] = {
			fullName = L["Hellfire Citadel: Magtheridon's Lair"],
			portal = {
				zone = 465,
				x = 47.51,
				y = 52.08
			},
			meetingStone = {
				zone = 465,
				x = 45.98,
				y = 54.55
			},
			entrance = {
				zone = 465,
				x = 46.6,
				y = 52.8
			}
		},
		["ssc"] = {
			fullName = L["Coilfang Reservoir: Serpentshrine Cavern"],
			portal = {
				zone = 467,
				x = 51.91,
				y = 32.97
			},
			meetingStone = {
				zone = 467,
				x = 52.38,
				y = 36.1
			},
			entrance = {
				zone = 467,
				x = 50.37,
				y = 40.87
			}
		},
		["tk"] = {
			fullName = L["Tempest Keep: The Eye"],
			portal = {
				zone = 479,
				x = 73.74,
				y = 63.74
			},
			meetingStone = {
				zone = 479,
				x = 66.16,
				y = 65.23
			}
		},
		["bt"] = {
			fullName = L["Black Temple"],
			portal = {
				zone = 473,
				x = 71.02,
				y = 46.47
			},
			meetingStone = {
				zone = 473,
				x = 64.48,
				y = 46.67
			}
		},
		["hyjal"] = {
			fullName = L["Caverns of Time: Hyjal Summit"],
			portal = {
				zone = 161,
				x = 56.96,
				y = 49.95
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		["sunwell"] = {
			fullName = L["Sunwell Plateau"],
			portal = {
				zone = 499,
				x = 44.26,
				y = 45.62
			},
			meetingStone = {
				zone = 499,
				x = 45.23,
				y = 43.8
			}
		},
		-- Wrath of the Lich King
		["voa"] = {
			fullName = L["Vault of Archavon"],
			portal = {
				zone = 501,
				x = 50.05,
				y = 11.67
			},
			meetingStone = {
				zone = 501,
				x = 49.34,
				y = 12.27
			},
			entrance = {
				zone = 501,
				x = 50.05,
				y = 15.98
			}
		},
		["eoe"] = {
			fullName = L["Eye of Eternity"],
			portal = {
				zone = 486,
				x = 27.49,
				y = 26.81
			},
			meetingStone = {
				zone = 486,
				x = 28.31,
				y = 28.96
			}
		},
		["naxx"] = {
			fullName = L["Naxxramas"],
			portal = {
				zone = 488,
				x = 87.28,
				y = 51.02
			},
			meetingStone = {
				zone = 488,
				x = 87.28,
				y = 51.02
			}
		},
		["os"] = {
			fullName = L["The Obsidian Sanctum"],
			portal = {
				zone = 488,
				x = 60.01,
				y = 56.94
			},
			meetingStone = {
				zone = 488,
				x = 59.79,
				y = 54.14
			},
			entrance = {
				zone = 488,
				x = 59.62,
				y = 51.38
			}
		},
		["ulduar"] = {
			fullName = L["Ulduar"],
			portal = {
				zone = 495,
				x = 41.57,
				y = 17.87
			},
			meetingStone = {
				zone = 495,
				x = 43.71,
				y = 26.22
			}
		},
		["ony"] = {
			fullName = L["Onyxia's Lair"],
			portal = {
				zone = 141,
				x = 52.97,
				y = 77.69
			},
			meetingStone = {
				zone = 141,
				x = 50.96,
				y = 77.65
			},
			entrance = {
				zone = 141,
				x = 52.67,
				y = 76.93
			}
		},
		["toc"] = {
			fullName = L["Trial of the Crusader"],
			portal = {
				zone = 492,
				x = 75.07,
				y = 21.8
			},
			meetingStone = {
				zone = 492,
				x = 76.92,
				y = 21.19
			}
		},
		["icc"] = {
			fullName = L["Icecrown Citadel"],
			portal = {
				zone = 492,
				x = 53.83,
				y = 87.15
			},
			meetingStone = {
				zone = 492,
				x = 51.49,
				y = 85.65
			},
			entrance = {
				zone = 492,
				x = 53.3,
				y = 85.45
			}
		},
		["rs"] = {
			fullName = L["The Ruby Sanctum"],
			portal = {
				zone = 488,
				x = 61.28,
				y = 52.67
			},
			meetingStone = {
				zone = 488,
				x = 59.79,
				y = 54.14
			},
			entrance = {
				zone = 488,
				x = 59.62,
				y = 51.38
			}
		},
		-- Cataclysm
		["bh"] = {
			fullName = L["Baradin Hold"],
			portal = {
				zone = 708,
				x = 47.67,
				y = 52.79
			},
			meetingStone = {
				zone = 708,
				x = 45.48,
				y = 46.33
			}
		},
		["bot"] = {
			fullName = L["The Bastion of Twilight"],
			portal = {
				zone = 700,
				x = 33.94,
				y = 78.02
			},
			meetingStone = {
				zone = 700,
				x = 34.5,
				y = 77.49
			}
		},
		["bwd"] = {
			fullName = L["Blackwing Descent"],
			portal = {
				zone = 29,
				x = 23.12,
				y = 26.41
			},
			meetingStone = {
				zone = 29,
				x = 26.02,
				y = 25.32
			},
			entrance = {
				zone = 29,
				x = 25.31,
				y = 25.16
			}
		},
		["tfw"] = {
			fullName = L["Throne of the Four Winds"],
			portal = {
				zone = 720,
				x = 38.3,
				y = 80.66
			},
			meetingStone = {
				zone = 720,
				x = 36.79,
				y = 81.55
			}
		},
		["fl"] = {
			fullName = L["Firelands"],
			portal = {
				zone = 606,
				x = 47.34,
				y = 78.06
			},
			meetingStone = {
				zone = 606,
				x = 48.01,
				y = 77.66
			}
		},
		["ds"] = {
			fullName = L["Dragon Soul"],
			portal = {
				zone = 161,
				x = 61.71,
				y = 51.91
			},
			meetingStone = {
				zone = 161,
				x = 64.36,
				y = 50.33
			},
			entrance = {
				zone = 161,
				x = 64.97,
				y = 49.95
			}
		},
		-- Mists of Pandaria
		["msv"] = {
			fullName = L["Mogu'shan Vaults"],
			portal = {
				zone = 809,
				x = 59.56,
				y = 39.24
			},
			meetingStone = {
				zone = 809,
				x = 60.31,
				y = 38.36
			}
		},
		["hof"] = {
			fullName = L["Heart of Fear"],
			portal = {
				zone = 858,
				x = 38.87,
				y = 35.03
			},
			meetingStone = {
				zone = 858,
				x = 40.63,
				y = 33.64
			}
		},
		["toes"] = {
			fullName = L["Terrace of Endless Spring"],
			portal = {
				zone = 873,
				x = 48.63,
				y = 61.62
			},
			meetingStone = {
				zone = 873,
				x = 51.54,
				y = 69.09
			}
		},
		["tot"] = {
			fullName = L["Throne of Thunder"],
			portal = {
				zone = 928,
				x = 63.7,
				y = 32.25
			},
			meetingStone = {
				zone = 928,
				x = 63.19,
				y = 33.68
			},
			entrance = {
				zone = 928,
				x = 52.04,
				y = 45.05
			}
		},
		["soo"] = {
			fullName = L["Siege of Orgrimmar"],
			portal = {
				zone = 811,
				x = 74.07,
				y = 41.99
			},
			meetingStone = {
				zone = 811,
				x = 72.39,
				y = 44.8
			},
			entrance = {
				zone = 811,
				x = 72.39,
				y = 44.32
			}
		},
		-- Warlords of Draenor
		["hm"] = {
			fullName = L["Highmaul"],
			portal = {
				zone = 950,
				x = 32.92,
				y = 38.37
			},
			meetingStone = {
				zone = 950,
				x = 34.69,
				y = 38.46
			}
		},
		["brf"] = {
			fullName = L["Blackrock Foundry"],
			portal = {
				zone = 949,
				x = 51.57,
				y = 27.19
			},
			meetingStone = {
				zone = 949,
				x = 51.69,
				y = 29.06
			},
			entrance = {
				zone = 949,
				x = 51.35,
				y = 28.5
			}
		},
		["hfc"] = {
			fullName = L["Hellfire Citadel"],
			portal = {
				zone = 945,
				x = 45.54,
				y = 53.62
			},
			meetingStone = {
				zone = 945,
				x = 46.62,
				y = 51.92
			}
		}
	}
}