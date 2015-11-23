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

Load("scripts/civilizations/dwarf/characters.lua")
Load("scripts/civilizations/germanic/characters.lua")
Load("scripts/civilizations/goth/characters.lua")
Load("scripts/civilizations/latin/characters.lua")
Load("scripts/civilizations/norse/characters.lua")
Load("scripts/civilizations/teuton/characters.lua")

-- Gnome heroes

DefineCharacter("Pypo", {
	Name = "Pypo",
	Gender = "male",
	Type = "unit-gnomish-recruit",
	Civilization = "gnome",
	ProvinceOfOrigin = "Brown Hills",
	Year = -1,
	DeathYear = 40 -- last we hear of him
})

-- Goblin heroes

DefineCharacter("Greebo", {
	Name = "Greebo",
	Type = "unit-hero-greebo",
	Civilization = "goblin",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

-- Basque heroes

DefineCharacter("Gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "basque",
	ProvinceOfOrigin = "Scania",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1)
})

-- Hun heroes

DefineCharacter("Attila", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 93-94.
	Name = "Attila", -- also known as Atli in Norse myths, in which he married Gudrun
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "persian", -- should be Hun
--	ProvinceOfOrigin = "?",
	Year = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	DeathYear = 437 + (30 * 1) -- estimated
})
