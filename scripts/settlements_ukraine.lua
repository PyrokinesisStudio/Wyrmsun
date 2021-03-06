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

DefineSettlement("kiev", {
	Name = "Kiev",
	MapTemplate = "earth",
	Position = {4532, 905},
	Major = true,
	CulturalNames = {
		"slav", "Kiev"
	},
	HistoricalOwners = {
		1560, "lithuania", -- Kiev was a Lithuanian possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1569, "poland-lithuania" -- the Union of Lublin occurred in 1569; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		1560, 0, "town-hall"
	},
	Regions = {"eurasia", "europe"}
})

DefineSettlement("zaporizhzhya", {
	Name = "Zaporizhzhya",
	MapTemplate = "earth",
	Position = {4642, 959},
	Major = true,
	CulturalNames = {
		"slav", "Zaporizhzhya"
	},
	HistoricalOwners = {
		-3500, "celtic-cimmerian-tribe" -- Zaporizhzhya's area was part of the Indo-European homeland in 3500-3000 BC; Source: David W. Anthony, "The Horse, the Wheel, and Language", 2007, p. 84.
	},
	HistoricalBuildings = {
		-3500, 0, "town-hall"
	},
	Regions = {"eurasia", "europe"}
})
