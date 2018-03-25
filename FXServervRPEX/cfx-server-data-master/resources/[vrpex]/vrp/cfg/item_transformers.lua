local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name = "Academia", -- menu name
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 1000,
    units_per_minute = 1000,
    x = -1202.96252441406,
    y = -1566.14086914063,
    z = 4.61040639877319,
    radius = 7.5,
    height = 1.5, -- area
    recipes = {
      ["Strength"] = {
        -- action name
        description = "Aumente sua força.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {}, -- items given per unit
        aptitudes = {
          -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  -- LAVAGEM DE DINHEIRO
  {
    name = "Lavagem de Dinheiro", -- menu name
    permissions = {"process.money"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- cor do menu
    max_units = 100, -- unidades maximas do item
    units_per_minute = 100, -- unidades que o transformador ganha de volta por minuto
    x = 1126.0969238281,
    y = -3196.9650878906,
    z = -39.665725708008, -- pos
    radius = 2,
    height = 1.0, -- area
    recipes = {
      -- items do menu
      ["Lavar"] = {
        -- action name
        description = "Lavar dinheiro.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {
          -- items taken per unit
          ["dirty_money"] = 500
        },
        products = {
          -- items given per unit
          ["money"] = 250
        }
      }
    }
  },
  -- CAMPO DE MINERIOS
  {
    name="Campo de Minerios", -- Nome do menu
    permissions = {"harvest.minerio"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=300,
    units_per_minute=5,
    x=1224.7158203125,y=1899.0333251953,z=78.049926757813, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher minerio.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["pedregulho"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE PEDRA
  {
    name="Processador de Pedregulho", -- menu name
    permissions = {"process.pedregulho"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=1000, -- unidades que o transformador ganha de volta por minuto
    x=1225.1665039063,y=1899.1839599609,z=78.078178405762, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Pedra.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["pedregulho"] = 1
	    },
        products={ -- items given per unit
          ["pedralisa"] = 2
        }
      }
    }
  },
  -- PROCESSADOR DE PEDRALISA
  {
    name="Processador de Pedralisa", -- menu name
    permissions = {"process.pedralisa"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=1000, -- unidades que o transformador ganha de volta por minuto
    x=1108.4736328125,y=-2007.4107666016,z=30.941825866699, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Pedralisa.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["pedralisa"] = 1
	    },
        products={ -- items given per unit
          ["diamante"] = 1
        }
      }
    }
  },
  -- VENDA DIAMANTES
  {
    name="Venda de Diamantes", -- menu name
    permissions = {"venda.diamantes"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=100, -- unidades maximas do item
    units_per_minute=100, -- unidades que o transformador ganha de volta por minuto
    x=-630.82086181641,y=-229.7685546875,z=38.057064056396, -- pos
    radius=2, height=1.0, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender diamantes.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["diamante"] = 1
	    },
        products={ -- items given per unit
          ["money"] = 1000
        }
      }
    }
  },
  -- COFRE
  {
    name = "Cofre", -- menu name
    permissions = {"bankdriver.money"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 1,
    units_per_minute = 1,
    x = 253.90089416504,
    y = 225.21408081055,
    z = 101.87578582764,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Dinheiro do Banco"] = {
        -- action name
        description = "Pegar dinheiro do banco.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["bank_money"] = 500000
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- CARTA
  {
    name = "Correio", -- menu name
    permissions = {"carteiro.gopostal"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 78.417747497559,
    y = 111.90917205811, --Mudar localização
    z = 81.168174743652,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Cartas Correio"] = {
        -- action name
        description = "Pegar Cartas.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["carta"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 01
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 422.14251708984,
    y = -1884.0306396484, --Mudar localização
    z = 26.470569610596,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 02
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 495.63204956055,
    y = -1887.6518554688, --Mudar localização
    z = 25.890811920166,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 03
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 375.75784301758,
    y = -1985.0402832031, --Mudar localização
    z = 24.153503417969,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 04
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 266.11871337891,
    y = -2054.5720214844, --Mudar localização
    z = 17.611528396606,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 05
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 110.29342651367,
    y = -1745.5799560547, --Mudar localização
    z = 29.168380737305,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 06
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 117.80102539063,
    y = -1943.9581298828, --Mudar localização
    z = 20.642799377441,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 07
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 357.75512695313,
    y = -1809.8376464844, --Mudar localização
    z = 28.961246490479,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 08
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 416.94976806641,
    y = -2012.9598388672, --Mudar localização
    z = 23.082679748535,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 09
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 139.71826171875,
    y = -1580.6667480469, --Mudar localização
    z = 29.319171905518,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- lixo -- Lata 10
  {
    name = "Lixeiro", -- menu name
    permissions = {"harvest.lixo"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 286.42123413086,
    y = -2092.0949707031, --Mudar localização
    z = 16.836437225342,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Coletar lixo"] = {
        -- action name
        description = "Pegar lixo.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["lixo"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- Lenhador
  {
    name = "Lenhador", -- menu name
    permissions = {"harvest.lenha"}, -- you can add permissions
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 78.417747497559,
    y = 111.90917205811, --Mudar localização
    z = 81.168174743652,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Cortar arvore"] = {
        -- action name
        description = "Pegar madeira.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["madeira"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  -- Porte de Arma
  {
    name = "Porte de Arma", -- menu name
    r = 255,
    g = 125,
    b = 0, -- color
    max_units = 1,
    units_per_minute = 1,
    x = 437.178802490234,
    y = -994.613525390625,
    z = 30.6895904541016,
    radius = 2,
    height = 1.0, -- area
    recipes = {
      ["Porte de Arma"] = {
        -- action name
        description = "comprar porte de arma.", -- action description
        in_money = 1500, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          ["portedearma"] = 1
        }, -- items given per unit
        aptitudes = {} -- optional
      }
    }
  },
  --Campo de Maconha
  {
    name = "Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- color
    max_units = 300,
    units_per_minute = 5,
    x = 2208.777,
    y = 5578.235,
    z = 53.735, -- pos
    radius = 7.5,
    height = 1.5, -- area
    recipes = {
      ["Colher"] = {
        -- action name
        description = "Colher folha de maconha.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {}, -- items taken per unit
        products = {
          -- items given per unit
          ["folhademaconha"] = 1
        }
      }
    }
  },
  --Processar Maconha
  {
    name = "Processar Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- cor do menu
    max_units = 1000, -- unidades maximas do item
    units_per_minute = 1000, -- unidades que o transformador ganha de volta por minuto
    x = 1037.5191650391,
    y = -3205.3405761719,
    z = -38.172687530518, -- pos
    radius = 5.5,
    height = 1.5, -- area
    recipes = {
      -- items do menu
      ["Processar"] = {
        -- action name
        description = "Processar folha de maconha.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {
          -- items taken per unit
          ["folhademaconha"] = 1
        },
        products = {
          -- items given per unit
          ["maconha"] = 2
        }
      }
    }
  },
  --Campo de Cocaina
  {
    name = "Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r = 0,
    g = 200,
    b = 0, -- cor
    max_units = 300,
    units_per_minute = 5,
    x = -41.372623443604,
    y = 3033.3776855469,
    z = 41.020195007324, -- Localização
    radius = 7.5,
    height = 1.5, -- area
    recipes = {
      ["Colher"] = {
        -- Nome da ação
        description = "Colher folha de Coca.", -- Descrição do produto a se colher
        in_money = 0, -- Dinheiro dado por unidade
        out_money = 0, -- Dinheiro ganho por unidade
        reagents = {}, -- Itens colhidos por unidade
        products = {
          -- Nome do produto fornecido por unidade
          ["folhadecoca"] = 1
        }
      }
    }
  },
  --Processar Cocaina
  {
    name = "Processador de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- cor do menu
    max_units = 1000, -- unidades maximas do item
    units_per_minute = 1000, -- unidades que o transformador ganha de volta por minuto
    x = 1092.8157958984,
    y = -3196.6484375,
    z = -38.993476867676, -- pos
    radius = 5.5,
    height = 1.5, -- area
    recipes = {
      -- items do menu
      ["Processar"] = {
        -- action name
        description = "Processar folha de Cocaina.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {
          -- items taken per unit
          ["folhadecoca"] = 1
        },
        products = {
          -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  -- CAMPO DE CRACK
  {
    name = "Campo de Crack", -- Nome do menu
    permissions = {"harvest.crack"}, -- Você pode adicionar permissões
    r = 0,
    g = 200,
    b = 0, -- cor
    max_units = 300,
    units_per_minute = 5,
    x = 1788.9139404297,
    y = 3894.767578125,
    z = 34.389251708984, -- Localização
    radius = 7.5,
    height = 1.5, -- area
    recipes = {
      ["Colher"] = {
        -- Nome da ação
        description = "Colher cristal de crack.", -- Descrição do produto a se colher
        in_money = 0, -- Dinheiro dado por unidade
        out_money = 0, -- Dinheiro ganho por unidade
        reagents = {}, -- Itens colhidos por unidade
        products = {
          -- Nome do produto fornecido por unidade
          ["cristaldecrack"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE CRACK
  {
    name = "Processador de Crack", -- menu name
    permissions = {"process.crack"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- cor do menu
    max_units = 1000, -- unidades maximas do item
    units_per_minute = 1000, -- unidades que o transformador ganha de volta por minuto
    x = 1017.9518432617,
    y = -378.25216674805,
    z = 59.867221832275, -- pos
    radius = 5.5,
    height = 1.5, -- area
    recipes = {
      -- items do menu
      ["Processar"] = {
        -- action name
        description = "Processar cristal de crack.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {
          -- items taken per unit
          ["cristaldecrack"] = 1
        },
        products = {
          -- items given per unit
          ["pedradecrack"] = 2
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA
  {
    name = "Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r = 0,
    g = 200,
    b = 0, -- cor
    max_units = 300,
    units_per_minute = 5,
    x = 79.686859130859,
    y = 3705.6840820313,
    z = 41.077156066895, -- Localização
    radius = 7.5,
    height = 1.5, -- area
    recipes = {
      ["Colher"] = {
        -- Nome da ação
        description = "Colher Crystal Melamine.", -- Descrição do produto a se colher
        in_money = 0, -- Dinheiro dado por unidade
        out_money = 0, -- Dinheiro ganho por unidade
        reagents = {}, -- Itens colhidos por unidade
        products = {
          -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE METANFETAMINA
  {
    name = "Processador de Metanfetamina", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r = 0,
    g = 200,
    b = 0, -- cor do menu
    max_units = 1000, -- unidades maximas do item
    units_per_minute = 1000, -- unidades que o transformador ganha de volta por minuto
    x = 1005.7531738281,
    y = -3200.3039550781,
    z = -38.519325256348, -- pos
    radius = 5.5,
    height = 1.5, -- area
    recipes = {
      -- items do menu
      ["Processar"] = {
        -- action name
        description = "Processar cristal de metanfetamina.", -- action description
        in_money = 0, -- money taken per unit
        out_money = 0, -- money earned per unit
        reagents = {
          -- items taken per unit
          ["crystalmelamine"] = 1
        },
        products = {
          -- items given per unit
          ["metanfetamina"] = 2
        }
      }
    }
  }
}

-- define transformers randomly placed on the map
--[[cfg.hidden_transformers = {
  ["weed field"] = {
    def = {
      name="Weed field", -- menu name
      -- permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=30,
      units_per_minute=1,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Harvest"] = { -- action name
          description="Harvest some weed.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["weed"] = 1
          }
        }
      }
    },
    positions = {
      {1873.36901855469,3658.46215820313,33.8029747009277},
      {1856.33776855469,3635.12109375,34.1897926330566},
      {1830.75390625,3621.44140625,33.8487205505371}
    }
  }
}--]]
-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5 * 24 * 60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed field"] = 20000
  },
  positions = {
    {1821.12390136719, 3685.9736328125, 34.2769317626953},
    {1804.2958984375, 3684.12280273438, 34.217945098877}
  },
  interval = 60, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
