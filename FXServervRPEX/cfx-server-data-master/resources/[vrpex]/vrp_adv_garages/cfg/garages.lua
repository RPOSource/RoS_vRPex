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
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: gtype, vtype, blipid, blipcolor, ghome, permissions (optional, only users with the permission will have access to the shop)
-- vtype: identifies the "type" of vehicle for the personal garages and vehicles (you can create new ones)
-- gtype: there are 5 gtypes> personal, showroom, shop, store and rental (you cant create new ones, one garage can have many gtypes)
   -- personal: allow you to get any personal vehicle of the same vtype of the garage
   -- showroom: allows you to see the vehicle model before purchasing it
   -- shop: allows you to modify your vehicle
   -- store: allows you to purchase and sell vehicles
   -- rental: allows you to rent vehicles for that session for a part of the price
-- ghome: links the garage with an address, only owners of that address will have see the garage
-- gpay: bank or wallet
-- Car/Mod: [id/model] = {"Display Name", price/amount, "", (optional) item}, -- when charging items, price becomes amount

cfg.lang = "en" -- lenguage file

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price

cfg.price = {
  repair = 500, -- value to repair the vehicle
  colour = 100, -- value will be charged 3 times for RGB
  extra = 100, -- value will be charged 3 times for RGB
  neon = 100 -- value will be charged 3 times for RGB
}

-- declare any item used on purchase that doesnt exist yet (name,description,choices,weight}
cfg.items = {
  ["issi2key"] = {"Issi 2 Key","Buys an Issi",nil,0.5} -- example
}

-- configure garage types
cfg.adv_garages = {
  ["Carros"]  = {
    _config = {gpay="bank",gtype={"showroom","store","rental"},vtype="car",blipid=50,blipcolor=4},
    ["blista"] = {"Blista", 15000, ""},
    ["brioso"] = {"Brioso R/A", 155000, ""},
    ["dilettante"] = {"Dilettante", 25000, ""},
    ["issi2"] = {"Issi", 1, "", "issi2key"}, -- vehicle sold by item as example
    ["panto"] = {"Panto", 85000, ""},
    ["prairie"] = {"Prairie", 30000, ""},
    ["rhapsody"] = {"Rhapsody", 120000, ""}
  },

  ["Motos"] = {
    _config = {gpay="bank",gtype={"showroom","store","rental"},vtype="bike",blipid=512,blipcolor=4},
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },
  
  ["Personal"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3},
	-- Vehicles of differenty vtype can be added to the personal garage, adding to one means adding to all of the same vtype
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",5000, ""},
    ["bati"] = {"Bati 801",15000, ""},
    ["bati2"] = {"Bati 801RR",15000, ""},
    ["bf400"] = {"BF400",95000, ""},
    ["carbonrs"] = {"Carbon RS",40000, ""},
    ["cliffhanger"] = {"Cliffhanger",225000, ""},
    ["daemon"] = {"Daemon",5000, ""},
    ["double"] = {"Double T",12000, ""},
    ["enduro"] = {"Enduro",48000, ""},
    ["faggio2"] = {"Faggio",4000, ""},
    ["gargoyle"] = {"Gargoyle",120000, ""},
    ["hakuchou"] = {"Hakuchou",82000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",90000, ""},
    ["lectro"] = {"Lectro",700000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",9000, ""},
    ["ruffian"] = {"Ruffian",9000, ""},
    ["sanchez"] = {"Sanchez",7000, ""},
    ["sovereign"] = {"Sovereign",90000, ""},
    ["thrust"] = {"Thrust",75000, ""},
    ["vader"] = {"Vader",9000, ""},
    ["vindicator"] = {"Vindicator",600000,""}
  },
  
  ["policia"] = {
    _config = {gpay="wallet", gtype={"personal", "store"}, vtype="car", permissions = {"policia.garagem"} },
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },

  ["samu"] = {
    _config = {gpay="wallet", gtype={"personal", "store"}, vtype="car", permissions = {"samu.garagem"} },
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },

  ["Carteiro"] = {
    _config = {gpay="wallet",gtype={"personal", "store"},vtype="car",blipid=318,blipcolor=3, permissions={"carteiro.garagem"}},
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },

  ["Valores"] = {
    _config = {gpay="wallet",gtype={"personal", "store"},vtype="car",blipid=67,blipcolor=3, permissions={"valores.garagem"}},
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },

  ["Minerador"] = {
    _config = {gpay="wallet",gtype={"personal", "store"},vtype="car",blipid=225,blipcolor=3, permissions={"minerador.garagem"}},
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },

  ["Eletricista"] = {
    _config = {gpay="wallet",gtype={"personal", "store"},vtype="car",blipid=225,blipcolor=3, permissions={"eletricista.garagem"}},
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },
  
  ["Ranch Main"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Ranch Main"},
  },
  ["Rich Housing"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Rich Housing"},
  },
  ["Rich Housing 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Rich Housing 2"},
  },
  ["Basic Housing 1"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Basic Housing 1"},
  },
  ["Basic Housing 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Basic Housing 2"},
  },
  ["Regular House 1"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 1"},
  },
  ["Regular House 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 2"},
  },
  ["Regular House 3"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 3"},
  },
  ["Regular House 4"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 4"},
  },
  ["Regular House 5"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 5"},
  },
  ["Regular House 6"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 6"},
  },
  
  ["LS Customs"]  = {
    _config = {gpay="wallet",gtype={"shop"},vtype="car",blipid=72,blipcolor=7},
	_shop = {
	  -- You can make different shops with different modifications for each garage of gtype shop
	  [0] = {"Spoilers",500,""},
	  [1] = {"Front Bumper",500,""},
      [2] = {"Rear Bumper",500,""}, 
      [3] = {"Side Skirt",500,""},  
      [4] = {"Exhaust",500,""},     
      [5] = {"Frame",500,""},       
      [6] = {"Grille",500,""},      
      [7] = {"Hood",500,""},        
      [8] = {"Fender",500,""},      
      [9] = {"Right Fender",500,""},
      [10] = {"Roof",500,""},        
      [11] = {"Engine",500,""},      
      [12] = {"Brakes",500,""},      
      [13] = {"Transmission",500,""},
      [14] = {"Horns",500,""},       
      [15] = {"Suspension",500,""},  
      [16] = {"Armor",500,""},      
      [18] = {"Turbo",500,""},
      [20] = {"Tire Smoke",500,""},
      [22] = {"Xenon Headlights",500,""},
      [23] = {"Wheels",500,"Press enter to change wheel type"},
      [24] = {"Back Wheels (Bike)",500,""}, 
      [25] = {"Plateholders",500,""},
      [27] = {"Trims",500,""},       
      [28] = {"Ornaments",500,""},   
      [29] = {"Dashboards",500,""},  
      [30] = {"Dials",500,""},       
      [31] = {"Door Speakers",500,""},
      [32] = {"Seats",500,""},       
      [33] = {"Steering Wheel",500,""},
      [34] = {"H Shift",500,""},     
      [35] = {"Plates",500,""},      
      [36] = {"Speakers",500,""},    
      [37] = {"Trunks",500,""},      
      [38] = {"Hydraulics",500,""},  
      [39] = {"Engine Block",500,""},
      [40] = {"Air Filter",500,""},  
      [41] = {"Struts",500,""},      
      [42] = {"Arch Covers",500,""}, 
      [43] = {"Arials",500,""},      
      [44] = {"Extra Trims",500,""}, 
      [45] = {"Tanks",500,""},       
      [46] = {"Windows",500,""},     
      [48] = {"Livery",500,""},      
	}
  },
}

-- position garages on the map {garage_type,x,y,z}
cfg.garages = {

  -- default garages
  {"Carros",-41.67450333,-1098.15625,26.42234993},
  {"Motos", -31.0285602, -1091.482666, 26.42226028},
  
  -- personal garages
  {"Personal",215.124,-791.377,30.646},
  {"Personal",-334.685,289.773,85.705},
  {"Personal",-55.272,-1838.71,26.442},
  {"Personal",126.434,6610.04,31.750},
  
  -- lscustoms
  {"LS Customs",-337.3863,-136.9247,39.0737},
  {"LS Customs",-1155.536,-2007.183,13.244},
  {"LS Customs",731.8163,-1088.822,22.233},
  {"LS Customs",1175.04,2640.216,37.82177},
  {"LS Customs",110.8406,6626.568,32.287},
  
  -- house garages
  {"Ranch Main", 1408.32495117188,1117.44665527344,114.737692260742},
  {"Rich Housing", -751.5107421875,365.883117675781,87.9666687011719},
  {"Rich Housing 2",	-81.860595703125,-809.427734375,36.4030570983887},
  {"Basic Housing 1", -635.4501953125,57.4368324279785,44.8587303161621},
  {"Basic Housing 2", -1448.18701171875,-514.856567382813,31.6881823348999},
  {"Regular House 1", 843.398803710938,-191.063568115234,72.6714935302734},
  {"Regular House 2",  174.276748657227,483.056274414063,142.339096069336},
  {"Regular House 3", -820.590148925781,184.175857543945,72.0921401977539},
  {"Regular House 4", -1858.14965820313,328.570861816406,88.6500091552734},
  {"Regular House 5", -25.002462387085,-1436.29431152344,30.6531391143799},
  {"Regular House 6", -2587,1930.97326660156,167.304656982422},

  -- empregos
  {"Carteiro",63.747409820557,126.25704193115,79.188926696777},
  {"Valores",-5.3142428398132,-670.255859375,32.338066101074},
  {"Minerador",1369.8481445313,-1860.0770263672,56.928279876709},
  {"Eletricista",837.96160888672,-1934.3306884766,28.976713180542},
  {"policia", 452.4011841, -1020.80603, 28.35417557},
  {"samu", -491.9551086, -336.1968079, 34.37248993}
  
  -- planes and boats
  --{"Boats",-849.5, -1368.64, 1.6},
  --{"Civilian Planes",1640, 3236, 40.4},
  --{"Military Planes",-1348, -2230, 13.9},
  --{"Civilian Helicopters",1750, 3260, 41.37},
  --{"Military Helicopters",-1233, -2269, 13.9},
  --{"Civilian Planes",-1277.59094238281,-3391.39233398438,13.9401473999023},
  --{"Military Planes",1066.958984375,3078.87353515625,41.0369453430176},
  --{"Civilian Helicopters",-745.37255859375,-1468.43969726563,5.00051975250244},
  --{"Military Helicopters",1403.12109375,3002.36987304688,40.5485992431641},
  --{"planes",2123, 4805, 41.19},
  --{"helicopters",-745, -1468, 5},
  --{"boats",1538, 3902, 30.35}
  
}

return cfg
