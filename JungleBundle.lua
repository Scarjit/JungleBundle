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


assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQQfAAAAAwAAAEQAAACGAEAA5QAAAJ1AAAGGQEAA5UAAAJ1AAAGlgAAACIAAgaXAAAAIgICBhgBBAOUAAQCdQAABhkBBAMGAAQCdQAABhoBBAOVAAQCKwICDhoBBAOWAAQCKwACEhoBBAOXAAQCKwICEhoBBAOUAAgCKwACFHwCAAAsAAAAEEgAAAEFkZFVubG9hZENhbGxiYWNrAAQUAAAAQWRkQnVnc3BsYXRDYWxsYmFjawAEDAAAAFRyYWNrZXJMb2FkAAQNAAAAQm9sVG9vbHNUaW1lAAQQAAAAQWRkVGlja0NhbGxiYWNrAAQGAAAAY2xhc3MABA4AAABTY3JpcHRUcmFja2VyAAQHAAAAX19pbml0AAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAoAAABzZW5kRGF0YXMABAsAAABHZXRXZWJQYWdlAAkAAAACAAAAAwAAAAAAAwkAAAAFAAAAGABAABcAAIAfAIAABQAAAAxAQACBgAAAHUCAAR8AgAADAAAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAcAAAB1bmxvYWQAAAAAAAEAAAABAQAAAAAAAAAAAAAAAAAAAAAEAAAABQAAAAAAAwkAAAAFAAAAGABAABcAAIAfAIAABQAAAAxAQACBgAAAHUCAAR8AgAADAAAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAkAAABidWdzcGxhdAAAAAAAAQAAAAEBAAAAAAAAAAAAAAAAAAAAAAUAAAAHAAAAAQAEDQAAAEYAwACAAAAAXYAAAUkAAABFAAAATEDAAMGAAABdQIABRsDAAKUAAADBAAEAXUCAAR8AgAAFAAAABA4AAABTY3JpcHRUcmFja2VyAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAUAAABsb2FkAAQMAAAARGVsYXlBY3Rpb24AAwAAAAAAQHpAAQAAAAYAAAAHAAAAAAADBQAAAAUAAAAMAEAAgUAAAB1AgAEfAIAAAgAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAgAAAB3b3JraW5nAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAEBAAAAAAAAAAAAAAAAAAAAAAAACAAAAA0AAAAAAAYyAAAABgBAAB2AgAAaQEAAF4AAgEGAAABfAAABF0AKgEYAQQBHQMEAgYABAMbAQQDHAMIBEEFCAN0AAAFdgAAACECAgUYAQQBHQMEAgYABAMbAQQDHAMIBEMFCAEbBQABPwcICDkEBAt0AAAFdgAAACEAAhUYAQQBHQMEAgYABAMbAQQDHAMIBBsFAAA9BQgIOAQEARoFCAE/BwgIOQQEC3QAAAV2AAAAIQACGRsBAAIFAAwDGgEIAAUEDAEYBQwBWQIEAXwAAAR8AgAAOAAAABA8AAABHZXRJbkdhbWVUaW1lcgADAAAAAAAAAAAECQAAADAwOjAwOjAwAAQGAAAAaG91cnMABAcAAABzdHJpbmcABAcAAABmb3JtYXQABAYAAAAlMDIuZgAEBQAAAG1hdGgABAYAAABmbG9vcgADAAAAAAAgrEAEBQAAAG1pbnMAAwAAAAAAAE5ABAUAAABzZWNzAAQCAAAAOgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAA4AAAATAAAAAAAIKAAAAAEAAABGQEAAR4DAAIEAAAAhAAiABkFAAAzBQAKAAYABHYGAAVgAQQIXgAaAR0FBAhiAwQIXwAWAR8FBAhkAwAIXAAWARQGAAFtBAAAXQASARwFCAoZBQgCHAUIDGICBAheAAYBFAQABTIHCAsHBAgBdQYABQwGAAEkBgAAXQAGARQEAAUyBwgLBAQMAXUGAAUMBgABJAYAAIED3fx8AgAANAAAAAwAAAAAAAPA/BAsAAABvYmpNYW5hZ2VyAAQLAAAAbWF4T2JqZWN0cwAECgAAAGdldE9iamVjdAAABAUAAAB0eXBlAAQHAAAAb2JqX0hRAAQHAAAAaGVhbHRoAAQFAAAAdGVhbQAEBwAAAG15SGVybwAEEgAAAFNlbmRWYWx1ZVRvU2VydmVyAAQGAAAAbG9vc2UABAQAAAB3aW4AAAAAAAMAAAAAAAEAAQEAAAAAAAAAAAAAAAAAAAAAFAAAABQAAAACAAICAAAACkAAgB8AgAABAAAABAoAAABzY3JpcHRLZXkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAAAABUAAAACAAUKAAAAhgBAAMAAgACdgAABGEBAARfAAICFAIAAjIBAAQABgACdQIABHwCAAAMAAAAEBQAAAHR5cGUABAcAAABzdHJpbmcABAoAAABzZW5kRGF0YXMAAAAAAAIAAAAAAAEBAAAAAAAAAAAAAAAAAAAAABYAAAAlAAAAAgATPwAAAApAAICGgEAAnYCAAAqAgICGAEEAxkBBAAaBQQAHwUECQQECAB2BAAFGgUEAR8HBAoFBAgBdgQABhoFBAIfBQQPBgQIAnYEAAcaBQQDHwcEDAcICAN2BAAEGgkEAB8JBBEECAwAdggABFgECAt0AAAGdgAAACoCAgYaAQwCdgIAACoCAhgoAxIeGQEQAmwAAABdAAIAKgMSHFwAAgArAxIeGQEUAh4BFAQqAAIqFAIAAjMBFAQEBBgBBQQYAh4FGAMHBBgAAAoAAQQIHAIcCRQDBQgcAB0NAAEGDBwCHw0AAwcMHAAdEQwBBBAgAh8RDAFaBhAKdQAACHwCAACEAAAAEBwAAAGFjdGlvbgAECQAAAHVzZXJuYW1lAAQIAAAAR2V0VXNlcgAEBQAAAGh3aWQABA0AAABCYXNlNjRFbmNvZGUABAkAAAB0b3N0cmluZwAEAwAAAG9zAAQHAAAAZ2V0ZW52AAQVAAAAUFJPQ0VTU09SX0lERU5USUZJRVIABAkAAABVU0VSTkFNRQAEDQAAAENPTVBVVEVSTkFNRQAEEAAAAFBST0NFU1NPUl9MRVZFTAAEEwAAAFBST0NFU1NPUl9SRVZJU0lPTgAECwAAAGluZ2FtZVRpbWUABA0AAABCb2xUb29sc1RpbWUABAYAAABpc1ZpcAAEAQAAAAAECQAAAFZJUF9VU0VSAAMAAAAAAADwPwMAAAAAAAAAAAQJAAAAY2hhbXBpb24ABAcAAABteUhlcm8ABAkAAABjaGFyTmFtZQAECwAAAEdldFdlYlBhZ2UABA4AAABib2wtdG9vbHMuY29tAAQXAAAAL2FwaS9ldmVudHM/c2NyaXB0S2V5PQAECgAAAHNjcmlwdEtleQAECQAAACZhY3Rpb249AAQLAAAAJmNoYW1waW9uPQAEDgAAACZib2xVc2VybmFtZT0ABAcAAAAmaHdpZD0ABA0AAAAmaW5nYW1lVGltZT0ABAgAAAAmaXNWaXA9AAAAAAACAAAAAAABAQAAAAAAAAAAAAAAAAAAAAAmAAAAKgAAAAMACiEAAADGQEAAAYEAAN2AAAHHwMAB3YCAAArAAIDHAEAAzADBAUABgACBQQEA3UAAAscAQADMgMEBQcEBAIABAAHBAQIAAAKAAEFCAgBWQYIC3UCAAccAQADMgMIBQcECAIEBAwDdQAACxwBAAMyAwgFBQQMAgYEDAN1AAAIKAMSHCgDEiB8AgAASAAAABAcAAABTb2NrZXQABAgAAAByZXF1aXJlAAQHAAAAc29ja2V0AAQEAAAAdGNwAAQIAAAAY29ubmVjdAADAAAAAAAAVEAEBQAAAHNlbmQABAUAAABHRVQgAAQSAAAAIEhUVFAvMS4wDQpIb3N0OiAABAUAAAANCg0KAAQLAAAAc2V0dGltZW91dAADAAAAAAAAAAAEAgAAAGIAAwAAAPyD15dBBAIAAAB0AAQKAAAATGFzdFByaW50AAQBAAAAAAQFAAAARmlsZQAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAA="), nil, "bt", _ENV))()
TrackerLoad("")

require "MapPosition"
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

--[[
   _____               
  / ____|              
 | |     ___  _ __ ___ 
 | |    / _ \| '__/ _ \
 | |___| (_) | | |  __/
  \_____\___/|_|  \___|
                       
                       
]]

Class("Core")
function Core:__init()
	self.DL = Download()
	self.version = "0.1"
	self:update()

	if not champions[myHero.charName] then return end
	self.TargetSelector = TargetSelector()
	self:menu()

	self.OrbWalkerManager = OrbWalkerManager(self.Menu, self.TargetSelector)
	self.Awareness = Awareness(self.Menu)
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
		target = self.OrbWalkerManager:GetTarget()
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

--[[
  _____ _                 __  __                                   
 |_   _| |               |  \/  |                                  
   | | | |_ ___ _ __ ___ | \  / | __ _ _ __   __ _  __ _  ___ _ __ 
   | | | __/ _ \ '_ ` _ \| |\/| |/ _` | '_ \ / _` |/ _` |/ _ \ '__|
  _| |_| ||  __/ | | | | | |  | | (_| | | | | (_| | (_| |  __/ |   
 |_____|\__\___|_| |_| |_|_|  |_|\__,_|_| |_|\__,_|\__, |\___|_|   
                                                    __/ |          
                                                   |___/           
]]
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

--[[
                                                    
     /\                                             
    /  \__      ____ _ _ __ ___ _ __   ___  ___ ___ 
   / /\ \ \ /\ / / _` | '__/ _ \ '_ \ / _ \/ __/ __|
  / ____ \ V  V / (_| | | |  __/ | | |  __/\__ \__ \
 /_/    \_\_/\_/ \__,_|_|  \___|_| |_|\___||___/___/
                                                    
                                                    
]]--

Class("Awareness")
function Awareness:__init(Menu)
	self.Menu = Menu
	self:menu()
	self.ally = GetAllyHeroes()
	self.enemy = GetEnemyHeroes()
	self.junglers = {}
	for i, hero in pairs(GetEnemyHeroes()) do
		if hero:GetSpellData(SUMMONER_1).name == "SummonerSmite" then
			self.junglers[#self.junglers + 1] = hero
		elseif hero:GetSpellData(SUMMONER_2).name == "SummonerSmite" then
			self.junglers[#self.junglers + 1] = hero
		end
	end
	self.wards = {}
	self.HeroSprite = {}
	self.SpellSprite = {}
	self.wardNumber = 70
	self:loadSprites()
	AddTickCallback(function ()
		self:Tick()
	end)
	AddDrawCallback(function ()
		self:drawHUD()
		self:drawHPBar()
		self:drawEnemyPath()
		-- self:drawTimers()
		self:drawEnemyJungler()
		self:drawWards()
	end)
	AddAnimationCallback(function (unit, animation)
		self:Animation(unit, animation)
	end)
	AddCreateObjCallback(function (object)
		self:CreateWard(object)
		self:CreateObj(object)
	end)
	AddDeleteObjCallback(function (object)
		self:DeleteWard(object)
	end)
end

function Awareness:menu()
	local WindowW = WINDOW_W
	local WindowH = WINDOW_H

	self.Menu:addSubMenu("Awareness", "AwarenessSettings")
		self.Menu.AwarenessSettings:addSubMenu("HUD", "HUDSettings")
			self.Menu.AwarenessSettings.HUDSettings:addParam("HUDON", "Draw HUD", SCRIPT_PARAM_ONOFF, true)
			self.Menu.AwarenessSettings.HUDSettings:addParam("HUDType", "Select Type", SCRIPT_PARAM_LIST, 1, {"Horizontal", "Vertical"})
				self.Menu.AwarenessSettings.HUDSettings:setCallback("HUDType",
					function(value)
						if value == 1 then
							WindowW = WINDOW_W - 485
							WindowH = WINDOW_H - 85
						elseif value == 2 then
							WindowW = WINDOW_W - 85
							WindowH = WINDOW_H - 485
						end
						self.Menu.AwarenessSettings.HUDSettings:removeParam("HUDPosX")
						self.Menu.AwarenessSettings.HUDSettings:removeParam("HUDPosY")
						self.Menu.AwarenessSettings.HUDSettings:addParam("HUDPosX", "Horizontal position", SCRIPT_PARAM_SLICE, 1, 0, WindowW, 0)
						self.Menu.AwarenessSettings.HUDSettings:addParam("HUDPosY", "Vertical position", SCRIPT_PARAM_SLICE, 1, 0, WindowH, 0)
					end)
			self.Menu.AwarenessSettings.HUDSettings:addParam("HUDPosX", "Horizontal position", SCRIPT_PARAM_SLICE, 1, 0, WindowW, 0)
			self.Menu.AwarenessSettings.HUDSettings:addParam("HUDPosY", "Vertical position", SCRIPT_PARAM_SLICE, 1, 0, WindowH, 0)
		self.Menu.AwarenessSettings:addParam("WardTrackerON", "Track ward pos", SCRIPT_PARAM_ONOFF, true)
		self.Menu.AwarenessSettings:addParam("WardTrackerQuality", "Quality of the ward tracker", SCRIPT_PARAM_SLICE, 1, 0, 10, 0)
		self.Menu.AwarenessSettings:addParam("HPbarON", "Track spell cooldowns", SCRIPT_PARAM_ONOFF, true)
end

function Awareness:Tick()
	self:Timers()
end

function Awareness:loadSprites()
	if self.Menu.AwarenessSettings.HUDSettings.HUDON then
		self.HudSprite = GetSprite("\\JungleBundle\\hud.png")

		for i, hero in pairs(self.enemy) do
			self.HeroSprite[hero.charName] = GetSprite("\\JungleBundle\\Champions\\"..hero.charName..".png")
		end
		
		self.SpellSprite["SummonerBarrier"] = GetSprite("\\JungleBundle\\Spells\\SummonerBarrier.png")
		self.SpellSprite["SummonerMana"] = GetSprite("\\JungleBundle\\Spells\\SummonerMana.png")
		self.SpellSprite["SummonerBoost"] = GetSprite("\\JungleBundle\\Spells\\SummonerBoost.png")
		self.SpellSprite["SummonerExhaust"] = GetSprite("\\JungleBundle\\Spells\\SummonerExhaust.png")
		self.SpellSprite["SummonerFlash"] = GetSprite("\\JungleBundle\\Spells\\SummonerFlash.png")
		self.SpellSprite["SummonerHaste"] = GetSprite("\\JungleBundle\\Spells\\SummonerHaste.png")
		self.SpellSprite["SummonerHeal"] = GetSprite("\\JungleBundle\\Spells\\SummonerHeal.png")
		self.SpellSprite["SummonerDot"] = GetSprite("\\JungleBundle\\Spells\\SummonerDot.png")
		self.SpellSprite["SummonerSnowball"] = GetSprite("\\JungleBundle\\Spells\\SummonerSnowball.png")
		self.SpellSprite["SummonerSmite"] = GetSprite("\\JungleBundle\\Spells\\SummonerSmite.png")
		self.SpellSprite["S5_SummonerSmitePlayerGanker"] = GetSprite("\\JungleBundle\\Spells\\S5_SummonerSmitePlayerGanker.png")
		self.SpellSprite["S5_SummonerSmiteDuel"] = GetSprite("\\JungleBundle\\Spells\\S5_SummonerSmiteDuel.png")
		self.SpellSprite["SummonerTeleport"] = GetSprite("\\JungleBundle\\Spells\\SummonerTeleport.png")
	end
	
	HPBarSprite = GetSprite("\\JungleBundle\\HPbar.png")
	
	NotificationSprite = GetSprite("\\JungleBundle\\notification.png")
	BaronSprite = GetSprite("\\JungleBundle\\Buffs\\baron.png")
	DragonSprite = GetSprite("\\JungleBundle\\Buffs\\dragon.png")
	RedSprite = GetSprite("\\JungleBundle\\Buffs\\red.png")
	BlueSprite = GetSprite("\\JungleBundle\\Buffs\\blue.png")
	
	GankSprite = GetSprite("\\JungleBundle\\gank.png")
end

function Awareness:drawHUD()
	if self.Menu.AwarenessSettings.HUDSettings.HUDON then
		for i, hero in pairs(self.enemy) do
			local x = self.Menu.AwarenessSettings.HUDSettings.HUDPosX
			local y = self.Menu.AwarenessSettings.HUDSettings.HUDPosY
		
			if self.Menu.AwarenessSettings.HUDSettings.HUDType == 1 then
				x = self.Menu.AwarenessSettings.HUDSettings.HUDPosX + ( ( i - 1 ) * 100 )
				y = self.Menu.AwarenessSettings.HUDSettings.HUDPosY
			elseif self.Menu.AwarenessSettings.HUDSettings.HUDType == 2 then
				x = self.Menu.AwarenessSettings.HUDSettings.HUDPosX
				y = self.Menu.AwarenessSettings.HUDSettings.HUDPosY + ( ( i - 1 ) * 100 )
			end
			
			self.HudSprite:Draw(x, y, 255)
			
			self.HeroSprite[hero.charName]:Draw(x + 5, y + 5, 255)
			
			self.SpellSprite[hero:GetSpellData(SUMMONER_1).name]:Draw(x + 58, y + 5, 255)
			if hero:GetSpellData(SUMMONER_1).cd > 0 then
				local cd = ( 100 - ( hero:GetSpellData(SUMMONER_1).currentCd / hero:GetSpellData(SUMMONER_1).cd * 100 ) ) / 100 * 22
				DrawRectangle(x + 58, y + 5 + cd, 22, 22 - cd, ARGB(200,0,0,0))
			end
			
			self.SpellSprite[hero:GetSpellData(SUMMONER_2).name]:Draw(x + 58, y + 31, 255)
			if hero:GetSpellData(SUMMONER_2).cd > 0 then
				local cd = ( 100 - ( hero:GetSpellData(SUMMONER_2).currentCd / hero:GetSpellData(SUMMONER_2).cd * 100 ) ) / 100 * 22
				DrawRectangle(x + 58, y + 31 + cd, 22, 22 - cd, ARGB(200,0,0,0))
			end
			
			DrawRectangle(x + 5, y + 38, 18, 15, ARGB(200,0,0,0))
			DrawTextA(hero.level, 11, x + 8, y + 40, ARGB(255,255,255,255))
			
			HP = hero.health / hero.maxHealth * 75
			if HP == 0 then
				DrawRectangle(x + 5, y + 5, 48, 48, ARGB(200,0,0,0))
				DrawTextA("Dead", 18, x + 11, y + 35, ARGB(255,255,0,0))
			else
				DrawLine(x + 5, y + 68, x + 5 + HP, y + 68, 6, ARGB(255,26,190,81))
				
				MP = hero.mana / hero.maxMana * 75
				if MP > 0 then
					DrawLine(x + 5, y + 77, x + 5 + MP, y + 77, 6, ARGB(255,1,130,181))
				end
				
				DrawTextA(self:getEnemyPos(hero), 12, x + 5, y + 85, ARGB(255,255,255,255))
			end
			
			if not hero.visible then
				DrawRectangle(x + 5, y + 5, 48, 48, ARGB(200,0,0,0))
				DrawTextA("SS", 30, x + 12, y + 12, ARGB(255,255,210,0))
			end
			
			if hero:GetSpellData(_Q).level ~= 0 then
				if hero:GetSpellData(_Q).cd == 0 then
					cdQ = 14
				else
					cdQ = ( 100 - ( hero:GetSpellData(_Q).currentCd / hero:GetSpellData(_Q).cd * 100 ) ) / 100 * 14
				end
			else
				cdQ = nil
			end
			
			if hero:GetSpellData(_W).level ~= 0 then
				if hero:GetSpellData(_W).cd == 0 then
					cdW = 14
				else
					cdW = ( 100 - ( hero:GetSpellData(_W).currentCd / hero:GetSpellData(_W).cd * 100 ) ) / 100 * 14
				end
			else
				cdW = nil
			end
			
			if hero:GetSpellData(_E).level ~= 0 then
				if hero:GetSpellData(_E).cd == 0 then
					cdE = 14
				else
					cdE = ( 100 - ( hero:GetSpellData(_E).currentCd / hero:GetSpellData(_E).cd * 100 ) ) / 100 * 14
				end
			else
				cdE = nil
			end
			
			if hero:GetSpellData(_R).level ~= 0 then
				if hero:GetSpellData(_R).cd == 0 then
					cdR = 22
				else
					cdR = ( 100 - ( hero:GetSpellData(_R).currentCd / hero:GetSpellData(_R).cd * 100 ) ) / 100 * 22
				end
			else
				cdR = nil
			end
			
			if cdQ ~= nil then
				DrawLine(x + 5, y + 59, x + 5 + cdQ, y + 59, 4, ARGB(255,17,160,2))
			end
			
			if cdW ~= nil then
				DrawLine(x + 22, y + 59, x + 22 + cdW, y + 59, 4, ARGB(255,17,160,2))
			end
			
			if cdE ~= nil then
				DrawLine(x + 39, y + 59, x + 39 + cdE, y + 59, 4, ARGB(255,17,160,2))
			end
			
			if cdR ~= nil then
				DrawLine(x + 58, y + 59, x + 58 + cdR, y + 59, 4, ARGB(255,17,160,2))
			end
		end
	end
end

function Awareness:getEnemyPos(hero)
	if MapPosition:onTopLane(hero) then
		return ("Top")
	elseif MapPosition:onMidLane(hero) then
		return ("Mid")
	elseif MapPosition:onBotLane(hero) then
		return ("Bot")
	elseif MapPosition:inTopRiver(hero) then
		return ("Top River")
	elseif MapPosition:inBottomRiver(hero) then
		return ("Bot River")
	elseif MapPosition:inLeftBase(hero) then
		return ("Blue Base")
	elseif MapPosition:inRightBase(hero) then
		return ("Red Base")
	elseif MapPosition:inTopLeftJungle(hero) then
		return ("Blue Team Blue")
	elseif MapPosition:inBottomRightJungle(hero) then
		return ("Red Team Blue")
	elseif MapPosition:inBottomLeftJungle(hero) then
		return ("Blue Team Red")
	elseif MapPosition:inTopRightJungle(hero) then
		return ("Red Team Red")
	end
end

function Awareness:drawHPBar()
	if Core.Menu.AwarenessSettings.HPbarON then
		for i, hero in pairs(self.ally) do
			local barPos = GetUnitHPBarPos(hero)
			local off = GetUnitHPBarOffset(hero)
			local yOff = ({['Annie'] = -12})[hero.charName]
			local y = barPos.y + (yOff or 0) + (off.y * 53) + 2
			local xOff = ({['AniviaEgg'] = -14,['Annie'] = -10,['Darius'] = -7,['Renekton'] = -7,['Sion'] = -7,['Thresh'] = -4,})[hero.charName]
			local x = barPos.x + (xOff or 0) - 25
			
			if hero:GetSpellData(_Q).level ~= 0 then
				if hero:GetSpellData(_Q).cd == 0 then
					cdQ = 23
				else
					cdQ = ( 100 - ( hero:GetSpellData(_Q).currentCd / hero:GetSpellData(_Q).cd * 100 ) ) / 100 * 23
				end
			else
				cdQ = 0
			end
			
			if hero:GetSpellData(_W).level ~= 0 then
				if hero:GetSpellData(_W).cd == 0 then
					cdW = 23
				else
					cdW = ( 100 - ( hero:GetSpellData(_W).currentCd / hero:GetSpellData(_W).cd * 100 ) ) / 100 * 23
				end
			else
				cdW = 0
			end
			
			if hero:GetSpellData(_E).level ~= 0 then
				if hero:GetSpellData(_E).cd == 0 then
					cdE = 23
				else
					cdE = ( 100 - ( hero:GetSpellData(_E).currentCd / hero:GetSpellData(_E).cd * 100 ) ) / 100 * 23
				end
			else
				cdE = 0
			end
			
			if hero:GetSpellData(_R).level ~= 0 then
				if hero:GetSpellData(_R).cd == 0 then
					cdR = 23
				else
					cdR = ( 100 - ( hero:GetSpellData(_R).currentCd / hero:GetSpellData(_R).cd * 100 ) ) / 100 * 23
				end
			else
				cdR = 0
			end
			
			if OnScreen(barPos.x, barPos.y) and not hero.dead and hero.visible then
				HPBarSprite:Draw(x-44, y-8, 255)
				if cdQ ~= nil then
					DrawLine(x-41, y+12, x-41+cdQ, y+12, 3, ARGB(255,0,191,9))
				end
				if cdE ~= nil then
					DrawLine(x-14, y+12, x-14+cdW, y+12, 3, ARGB(255,0,191,9))
				end
				if cdW ~= nil then
					DrawLine(x+13, y+12, x+13+cdE, y+12, 3, ARGB(255,0,191,9))
				end
				if cdR ~= nil then
					DrawLine(x+40, y+12, x+40+cdR, y+12, 3, ARGB(255,0,191,9))
				end
			end
		end
		
		for i, hero in pairs(self.enemy) do
			local cdQ
			local cdW
			local cdE
			local cdR
			
			local barPos = GetUnitHPBarPos(hero)
			local off = GetUnitHPBarOffset(hero)
			local yOff = ({['Annie'] = -12})[hero.charName]
			local y = barPos.y + (yOff or 0) + (off.y * 53) + 2
			local xOff = ({['AniviaEgg'] = -14,['Annie'] = -10,['Darius'] = -7,['Renekton'] = -7,['Sion'] = -7,['Thresh'] = -4,})[hero.charName]
			local x = barPos.x + (xOff or 0) - 25
			
			if hero:GetSpellData(_Q).level ~= 0 then
				if hero:GetSpellData(_Q).cd == 0 then
					cdQ = 23
				else
					cdQ = ( 100 - ( hero:GetSpellData(_Q).currentCd / hero:GetSpellData(_Q).cd * 100 ) ) / 100 * 23
				end
			else
				cdQ = 0
			end
			
			if hero:GetSpellData(_W).level ~= 0 then
				if hero:GetSpellData(_W).cd == 0 then
					cdW = 23
				else
					cdW = ( 100 - ( hero:GetSpellData(_W).currentCd / hero:GetSpellData(_W).cd * 100 ) ) / 100 * 23
				end
			else
				cdW = 0
			end
			
			if hero:GetSpellData(_E).level ~= 0 then
				if hero:GetSpellData(_E).cd == 0 then
					cdE = 23
				else
					cdE = ( 100 - ( hero:GetSpellData(_E).currentCd / hero:GetSpellData(_E).cd * 100 ) ) / 100 * 23
				end
			else
				cdE = 0
			end
			
			if hero:GetSpellData(_R).level ~= 0 then
				if hero:GetSpellData(_R).cd == 0 then
					cdR = 23
				else
					cdR = ( 100 - ( hero:GetSpellData(_R).currentCd / hero:GetSpellData(_R).cd * 100 ) ) / 100 * 23
				end
			else
				cdR = 0
			end
			
			if OnScreen(barPos.x, barPos.y) and not hero.dead and hero.visible then
				HPBarSprite:Draw(x-44, y-6, 255)
				if cdQ ~= nil then
					DrawLine(x-41, y+14, x-41+cdQ, y+14, 3, ARGB(255,0,191,9))
				end
				if cdE ~= nil then
					DrawLine(x-14, y+14, x-14+cdW, y+14, 3, ARGB(255,0,191,9))
				end
				if cdW ~= nil then
					DrawLine(x+13, y+14, x+13+cdE, y+14, 3, ARGB(255,0,191,9))
				end
				if cdR ~= nil then
					DrawLine(x+40, y+14, x+40+cdR, y+14, 3, ARGB(255,0,191,9))
				end
			end
		end
	end
end

function Awareness:drawEnemyPath()
	for i, hero in pairs(self.enemy) do
		if hero.hasMovePath then
			if hero.path:Path(2) == nil then
				DrawLine3D(hero.x, hero.y, hero.z, hero.path:Path(1).x, hero.path:Path(1).y, hero.path:Path(1).z, 2, ARGB(255,255,255,255))
			else
				a=2
				while(hero.path:Path(a) ~= nil) do
					DrawLine3D(hero.path:Path(a-1).x, hero.path:Path(a-1).y, hero.path:Path(a-1).z, hero.path:Path(a).x, hero.path:Path(a).y, hero.path:Path(a).z, 2, ARGB(255,255,255,255))
					a = a+1
				end
				DrawCircle3D(hero.path:Path(a-1).x, hero.path:Path(a-1).y, hero.path:Path(a-1).z, 30, 2, ARGB(255,255,255,255), 400)
				DrawLine3D(hero.path:Path(a-1).x-30, hero.path:Path(a-1).y, hero.path:Path(a-1).z, hero.path:Path(a-1).x+30, hero.path:Path(a-1).y, hero.path:Path(a-1).z, 2, ARGB(255,255,255,255))
				DrawLine3D(hero.path:Path(a-1).x, hero.path:Path(a-1).y, hero.path:Path(a-1).z-30, hero.path:Path(a-1).x, hero.path:Path(a-1).y, hero.path:Path(a-1).z+30, 2, ARGB(255,255,255,255))
				DrawText3D(hero.charName, hero.path:Path(a-1).x-50, hero.path:Path(a-1).y-50, hero.path:Path(a-1).z, 15, ARGB(255,255,255,255))
			end
		end
	end
end

function Awareness:CreateObj(obj)
	if obj.name == "SRU_Dragon_Death.troy" then
		DTimer = 1000 * ( GetInGameTimer() + 360 )
	end
	
	if obj.name == "SRU_Baron_Death.troy" then
		BTimer = 1000 * ( GetInGameTimer() + 420 )
	end
end

function Awareness:Animation(unit, animation)
	-- Blue Buff / Blue Team
	if unit.name == "SRU_Blue1.1.1" and animation == "Death" then
		if BTBB == nil then
			BTBB = 1
		elseif BTBB == 2 then
			BTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTBB = 0
		else
			BTBB = BTBB + 1
		end
	end
	if unit.name == "SRU_BlueMini1.1.2" and animation == "Death" then
		if BTBB == nil then
			BTBB = 1
		elseif BTBB == 2 then
			BTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTBB = 0
		else
			BTBB = BTBB + 1
		end
	end
	if unit.name == "SRU_BlueMini21.1.3" and animation == "Death" then
		if BTBB == nil then
			BTBB = 1
		elseif BTBB == 2 then
			BTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTBB = 0
		else
			BTBB = BTBB + 1
		end
	end
	
	-- Blue Buff / Red Team
	if unit.name == "SRU_Blue7.1.1" and animation == "Death" then
		if RTBB == nil then
			RTBB = 1
		elseif RTBB == 2 then
			RTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTBB = 0
		else
			RTBB = RTBB + 1
		end
	end
	if unit.name == "SRU_BlueMini7.1.2" and animation == "Death" then
		if RTBB == nil then
			RTBB = 1
		elseif RTBB == 2 then
			RTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTBB = 0
		else
			RTBB = RTBB + 1
		end
	end
	if unit.name == "SRU_BlueMini27.1.3" and animation == "Death" then
		if RTBB == nil then
			RTBB = 1
		elseif RTBB == 2 then
			RTBBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTBB = 0
		else
			RTBB = RTBB + 1
		end
	end
	
	-- Red Buff / Blue Team
	if unit.name == "SRU_Red4.1.1" and animation == "Death" then
		if BTRB == nil then
			BTRB = 1
		elseif BTRB == 2 then
			BTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTRB = 0
		else
			BTRB = BTRB + 1
		end
	end
	if unit.name == "SRU_RedMini4.1.2" and animation == "Death" then
		if BTRB == nil then
			BTRB = 1
		elseif BTRB == 2 then
			BTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTRB = 0
		else
			BTRB = BTRB + 1
		end
	end
	if unit.name == "SRU_RedMini4.1.3" and animation == "Death" then
		if BTRB == nil then
			BTRB = 1
		elseif BTRB == 2 then
			BTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			BTRB = 0
		else
			BTRB = BTRB + 1
		end
	end
	
	-- Red Buff / Red Team
	if unit.name == "SRU_Red10.1.1" and animation == "Death" then
		if RTRB == nil then
			RTRB = 1
		elseif RTRB == 2 then
			RTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTRB = 0
		else
			RTRB = RTRB + 1
		end
	end
	if unit.name == "SRU_RedMini10.1.2" and animation == "Death" then
		if RTRB == nil then
			RTRB = 1
		elseif RTRB == 2 then
			RTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTRB = 0
		else
			RTRB = RTRB + 1
		end
	end
	if unit.name == "SRU_RedMini10.1.3" and animation == "Death" then
		if RTRB == nil then
			RTRB = 1
		elseif RTRB == 2 then
			RTRBTimer = 1000 * ( GetInGameTimer() + 300 )
			RTRB = 0
		else
			RTRB = RTRB + 1
		end
	end
end

function Awareness:Timers()
	-- Baron
	if BTimer ~= nil then
		if BTimer == 0 then
			
		else
			BTimer = BTimer - 1
			BRespawnS = (BTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(BRespawnS/60))
			nSecs = string.format("%02.f", math.floor(BRespawnS - nMins *60))
			BRespawn = nMins..":" ..nSecs
		end
	end
	
	-- Dragon
	if DTimer ~= nil then
		if DTimer == 0 then
			
		else
			DTimer = DTimer - 1
			DRespawnS = (DTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(DRespawnS/60))
			nSecs = string.format("%02.f", math.floor(DRespawnS - nMins *60))
			DRespawn = nMins..":" ..nSecs
		end
	end
	
	-- Blue Buff / Blue Team
	if BTBBTimer ~= nil then
		if BTBBTimer == 0 then
			
		else
			BTBBTimer = BTBBTimer - 1
			BTBBRespawnS = (BTBBTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(BTBBRespawnS/60))
			nSecs = string.format("%02.f", math.floor(BTBBRespawnS - nMins *60))
			BTBBRespawn = nMins..":" ..nSecs
		end
	end
	
	-- Blue Buff / Red Team
	if RTBBTimer ~= nil then
		if RTBBTimer == 0 then
			
		else
			RTBBTimer = RTBBTimer - 1
			RTBBRespawnS = (RTBBTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(RTBBRespawnS/60))
			nSecs = string.format("%02.f", math.floor(RTBBRespawnS - nMins *60))
			RTBBRespawn = nMins..":" ..nSecs
		end
	end
	
	-- Red Buff / Blue Team
	if BTRBTimer ~= nil then
		if BTRBTimer == 0 then
			
		else
			BTRBTimer = BTRBTimer - 1
			BTRBRespawnS = (BTRBTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(BTRBRespawnS/60))
			nSecs = string.format("%02.f", math.floor(BTRBRespawnS - nMins *60))
			BTRBRespawn = nMins..":" ..nSecs
		end
	end
	
	-- Red Buff / Red Team
	if RTRBTimer ~= nil then
		if RTRBTimer == 0 then
			
		else
			RTRBTimer = RTRBTimer - 1
			RTRBRespawnS = (RTRBTimer - ( GetInGameTimer() * 1000))/1000
			nMins = string.format("%02.f", math.floor(RTRBRespawnS/60))
			nSecs = string.format("%02.f", math.floor(RTRBRespawnS - nMins *60))
			RTRBRespawn = nMins..":" ..nSecs
		end
	end
end

function Awareness:drawTimers()
	local x = WINDOW_W - 200
	
	-- Exemple of notification for Baron
	if BRespawnS < 60 and BRespawnS ~= nil then
		local y = WINDOW_H - 450
		NotificationSprite:Draw(x, y, 255)
		BaronSprite:Draw(x + 8, y + 8, 255)
		DrawTextA("Baron", 23, x + 120, y + 11, ARGB(255,25,148,115))
		DrawTextA(BRespawn, 35, x + 108, y + 43, ARGB(255,25,148,115))
	end
	
	-- Second notif
	-- local y = WINDOW_H - 575
	
	-- Third notif
	-- local y = WINDOW_H - 700
	
	-- Last notif
	-- local y = WINDOW_H - 825
	
	-- Coords for text
	-- DrawTextA("Baron", 23, x + 120, y + 11, ARGB(255,25,148,115))
	-- DrawTextA("Dragon", 23, x + 115, y + 11, ARGB(255,25,148,115))
	-- DrawTextA("Red Team", 23, x + 101, y + 11, ARGB(255,25,148,115))
	-- DrawTextA("Blue Team", 23, x + 97, y + 11, ARGB(255,25,148,115))
end

function Awareness:drawEnemyJungler()
	local x = ( WINDOW_W / 2 ) - 300
	local y = WINDOW_H * 0.2
	local count = 0
	
	for i, hero in pairs(self.junglers) do
		if hero and hero.visible and not hero.dead then
			count = count + 1
			GankSprite:Draw(x, y, 255)
			GankSprite:SetScale(0.5, 0.5)
	
			DrawTextA(self:getJunglerPos(hero), 35, x + 70, y + ( ( count - 1 ) * 50 ), ARGB(255,226,152,0))
		end
	end
end

function Awareness:getJunglerPos(hero)
	if MapPosition:onTopLane(hero) then
		return (hero.charName.." is ganking top lane !")
	elseif MapPosition:onMidLane(hero) then
		return (hero.charName.." is ganking mid lane !")
	elseif MapPosition:onBotLane(hero) then
		return (hero.charName.." is ganking bottom lane !")
	elseif MapPosition:inTopRiver(hero) then
		return (hero.charName.." is in top river !")
	elseif MapPosition:inBottomRiver(hero) then
		return (hero.charName.." is in bottom river !")
	elseif MapPosition:inLeftBase(hero) then
		return (hero.charName.." is in blue base !")
	elseif MapPosition:inRightBase(hero) then
		return (hero.charName.." is in red base !")
	elseif MapPosition:inTopLeftJungle(hero) then
		return (hero.charName.." is in the blue buff jungle of the blue team !")
	elseif MapPosition:inBottomRightJungle(hero) then
		return (hero.charName.." is in the blue buff jungle of the red team !")
	elseif MapPosition:inBottomLeftJungle(hero) then
		return (hero.charName.." is in the red buff jungle of the blue team !")
	elseif MapPosition:inTopRightJungle(hero) then
		return (hero.charName.." is in the red buff jungle of the red team !")
	end
end

-- Made by Whitex22. --
function Awareness:CreateWard(object) 
	if Core.Menu.AwarenessSettings.WardTrackerON then
		if object and (object.name:lower():find("visionward") or object.name:lower():find("sightward")) and object.networkID ~= 0 then
			if object.team ~= myHero.team then
				i = 1
				while i < self.wardNumber do
					if(self.wards[i])then
						i = i+1
					else
						break
					end
				end
				self.wards[i] = {}
				self.wards[i][1] = object.x
				self.wards[i][2] = object.y
				self.wards[i][3] = object.z
				self.wards[i][4] = object.networkID
				self:GetDrawPoints(i)
			end
		end
	end
end

function Awareness:DeleteWard(object) 
	if Core.Menu.AwarenessSettings.WardTrackerON then
		if object and object.name and (object.name:lower():find("visionward") or object.name:lower():find("sightward")) and object.networkID ~= 0 then	
			i = 1
			while i < self.wardNumber do
				if(self.wards[i]) then
					if(self.wards[i][4] == object.networkID) then
						self.wards[i] = nil
						return
					end
				end
				i = i +1
			end
		end
	end
end

function Awareness:GetDrawPoints(index) 
	local i = 1
	local wardVector = Vector(self.wards[index][1], self.wards[index][2], self.wards[index][3])
	local alpha = 0
	local value = Core.Menu.AwarenessSettings.WardTrackerQuality
	while(i <= 36 * value) do
		alpha = alpha + 360 / 36 / value
		self.wards[index][4+i] = {}
		a = 0.1
		self.wards[index][4 + i][1] = wardVector.x 
		self.wards[index][4 + i][2] = wardVector.y
		self.wards[index][4 + i][3] = wardVector.z + 110
		while (not IsWall(D3DXVECTOR3(self.wards[index][4 + i][1], self.wards[index][4 + i][2], self.wards[index][4 + i][3]))) and a < 0.9 do
			a = a + 0.025
			vc = Vector(1100 * math.sin(alpha / 360 * 6.28),0,1100 * math.cos(alpha / 360 * 6.28))
			vc:normalize()
			vc = vc * 1100 * a
			self.wards[index][4 + i][1] = wardVector.x + vc.x
			self.wards[index][4 + i][2] = wardVector.y
			self.wards[index][4 + i][3] = wardVector.z + vc.z
		end
		i = i + 1
	end
end

function Awareness:drawWards()
	if Core.Menu.AwarenessSettings.WardTrackerON then
		num = 1
		while num < self.wardNumber do
			if(self.wards[num]) then
				ward = self.wards[num]
				i = 1
				DrawCircle(self.wards[num][1], self.wards[num][2], self.wards[num][3],50,ARGB(140,255,0,0))
				DrawCircleMinimap(self.wards[num][1],0, self.wards[num][3],200,4,ARGB(255,0,200,0),50)
				while(ward[4+i]) do
					if ward[5+i] then
						DrawLine3D(ward[4+i][1],ward[4+i][2],ward[4+i][3],ward[5+i][1],ward[5+i][2],ward[5+i][3],3,ARGB(128,255,30,30))
					else
						DrawLine3D(ward[4+i][1],ward[4+i][2],ward[4+i][3],ward[5][1],ward[5][2],ward[5][3],3,ARGB(128,255,30,30))
					end
					i = i + 1
				end
			end
			num = num + 1
		end
	end
end

--[[
   _____ _                           _                _____ _                         
  / ____| |                         (_)              / ____| |                        
 | |    | |__   __ _ _ __ ___  _ __  _  ___  _ __   | |    | | __ _ ___ ___  ___  ___ 
 | |    | '_ \ / _` | '_ ` _ \| '_ \| |/ _ \| '_ \  | |    | |/ _` / __/ __|/ _ \/ __|
 | |____| | | | (_| | | | | | | |_) | | (_) | | | | | |____| | (_| \__ \__ \  __/\__ \
  \_____|_| |_|\__,_|_| |_| |_| .__/|_|\___/|_| |_|  \_____|_|\__,_|___/___/\___||___/
                              | |                                                     
                              |_|                                                     
]]--

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

--[[
  _______                   _    _____      _           _             
 |__   __|                 | |  / ____|    | |         | |            
    | | __ _ _ __ __ _  ___| |_| (___   ___| | ___  ___| |_ ___  _ __ 
    | |/ _` | '__/ _` |/ _ \ __|\___ \ / _ \ |/ _ \/ __| __/ _ \| '__|
    | | (_| | | | (_| |  __/ |_ ____) |  __/ |  __/ (__| || (_) | |   
    |_|\__,_|_|  \__, |\___|\__|_____/ \___|_|\___|\___|\__\___/|_|   
                  __/ |                                               
                 |___/                                                
]]--

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

--[[
  _____                      _                 _ 
 |  __ \                    | |               | |
 | |  | | _____      ___ __ | | ___   __ _  __| |
 | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` |
 | |__| | (_) \ V  V /| | | | | (_) | (_| | (_| |
 |_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|
                                                 

]]

class("Download")
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

--[[
   ____       _ __          __   _ _             __  __                                   
  / __ \     | |\ \        / /  | | |           |  \/  |                                  
 | |  | |_ __| |_\ \  /\  / /_ _| | | _____ _ __| \  / | __ _ _ __   __ _  __ _  ___ _ __ 
 | |  | | '__| '_ \ \/  \/ / _` | | |/ / _ \ '__| |\/| |/ _` | '_ \ / _` |/ _` |/ _ \ '__|
 | |__| | |  | |_) \  /\  / (_| | |   <  __/ |  | |  | | (_| | | | | (_| | (_| |  __/ |   
  \____/|_|  |_.__/ \/  \/ \__,_|_|_|\_\___|_|  |_|  |_|\__,_|_| |_|\__,_|\__, |\___|_|   
                                                                           __/ |          
                                                                          |___/           
]]--
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
	if SAC then self.LoadedOrbWalker = "SAC:P" end
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
		self.Menu.KeySettings:addParam("bindtowalker","Your Keys are bound to your OrbWalkers Keys", 5)
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
	if self:GetOrbMode() then
		DrawTextA("Current Mode: "..modetbl[self:GetOrbMode()],12,20,40)
	end
	if self:GetTarget() then
		DrawTextA("Current Target: "..self:GetTarget().charName,12,20,60)
	end
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
		if self.Menu.KeySettings.HarrassON then return 1 end
		if self.Menu.KeySettings.WaveClearON then return 2 end
		if self.Menu.KeySettings.LastHitON then return 3 end
		if self.Menu.KeySettings.comboON then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "S1Orb" then
		if _G.S1mpleOrbLoaded and _G.S1.aamode == "none" then return 0 end
		if _G.S1mpleOrbLoaded and _G.S1.aamode == "harass" then return 1 end
		if _G.S1mpleOrbLoaded and _G.S1.aamode == "laneclear" then return 2 end
		if _G.S1mpleOrbLoaded and _G.S1.aamode == "lasthit" then return 3 end
		if _G.S1mpleOrbLoaded and _G.S1.aamode == "sbtw" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "SAC:R" then
		if not _G.AutoCarry then return 0 end
		if _G.AutoCarry.Keys.MixedMode then return 1 end
		if _G.AutoCarry.Keys.LaneClear then return 2 end
		if _G.AutoCarry.Keys.LastHit then return 3 end
		if _G.AutoCarry.Keys.AutoCarry then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "SAC:P" then
		if SAC:GetActiveMode() == "MixedMode" then return 1 end
		if SAC:GetActiveMode() == "Laneclear" then return 2 end
		if SAC:GetActiveMode() == "LastHit" then return 3 end
		if SAC:GetActiveMode() == "AutoCarry" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end		
		return 0
	elseif self.LoadedOrbWalker == "MMA" then
		if _G.MMA_IsDualCarrying() then return 1 end
		if _G.MMA_IsLaneClearing() then return 2 end
		if _G.MMA_IsLastHitting() then return 3 end
		if _G.MMA_IsOrbwalking() then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "NOW" then
		if not _G.NebelwolfisOrbWalker then return 0 end
		if _G.NebelwolfisOrbWalker.Config.k.Harass then return 1 end
		if _G.NebelwolfisOrbWalker.Config.k.LaneClear then return 2 end
		if _G.NebelwolfisOrbWalker.Config.k.LastHit then return 3 end
		if _G.NebelwolfisOrbWalker.Config.k.Combo then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "PEW" then
		if not _Pewalk then return 0 end
		if _Pewalk.GetActiveMode().Mixed then return 1 end
		if _Pewalk.GetActiveMode().LaneClear then return 2 end
		if _Pewalk.GetActiveMode().Farm then return 3 end
		if _Pewalk.GetActiveMode().Carry then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "SxOrb" then
		if not _G.SxOrb then return end
		if _G.SxOrb.isHarass or SxOrb.isHarass then return 1 end
		if _G.SxOrb.isLaneClear or SxOrb.isLaneClear then return 2 end
		if _G.SxOrb.isLastHit or SxOrb.isLastHit then return 3 end
		if _G.SxOrb.isFight or SxOrb.isFight then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	elseif self.LoadedOrbWalker == "BFW" then
		if _G["BigFatOrb_Mode"] == "Harass" then return 1 end
		if _G["BigFatOrb_Mode"] == "LaneClear" then return 2 end
		if _G["BigFatOrb_Mode"] == "LastHit" then return 3 end
		if _G["BigFatOrb_Mode"] == "Combo" then return 4 end
		if self.Menu.KeySettings.JungleClearON then return 5 end
		return 0
	end
end

function OrbWalkerManager:GetTarget()
	if self.LoadedOrbWalker == "NONE" then
		return nil
	elseif self.LoadedOrbWalker == "KEYS" then
		local currentMode = self:GetOrbMode()
		if currentMode == 0 then return nil end
		local range = myHero.range + myHero.boundingRadius
		if currentMode == 1 then
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
		return (_G.S1mpleOrbLoaded and _G.S1:GetTarget() or nil)
	elseif self.LoadedOrbWalker == "SAC:R" and _G.AutoCarry and _G.AutoCarry.SkillsCrosshair then
		return _G.AutoCarry.SkillsCrosshair.target
	elseif self.LoadedOrbWalker == "SAC:P" then
		return SAC:GetTarget()
	elseif self.LoadedOrbWalker == "MMA" then
		return _G.MMA_GetTarget()
	elseif self.LoadedOrbWalker == "NOW" then
		return _G.NebelwolfisOrbWalker:GetTarget()
	elseif self.LoadedOrbWalker == "PEW" then
		return _Pewalk.GetTarget()
	elseif self.LoadedOrbWalker == "SxOrb" then
		return _G.SxOrb:GetTarget()
	elseif self.LoadedOrbWalker == "BFW" then
		--[[NO PUBLIC API]]
		local currentMode = self:GetOrbMode()
		if currentMode == 0 then return nil end
		local range = myHero.range + myHero.boundingRadius
		if currentMode == 1 then
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
	end
	return nil
end


--[[
   ____        _                     _ 
  / __ \      | |                   | |
 | |  | |_ __ | |     ___   __ _  __| |
 | |  | | '_ \| |    / _ \ / _` |/ _` |
 | |__| | | | | |___| (_) | (_| | (_| |
  \____/|_| |_|______\___/ \__,_|\__,_|
                                       
                                       
]]--
function OnLoad()
	Core = Core()
	printC("Loaded")
end