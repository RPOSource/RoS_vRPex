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
  blip = "Assalto",
  cops = {
    cant_rob = "~r~Os policiais não têm permissão para roubar as lojas!",
	not_enough = "~r~Você precisa, pelo menos, de {1} policiais online"
  },
  robbery = {
	wait = "Já foi roubado recentemente. Por favor espere ^2{1}^0 segundos.",
	progress = "Roubo em andamento em ^2{1}",
	started = "Você começou um roubo em: ^2{1}^0, não se afaste muito do ponto!",
	hold = "Segure o forte para ^1{1} ^0minutos e o dinheiro é seu!",
	over = "O roubo acabou em: ^2{1}^0!",
	canceled = "O roubo foi cancelado em: ^2{1}^0!",
	done = "Roubo terminado, você recebeu : ^2{1}^0!"
  },
  title = {
    robbery = "ASSALTO",
	news = "NOTICIA",
	system = "SYSTEM"
  },
  client = {
	rob = "Aperte ~INPUT_RELOAD~ para roubar ~b~{1}~w~ cuidado, a polícia será alertada!",
    robbing = "Roubando: ~r~{1}~w~ segundos restantes",
	canceled = "O Assalto ao Banco foi cancelado, voce não receberá nada."
  }
}

return lang