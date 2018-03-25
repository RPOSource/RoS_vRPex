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


local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salário: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Você pagou: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 30 -- minutes between payment for paycheck
cfg.minutes_bill = 30 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Contas Mensais" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["Comandante.paycheck"] = 16110,
  ["Coronel.paycheck"] = 14650,
  ["TeneteCoronel.paycheck"] = 11320,
  ["Major.paycheck"] = 10210,
  ["Capitão.paycheck"] = 8690,
  ["1ºTenente.paycheck"] = 7450,
  ["2ºTenente.paycheck"] = 6345,
  ["Sub-Tenente.paycheck"] = 5650,
  ["Sargento.paycheck"] = 5160,
  ["1ºSargento.paycheck"] = 4850,
  ["2ºSargento.paycheck"] = 4160,
  ["3ºSargento.paycheck"] = 3780,
  ["Cabo.paycheck"] = 3220,
  ["Soldado.paycheck"] = 2900,
  ["Samu.paycheck"] = 4160,
  ["emergency.paycheck"] = 3000,
  ["taxi.paycheck"] = 1000,
  ["repair.paycheck"] = 1000,
  ["delivery.paycheck"] = 1000
}

cfg.bill = { -- ["permission"] = withdrawal
  ["Comandante.paycheck"] = 1250,
  ["Coronel.paycheck"] = 1150,
  ["TeneteCoronel.paycheck"] = 1000,
  ["Major.paycheck"] = 850,
  ["Capitão.paycheck"] = 750,
  ["1ºTenente.paycheck"] = 650,
  ["2ºTenente.paycheck"] = 650,
  ["Sub-Tenente.paycheck"] = 550,
  ["Sargento.paycheck"] = 550,
  ["1ºSargento.paycheck"] = 350,
  ["2ºSargento.paycheck"] = 350,
  ["3ºSargento.paycheck"] = 350,
  ["Cabo.paycheck"] = 250,
  ["Soldado.paycheck"] = 150,
  ["Samu.paycheck"] = 450,
  ["taxi.paycheck"] = 100,
  ["repair.paycheck"] = 100,
  ["delivery.paycheck"] = 100
}

return cfg
