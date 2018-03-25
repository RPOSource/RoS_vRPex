
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price

cfg.garage_types = {
  ["compacts"]  = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["blista"] = {"Blista", 15000, ""},
    ["brioso"] = {"Brioso R/A", 155000, ""},
    ["dilettante"] = {"Dilettante", 25000, ""},
    ["issi2"] = {"Issi", 18000, ""},
    ["panto"] = {"Panto", 85000, ""},
    ["prairie"] = {"Prairie", 30000, ""},
    ["rhapsody"] = {"Rhapsody", 120000, ""}
  },
  ["policia"] = {
    _config = {vtype="car", permissions = {"policia.garagem"} },
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  },
  ["samu"] = {
    _config = {vtype="car", permissions = {"samu.garagem"} },
    ["nome_spawn"] = {"nome_do_veiculo",0, ""}
  }
}

-- {garage_type,x,y,z}
cfg.garages = {
    --{"policia", 452.4011841, -1020.80603, 28.35417557},
    --{"samu", -491.9551086, -336.1968079, 34.37248993}
  --{"compacts",-356.146, -134.69, 39.0097},
  --{"coupe",723.013, -1088.92, 22.1829},
  --{"sports",-1145.67, -1991.17, 13.162},
  --{"sportsclassics",1174.76, 2645.46, 37.7545},
  --{"supercars",112.275, 6619.83, 31.8154},
  --{"motorcycles",-205.789, -1308.02, 31.2916}
  --{"planes",1640, 3236, 40.4},
  --{"planes",2123, 4805, 41.19},
  --{"planes",-1348, -2230, 13.9},
  --{"helicopters",1750, 3260, 41.37},
  --{"helicopters",-1233, -2269, 13.9},
  --{"helicopters",-745, -1468, 5},
  --{"boats",-849.5, -1368.64, 1.6},
  --{"boats",1538, 3902, 30.35}
}

return cfg
