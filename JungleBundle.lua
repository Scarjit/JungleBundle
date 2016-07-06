--[[
       _                   _      ____                  _ _      
      | |                 | |    |  _ \                | | |     
      | |_   _ _ __   __ _| | ___| |_) |_   _ _ __   __| | | ___ 
  _   | | | | | '_ \ / _` | |/ _ \  _ <| | | | '_ \ / _` | |/ _ \
 | |__| | |_| | | | | (_| | |  __/ |_) | |_| | | | | (_| | |  __/
  \____/ \__,_|_| |_|\__, |_|\___|____/ \__,_|_| |_|\__,_|_|\___|
                      __/ |                                      
                     |___/                                       
]]--

local champions = {
	["Evelynn"] = true,
	["Hecarim"] = true,
	["Maokai"] = true,
	["Nocturne"] = true,
	["Nunu"] = true,
	["Rammus"] = true,
	["RekSai"] = true,
	["Shyvana"] = true,
	["Skarner"] = true,
	["Trundle "] = true,
	["Vi"] = true,
	["Zac"] = true
}

if !champions[myHero.charName] then return end

class("Core")
function Core:__init()
	self.champclass = myHero.charName()
end

class("Evelynn")
function Evelynn:__init()
	
end
class("Hecarim")
function Hecarim:__init()
	
end
class("Maokai")
function Maokai:__init()
	
end
class("Nocturne")
function Nocturne:__init()
	
end
class("Nunu")
function Nunu:__init()
	
end
class("Rammus")
function Rammus:__init()
	
end
class("RekSai")
function RekSai:__init()
	
end
class("Shyvana")
function Shyvana:__init()
	
end
class("Skarner")
function Skarner:__init()
	
end
class("Trundle")
function Trundle:__init()
	
end
class("Vi")
function Vi:__init()
	
end
class("Zac")
function Zac:__init()
	
end