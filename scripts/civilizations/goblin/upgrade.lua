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
--      upgrade.ccl - Define the goblin dependencies and upgrades.
--
--      (c) Copyright 2014-2016 by Andrettin
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

local upgrades = {
	{"upgrade-goblin-catapult-projectile-1", _("Catapult Granite Projectile"), "icon-catapult-projectile-2", "siege-projectile-1",
		_("As siegecrafting techniques develop, catapult rocks made out of sandstone are replaced by ones made of granite, increasing the damage war machines can cause.\n\nEffect: +15 Damage for War Machines."),
		"",
		"",
		{   250,   1000,     0,     0,     0,   500,     0,     0},
		{   250,   1000,     0,     0,     0,   500,     0,  1500},
		1},
	{"upgrade-goblin-catapult-projectile-2", _("Catapult Metal Projectile"), "icon-catapult-projectile-3", "siege-projectile-2",
		_("Advances in metalworking make it possible to use metal balls as catapult projectiles, greatly magnifying the destructive power of war machines.\n\nEffect: +15 Damage for War Machines."),
		"",
		"",
		{   250,  4000,     0,     0,     0,     0,     0,     0},
		{   250,  4000,     0,     0,     0,     0,     0,  4000},
		1},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "goblin"
	u.Description = upgrades[i][5]
	u.Quote = upgrades[i][6]
	u.Background = upgrades[i][7]
	for j = 1,table.getn(upgrades[i][8]) do
		u.Costs[j - 1] = upgrades[i][8][j]
	end
	for j = 1,table.getn(upgrades[i][9]) do
		u.GrandStrategyCosts[j - 1] = upgrades[i][9][j]
	end
	u.TechnologyPointCost = upgrades[i][10]
	u.Ability = false
end

DefineUpgrade("upgrade-goblin-long-spear", {
	Parent = "upgrade-long-spear",
	Civilization = "goblin",
	Description = _("With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.\n\nEffect: +2 Damage for Impalers."),
	TechnologyPointCost = 1,
	Item = "unit-long-spear"
})

DefineUpgrade("upgrade-goblin-pike", {
	Parent = "upgrade-pike",
	Civilization = "goblin",
	Description = _("Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.\n\nEffect: +2 Damage for Impalers."),
	TechnologyPointCost = 1,
	Item = "unit-pike"
})

DefineUpgrade("upgrade-goblin-wood-plow", {
	Parent = "upgrade-wood-plow",
	Civilization = "goblin",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-goblin-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "goblin",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-goblin-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "goblin",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, allows Town Halls to be upgraded to Strongholds."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-goblin-writing", {
	Parent = "upgrade-writing",
	Civilization = "goblin",
	Icon = "icon-norse-runewriting",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-goblin-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "teuton",
	Description = _("Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Archers and Headhunters, +5 Fire Damage for War Machines."),
	TechnologyPointCost = 1
})

DefineModifier("upgrade-goblin-long-spear",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-pike",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-catapult-projectile-1",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-catapult-projectile-2",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-goblin-watch-tower"}, {"apply-to", "unit-goblin-guard-tower"}
)

DefineModifier("upgrade-goblin-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-goblin-iron-tipped-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-goblin-writing",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-goblin-watch-tower"}, {"apply-to", "unit-goblin-guard-tower"}
)

DefineModifier("upgrade-goblin-alchemy",
	{"FireDamage", 1},
	{"Points", 8},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}
)

DefineModifier("upgrade-goblin-alchemy",
	{"FireDamage", 5},
	{"Points", 5},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineDependency("unit-goblin-archer",
	{"unit-goblin-lumber-mill"})

DefineDependency("unit-goblin-guard-tower",
	{"unit-goblin-lumber-mill", "upgrade-goblin-masonry"}
)

DefineDependency("unit-goblin-war-machine",
	{"unit-goblin-smithy", "unit-goblin-lumber-mill"})

DefineDependency("unit-goblin-glider",
	{"unit-goblin-lumber-mill"})

DefineDependency("upgrade-goblin-pike",
	{"upgrade-goblin-long-spear"}
)
	
DefineDependency("unit-goblin-stronghold",
	{"unit-goblin-mess-hall", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-goblin-catapult-projectile-1",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-catapult-projectile-2",
	{"upgrade-goblin-catapult-projectile-1", "unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-iron-tipped-wood-plow",
	{"upgrade-goblin-wood-plow"}
)

DefineDependency("upgrade-goblin-alchemy",
	{"upgrade-goblin-writing"}
)

Load("scripts/civilizations/goblin/upgrade_faction.lua")