-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["folhademaconha"] = {"Folha de machonha", "folha de maconha.", nil, 0.01},
  ["maconha"] = {"Maconha", "Maconha processada.", nil, 1.00},
  ["folhadecoca"] = {"Folha de Coca", "Folha de Coca.", nil, 1.00},
  ["cristaldecrack"] = {"Cristal de Crack", "Cristal de Crack.", nil, 1.00},
  ["pedradecrack"] = {"Pedra de Crack", "Pedra de Crack.", nil, 1.00},
  ["cocaina"] = {"Cocaina", "Cocaina em po.", nil, 1.00}, 
  ["crystalmelamine"] = {"Crystal Melamine", "Crystal Melamine.", nil, 1.00},
  ["metanfetamina"] = {"Metanfetamina", "Cristal de Metanfetamina.", nil, 1.00},
  ["pedregulho"] = {"Pedregulho", "Pedregulho", nil, 3.00},
  ["pedralisa"] = {"Pedra lisa", "Pedra lisa", nil, 2.00},
  ["diamante"] = {"Diamante", "Diamante", nil, 1.00},
  ["carta"] = {"Carta", "Carta", nil, 0.50},
  ["portedearma"] = {"Porte de Arma", "licença para arma.", nil, 0.01},
  ["oab"] = {"OAB", "Carteira de Advogado.", nil, 0.01},
  ["madeira"] = {"Lenha", "Lenha.", nil, 1.00},
  ["lixo"] = {"Lixo", "Lixo.", nil, 0.50},
  ["bank_money"] = {"Dinheiro do Banco", "$.", nil, 0}
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
