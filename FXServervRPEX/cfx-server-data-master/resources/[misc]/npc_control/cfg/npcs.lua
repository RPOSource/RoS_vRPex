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

cfg.density = {
	peds = 0.8,
	vehicles = 0.8
}

cfg.peds = { -- these peds wont show up anywhere, they will be removed and their vehicles deleted
  "s_m_y_cop_01",
  "s_f_y_cop_01",
  "s_f_y_sheriff_01",
  "s_m_y_sheriff_01",
  "s_m_y_hwaycop_01",
  "s_m_y_swat_01",
  "s_m_m_snowcop_01",
  "s_m_m_paramedic_01",
  "g_m_y_ballaeast_01",
  "g_m_y_ballaorig_01",
  "g_m_y_ballasout_01",
  "g_f_y_ballas_01",
  "g_m_y_famca_01",
  "g_m_y_famdnf_01",
  "g_m_y_famfor_01",
  "g_m_y_lost_01",
  "g_m_y_lost_02",
  "g_m_y_lost_03",
  "g_f_y_families_01",
}

cfg.noguns = { -- these peds wont have any weapons
	"g_m_y_lost_01",
	"g_m_y_lost_02",
	"g_m_y_lost_03",
}

cfg.nodrops = { -- these peds wont drop their weapons when killed
	"s_m_m_marine_01",
	"s_m_m_marine_02",
	"s_m_y_marine_01",
	"s_m_y_marine_02",
	"s_m_y_marine_03",
	"s_m_m_prisguard_01",
	"s_m_m_highsec_01",	
	"s_m_m_highsec_02",
	"s_m_y_baywatch_01",
	"s_f_y_baywatch_01",
	"s_m_m_security_01",
	"g_m_y_lost_01",
	"g_m_y_lost_02",
	"g_m_y_lost_03",
	"g_m_y_ballaeast_01",
	"g_m_y_ballaorig_01",
	"g_m_y_ballasout_01",
	"g_m_y_mexgoon_01",
	"g_m_y_mexgoon_02",
	"g_m_y_mexgoon_03",
	"g_m_y_salvagoon_01",
	"g_m_y_salvagoon_02",
	"g_m_y_salvagoon_03",
	"g_m_y_strpunk_01",
	"g_m_y_strpunk_02",
	"g_m_y_korean_01",
	"g_f_y_lost_01",
	"g_f_y_ballas_01",
	"g_m_y_famca_01",
	"g_m_y_famdnf_01",
	"g_m_y_famfor_01",
	"a_m_m_og_Boss_01",
	"g_m_m_ChiBoss_01",
	"g_m_m_Chigoon_01",
	"g_m_m_Chigoon_02",
	"g_m_m_korboss_01",
	"g_m_y_korlieut_01",
	"g_m_y_korean_01",
	"g_m_y_korean_02",
	"g_m_y_korlieut_01",
	"g_m_y_salvaboss_01",
	"a_m_y_mexthug_01",
	"g_f_y_vagos_01",
	"s_m_m_gardener_01",
	"a_m_y_genstreet_01",
	"a_m_y_Downtown_01",
	"a_m_y_genstreet_02",
	"a_m_y_stbla_01",
	"a_m_y_stwhi_02",
	"a_m_y_hiker_01",
	"a_m_o_genstreet_01",
	"s_m_m_lathandy_01",
	"s_f_y_migrant_01",
	"g_f_y_families_01",
	"g_m_m_armboss_01",
	"g_m_m_armgoon_01",
	"g_m_m_armlieut_01",
	"g_m_y_armgoon_02",
	"a_f_m_salton_01",
	"a_f_o_salton_01",
	"a_m_m_salton_01",
	"a_m_o_salton_01",
	"a_m_y_salton_01",
	"a_m_m_salton_02",
	"a_m_m_salton_03",
	"a_m_m_salton_04",
	"a_m_m_rurmeth_01",
	"a_m_m_hillbilly_02",
	"a_m_m_acult_01",
	"a_m_o_acult_01",
	"a_m_o_acult_02",
	"a_m_y_acult_01",
	"a_m_y_acult_02",
}


--[[ WORK IN PROGRESS // DOES NOT WORK
cfg.vehs = { -- these vehicles wont show up anywhere, they will be removed unless a player is in the driver seat
  "police",
  "policet",
  "sheriff",
  "fbi",
  "pranger",
  "riot",
  "pbus"
}
]]