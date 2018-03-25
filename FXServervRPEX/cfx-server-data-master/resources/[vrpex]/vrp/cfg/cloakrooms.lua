
-- this file configure the cloakrooms on the map

local cfg = {}

-- Variavel não pode ter o mesmo nome.

-- local policia -> nome da viaravel
-- {model = "nome_da_skin"}

-- local policia = {model = "nome_da_skin"}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }

-- Colocar abaixo as skins que forem adicionando acima, pegar a variavel criada acima

-- Exemplo: policia[i] = {0,0}

-- Se o total passar de 19, aumentar o numero correspondente ao numero de skins

for i=0,19 do
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove

-- Colocar a skin abaixo.

-- [""] -> Aqui dentro vai o nome que será exibido dentro do jogo no menu de skins

-- Exemplo: ["Nome da Skin"] = policia,

cfg.cloakroom_types = {
  ["police"] = {
    _config = { permissions = {"police.cloakroom"} },
    ["Male uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },
    ["Female uniform"] = {
      [3] = {35,0},
      [4] = {30,0},
      [6] = {24,0},
      [8] = {6,0},
      [11] = {48,0},
      ["p2"] = {2,0}
    }
  },
  ["samu"] = {
    _config = { permissions = {"samu.cloakroom"} },
    ["Uniforme masculino"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },
    ["Uniforme feminino"] = {
      [3] = {35,0},
      [4] = {30,0},
      [6] = {24,0},
      [8] = {6,0},
      [11] = {48,0},
      ["p2"] = {2,0}
    }
  }
}

cfg.cloakrooms = {
  {"police", 458.7541199, -992.4706421, 30.68960571},
  {"samu",269.64883422852,-1363.4249267578,24.537790298462}
}

return cfg
