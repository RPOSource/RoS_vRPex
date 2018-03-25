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

cfg.lang = "en"
-- define customization parts
local parts = {
  ["Rosto"] = -1,
  ["Olho"] = -2,
  ["Manchas"] = 0,
  ["Barba"] = 1,
  ["Sobrancelhas"] = 2,
  ["Envelhecimento"] = 3,
  ["Maquiagem"] = 4,
  ["Blush"] = 5,
  ["Aspecto"] = 6,
  ["Cor"] = 7,
  ["Batom"] = 8,
  ["Verrugas/Sardas"] = 9,
  ["Cabelo no peito"] = 10,
  ["Manchas do corpo"] = 11,
  ["Cabelo"] = 12
}

-- changes prices (any change to the character parts add amount to the total price)
cfg.drawable_change_price = 20
cfg.texture_change_price = 5

-- skinshops list {parts,x,y,z}
cfg.barbershops = {
{parts,-815.59008789063,-182.16806030273,37.568920135498},
{parts,139.21583557129,-1708.9689941406,29.301620483398},
{parts,-1281.9802246094,-1119.6861572266,7.0001249313354},
{parts,1934.115234375,3730.7399902344,32.854434967041},
{parts,1211.0759277344,-475.00064086914,66.218032836914},
{parts,-34.97777557373,-150.9037322998,57.086517333984},
{parts,-280.37301635742,6227.017578125,31.705526351929}
}

-- default bald head
cfg.default = {
["-1"] = {0,0}, --{0,0}
["9"] = {18,0}, --{18,0}
["7"] = {11,0}, --{11,0}
["8"] = {10,0}, --{10,0}
["10"] = {17,0}, --{17,0}
["11"] = {12,0}, --{12,0}
["12"] = {74,0}, --{74,0}
["6"] = {12,0}, --{12,0}
["5"] = {7,0}, --{7,0}
["4"] = {72,0}, --{72,0}
["3"] = {15,0}, --{15,0}
["2"] = {34,0}, --{34,0}
["1"] = {29,0}, --{29,0}
["0"] = {24,0}, --{24,0}
["-2"] = {32,0}, --{32,0}
}

return cfg
