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

if not _G.UPLloaded then
  if FileExist(LIB_PATH .. "/UPL.lua") then
    require("UPL")
    _G.UPL = UPL()
  else 
    print("Downloading UPL, please don't press F9")
    DelayAction(function() DownloadFile("https://raw.github.com/nebelwolfi/BoL/master/Common/UPL.lua".."?rand="..math.random(1,10000), LIB_PATH.."UPL.lua", function () print("Successfully downloaded UPL. Press F9 twice.") end) end, 3) 
    return
  end
end

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
	self.DL = Download()
	self.version = "0.1"
	self:update()

	if not champions[myHero.charName] then return end
	self.TargetSelector = TargetSelector()
	self:menu()

	self.OrbWalkerManager = OrbWalkerManager(self.Menu, self.TargetSelector)
	self.ItemManager = ItemManager(self.Menu)
	AddDrawCallback(function ()
		self:draw()
	end)
	AddTickCallback(function ()
		self:smite()
	end)
	self:loadchamp()
end

function Core:update()
	if GetGameTimer() > 120 then printC("Game is already progressing, skipping Auto Update") return end
	local UpdateHost = "www.s1mplescripts.de"
	local ServerPath = "/JungleBundle/"
	local ServerFileName = "JungleBundle.lua"
	local ServerVersionFileName = "JungleBundle.version"
	local ServerVersionRaw = GetWebResult("s1mplescripts.de", ServerPath..ServerVersionFileName)
	if ServerVersionRaw then
		local ServerVersion = tonumber(ServerVersionRaw)
		if ServerVersion then
			if ServerVersion > tonumber(self.version) then
				printC("Updating from "..self.version.." ==> "..ServerVersion)
				self.DL:newDL(UpdateHost,ServerPath..ServerFileName, GetCurrentEnv().FILE_NAME, SCRIPT_PATH, function ()
					printC("JungleBundle updated, please reload")
				end)
			end
		else
			printC("An error occured while updating, please reload")
		end
	else
		printC("Could not connect to the update Server")
	end

end

function Core:loadchamp()
	if (champions[myHero.charName] and _ENV["_" .. myHero.charName]) then
		self.champion = _ENV["_" .. myHero.charName](self.Menu, self.TargetSelector, self.OrbWalkerManager)
		printC("Loading "..myHero.charName)
		return true
	else
		print(myHero.charName.. " - Is not Supported")
		return false
	end
end

function Core:menu()
	self.Menu = scriptConfig("Jungle Bundle", "Menu")

	self.Menu:addSubMenu("Key Settings", "KeySettings")
		self.Menu.KeySettings:addParam("loading", "Please wait while the OrbWalker is loading",5,"")
			
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
		self.Menu.HumanizerSettings:addParam("SpaceHumanizer13","____________________________________________", 5, "")
		self.Menu.HumanizerSettings:addParam("SpaceHumanizer14","", 5, "")
		self.Menu.HumanizerSettings:addParam("SpellsHumanizerON", "Humanizer for Spells", SCRIPT_PARAM_ONOFF, true)
		self.Menu.HumanizerSettings:addParam("SpellsHumanizerMinValue", "Min Value", SCRIPT_PARAM_SLICE, 100, 0, 1000, 0)
		self.Menu.HumanizerSettings:addParam("SpellsHumanizerMaxValue", "Max Value", SCRIPT_PARAM_SLICE, 200, 0, 1000, 0)
			self.Menu.HumanizerSettings:setCallback("SpellsHumanizerMinValue", function (value) if value < self.Menu.HumanizerSettings.SpellsHumanizerMinValue then self.Menu.HumanizerSettings.SpellsHumanizerMaxValue = self.Menu.HumanizerSettings.SpellsHumanizerMinValue end end)
			self.Menu.HumanizerSettings:setCallback("SpellsHumanizerMaxValue", function (value) if value > self.Menu.HumanizerSettings.SpellsHumanizerMaxValue then self.Menu.HumanizerSettings.SpellsHumanizerMinValue = self.Menu.HumanizerSettings.SpellsHumanizerMaxValue end end)

	self.Menu:addSubMenu("Draw", "DrawSettings")
		self.Menu.DrawSettings:addParam("DrawAaON", "Draw AA range", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("DrawTargetON", "Draw current target", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("LastHitDrawON", "Draw Last Hit Helper", SCRIPT_PARAM_ONOFF, true)
		self.Menu.DrawSettings:addParam("SmiteDrawON", "Draw Smite Helper", SCRIPT_PARAM_ONOFF, true)

	self.Menu:addSubMenu("Miscellaneous", "MiscSettings")
		self.Menu.MiscSettings:addParam("UseSmite", "Smite Dragon, Rift Herald and Baron", SCRIPT_PARAM_ONOFF, true)
		self.Menu.MiscSettings:addParam("SetSkin", "Select Skin", SCRIPT_PARAM_SLICE, 0, 0, 20, 0)
			self.Menu.MiscSettings:setCallback("SetSkin", function (value) SetSkin(myHero, self.Menu.MiscSettings.SetSkin - 1) end)
	
	self.Menu:addParam("space2", "", 5, "")
	self.Menu:addParam("signature0", "              Jungle Bundle v"..self.version, 5, "")
	self.Menu:addParam("signature1", "            by DrPhoenix and S1mple    ", 5, "")
end

function Core:draw()
	if self.Menu.DrawSettings.DrawAaON then
		DrawCircle3D(myHero.x,myHero.y,myHero.z,myHero.range+myHero.boundingRadius,1,ARGB(255,0,255,0),15)
	end
	if self.Menu.DrawSettings.DrawTargetON then
		target = OrbWalkerManager:GetTarget()
		if target then
			DrawCircle3D(target.x,target.y,target.z,25,3,ARGB(255,255,0,0),8)
		end
	end
end

function Core:smite()
	if self.Menu.MiscSettings.UseSmite then
		if self.TargetSelector:GetJungleMinion(560) == nil then return end

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
		if self.Menu.HumanizerSettings.SmiteHumanizerON then
			SmiteHumanizer = math.random(self.Menu.HumanizerSettings.SmiteHumanizerMinValue/1000,self.Menu.HumanizerSettings.SmiteHumanizerMaxValue/1000)
		else
			SmiteHumanizer = 0
		end

		local jungle = self.TargetSelector:GetJungleMinion(560)
		if SmitePos ~= nil and myHero:CanUseSpell(SmitePos) == READY and jungle.health <= SmiteDamage then
			if jungle.charName == "SRU_Baron" or jungle.charName == "SRU_Dragon_Water" or jungle.charName == "SRU_Dragon_Fire" or jungle.charName == "SRU_Dragon_Earth" or jungle.charName == "SRU_Dragon_Air" or jungle.charName == "SRU_Dragon_Elder" or jungle.charName == "SRU_RiftHerald" then
				DelayAction(function() CastSpell(SmitePos, jungle) end, SmiteHumanizer)
			end
		end
	end	
end

Class("ItemManager")
function ItemManager:__init(menu)
	self.Menu = menu
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
	self:menu()
end

function ItemManager:menu()
	self.Menu:addSubMenu("Items", "ItemsSettings")
	self.Menu.ItemsSettings:addParam("SmiteChampON", "Use smite on champion", SCRIPT_PARAM_ONOFF, true)
	self.Menu.ItemsSettings:addParam("OffensiveItemsON", "Use Offensive Items in combo mode", SCRIPT_PARAM_ONOFF, true)
	self.Menu.ItemsSettings:addSubMenu("QSS","QSS")
		self.Menu.ItemsSettings.QSS:addParam("Stun", "Remove stun", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Silence", "Remove silence", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Taunt", "Remove taunt", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Root", "Remove root", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Fear", "Remove fear", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Charm", "Remove charm", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Suppression", "Remove suppression", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Blind", "Remove blind", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("KnockUp", "Remove knock up", SCRIPT_PARAM_ONOFF, true)
		self.Menu.ItemsSettings.QSS:addParam("Exhaust", "Remove exhaust", SCRIPT_PARAM_ONOFF, true)
end

Qsceduled = false
Wsceduled = false
Esceduled = false
Rsceduled = false
function CastSpellHumanized(menu, slot, target, posX, posY)
	if myHero:CanUseSpell(slot) ~= 0 then return end
	if slot == _Q then
		if Qsceduled then return end
		Qsceduled = true
	elseif slot == _W then
		if Wsceduled then return end
		Wsceduled = true
	elseif slot == _E then
		if Esceduled then return end
		Esceduled = true
	else
		if Rsceduled then return end
		Rsceduled = true
	end
	if menu.HumanizerSettings.SpellsHumanizerON then
		SpellHumanizer = math.random(menu.HumanizerSettings.SpellsHumanizerMinValue/1000, menu.HumanizerSettings.SpellsHumanizerMaxValue/1000)
	else
		SpellHumanizer = 0
	end
	if target then
		DelayAction(function ()
			CastSpell(slot, target)

			if slot == _Q then
				Qsceduled = false
			elseif slot == _W then
				Wsceduled = false
			elseif slot == _E then
				Esceduled = false
			else
				Rsceduled = false
			end

		end, SpellHumanizer)
	elseif posX and posY then
		DelayAction(function ()
			CastSpell(slot, posX, posY)

			if slot == _Q then
				Qsceduled = false
			elseif slot == _W then
				Wsceduled = false
			elseif slot == _E then
				Esceduled = false
			else
				Rsceduled = false
			end

		end, SpellHumanizer)
	else
		DelayAction(function ()
			CastSpell(slot)

			if slot == _Q then
				Qsceduled = false
			elseif slot == _W then
				Wsceduled = false
			elseif slot == _E then
				Esceduled = false
			else
				Rsceduled = false
			end

		end, SpellHumanizer)
	end
end

Class("_Evelynn")
function _Evelynn:__init(menu, TargetSelector, OrbWalkerManager)
	self.menu = menu
	self.TargetSelector = TargetSelector
	self.OrbWalkerManager = OrbWalkerManager
	self:Menu()
	self:SetupUPL()
	AddTickCallback(function ()
		local mode = OrbWalkerManager:GetOrbMode()
		if mode == 1 then
			self:h()
		elseif mode == 2 then
			self:lc()
		elseif mode == 4 then
			self:c()
		elseif mode == 5 then
			self:jc()
		end
	end)
	AddApplyBuffCallback(function (src, target, buff)
		self:applybuff(src, target, buff)
	end)
end

function _Evelynn:applybuff(src, target, buff)
	if target and target.isMe and buff.type == 3 then --Slow
		if self.menu.Evelynn.as.autoW then
			CastSpellHumanized(self.menu, _W)
		end
	end
end

function _Evelynn:Menu()
	self.menu:addSubMenu("Evelynn", "Evelynn")
		self.menu.Evelynn:addSubMenu("Jungle Clear", "jc")
			self.menu.Evelynn.jc:addParam("UseQ", "Use Hate Spike (Q)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.jc:addParam("UseE", "Use Ravage (E)", SCRIPT_PARAM_ONOFF, true)
		self.menu.Evelynn:addSubMenu("Lane Clear", "lc")
			self.menu.Evelynn.lc:addParam("UseQ", "Use Hate Spike (Q)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.lc:addParam("UseE", "Use Ravage (E)", SCRIPT_PARAM_ONOFF, true)
		self.menu.Evelynn:addSubMenu("Harrass", "h")
			self.menu.Evelynn.h:addParam("UseQ", "Use Hate Spike (Q)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.h:addParam("UseE", "Use Ravage (E)", SCRIPT_PARAM_ONOFF, true)
		self.menu.Evelynn:addSubMenu("Combo", "c")
			self.menu.Evelynn.c:addParam("UseQ", "Use Hate Spike (Q)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.c:addParam("UseW", "Use Dark Frenzy (W)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.c:addParam("UseE", "Use Ravage (E)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.c:addParam("UseR", "Use Argony's Embrace (R)", SCRIPT_PARAM_ONOFF, true)
			self.menu.Evelynn.c:addParam("space", "", 5, "")
			self.menu.Evelynn.c:addParam("WFarRange", "Search Range Modificator for W", SCRIPT_PARAM_SLICE, 1.5, 1.01, 3, 2)
			self.menu.Evelynn.c:addParam("minR", "Minimum Enemy's for R", SCRIPT_PARAM_SLICE, 3,1,5,0)
		self.menu.Evelynn:addSubMenu("Anti-Slow","as")
			self.menu.Evelynn.as:addParam("autoW", "Auto W if slowed", SCRIPT_PARAM_ONOFF, true)
end

function _Evelynn:SetupUPL()
	UPL:AddToMenu(self.menu)
	UPL:AddSpell(_R, {speed = math.huge, delay = 0.25, range = 650, width = 500, collision = false, aoe = true, type="circular"})
end

function _Evelynn:jc()
	if self.menu.Evelynn.jc.UseQ and myHero:CanUseSpell(_Q) == 0 then
		target = self.TargetSelector:GetJungleMinion(500)
		if target then
			CastSpellHumanized(self.menu, _Q, target)
		end
	end
	if self.menu.Evelynn.jc.UseE and myHero:CanUseSpell(_E) == 0 then
		target = self.TargetSelector:GetJungleMinion(225)
		if target then
			CastSpellHumanized(self.menu, _E, target)
		end
	end
end

function _Evelynn:lc()
	if self.menu.Evelynn.lc.UseQ and myHero:CanUseSpell(_Q) == 0 then
		target = self.TargetSelector:GetEnemyMinion(500)
		if target then
			CastSpellHumanized(self.menu, _Q, target)
		end
	end
	if self.menu.Evelynn.lc.UseE and myHero:CanUseSpell(_E) == 0 then
		target = self.TargetSelector:GetEnemyMinion(225)
		if target then
			CastSpellHumanized(self.menu, _E, target)
		end
	end
end

function _Evelynn:h()
	if self.menu.Evelynn.h.UseQ and myHero:CanUseSpell(_Q) == 0 then
		target = self.TargetSelector:GetEnemyHero(500)
		if target then
			CastSpellHumanized(self.menu, _Q, target)
		end
	end
	if self.menu.Evelynn.h.UseE and myHero:CanUseSpell(_E) == 0 then
		target = self.TargetSelector:GetEnemyHero(225)
		if target then
			CastSpellHumanized(self.menu, _E, target)
		end
	end
end

function _Evelynn:c()
	if self.menu.Evelynn.c.UseQ and myHero:CanUseSpell(_Q) == 0 then
		target = self.TargetSelector:GetEnemyHero(500)
		if target then
			CastSpellHumanized(self.menu, _Q, target)
		end
	end
	if self.menu.Evelynn.c.UseW and myHero:CanUseSpell(_W) == 0 then
		targets = TargetSelector:GetEnemyHeroesInRange(myHero.range+myHero.boundingRadius)
		fartargets = TargetSelector:GetEnemyHeroesInRange((myHero.range+myHero.boundingRadius)*self.menu.Evelynn.c.WFarRange)
		if #targets == 0 and #fartargets > 0 then
			CastSpellHumanized(self.menu, _W)
		end
	end
	if self.menu.Evelynn.c.UseE and myHero:CanUseSpell(_E) == 0 then
		target = self.TargetSelector:GetEnemyHero(225)
		if target then
			CastSpellHumanized(self.menu, _E, target)
		end
	end
	if self.menu.Evelynn.c.UseR and myHero:CanUseSpell(_R) == 0 then
		targets = self.TargetSelector:GetEnemyHeroesInRange(1150) --Cast Range + Spell Width
		local predictedpos = {}
		if #targets >= self.menu.Evelynn.c.minR then
			
			for _,v in ipairs(targets) do
				CastPosition, HitChance, _ = UPL:Predict(_R, myHero,v)
				if CastPosition and HitChance > 0 then
					predictedpos[#predictedpos+1] = Vector(CastPosition)
				end
			end

			castpos = _CalcSpellPosForGroup(500,650, predictedpos)
			if castpos then
				CastSpellHumanized(self.menu, _R, nil, castpos.x, castpos.z)
			end
		end
	end
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

Class("TargetSelector")
function TargetSelector:__init()

	self.AllyForces = {}
	for _,v in pairs(GetAllyHeroes()) do
		self.AllyForces[v.networkID] = v
	end
	self.Minions = {}
	self.JungleMinions = {}
	self.Structures = {}

	--On Reload
	for i = 1, objManager.maxObjects do
		local object = objManager:getObject(i)
		if object and object.valid and object.type and object.type == "obj_AI_Minion" then
			if object.team ~= myHero.team then
				if object.charName:find("Minion") then
					self.Minions[object.networkID] = object
				else
					self.JungleMinions[object.networkID] = object
				end
			else
				if object.charName:find("Minion") then
					self.AllyForces[object.networkID] = object 
				end
			end
		elseif object and object.valid and object.health and object.health > 1 and (object.type == "obj_AI_Turret" or object.type == "obj_HQ" or object.type == "obj_BarracksDampener") and object.team ~= myHero.team then
			self.Structures[#self.Structures+1] = object
		end
	end

	AddCreateObjCallback(function (object)
		if object and object.valid and object.type and object.type == "obj_AI_Minion" then
			if object.team ~= myHero.team then
				if object.charName:find("Minion") then
					self.Minions[object.networkID] = object
				else
					self.JungleMinions[object.networkID] = object
				end
			else
				if object.charName:find("Minion") then
					self.AllyForces[object.networkID] = object 
				end
			end
		elseif object and object.valid and object.health and object.health > 1 and (object.type == "obj_AI_Turret" or object.type == "obj_HQ" or object.type == "obj_BarracksDampener") and object.team ~= myHero.team then
			self.Structures[#self.Structures+1] = object
		end
	end)

	AddDeleteObjCallback(function (object)
		if object.networkID then
			self.AllyForces[object.networkID] = nil
			self.Minions[object.networkID] = nil
			self.JungleMinions[object.networkID] = nil
		end
		if object and object.type and (object.type == "obj_AI_Turret" or object.type == "obj_HQ" or object.type == "obj_BarracksDampener") then
			local stucts = {}
			for _,v in ipairs(self.Structures) do
				if v.x ~= object.x or v.z ~= object.z then
					stucts[#stucts+1] = v
				end
			end
			self.Structures = stucts
		end

	end)
end


function TargetSelector:IsUnderTower(target,range)
	local tower = nil
	for _,v in pairs(GetTurrets()) do
		if v and v.team ~= myHero.team then
			if GetDistance(v,target) < range then
				tower = v
			end
		end
	end
	return tower
end

function TargetSelector:FriendlyUnderTower(tower)
	for _,v in pairs(self.AllyForces) do
		if v and not v.dead and v.health > 1 and GetDistance(v,tower) < 800 and not v.isMe then
			local turret = self:IsUnderTower(v,800)
			if turret and tower.networkID == turret.networkID then
				return true
			end
		end
	end
end

function TargetSelector:IsDangerZone(position)
	local turret = self:IsUnderTower(position,1025)
	if turret and GetDistance(turret,myHero) < 1025 then
		if self:FriendlyUnderTower(turret) then
			return false
		else
			return true
		end
		return true
	end
	return false
end

function TargetSelector:GetEnemyHero(range)
	local t = nil
	for _, v in pairs(GetEnemyHeroes()) do
		if v and ValidTarget(v) and GetDistance(v) < range+v.boundingRadius then
			if t and v.health < t.health then
				t = v
			elseif not t then
				t = v
			end
		end
	end
	return t
end

function TargetSelector:GetEnemyMinion(range)
	local t = nil
	for _, v in pairs(self.Minions) do
		if v and ValidTarget(v) and GetDistance(v) < range+v.boundingRadius then
			if t and v.health < t.health then
				t = v
			elseif not t then
				t = v
			end
		end
	end
	return t
end

function TargetSelector:GetAllEnemyMinions(range)
	local n = {}
	for _, v in pairs(self.Minions) do
		if GetDistance(v) < range+v.boundingRadius then
			n[#n+1] = v
		end
	end	
	return n
end

function TargetSelector:GetJungleMinion(range)
	local t = nil
	for _, v in pairs(self.JungleMinions) do
		if v and ValidTarget(v) and GetDistance(v) < range+v.boundingRadius then
			if t and v.health < t.health then
				t = v
			elseif not t then
				t = v
			end
		end
	end
	return t
end

function TargetSelector:GetStructurTarget(range)
	for _, v in pairs(self.Structures) do
		if v and v.valid and v.health > 0 and GetDistance(v) < range+v.boundingRadius and v.bTargetable and v.bInvulnerable == 0 then
			return v
		end
	end
end

function TargetSelector:GetAllTargets(range)
	local n = {}
	n = self:GetAllEnemyMinions(range)
	for _,v in pairs(self.JungleMinions) do
		if v and v.valid and ValidTarget(v) and GetDistance(v) < range+v.boundingRadius then
			n[#n+1] = v
		end
	end

	for _,v in pairs(self.Structures) do
		if v and v.valid and v.health > 0 and GetDistance(v) < range+v.boundingRadius and v.bTargetable and v.bInvulnerable == 0 then
			n[#n+1] = v
		end
	end

	return n
end

function TargetSelector:GetEnemyHeroesInRange(range)
	local inrange = {}
	for _,v in ipairs(GetEnemyHeroes()) do
		if v and GetDistance(v) < range+v.boundingRadius then
			inrange[#inrange+1] = v
		end
	end
	return inrange
end


class "Download"
function Download:__init()
	socket = require("socket")
	self.aktivedownloads = {}
	self.callbacks = {}

	AddTickCallback(function ()
		self:RemoveDone()
	end)

	class("Async")
	function Async:__init(host, filepath, localname, drawoffset, localpath)
		self.progress = 0
		self.host = host
		self.filepath = filepath
		self.localname = localname
		self.offset = drawoffset
		self.localpath = localpath
		self.CRLF = '\r\n'

		self.headsocket = socket.tcp()
		self.headsocket:settimeout(1)
		self.headsocket:connect(self.host, 80)
		self.headsocket:send('HEAD '..self.filepath..' HTTP/1.1'.. self.CRLF ..'Host: '..self.host.. self.CRLF ..'User-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36'.. self.CRLF .. self.CRLF)

		self.HEADdata = ""
		self.DLdata = ""
		self.StartedDownload = false
		self.canDL = true

		AddTickCallback(function ()
			self:tick()
		end)
		AddDrawCallback(function ()
			self:draw()
		end)
	end

	function Async:tick()
		if self.progress == 100 then return end
		if self.HEADcStatus ~= "timeout" and self.HEADcStatus ~= "closed" then
			self.HEADfString, self.HEADcStatus, self.HEADpString = self.headsocket:receive(16);
			if self.HEADfString then
				self.HEADdata = self.HEADdata..self.HEADfString
			elseif self.HEADpString and #self.HEADpString > 0 then
				self.HEADdata = self.HEADdata..self.HEADpString
			end
		elseif self.HEADcStatus == "timeout" then
			self.headsocket:close()
			--Find Lenght
			local begin = string.find(self.HEADdata, "Length: ")
			if begin then
				self.HEADdata = string.sub(self.HEADdata,begin+8)
				local n = 0
				local _break = false
				for i=1, #self.HEADdata do
					local c = tonumber(string.sub(self.HEADdata,i,i))
					if c and _break == false then
						n = n+1
					else
						_break = true
					end
				end
				self.HEADdata = string.sub(self.HEADdata,1,n)
				self.StartedDownload = true
				self.HEADcStatus = "closed"
			end
		end
		if self.HEADcStatus == "closed" and self.StartedDownload == true and self.canDL == true then --Double Check
			self.canDL = false
			self.DLsocket = socket.tcp()
			self.DLsocket:settimeout(1)
			self.DLsocket:connect(self.host, 80)
			--Start Main Download
			self.DLsocket:send('GET '..self.filepath..' HTTP/1.1'.. self.CRLF ..'Host: '..self.host.. self.CRLF ..'User-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36'.. self.CRLF .. self.CRLF)
		end
		
		if self.DLsocket and self.DLcStatus ~= "timeout" and self.DLcStatus ~= "closed" then
			self.DLfString, self.DLcStatus, self.DLpString = self.DLsocket:receive(1024);
			
			if ((self.DLfString) or (self.DLpString and #self.DLpString > 0)) then
				self.DLdata = self.DLdata .. (self.DLfString or self.DLpString)
			end

		elseif self.DLcStatus and self.DLcStatus == "timeout" then
			self.DLsocket:close()
			self.DLcStatus = "closed"
			self.DLdata = string.sub(self.DLdata,#self.DLdata-tonumber(self.HEADdata)+1)

			local file = io.open(self.localpath.."\\"..self.localname, "w+b")
			file:write(self.DLdata)
			file:close()
			self.progress = 100
		end

		if self.progress ~= 100 and self.DLdata and #self.DLdata > 0 then
			self.progress = (#self.DLdata/tonumber(self.HEADdata))*100
		end
	end

	function Async:draw()
		if self.progress < 100 then
			DrawTextA("Downloading: "..self.localname,15,50,35+self.offset)
			DrawRectangleOutline(49,50+self.offset,250,20, ARGB(255,255,255,255),1)
			if self.progress ~= 100 then
				DrawLine(50,60+self.offset,50+(2.5*self.progress),60+self.offset,18,ARGB(150,255-self.progress*2.5,self.progress*2.5,255-self.progress*2.5))
				DrawTextA(tostring(math.round(self.progress).." %"), 15,150,52+self.offset)
			end
		end
	end

end

function Download:newDL(host, file, name, path, callback)
	local offset = (#self.aktivedownloads+1)*40
	self.aktivedownloads[#self.aktivedownloads+1] = Async(host, file, name, offset-40, path)
	if not callback then
		callback = (function ()
		end)
	end

	self.callbacks[#self.callbacks+1] = callback

end

function Download:RemoveDone()
	if #self.aktivedownloads == 0 then return end
	local x = {}
	for k, v in pairs(self.aktivedownloads) do
		if math.round(v.progress) < 100 then
			v.offset = k*40-40
			x[#x+1] = v
		else
			self.callbacks[k]()
		end
	end
	self.aktivedownloads = {}
	self.aktivedownloads = x
end


class("OrbWalkerManager")
function OrbWalkerManager:__init(menu, ts)
	self.Menu = menu
	self.TargetSelector = ts
	self.LoadedOrbWalker = "NONE"
	self.tries = 0
	self:getloadedorbwalker()

	AddDrawCallback(function ()
		self:draw()
	end)
end

function OrbWalkerManager:getloadedorbwalker()
	if _G.S1OrbLoading or _G.S1mpleOrbLoaded then self.LoadedOrbWalker = "S1Orb" end
	if _G.Reborn_Loaded or _G.AutoCarry then self.LoadedOrbWalker = "SAC:R" end
	if SAC then LoadedOrbWalker = "SAC:P" end
	if _G.MMA_Loaded or _G.MMA_Version then self.LoadedOrbWalker = "MMA" end
	if _G.NebelwolfisOrbWalkerInit or _G.NebelwolfisOrbWalkerLoaded then self.LoadedOrbWalker = "NOW" end
	if _Pewalk then self.LoadedOrbWalker = "PEW" end
	if _G.SxOrb or SxOrb then self.LoadedOrbWalker = "SxOrb" end
	if _G["BigFatOrb_Loaded"] then self.LoadedOrbWalker = "BFW" end

	if self.LoadedOrbWalker == "NONE" then
		if self.tries < 10 then
			self.tries = self.tries+1
			DelayAction(function ()
				self:getloadedorbwalker()
			end,1)
		else
			self.LoadedOrbWalker = "KEYS"
			self.Menu.KeySettings:addParam("comboON", "Combo", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
			self.Menu.KeySettings:addParam("JungleClearON", "Jungle Clear", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
			self.Menu.KeySettings:addParam("WaveClearON", "Wave Clear", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
			self.Menu.KeySettings:addParam("HarrassON", "Harrass", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
			self.Menu.KeySettings:addParam("LastHitON", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
			self.Menu.KeySettings:removeParam("loading")
		end
	else
		self.Menu.KeySettings:removeParam("loading")
		self.Menu.KeySettings:addParam("bindtowalker","Your Keys are bound to your OrbWalkers Keys")
		self.Menu.KeySettings:addParam("JungleClearON", "Jungle Clear", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
	end
end

function OrbWalkerManager:draw()
	local modetbl = {
		[0] = "None",
		[1] = "Harass",
		[2] = "Laneclear",
		[3] = "Lasthit",
		[4] = "SBTW",
		[5] = "JungleClear"
	}
	DrawTextA("Loaded Walker: "..self.LoadedOrbWalker,12,20,20)
	DrawTextA("Current Mode: "..modetbl[self:GetOrbMode()],12,20,40)
end

function OrbWalkerManager:GetOrbMode()
	--[[
		0: None
		1: Harass
		2: Laneclear
		3: Lasthit
		4: SBTW
		5: JungleClear
	]]

	if self.LoadedOrbWalker == "NONE" then
		return 0
	elseif self.LoadedOrbWalker == "KEYS" then
		if self.Menu.KeySettings.HarrassON then return 1
		if self.Menu.KeySettings.WaveClearON then return 2
		if self.Menu.KeySettings.LastHitON then return 3
		if self.Menu.KeySettings.comboON then return 4
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "S1Orb" then
		if _G.S1.aamode == "none" then return 0 end
		if _G.S1.aamode == "harass" then return 1 end
		if _G.S1.aamode == "laneclear" then return 2 end
		if _G.S1.aamode == "lasthit" then return 3 end
		if _G.S1.aamode == "sbtw" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return -1
	elseif self.LoadedOrbWalker == "SAC:R" then
		if not _G.AutoCarry then return 0 end
		if _G.AutoCarry.Keys.MixedMode then return 1 end
		if _G.AutoCarry.Keys.LaneClear then return 2 end
		if _G.AutoCarry.Keys.LastHit then return 3 end
		if _G.AutoCarry.Keys.AutoCarry then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "SAC:P" then
		if SAC:GetActiveMode() == "MixedMode" then return 1 end
		if SAC:GetActiveMode() == "Laneclear" then return 2 end
		if SAC:GetActiveMode() == "LastHit" then return 3 end
		if SAC:GetActiveMode() == "AutoCarry" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5		
		return 0
	elseif self.LoadedOrbWalker == "MMA" then
		if _G.MMA_IsDualCarrying() then return 1 end
		if _G.MMA_IsLaneClearing() then return 2 end
		if _G.MMA_IsLastHitting() then return 3 end
		if _G.MMA_IsOrbwalking() then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "NOW" then
		if not _G.NebelwolfisOrbWalker then return 0 end
		if _G.NebelwolfisOrbWalker.Config.k.Harass then return 1 end
		if _G.NebelwolfisOrbWalker.Config.k.LaneClear then return 2 end
		if _G.NebelwolfisOrbWalker.Config.k.LastHit then return 3 end
		if _G.NebelwolfisOrbWalker.Config.k.Combo then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "PEW" then
		if not _Pewalk then return 0 end
		if _Pewalk.GetActiveMode().Mixed then return 1 end
		if _Pewalk.GetActiveMode().LaneClear then return 2 end
		if _Pewalk.GetActiveMode().Farm then return 3 end
		if _Pewalk.GetActiveMode().Carry then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "SxOrb" then
		if not _G.SxOrb then return end
		if _G.SxOrb.isHarass or SxOrb.isHarass then return 1 end
		if _G.SxOrb.isLaneClear or SxOrb.isLaneClear then return 2 end
		if _G.SxOrb.isLastHit or SxOrb.isLastHit then return 3 end
		if _G.SxOrb.isFight or SxOrb.isFight then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	elseif self.LoadedOrbWalker == "BFW" then
		if _G["BigFatOrb_Mode"] == "Harass" then return 1 end
		if _G["BigFatOrb_Mode"] == "LaneClear" then return 2 end
		if _G["BigFatOrb_Mode"] == "LastHit" then return 3 end
		if _G["BigFatOrb_Mode"] == "Combo" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5
		return 0
	end
end

function OrbWalkerManager:GetTarget()
	if currentMode == 0 then return nil end
	if self.LoadedOrbWalker == "NONE" then
		return nil
	elseif self.LoadedOrbWalker == "KEYS" then
		local currentMode = self:GetOrbMode()
		local range = myHero.range + myHero.boundingRadius
		if currentMode == 1
			local target = self.TargetSelector:GetEnemyHero(range)
			if not target then target = self.TargetSelector:GetEnemyMinion(range) end
			return target
		elseif currentMode == 2 then
			return self.TargetSelector:GetEnemyMinion(range)
		elseif currentMode == 3 then
			return self.TargetSelector:GetEnemyMinion(range)
		elseif currentMode == 4 then
			return self.TargetSelector:GetEnemyHero(range)
		elseif currentMode == 5 then
			return self.TargetSelector:GetJungleMinion(range)
		end
	elseif self.LoadedOrbWalker == "S1Orb" then
		return _G.S1:GetTarget()
	elseif self.LoadedOrbWalker == "SAC:R" then
		return _G.AutoCarry.SkillsCrosshair.target
	elseif self.LoadedOrbWalker == "SAC:P" then
		return SAC:GetTarget()
	elseif self.LoadedOrbWalker == "MMA" then
		return _G.MMA_GetTarget()
	elseif self.LoadedOrbWalker == "NOW" then
		return _G.NebelwolfisOrbWalker:GetTarget()
	elseif self.LoadedOrbWalker == "PEW" then
		return _Pewalk.GetTarget
	elseif self.LoadedOrbWalker == "SxOrb" then
		return _G.SxOrb:GetTarget()
	elseif self.LoadedOrbWalker == "BFW" then
		return Orbwalk_GetTarget()
	end
end


function OnLoad()
	Core = Core()
	printC("Loaded")
end