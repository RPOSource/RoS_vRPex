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

cfg = {}

cfg.lang = "en"

cfg.dmv = {
  warn = false,
  peds = {
    {type=4, hash=0xc99f21c4, x=239.471, y=-1380.96, z=32.74176, h=137.6}
  },
  price = {
    theory = 500,
    practical = 1000
  },
  blip = {
    id = 408,
    colour = 11,
	  size = 0.8,
    title = "Detran"
  },
  menu = {
    x = 0.1,
    y = 0.2,
    width = 0.2,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Detran",
    menu_subtitle = "CNH",
    color_r = 0,
    color_g = 128,
    color_b = 255,
  }
}

cfg.speed = {
  mult = 3.6, -- 3.6 is kmh / 2.25 is mph (don't ask me why)
  control = { -- https://wiki.fivem.net/wiki/Controls
  toggle = 73, -- X
	up = 27, -- UP
	down = 173 -- DOWN
  },
  area = {
    {
      name = "Residencial",
	  limit = 50.0
	},
    {
      name = "Cidade",
	  limit = 80.0
	},
    {
      name = "Via expressa",
	  limit = 120.0
	},
  }
}

cfg.intro = {
  {
    pos = {173.01181030273, -1391.4141845703, 29.408880233765},
    msg = "<b style='color:#1E90FF'>Introdução do Detran</b> <br /><br />Teoria e prática são elementos importantes da instrução de condução.<br />Esta introdução abrangerá os conceitos básicos e assegurará que esteja preparado com informações e conhecimentos suficientes para o seu teste.<br /><br />As informações de suas lições de teoria combinadas com a experiência de sua lição prática são vitais para negociar as situações e dilemas que você enfrentará na estrada.<br /><br />Sente-se e aproveite o passeio quando começamos. É altamente recomendável que você preste atenção em todos os detalhes, a maioria dessas questões pode existir no seu teste de teoria."
  },
  {
    pos = {-428.49026489258, -993.306640625, 46.008815765381},
    msg = "<b style='color:#1E90FF'>Acidentes, incidentes e preocupações ambientais</b><br /><br /><b style='color:#87CEFA'>Dever de ceder</b><br />Todos os condutores têm o dever de obedecer as regras da estrada, a fim de evitar danos previsíveis aos outros. A incapacidade de ceder o direito de passagem quando exigido por lei pode levar a responsabilidade por qualquer acidente resultante.<br /><br /> Quando você ouve uma sirene chegar, você deve ceder ao veículo de emergência, simplesmente puxar para a direita.<br />Você sempre deve parar quando um oficial de trânsito lhe disser.<br /><br /><b style='color:#87CEFA'>Condução agressiva</b><br />Um carro que põe em risco ou é susceptível de pôr em perigo pessoas ou propriedades é considerado uma condução agressiva.<br />No entanto, a condução agressiva, pode levar a acidentes trágicos. É muito mais sensato dirigir defensivamente e sempre estar atento ao risco potencial de falhas.<br />"
  },
  {
    pos = {-282.55557250977, -282.55557250977, 31.633310317993},
    msg = "<b style='color:#1E90FF'>Área residencial</b> <br /><br /> Manter uma velocidade adequada - Nunca mais rápido que o limite postado, mais lento se o tráfego for pesado.<br /><br />Fique centrado na sua pista. Nunca dirija na área reservada para carros estacionados.<br /><br />Mantenha uma distância segura seguindo - pelo menos 1 comprimento de carro por cada 10 mph.<br /><br />O limite de velocidade em uma área residencial é de 50 km/h.<br />"
  },
  {
    pos = {246.35220336914, -1204.3403320313, 43.669715881348},
    msg = "<b style='color:#1E90FF'>Áreas Construida/Cidade</b> <br /><br />O limite de 80 km / h geralmente se aplica a todo o tráfego em todas as estradas com iluminação pública, a menos que seja especificado de outra forma.<br />Conduzir a velocidades muito rápidas para a estrada e condições de pilotagem pode ser perigoso.<br /><br />Você sempre deve reduzir sua velocidade quando:<br /><br />&bull; Dividir a rua com um pedestre<br />&bull; Dirigindo a noite, é mais difícil de ver outros condutores<br />&bull; Condições de clima tornam mais seguro para<br /><br />Lembre-se, veículos grandes e motocicletas precisam de uma boa distância para parar<br />"
  },
  {
    pos = {-138.413, -2498.53, 52.2765},
    msg = "<b style='color:#1E90FF'>Auto-estradas/Rodovia</b> <br /><br />O tráfego nas auto-estradas geralmente viaja mais rápido do que em outras estradas, então você tem menos tempo para reagir.<br />É especialmente importante usar seus sentidos mais cedo e olhar muito mais à frente do que você faria em outras estradas.<br /><br />Verifique o tráfego na auto-estrada e combine sua velocidade para se encaixar com segurança no fluxo de tráfego na pista da esquerda.<br /><br />O limite de velocidade em uma área de auto-estrada/rodovia é 120 km/h.<br />"
  },
  {
    pos = {187.465, -1428.82, 43.9302},
    msg = "<b style='color:#1E90FF'>Álcool</b> <br /><br />Beber durante a condução é muito perigoso, álcool e / ou drogas prejudicam seu julgamento. O julgamento prejudicado afeta a forma como você reage aos sons e ao que vê. No entanto, o DETRAN permite uma certa quantidade de concentração de álcool para aqueles que dirigem com uma carteira de motorista válida.<br /><br />0.08% É o limite legal para a concentração de álcool no sangue de um motorista (BAC)<br />"
  },
}

cfg.practical = {
  intro = {
	  "<b style='color:#1E90FF'>Instrutor do DETRAN:</b> <br /><br /> Use o <b style='color:#DAA520'>Controle de velocidade</b> para evitar <b style='color:#87CEFA'>excesso de velocidade</b>, ative isso durante o teste, pressionando o botão <b style='color:#20B2AA'>X</b> no seu celular.<br /><br /><b style='color:#87CEFA'>Avaliação:</b><br />- Tente não bater o veículo ou superar o limite de velocidade postado. Você receberá <b style='color:#A52A2A'>Pontos de erro</b> Sempre que você não seguir estas regras<br /><br />- Muitos <b style='color:#A52A2A'>Pontos de erro/b> Acumulado resultará em <b style='color:#A52A2A'>Falha</b> Teste",
	 "<b style='color:#1E90FF'>Instrutor do DETRAN:</b> <br /><br /> Atualmente, estamos preparando seu veículo para o teste, enquanto você deve ler algumas linhas importantes.<br /><br /><b style='color:#87CEFA'>Limite de velocidade:</b><br />- Preste atenção ao tráfego e fique sob o <b style='color:#A52A2A'>Limite de</b> velocidade<br /><br />- Até agora, você deve saber o básico, no entanto, tentaremos lembrá-lo sempre que você <b style='color:#DAA520'>entrar/sair</b> em uma área com um limite de velocidade",
  },
  max_errors = 5,
  spawn = {249.40971374512,-1407.2303466797,30.409454345703},
  steps = {
    {
	  pos = {255.13990783691,-1400.7319335938,29.5374584198},
	  msg = "Dirija-se ao próximo ponto !"
	},
    {
	  pos = {271.8747253418,-1370.5744628906,30.932783126831},
	  msg = "Dirija-se ao próximo ponto !"
	},
    {
	  pos = {234.90780639648,-1345.3854980469, 29.542045593262},
	  stop = "Faça uma parada ~r~stop~s~ for pedastrian ~y~crossing",
	  msg = "~g~Ótimo!~s~ vamos continuar em movimento!"
	},
    {
	  pos = {217.82102966309,-1410.5201416016,28.292112350464},
	  stop = "Faça uma rápida ~r~parada~s~ e veja a sua ~y~ESQUERDA~s~ antes de entrar no trânsito",
	  msg = "~g~Ótimo!~s~ Agora pegue à ~y~DIREITA~s~ e escolha a sua pista",
	  area = 2
	},
    {
	  pos = {178.55052185059,-1401.7551269531,27.725154876709},
	  msg = "Preste atenção nas ~y~luzes~s~ do trânsito !"
	},
    {
	  pos = {113.16044616699,-1365.2762451172,27.725179672241}
	},
    {
	  pos = {-73.542953491211,-1364.3355712891,27.789325714111},
	  msg = "Certifique-se de parar para deixar os veículos passarem !"
	},
    {
	  pos = {-355.14373779297,-1420.2822265625,27.868143081665}
	},
    {
	  pos = {-439.14846801758,-1417.1004638672,27.704095840454}
	},
    {
	  pos = {-453.79092407227,-1444.7265625,27.665870666504},
	  msg = "Hora de entrar na estrada, verifique a sua velocidade e não bata !",
	  area = 3
	},
    {
	  pos = {-463.23712158203,-1592.1785888672,37.519771575928}
	},
    {
	  pos = {-900.64721679688,-1986.2814941406,26.109502792358}
	},
    {
	  pos = {1225.7598876953,-1948.7922363281,38.718940734863},
	  msg = "Entrando na cidade, veja sua velocidade!"
	},
    {
	  pos = {1163.6030273438,-1841.7713623047,35.679168701172},
	  msg = "Bom trabalho, agora vamos voltar!",
	  area = 2
	},
    {
	  pos = {235.28327941895,-1398.3292236328,28.921098709106},
	}
  }
}

return cfg