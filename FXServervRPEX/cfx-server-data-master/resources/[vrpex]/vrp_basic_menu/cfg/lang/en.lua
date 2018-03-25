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


local lang = {
	blips = {
		button = "@Blips",
		perm = "admin.blips",
		desc = "Toggle blips.",
		on = "~g~Blips Ligado.",
		off = "~r~Blips Desligado.",
	},
	bodyarmor = {
		id = "body_armor",
		name = "Armadura corporal",
		desc = "Armadura corporal intacta.",
		equip = "Equipar",
		damaged = "Essa armadura está danificada.",
		store = {
			button = "Loja De Armadura",
			perm = "store.bodyarmor",
			desc = "Loja De Armadura.",
		},
	},
	crun = {
		button = "@Crun",
		perm = "admin.crun",
		desc = "Execute uma função localmente.",
		prompt = "Função local:",
	},
	cuff = {
		button = "Algema",
		perm = "police.bmcuff",
		desc = "Desalgemar/Algemar um jogador nas proximidades.",
		file = "cuff.log",
		log = "{1} algemado {2}",		
	},
	deleteveh = {
		button = "@Excluir o veículo",
		perm = "admin.deleteveh",
		desc = "Exclua um veículo.",
		success = "~g~Veículo excluído.",
		toofar = "~r~Muito longe do veículo.",
	},
	drag = {
		button = "Arrastar",
		perm = "police.drag",
		desc = "Arrasta o jogador algemado nas proximidades.",
	},
	emergenc_heal = {
		first = "Take",
	},
	fine = {
		button = "📝Multar",
		perm = "police.bmfine",
		desc = "Multar um jogador nas proximidades.",
		prompt = {
			amount = "Valor:",
			reason = "Razão:",
		},
		file = "fine.log",
		log = "{1} Multado {2} para R${3} - {4}",
		sent = {
			bad = "~r~Você foi enviado para a prisão!",
			good = "~g~Jogador enviado para a prisão.",
		},
	},
	fixhaircut = {
		button = "Arrumar Cabelo",
		perm = "player.fixhaircut",
		desc = "Corrigir o bug do barbeiro.",
	},
	freeze = {
		button = "Congelar",
		perm = "police.freeze",
		desc ="Congelar jogador nas proximidades.",
		admin = "freeze.admin",
		prompt = "User ID:",
		notify = "~g~Jogador Descongelado/Congelado.",
		frozen = "~r~Você foi congelado.",
		unfrozen = "~g~Você foi descongelado.",
	},
	godmode = {
		button = "@Godmode",
		perm = "admin.godmode",
		desc = "Godmode.",
		on = "~g~Godmode ativado!",
		off = "~r~Godmode desativado!",
	},
	hacker = {
		button = "💻Hack",
		perm = "hacker.hack",
		desc = "Tentando Hackear um jogador nas proximidades.",
		hacked = "~r~Alguém hackeou R${1} do seu banco!",
		failed = {
			good = "~g~Hackeado com sucesso!",
			bad = "~r~Falha na tentativa de hacker!",
		},
	},
	inspect = {
		button = "🔎Inspecionar",
		perm = "player.inspect",
		desc = "Inspecione o inventário de jogadores nas proximidades.",
	},
	jail = {
		button = "Cadeia",
		perm = "police.bmjail",
		desc = "Prende um jogador algemado.",
		free = "~b~Você foi liberado.",
		resent = "~r~Acabou sua estadia na prisão.",
		rejailer = "Logging In/Out",
		timer = "Tempo restante: {1} minuto(s).",
		prompt = "Tempo da Sentença:",
		file = "jail.log",
		log = "{1} enviei {2} para encarcerar {3}",
		sent = {
			bad = "~r~Você foi enviado para a prisão!",
			good = "~g~Jogador enviado para a prisão.",
		},
	},
	lockpick = {
		id = "lockpicking_kit",
		name = "Lockpicking Kit",
		button = "Lockpick",
		perm = "carjacker.lockpick",
		desc = "Lockpick veículo próximo.",
		success = "~g~Veículo desbloqueado.",
		toofar = "~r~Muito longe do veículo.",
		unlocked = "~g~Veículo já desbloqueado.",
	},
	loot = {
		button = "💵Saque",
		perm = "player.loot",
		desc = "Saquear perto do corpo.",
	},
	mcharge = {
		button = "📱Taxa móvel",
		perm = "mobile.charge",
		desc = "Carregue os pagamentos com o seu telefone.",
		charger = "~g~Você cobrou ~y~${2}~g~ de ~b~{1}.",
		charged = "~g~Você foi cobrado ~r~${2} por ~b~{1}.",
		log = "{1} cobrado {2} => bancos: {1}:{3} | {2}:{4}",
		file = "mCharge.log",
		prompt = "Valor cobrado {1}:",
		request = "Aceite o pagamento de {2} para {1}?",
		refused = "~b~{1} ~r~recusou a cobrança.",
		not_enough = "~b~{1} ~r~não tem dinheiro suficiente!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Número de tipo",
			prompt = "Número de telefone:",
		},
	},
	money = {
		store = {
			button = "💰Armazenar dinheiro",
			perm = "store.money",
			desc = "Armazenar dinheiro.",
		},
	},
	mpay = {
		button = "💸Pagamento móvel",
		perm = "mobile.pay",
		desc = "Faça pagamentos com seu telefone.",
		transferred = "~g~Você transferiu ~r~${1}~g~ para ~b~{2}.",
		received = "~g~Você recebeu ~y~${2} de ~b~{1}.",
		log = "{1} transferido para {2} => bancos: {1}:{3} | {2}:{4}",
		file = "mPay.log",
		prompt = "Valor para pagar {1}:",
		not_enough = "~b~{1} ~r~você não tem esse dinheiro!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Número de tipo",
			prompt = "Número de telefone:",
		},
	},
	mugger = {
		button = "🔫Assaltante",
		perm = "mugger.mug",
		desc = "Tente assaltar um jogador próximo.",
		mugged = "~r~Alguém assaltado R${1} de sua carteira!",
		failed = {
			good = "~g~A tentativa de roubar falhou!",
			bad = "~r~A tentativa de roubar falhou!",
		},
	},
    player = {
		button = "🚶Jogaodr",
        perm = "player.menu",
        desc = "Menu Jogador.",
    },
	service = {
		button = "📞Service",
		perm = "mission.service",
		desc = "Alternar missões aleatórias.",
		group = "onservice",
		on = "~g~On Service",
		off = "~r~Off Service",
	},
	spawnveh = {
		button = "@Produzir um veículo",
		perm = "admin.spawnveh",
		desc = "Produzir um veículo.",
		prompt = "Modelo do veículo:",
		load = "~b~Carregando modelo de veículo.",
		success = "~g~O veículo gerou.",
		invalid = "~r~Modelo de veículo inválido.",
	},
	spikes = { 
		button = "Pregos",
		perm = "police.spikes",
		desc = "Implantar/Transportar espinhos.",
		admin = "spikes.admin",
		nocarry = "~r~Você não pode transportar mais armadilhas de pregos!",
		nodeploy = "~r~Você não pode implantar mais armadilhas de pregos!",
	},
	sprites = {
		button = "@Sprites",
		perm = "admin.sprites",
		desc = "Toggle sprites.",
		on = "~g~Sprites enabled.",
		off = "~r~Sprites disabled.",
	},
	srun = {
		button = "@Srun",
		perm = "admin.srun",
		desc = "Execute a function remotelly.",
		prompt = "Remote Function:",
	},
	tptowaypoint = {
		button = "@TpToWaypoint",
		perm = "admin.tptowaypoint",
		desc = "Teleporte para o ponto no mapa.",
		notfound = "~r~Marcador de mapa não encontrado!",
		success = "~g~Teleporte para waypoint.",
	},
	unjail = {
		button = "Liberar da prisão",
		perm = "police.bmunjail",
		desc = "Liberar da prisão.",
		admin = "unjail.admin",
		prompt = "User ID:",
		released = "~g~Você liberou um jogador de sua sentença.",
		lowered = "~g~Sua sentença foi reduzida.",
		file = "jail.log",
		log = "{1} Liberar da prisão {2} de {3} minutos restantes",
	},
	userlist = {
		button = "📜Lista de usuários",
		perm = "player.userlist",
		desc = "Alternar lista de usuários",
		format = "[{1}]{2}  |  ",
		nearby = "Jogadores mais próximos: {1}",
	},
	weapons = {
		store = {
			button = "Armazenar armas",
			perm = "store.weapons",
			desc = "Armazenar armas.",
		},
	},
}

return lang