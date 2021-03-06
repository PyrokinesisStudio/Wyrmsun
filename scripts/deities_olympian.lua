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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineDeity("poseidon", {
	Name = "Poseidon",
	Pantheon = "Olympian",
	Civilizations = {"greek", "latin"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true,
	Domains = {"water"},
	CulturalNames = {
		"latin", "Neptune"
	}
})

DefineDeity("apollo", {
	Name = "Apollo",
	Pantheon = "Olympian",
	Civilizations = {"greek", "latin"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"sun"}
})

DefineDeity("hermes", {
	Name = "Hermes",
	Pantheon = "Olympian",
	Civilizations = {"greek", "latin"},
	Religions = {"paganism"},
	Gender = "male",
--	Domains = {"air"},
	CulturalNames = {
		"latin", "Mercury"
	},
	HolyOrders = {"hermaistes-apolloniastes-poseidoniastes"}
})

DefineDeity("roma", { -- goddess who is a personification of the city of Rome; Source: "Ancient Warfare VII.6", 2013, p. 19.
	Name = "Roma",
	Pantheon = "Olympian",
	Civilizations = {"latin"},
	Religions = {"paganism"},
	Gender = "female"
})
