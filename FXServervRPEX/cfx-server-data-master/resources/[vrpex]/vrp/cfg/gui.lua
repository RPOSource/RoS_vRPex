
-- gui config file

local cfg = {}

-- additional css loaded to customize the gui display (see gui/design.css to know the available css elements)
-- it is not recommended to modify the vRP core files outside the cfg/ directory, create a new resource instead
-- you can load external images/fonts/etc using the NUI absolute path: nui://my_resource/myfont.ttf
-- example, changing the gui font (suppose a vrp_mod resource containing a custom font)
cfg.css = [[
@font-face {
  font-family: "Custom Font";
  src: url(nui://vrp_mod/customfont.ttf) format("truetype");
}

body{
  font-family: "Custom Font";
}

]]

-- list of static menu types (map of name => {.title,.blipid,.blipcolor,.permissions (optional)})
-- static menus are menu with choices defined by vRP.addStaticMenuChoices(name, choices)
cfg.static_menu_types = {
  ["police_weapons"] = {
    title = "Police Weapons", 
    blipcolor = 0,
  permissions = {
    "police.weapons"
  }
},
["emergency_heal"] = {
  title = "Atendimento Médico", 
  blipcolor = 0,
permissions = {
  "emergency_heal"
}
},
["emergency_medkit"] = {
  title = "Emergência", 
  blipcolor = 0,
permissions = {
  "samu.medkit"
}
},
  ["missions"] = { -- example of a mission menu that can be filled by other resources
    title = "Missions",
    blipid = 205, 
    blipcolor = 5
  }
}

-- list of static menu points
cfg.static_menus = {
  {"police_weapons", 461.31414794922,-981.15582275391,30.689588546753},
  {"emergency_heal", 260.49597167969,-1358.4555664063,24.537788391113},
  {"emergency_medkit", 268.22784423828,-1364.8872070313,24.537782669067},
  --{"missions", 1855.13940429688,3688.68579101563,34.2670478820801}
}

-- VoIP

-- configuration passed to RTCPeerConnection
cfg.voip_peer_configuration = {
  iceServers = {
    {urls = {"stun:stun.l.google.com:19302", "stun:stun1.l.google.com:19302", "stun:stun2.l.google.com:19302"}}
  }
}

return cfg
