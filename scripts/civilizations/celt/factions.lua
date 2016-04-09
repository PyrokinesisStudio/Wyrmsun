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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineFaction("Aedui Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"green"}
})

DefineFaction("Arverni Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"blue"}
})

DefineFaction("Boii Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Cotini Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("Helvetii Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"violet"} -- another color, perhaps?
})

DefineFaction("Ligurian Tribe", {
	Civilization = "celt", -- were they really Celts?
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"green"}
})

DefineFaction("Menapii Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"yellow"}
})

DefineFaction("Norici Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"white"} -- another color, perhaps?
})

DefineFaction("Pict Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("Scot Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Sequani Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"pink", "red"}
})

DefineFaction("Turone Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"cyan"},
	HistoricalFactionDerivations = {-27, "celt", "Boii Tribe"}
})

-- Polities

DefineFaction("Argyll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Civilization = "celt", -- founded by
	Type = "polity",
--	Language = "old-irish", -- founded by Irish settlers
	Colors = {"purple"},
	DefaultTier = "kingdom"
})

DefineFaction("Elmet", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"teal"},
	DefaultTier = "kingdom"
})

DefineFaction("Gwynedd", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"blue"},
	DefaultTier = "kingdom"
})

DefineFaction("Meath", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Civilization = "celt",
	Type = "polity",
--	Language = "old-irish", -- it was an Irish kingdom
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("Powys", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("Strathclyde", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 87.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"brown"},
	DefaultTier = "kingdom"
})

-- Non-Playable Tribes

DefineFaction("Vana Tribe", {
	Civilization = "celt",
	Type = "tribe",
	Colors = {"blue", "cyan"},
	Playable = false,
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -4000, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})
