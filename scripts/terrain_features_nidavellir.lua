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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineTerrainFeature("arkanthoria-river", {
	Name = "Arkanthoria River",
	TerrainType = "shallow-water",
	Color = {0, 176, 144},
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Arkanthoria River",
		"elf", "Arkanthoria River"
	}
})

DefineTerrainFeature("aurvang", {
	Name = "Aurvang",
	TerrainType = "mud",
	World = "nidavellir",
	Color = {192, 80, 64},
	CulturalNames = {
		"dwarf", "Aurvang",
		"goblin", "Aurvang"
	}
})

DefineTerrainFeature("blackfang-river", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Blackfang River",
	TerrainType = "shallow-water",
	Color = {0, 208, 176},
	World = "nidavellir",
	CulturalNames = {
		"kobold", "Blackfang River"
	}
})

DefineTerrainFeature("forbidden-forest", { -- from Battle for Wesnoth: The Hammer of Thursagan (Forbidden Forest)
	Name = "Forbidden Forest",
	TerrainType = "flamefood-tree",
	World = "nidavellir",
	CulturalNames = {
		"gnome", "Forbidden Forest"
	}
})

DefineTerrainFeature("gryphon-mountain", { -- from Battle for Wesnoth: Heir to the Throne (Gryphon Mountain)
	Name = "Gryphon Mountain",
	TerrainType = "rock",
	World = "nidavellir",
	Color = {128, 144, 128},
	CulturalNames = {
		"dwarf", "Gryphon Mountain",
		"gnome", "Gryphon Mountain"
	}
})

DefineTerrainFeature("heartfangs", {
	Name = "Heartfangs",
	TerrainType = "rock", -- mountains
	World = "nidavellir",
	Color = {128, 128, 144},
	CulturalNames = {
		"dwarf", "Heartfangs",
		"goblin", "Heartfangs"
	}
})

DefineTerrainFeature("heart-mountains", {
	Name = "Heart Mountains",
	TerrainType = "rock", -- mountains
	World = "nidavellir",
	Color = {128, 144, 144},
	CulturalNames = {
		"dwarf", "Heart Mountains",
		"goblin", "Heart Mountains"
	}
})

DefineTerrainFeature("joruvellir", {
	Name = "Joruvellir",
	TerrainType = "desert-sand",
	World = "nidavellir",
	Color = {255, 255, 16},
	CulturalNames = {
		"dwarf", "Joruvellir"
	}
})

DefineTerrainFeature("jungle-of-insanity", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Jungle of Insanity",
	TerrainType = "flamefood-tree",
	World = "nidavellir",
	CulturalNames = {
		"kobold", "Jungle of Insanity"
	}
})

DefineTerrainFeature("lake-vrug", {
	Name = "Lake Vrug",
	TerrainType = "shallow-water",
	Color = {0, 176, 128},
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Lake Vrug"
	}
})

DefineTerrainFeature("shorbear-hills", { -- from Battle for Wesnoth: The Sceptre of Fire
	Name = "Shorbear Hills",
	TerrainType = "rock", -- hills
	World = "nidavellir",
	Color = {144, 144, 128},
	CulturalNames = {
		"dwarf", "Shorbear Hills"
	}
})

DefineTerrainFeature("svarinshaug", {
	Name = "Svarinshaug",
	TerrainType = "rock", -- hill
	World = "nidavellir",
	Color = {144, 128, 128},
	CulturalNames = {
		"dwarf", "Svarinshaug"
	}
})
