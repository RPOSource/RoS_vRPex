
local cfg = {}

-- PCs positions
cfg.pcs = {
  {459.74395751953, -988.93658447266, 24.91487121582}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 300, -- min time in seconds
  max_time = 600, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
cfg.seizable_items = {
  "dirty_money",
  "folhademaconha",
  "maconha",
  "folhadecoca",
  "cocaina",
  "cristaldecrack",
  "pedradecrack",
  "crystalmelamine",
  "metanfetamina"
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
  ["Insulto"] = 100,
  ["Acelerando"] = 250,
  ["Roubando"] = 1000,
  ["Crime organizado (baixo)"] = 10000,
  ["Crime organizado (médio)"] = 25000,
  ["Crime organizado (alto)"] = 50000
}

return cfg
