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
  dmv = {
    police = {
	  check = "Checar CNH",
	  take = "Pegar CNH",
	  perm_ask = "police.asklc",
	  perm_take = "police.takelc",
	  check_desc = "Verifique a CNH do jogador mais próximo.",
	  take_desc = "Pegue a CNH do jogador mais próximo.",
	  ask = "Pedindo CNH...",
	  request = "Deseja mostrar sua CNH?",
	  request_hide = "Hide the license card.",
	  confirm = "Tem certeza de que quer pegar esta CNH?",
	  license = "<em>Nome: </em>{1}<br /><em>Primeiro nome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Celular: </em>{5}<br /><em>Data: </em>{6}",
	  no_license = "~r~Este jogador não possui CNH!",
	  took_license = "~g~A CNH foi removida.",
	  license_taken = "~r~Sua CNH foi removida!"
    },
  },
  client = {
    locked = "~r~Trancado",
	failed = "Você falhou\nVocê acumulou {1} ~r~ponto de erros",
	passed = "Você passou\nVocê acumulou {1} ~r~ponto de erros",
	proceed = "~b~Você passou no teste teórico, agora pode seguir para o teste de condução",
	try_again = "~r~Você falhou no teste, você pode tentar novamente outro dia",
	no_license = "~r~Você está dirigindo sem CNH",
	interact = "Aperte no celular ~INPUT_CONTEXT~ para interagir com o ~y~NPC",
	welcome = "~b~Bem vindo ao ~h~DETRAN!",
	menu = {
	  obtain = "Obtain a drivers license",
	  intro = "Introdução    GRÁTIS",
	  theory = "Teste teórico    R$500",
	  practical = "Teste prático    R$1000",
	  mreturn = "Retornar",
	  mclose = "Fechar",
	},
	control = {
	  enabled = "~y~Controle de velocidade: ~g~ativado\n~s~velocidade máxima {1}kmh",
	  disabled = "~y~Controle de velocidade: ~r~desativado",
	  help = "Ajuste sua velocidade máxima com ~INPUT_CELLPHONE_UP~ ou ~INPUT_CELLPHONE_DOWN~",
	  speed = "Velocidade máxima ajustada para {1}kmh",
	  cant_leave = "Você não pode deixar o veículo durante o teste",
	  not_dirving = "Você precisa estar dirigindo para executar esta ação",
	},
    pnotify = {
      speeding = "Você está acelerando! <b style='color:#B22222'>Desacelere!</b><br /><br />Você está dirigindo em um <b style='color:#DAA520'>{1} km/h</b> zona!",
	  damaged = "O veículo foi <b style='color:#B22222'>danificado!</b><br /><br />Cuidado!",
	  area = "Area: ~y~{1}\n~s~Limite de velocidade: ~y~{2} km/h\n~s~Pontos de erros: ~y~{3}/{4}",
	},
  },
}

return lang