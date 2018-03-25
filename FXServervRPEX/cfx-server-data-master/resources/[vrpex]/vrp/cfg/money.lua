
local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 1000
cfg.open_bank = 5000

-- money display css
cfg.display_css = [[
.div_money{
  position: absolute;
  top: 100px;
  right: 20px;
  font-size: 1.3em;
  font-weight: bold;
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
}

.div_money .symbol{
  font-size: 1.4em;
  color: #00ac51; 
}
]]

return cfg
