local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Beat the niggas", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.AutoFarm = false
_G.DarkAges = false

local function CannonDamage(NPC)
	local args = {
        [1] = game.Players.LocalPlayer.Backpack:WaitForChild("Hand Cannon"),
        [2] = NPC
    }

    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
end

local function CannonDamageToEntireWorkspace()
    local args = {
    	[1] = game.Players.LocalPlayer.Backpack:WaitForChild("Hand Cannon"),
        [2] = Vector3.new(999,999,999)
    }

    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
end

-- Call the function
CannonDamageToEntireWorkspace()


local function SimulateGunShoot(Targ, Gun)
local args = {
        [1] = game.Players.LocalPlayer.Backpack:WaitForChild(Gun),
        [2] = Targ.Head.Position
    }

    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
end


local function SimulateGun(Gun)
	local gun = Instance.new("Tool")
	gun.Name = Gun
	gun.Parent = game.Players.LocalPlayer.Backpack
end

Tab:AddToggle({
	Name = "KillAura/HitAura (Cannon Required)",
	Default = false,
	Callback = function(v)
		_G.AutoFarm = v
		
		spawn(function()
			while wait() do
				if _G.AutoFarm then
					local args = {
                        [1] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hand Cannon"),
                        [2] = game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position
                    }

                    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
				end
			end
		end)
	end
})

Tab:AddToggle({
	Name = "Auto Dark Ages",
	Default = false,
	Callback = function(v)
		_G.DarkAges = v
	end
})

_G.Desert = false
_G.Park = false
 
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
	Options = {"Robloxian", "Angry Robloxian", "Tiny Robloxian", "Gunner Robloxian", "Giant Robloxian", "Rich Robloxian", "Tiny Angry Robloxian", "Raging Robloxian", "Rox The Destroyer",  "Crazy Robloxian",  "Mummy", "Tiny Mummy", "Fast Mummy", "Strong Mummy", "Sandstone", "Carium", "Camel", "Goblin", "Orc", "Buster Goblin", "Skeleton", "Red Fungus", "Blue Fungus", "Yellow Fungus", "Green Fungus", "Gavin The Wizard", "Adalwolf"},
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
					CannonDamage(v.Torso.Position)
				end
			end
		end
	end
end)

local cooldownCounter = 0
local cooldownDuration = 1 -- Adjusted for 0.5-second break every 300 loops

-- Loop for Desert
spawn(function()
    while wait() do
        if _G.Desert then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if table.find({"Mummy", "Fast Mummy", "Strong Mummy", "Sandstone", "Camel", "Carium"}, v.Name) then
                    if cooldownCounter == 0 then
                        CannonDamage(v.Torso.Position)
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
                        CannonDamage(v.Torso.Position)
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
                        CannonDamage(v.Torso.Position)
                        cooldownCounter = cooldownDuration
                    else
                        cooldownCounter = cooldownCounter - 1
                    end
                end
            end
        end
    end
end)
