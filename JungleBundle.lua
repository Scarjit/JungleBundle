--[[
       _                   _      ____                  _ _      
      | |                 | |    |  _ \                | | |     
      | |_   _ _ __   __ _| | ___| |_) |_   _ _ __   __| | | ___ 
  _   | | | | | '_ \ / _` | |/ _ \  _ <| | | | '_ \ / _` | |/ _ \
 | |__| | |_| | | | | (_| | |  __/ |_) | |_| | | | | (_| | |  __/
  \____/ \__,_|_| |_|\__, |_|\___|____/ \__,_|_| |_|\__,_|_|\___|
                      __/ |                                      
                     |___/     


     		SCRIPT BY DrPhoenix & S1mple


Changelog :

  BETA
	0.1 : First release
	
	More Soon !
	
                                  
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


assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("")

local function printC(arg)
	print("<font color=\"#007f06\"><b>[</b></font><font color=\"#00bc06\"><b>Jungle Bundle</b></font><font color=\"#007f06\"><b>]</b></font> <font color=\"#10ff00\">"..arg.."</font>")
end

-- Made by Nebelwolfi. Makes Classes Local, Not Global --
function Class(name)
	_ENV[name] = { }
	_ENV[name].__index = _ENV[name]
	local mt = { __call = function(self, ...) local b = { } setmetatable(b, _ENV[name]) b:__init(...) return b end }
	setmetatable(_ENV[name], mt)
end

Class("Core")
function Core:__init()
	self.version = "0.1"
	if not self:loadchamp() then return end
	self:managers()
	self:menu()
	self.ItemManager = ItemManager()
	AddDrawCallback(function ()
		self:draw()
	end)
	AddTickCallback(function ()
		self:updateManagers()
	end)
end

function Core:loadchamp()
	if (champions[myHero.charName] and _ENV["_" .. myHero.charName]) then
		self.champion = _ENV["_" .. myHero.charName]()
		printC("Loading "..myHero.charName)
		return true
	else
		print(myHero.charName.. " - Is not Supported")
		return false
	end
end

function Core:managers()
	self.ts = TargetSelector(TARGET_LOW_HP_PRIORITY, 1000, DAMAGE_PHYSICAL, true)
	self.ts.name = "Target Select"
	self.jm = minionManager(MINION_JUNGLE, 1000, myHero, MINION_SORT_HEALTH_ASC)
	self.mm = minionManager(MINION_ENEMY, 1000, myHero, MINION_SORT_HEALTH_ASC)
end

function Core:updateManagers()
	self.ts:update()
	self.jm:update()
	self.mm:update()
end

function Core:menu()
	self.Menu = scriptConfig("Jungle Bundle", "Menu")

	self.Menu:addSubMenu("Key Settings", "KeySettings")
		self.Menu.KeySettings:addParam("comboON", "Combo", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
		self.Menu.KeySettings:addParam("JungleClearON", "Jungle Clear", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
		self.Menu.KeySettings:addParam("WaveClearON", "Wave Clear", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
		self.Menu.KeySettings:addParam("HarrassON", "Harrass", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
		self.Menu.KeySettings:addParam("LastHitON", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
			
	self.Menu:addSubMenu("Humanizer", "HumanizerSettings")
		self.Menu.HumanizerSettings:addParam("SmiteHumanizerON", "Humanizer for Smite", SCRIPT_PARAM_ONOFF, true)
		self.Menu.HumanizerSettings:addParam("SmiteHumanizerMinValue", "Min Value", SCRIPT_PARAM_SLICE, 100, 0, 1000, 0)
		self.Menu.HumanizerSettings:addParam("SmiteHumanizerMaxValue", "Max Value", SCRIPT_PARAM_SLICE, 200, 0, 1000, 0)
			self.Menu.HumanizerSettings:setCallback("SmiteHumanizerMinValue", function (value) if value < self.Menu.HumanizerSettings.SmiteHumanizerMinValue then self.Menu.HumanizerSettings.SmiteHumanizerMaxValue = self.Menu.HumanizerSettings.SmiteHumanizerMinValue end end)
			self.Menu.HumanizerSettings:setCallback("SmiteHumanizerMaxValue", function (value) if value > self.Menu.HumanizerSettings.SmiteHumanizerMaxValue then self.Menu.HumanizerSettings.SmiteHumanizerMinValue = self.Menu.HumanizerSettings.SmiteHumanizerMaxValue end end)
		self.Menu.HumanizerSettings:addParam("SpaceHumanizer11","____________________________________________", 5, "")
		self.Menu.HumanizerSettings:addParam("SpaceHumanizer12","", 5, "")
		self.Menu.HumanizerSettings:addParam("QSSHumanizerON", "Humanizer for QSS", SCRIPT_PARAM_ONOFF, true)
		self.Menu.HumanizerSettings:addParam("QSSHumanizerMinValue", "Min Value", SCRIPT_PARAM_SLICE, 100, 0, 1000, 0)
		self.Menu.HumanizerSettings:addParam("QSSHumanizerMaxValue", "Max Value", SCRIPT_PARAM_SLICE, 200, 0, 1000, 0)
			self.Menu.HumanizerSettings:setCallback("QSSHumanizerMinValue", function (value) if value < self.Menu.HumanizerSettings.QSSHumanizerMinValue then self.Menu.HumanizerSettings.QSSHumanizerMaxValue = self.Menu.HumanizerSettings.QSSHumanizerMinValue end end)
			self.Menu.HumanizerSettings:setCallback("QSSHumanizerMaxValue", function (value) if value > self.Menu.HumanizerSettings.QSSHumanizerMaxValue then self.Menu.HumanizerSettings.QSSHumanizerMinValue = self.Menu.HumanizerSettings.QSSHumanizerMaxValue end end)
		
	self.Menu:addSubMenu("Draw", "DrawSettings")
		self.Menu.DrawSettings:addParam("DrawAaON", "Draw AA range", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("DrawTargetON", "Draw current target", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("LastHitDrawON", "Draw Last Hit Helper", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("SmiteDrawON", "Draw Smite Helper", SCRIPT_PARAM_ONOFF, true)

	self.Menu:addSubMenu("Miscellaneous", "MiscSettings")
		self.Menu.MiscSettings:addParam("UseSmite", "Smite Dragon, Rift Herald and Baron", SCRIPT_PARAM_ONOFF, true)
		self.Menu.MiscSettings:addParam("SetSkin", "Select Skin", SCRIPT_PARAM_SLICE, 0, 0, 20, 0)
			self.Menu.MiscSettings:setCallback("SetSkin", function (value) SetSkin(myHero, self.Menu.MiscSettings.SetSkin - 1) end)
	
	self.Menu:addTS(self.ts)
	
	self.Menu:addParam("space2", "", 5, "")
	self.Menu:addParam("signature0", "              Jungle Bundle v"..self.version, 5, "")
	self.Menu:addParam("signature1", "            by DrPhoenix and S1mple    ", 5, "")
end

function Core:draw()
	if self.Menu.DrawSettings.DrawAaON then
		DrawCircle3D(myHero.x,myHero.y,myHero.z,myHero.range+myHero.boundingRadius,1,ARGB(255,0,255,0),15)
	end
	if self.Menu.DrawSettings.DrawTargetON then
		local target = nil
		if self.Menu.KeySettings.comboON or self.Menu.KeySettings.HarrassON then
			target = self.ts.target
		end
		if self.Menu.KeySettings.JungleClearON then
			target = self.jm.objects[1]
		end
		if not target and self.Menu.KeySettings.WaveClearON then
			target = self.mm.objects[1]
		end
		if target then
			DrawCircle3D(target.x,target.y,target.z,25,3,ARGB(255,255,0,0),8)
		end
	end
end

function Core:smite()
	if myHero.level <= 4 then
		SmiteDamage = 370 + (myHero.level*20)
	end
	if myHero.level > 4 and myHero.level <= 9 then
		SmiteDamage = 330 + (myHero.level*30)
	end
	if myHero.level > 9 and myHero.level <= 14 then
		SmiteDamage = 240 + (myHero.level*40)
	end
	if myHero.level > 14 then
		SmiteDamage = 100 + (myHero.level*50)
	end
	
	if self.Menu.MiscSettings.UseSmite then
		for i, jungle in pairs(jungleMinions.objects) do
			if jungle ~= nil then
				if SmitePos ~= nil and myHero:CanUseSpell(SmitePos) == READY and GetDistance(jungle) <= 560 and jungle.health <= SmiteDamage then
					if jungle.charName == "SRU_Baron" or jungle.charName == "SRU_Dragon_Water" or jungle.charName == "SRU_Dragon_Fire" or jungle.charName == "SRU_Dragon_Earth" or jungle.charName == "SRU_Dragon_Air" or jungle.charName == "SRU_Dragon_Elder" or jungle.charName == "SRU_RiftHerald" then
						DelayAction(function() CastSpell(SmitePos, jungle) end, SmiteHumanizer)
					end
				end
			end
		end
	end	
end

Class("ItemManager")
function ItemManager:__init()
	self.OffensiveItemsList = {
		TMT = { id = 3077, range = 189, reqTarget = false, slot = nil }, -- Tiamat
		THD = { id = 3074, range = 189, reqTarget = false, slot = nil }, -- Ravenous Hydra
		THD = { id = 3748, range = 189, reqTarget = false, slot = nil }, -- Titanic Hydra
		BWC = { id = 3144, range = 400, reqTarget = true, slot = nil }, -- Bilgewater Cutlass
		BRK = { id = 3153, range = 450, reqTarget = true, slot = nil }, --Blade of the ruined king
		SR = { id = 3715, range = 560, reqTarget = true, slot = nil }, -- Red Smite
		SB = { id = 3706, range = 560, reqTarget = true, slot = nil }, -- Blue Smite
		SRD = { id = 1419, range = 560, reqTarget = true, slot = nil }, -- Red Smite Bloodrazor
		SBD = { id = 1416, range = 560, reqTarget = true, slot = nil }, -- Blue Smite Bloodrazor
		YGB = { id = 3142, range = 1000, reqTarget = false, slot = nil } -- Youmuu Ghostblade
	}

	self.DefensiveItemsList = {
		QSS = { id = 3140, slot = nil }, -- Quicksilver Sash
		MCS = { id = 3139, slot = nil } -- Mercurial Scimitar
	}
end

function ItemManager:menu()
	Core.Menu:addSubMenu("Items", "ItemsSettings")
	Core.Menu.ItemsSettings:addParam("SmiteChampON", "Use smite on champion", SCRIPT_PARAM_ONOFF, true)
	Core.Menu.ItemsSettings:addParam("OffensiveItemsON", "Use Offensive Items in combo mode", SCRIPT_PARAM_ONOFF, true)
	Core.Menu.ItemsSettings:addSubMenu("QSS","QSS")
		Core.Menu.ItemsSettings.QSS:addParam("Stun", "Remove stun", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Silence", "Remove silence", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Taunt", "Remove taunt", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Root", "Remove root", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Fear", "Remove fear", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Charm", "Remove charm", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Suppression", "Remove suppression", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Blind", "Remove blind", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("KnockUp", "Remove knock up", SCRIPT_PARAM_ONOFF, true)
		Core.Menu.ItemsSettings.QSS:addParam("Exhaust", "Remove exhaust", SCRIPT_PARAM_ONOFF, true)
end

Class("_Evelynn")
function _Evelynn:__init()
	
end

Class("_Hecarim")
function _Hecarim:__init()
	
end
Class("_Maokai")
function _Maokai:__init()
	
end
Class("_Nocturne")
function _Nocturne:__init()
	
end
Class("_Nunu")
function _Nunu:__init()
	
end
Class("_Rammus")
function _Rammus:__init()
	
end
Class("_RekSai")
function _RekSai:__init()
	
end
Class("_Shyvana")
function _Shyvana:__init()
	
end
Class("_Skarner")
function _Skarner:__init()
	
end
Class("_Trundle")
function _Trundle:__init()
	
end
Class("_Vi")
function _Vi:__init()
	
end
Class("_Zac")
function _Zac:__init()
	
end

function OnLoad()
	Core = Core()
	printC("Loaded")
end