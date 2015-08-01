--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2015 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
if (LoadedGame == false) then
	SetPlayerData(0, "Faction", "Modsogning Clan")
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 1500)
	SetPlayerData(0, "Resources", "stone", 1000)
	SetPlayerData(1, "Name", "Grafvitnir")
	SetPlayerData(1, "Resources", "gold", 5000)
	SetPlayerData(1, "Resources", "lumber", 1500)
	SetPlayerData(1, "Resources", "stone", 1000)
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-scout", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-scout", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0)

		for i, unitName in ipairs(Units) do
			if (IsHero(unitName) and WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] == 2) then
				unit = OldCreateUnit(unitName, 0, {Players[0].StartPos.x, Players[0].StartPos.y})
				WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 0
			end
		end
		
		if (FactionHasHero(GetFactionFromName("Modsogning Clan"), "unit-hero-modsognir")) then
			RemoveHeroFromFaction("unit-hero-modsognir", GetFactionFromName("Modsogning Clan"))
			unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
		if (FactionHasHero(GetFactionFromName("Modsogning Clan"), "unit-hero-durin")) then
			RemoveHeroFromFaction("unit-hero-durin", GetFactionFromName("Modsogning Clan"))
			unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
	end
	
	-- Grafvitnir and his kobold defenders
	CreateCreeps(1, "unit-kobold-footpad", 36, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
	unit = CreateUnit("unit-wyrm", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	SetUnitName(unit, "Grafvitnir")
	SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max") * 10, "Max") -- Grafvitnir should be virtually indestructible
	SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max")) -- Grafvitnir should be virtually indestructible
	SetUnitVariable(unit, "Armor", 20, "Max")
	SetUnitVariable(unit, "Armor", 20)
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-kobold-footpad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
end

RemovePlayerObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Modsogning Clan") and not PlayerHasObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat the bandits")) then
			player = GetFactionPlayer("Modsogning Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The colossal wyrm Grafvitnir threatens the survival of the fledgling dwarves, who have little chance of slaying the monstrous creature. The only hope rests in getting close enough to bind Grafvitnir with a powerful fetter crafted by the clan's talented smiths.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Durin"),
				"Each time the Gleamer appears on the sky fewer of our clansmen are about. Grafvitnir sleekly preys on us.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("Modsognir"),
					"That traitorous monster! Two parties have we sent to slay it, with little use. The beast seems indestructible. Chaining it will have to do.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("Durin"),
						"Do ye have the fetter?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("Modsognir"),
							"Aye. And soon I'll be shackling that scaly giant.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("Durin"),
								"That is too dangerous. Should we fail, the clan will direly need its chieftain. Let me handle the fetter.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									FindHero("Modsognir"),
									"No, as chieftain I must do what I must. If we fail, the clan's doom will be imminent. Either our clan is saved, or my line dies here.",
									player,
									{"~!Continue"},
									{function(s)
										AddPlayerObjective(player, "- Get Modsognir close to Grafvitnir")
										AddPlayerObjective(player, "- Modsognir must survive")
										AddPlayerObjective(player, "- Durin must survive")
									end}
								)
								end}
							)
							end}
						)
						end}
					)
					end}
				)
				end}
			)
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Get Modsognir close to Grafvitnir") and (IfNearUnit(GetThisPlayer(), ">=", 1, "unit-hero-modsognir", "unit-wyrm") or IfNearUnit(GetThisPlayer(), ">=", 1, "unit-hero-modsognir-thane", "unit-wyrm"))) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Modsognir"),
			"The monster is chained, let us take it to Svarinshaug!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"With much effort, the enormous Grafvitnir was brought to Svarinshaug by Modsognir's party. The monster's fetters were bound to the walls of a nearby cave, and the entrance destroyed. Little is known of what became of the wyrm. Some dwarven scholars say it died of hunger, while others speculate that it eventually managed to free itself and find its way deep underground.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"What is certain is that the creature never bothered Modsognir's clan again. The settlement in Svarinshaug prospered, and the dwarves grew in number. Eventually, new groups would split off the original clan - some moving through Aurvang in the southeast, and others settling in the west.",
					player,
					{"~!Continue"},
					{function(s)
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Binding of Grafvitnir") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "The Binding of Grafvitnir")
							end
							SavePreferences()
						end
						ActionVictory()
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Modsognir must survive")
		ActionDefeat()
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Durin must survive")
		ActionDefeat()
		return false
	end
)
