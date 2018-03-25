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
  garage = {
    buy = {
	  item = "{2} {1}<br /><br />{3}",
	  request = "Tem certeza de que deseja comprar este veículo?",
	},
    keys = {
	  title = "Chaves",
	  key = "Key ({1})",
	  description = "Verifique as chaves do seu veículo",
	  sell = {
	    title = "Venda",
		prompt = "Oferecer valor da venda:",
	    owned = "Já possui o veículo",
		request = "Você aceita a oferta para comprar o {1} por {2}?",
		description = "Oferecer para vender o veículo ao jogador mais próximo"
	  }
	},
    personal = {
	  client = {
	    locked = "Veiculo trancado",
		unlocked = "Veiculo destrancado"
	  },
	  out = "Veículo deste modelo já está fora da garagem",
	  bought = "Veículo foi guardado em sua garagem",
	  sold = "Veiculo vendido",
	  stored = "Veiculo guardado",
	  toofar = "Veiculo muito longe do destino"	  
	},
	showroom = {
	  title = "Showroom",
	  description = "Pressione o botão para direita no celular para ver o carro e entrar para comprá-lo"
	},
    shop = {
	  title = "Loja",
	  description = "Scroll through vehicle modifications",
	  client = {
	    nomods = "~r~Nenhuma modificação deste tipo para este veículo",
		maximum = "You've reached the ~y~maximum~w~ value for this modification",
		minimum = "You've reached the ~r~minimum~w~ value for this modification",
	    toggle = {
		  applied = "~g~Modificarion applied",
		  removed = "~r~Modificarion removed"
		}
	  },
	  mods = {
	    title = "Modificações",
		info = "Scroll through modifications",
	  },
	  repair = {
	    title = "Reparar",
		info = "Conserte o seu veículo",
	  },
	  colour = {
	    title = "Color",
		info = "Scroll through vehicle colors",
		primary = "Primary Color",
		secondary = "Secondary Color",
	    extra = {
		  title = "Extra Color",
		  info = "Scroll through extra colors",
	      pearlescent = "Pearlescent Color",
	      wheel = "Wheel Color",
	      smoke = "Smoke Color",
		},
		custom = {
		  primary = "Custom Primary Color",
		  secondary = "Custom Secondary Color",
		},
	  },
	  neon = {
	    title = "Neon Light",
		info = "Change neon lights",
	    front = "Front Neon",
	    back = "Back Neon",
	    left = "Left Neon",
	    right = "Right Neon",
	    colour = "Neon Color"
	  }
	}
  }
}

return lang
