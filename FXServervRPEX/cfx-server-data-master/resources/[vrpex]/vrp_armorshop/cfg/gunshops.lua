--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]


local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  },

  ["Loja de armas"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_BAT"] = {"Taco",1600,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco Inglês",2300,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",20000,200,""},
    ["WEAPON_PETROLCAN"] = {"Galão de Gasolina",1500,0,""}
  }
}

-- list of gunshops positions

cfg.gunshops = {
  {"Loja de armas", 1692.41, 3758.22, 34.7053},
  {"Loja de armas", 252.696, -48.2487, 69.941},
  {"Loja de armas", 844.299, -1033.26, 28.1949},
  {"Loja de armas", -331.624, 6082.46, 31.4548},
  {"Loja de armas", -664.147, -935.119, 21.8292},
  {"Loja de armas", -1305.45056152344,-394.0068359375,36.6957740783691},
  {"Loja de armas", -1119.48803710938,2697.08666992188,18.5541591644287},
  {"Loja de armas", 2569.62, 294.453, 108.735},
  {"Loja de armas", -3172.60375976563,1085.74816894531,20.8387603759766},
  {"Loja de armas", 21.70, -1107.41, 29.79},
  {"Loja de armas", 810.15, -2156.88, 29.61}
}

return cfg
