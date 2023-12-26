local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

_G.Debug = false

if not _G.Debug then
    _G.Window = OrionLib:MakeWindow({Name = "Beat your meat", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
elseif _G.Debug then
	_G.Window = OrionLib:MakeWindow({Name = "DebugMode", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
end


local Tab = _G.Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local function AntiRange(Gun)
	local a = require(game:GetService("ReplicatedStorage").Modules.Tools.Gun.Settings[Gun])
	
	a.NPCProjectileSpeed = 1
end

local function GunMod(GunName)
	local Obj = require(game:GetService("ReplicatedStorage").Modules.Tools.Gun.Settings[GunName])
	
	Obj.AmmoPerMag = 1000
	Obj.Automatic = true
	Obj.ReloadTime = 0
	Obj.Spread = 0
	Obj.FireRate = 0.1
    Obj.Range = 250
    Obj.Knockback = 0
    Obj.ProjectileSpeed = 500
    Obj.MaxPierce = 999
end


_G.MilitantFarm = false
_G.DarkAges = false

local function CannonDamage(NPC)
	local args = {
        [1] = game.Players.LocalPlayer.Backpack:WaitForChild("Hand Cannon"),
        [2] = NPC
    }

    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
end

local function SimulateAttack()
	
	local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.Sword,
    [2] = 1
}

game:GetService("ReplicatedStorage").Remotes.MeleeAttacked:FireServer(unpack(args))
end

_G.AutoParry = false
_G.AutoSFOTH = false

Tab:AddToggle({
	Name = "AutoParry (face target, hold sword)",
	Callback = function(v)
		_G.AutoParry = v
	end
})

spawn(function()
	while wait() do
		if _G.AutoParry then
			SimulateAttack()
		end
	end
end)

Tab:AddToggle({
	Name = "Auto Militant",
	Default = false,
	Callback = function(v)
		_G.MilitantFarm = v
	end
})

Tab:AddToggle({
	Name = "Auto SFOTH",
	Default = false,
	Callback = function(v)
		_G.AutoSFOTH = v
	end
})

spawn(function()
	while wait() do
		if _G.AutoSFOTH then
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name:match("Fighter") or v.Name:match("Master") then
					CannonDamage(v:WaitForChild("HumanoidRootPart").Position)
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if _G.MilitantFarm then
			for i,v in pairs(game.Workspace:GetChildren()) do
				if table.find({"Meleer Militant", "Gunner Militant", "Grenader Militant", "Medic Militant", "Combatant Militant", "Brute Militant", "Viper", "Juggernaut"}, v.Name) then
					CannonDamage(v:WaitForChild("HumanoidRootPart").Position)
			  end
	       end
		end
	end
end)

Tab:AddToggle({
	Name = "Auto Dark Ages",
	Default = false,
	Callback = function(v)
		_G.DarkAges = v
	end
})

 
Tab:AddToggle({
	Name = "Auto Desert",
	Default = false,
	Callback = function(v)
		_G.Desert = v
	end
})

Tab:AddToggle({
	Name = "Auto Park",
	Default = false,
	Callback = function(v)
		_G.Park = v
	end
})

Tab:AddButton({
	Name = "WIP Button",
	Callback = function()
		game.StarterGui:SetCore("SendNotification",{
			Title = "This Button does nothing yet",
			Text = "Error?"
		})
	    CannonDamageToEntireWorkspace()
	end
})

local EnemyTargets = {}

Tab:AddDropdown({
	Name = "Enemy Targets",
	Default = "Enemy",
	Options = {"Robloxian", "Angry Robloxian", "Tiny Robloxian", "Gunner Robloxian", "Giant Robloxian", "Rich Robloxian", "Tiny Angry Robloxian", "Raging Robloxian", "Rox The Destroyer",  "Crazy Robloxian",  "Mummy", "Tiny Mummy", "Fast Mummy", "Strong Mummy", "Sandstone", "Carium", "Camel", "Goblin", "Orc", "Buster Goblin", "Skeleton", "Red Fungus", "Blue Fungus", "Yellow Fungus", "Green Fungus", "Gavin The Wizard", "Adalwolf", "Meleer Militant", "Gunner Militant", "Grenader Militant", "Medic Militant", "Combatant Militant", "Brute Militant", "Viper", "Juggernaut"},
	Callback = function(v)
		table.insert(EnemyTargets, v)
	end
})

_G.KillTargets = false

Tab:AddToggle({
	Name = "AutoKill Targets",
	Default = false,
	Callback = function(v)
		_G.KillTargets = v
	end
})

Tab:AddButton({
	Name = "Clear EnemyTargets",
	Callback = function()
		EnemyTargets = {}
	end
})

spawn(function()
	while wait() do
		if _G.KillTargets then
			for i,v in pairs(game.Workspace:GetChildren()) do
				if table.find(EnemyTargets, v.Name) then
		            CannonDamage(v.Torso.Position) wait(1)
				end
			end
		end
	end
end)

local cooldownCounter = 0
local cooldownDuration = 1

-- Loop for Desert
spawn(function()
    while wait() do
        if _G.Desert then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if table.find({"Mummy", "Fast Mummy", "Strong Mummy", "Sandstone", "Camel", "Carium"}, v.Name) then
                    if cooldownCounter == 0 then
                        CannonDamage(v.Torso.Position) wait(1)
                        cooldownCounter = cooldownDuration
                    else
                        cooldownCounter = cooldownCounter - 1
                    end
                end
            end
        end
    end
end)

-- Loop for Park
spawn(function()
    while wait() do
        if _G.Park then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if v.Name:match("Robloxian") or v.Name:match("Rox") then
                    if cooldownCounter == 0 then
                        CannonDamage(v.Torso.Position) wait(1)
                        cooldownCounter = cooldownDuration
                    else
                        cooldownCounter = cooldownCounter - 1
                    end
                end
            end
        end
    end
end)

-- Loop for DarkAges
spawn(function()
    while wait() do
        if _G.DarkAges then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if table.find({"Goblin","Orc","Buster Goblin","Skeleton","Adalwolf","Gavin The Wizard", "Red Fungus", "Blue Fungus", "Green Fungus", "Yellow Fungus"}, v.Name) then
                    if cooldownCounter == 0 then
                        CannonDamage(v.Torso.Position) wait(1)
                        cooldownCounter = cooldownDuration
                    else
                        cooldownCounter = cooldownCounter - 1
                    end
                end
            end
        end
    end
end)

local Tab2 = _G.Window:MakeTab({
	Name = "Gun Mods",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local path1 = game.ReplicatedStorage.Modules.Tools.Gun.Settings

function inf(gun)
	local a = require(path1[gun])
	
	a.AmmoPerMag = 9999
	a.FireRate = 0.1
	a.Automatic = true
	a.Spread = 1
	a.MaxPierce = 999
end

function BulletBuff(gun)
	local a = require(path1[gun])
	
	a.ProjectilesPerShot = 30
	a.ProjectileSpeed = 999
end

function InstaReload(gun)
	local a = require(path1[gun])
	
	a.ReloadTime = 0
end

local function B2()
	Tab2:AddButton({
		Name = "All Guns inf Ammo + full auto, no spread",
		Callback = function()
			for i,v in pairs(path1:GetChildren()) do
				if v:IsA("ModuleScript") and v.Name ~= "Minigun" then
				    inf(v.Name)
				end
			end
		end
	})
end

local function B1()
	Tab2:AddButton({
		Name = "All Guns Fire 30 more bullets",
		Callback = function()
			for i,v in pairs(path1:GetChildren()) do
				if v:IsA("ModuleScript") and v.Name ~= "Minigun" then
				    BulletBuff(v.Name)
				end
			end
		end
	})
end

local function B3()
	Tab2:AddButton({
		Name = "All Guns InstaReload",
		Callback = function()
			for i,v in pairs(path1:GetChildren()) do
				if v:IsA("ModuleScript") and v.Name ~= "Minigun" then
				    InstaReload(v.Name)
				end
			end
		end
	})
end

B2()
B1()
B3()

Tab2:AddButton({
	Name = "Minigun Buff",
	Callback = function()
		local a = require(game.ReplicatedStorage.Modules.Tools.Gun.Settings.Minigun)
		a.WindUp = 0
		a.AmmoPerMag = 9999
		a.ReloadTime = 0
		a.HeadshotDamageMultiplier = 5
		a.MaxPierce = 50
		a.ProjectilesPerShot = 50
		a.Spread = 1
		a.ProjectileSpeed = 9999
	end
})


Tab2:AddLabel("NPC mods (wip)")

Tab2:AddButton({
	Name = "Disable most enemy guns",
	Callback = function()
		for i,v in pairs(game.ReplicatedStorage.Modules.Tools.Gun.Settings:GetChildren()) do
			if table.find({"EnemyShotgun", "EnemySniperRifle", "EnemyMinigun", "EnemyHuntingRifle"}, v.Name) then
				local a = require(v)
				a.AmmoPerMag = 1
				a.ProjectilesPerShot = 0
				a.ReloadTime = 999
			end
		end
	end
})
