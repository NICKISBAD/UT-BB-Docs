--Beta V0.61(Model:BUSTER)

if game.PlaceId == 2848920787 or 8395973069 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

 OrionLib:MakeNotification({
 	 Name = "Tip!",
	 Content = "It's to note this GUI works only/best in VIP servers, they're free. Go make one :D",
	 Image = "rbxassetid://4483345998",
	 Time = 15
 })
 
local function notif(Title, Text, Timer)
 	   OrionLib:MakeNotification({
	    Title = Title,
		Content = Text,
	    Image = "rbxassetid://4483345998",
	    Time = Timer
 })
end

local Window = OrionLib:MakeWindow({Name = "Nick's UT BossBattles UI (Orion Edition)", HidePremium = false, SaveConfig = true, ConfigFolder = "Nick's UTMM" , IntroEnabled = false})

notif("Loaded!", "Loaded Default Version of UT:BB GUI!", 5)

local Tab = Window:MakeTab({ 	Name = "Other", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })

Tab:AddLabel("Socials")
Tab:AddLabel("--------------------------")
Tab:AddButton({ 
  Name = "My ScriptBlox Profile",
  Callback = function()
     setclipboard("https://scriptblox.com/u/TabletopJiver")
	 notif("Copied link!", "Copied my Scriptblox profile's link!", 5)
  end
})
Tab:AddLabel("--------------------------")
Tab:AddButton({ 
  Name = "My Github Profile",
  Callback = function()
     setclipboard("https://github.com/NICKISBAD")
	 	 notif("Copied link!", "Copied my Github account's link!", 5)
  end
})

Tab:AddLabel("--------------------------")

Tab:AddButton({
  Name = "Documentation",
  Callback = function()
    setclipboard("https://github.com/NICKISBAD/UT-BB-Docs/blob/main/README.md")
	notif("Copied link!", "Copied my Github Documentation on the script", 5)
    end
})

Tab:AddLabel("--------------------------")
Tab:AddLabel("My discord tag is TableTopJiver#3623 for help and inquiries")
Tab:AddLabel("--------------------------")
Tab:AddLabel("Priorities:Explained")
Tab:AddLabel("(1/3: Each enemy has their assigned priority value, in a public.")
Tab:AddLabel("1/3: there are priorities above 3.")
Tab:AddLabel("2/3: Which is why VIPs are recommended, Your INF Damage")
Tab:AddLabel("2.5/3:may go for another player's priority and miss")
Tab:AddLabel("3/3: P1 = Dummy, P2 = Dummy2, P3 = Dummy3")


local Tab = Window:MakeTab({ 	Name = "Player", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false }) 

local Section = Tab:AddSection({ 	Name = "Basic Modifications" })
_G.WsVal = false
_G.JPVal = false

Tab:AddTextbox({ 	Name = "Walkspeed", 	Default = "Value", 	TextDisappear = true, 	Callback = function(Value)
if WsVal == true then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
end
})

Tab:AddTextbox({ 	Name = "JumpPower", 	Default = "Value", 	TextDisappear = true, 	Callback = function(Value)
if JPVal == true then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end
 end	 
})


local Section = Tab:AddSection({ Name = "HP Modifications" })

local function SetHP(Value)
 local args = { [1] = "DamageTaken", [2] = false, [3] = -Value }
 game:GetService("ReplicatedStorage").Functions:FireServer(unpack(args))
end

 local HPTable = {
    HPToSet = 0
}

Tab:AddButton({
    Name = "Infinite HP",
	Callback = function()
	    SetHP("inf")
	end
})

Tab:AddTextbox({ Name = "Set Self HP", Default = "Value", TextDisappear = true, Callback = function(Amt)
   HPTable.HPToSet = Amt
 end
})

Tab:AddButton({
            Name = "Give HP",
            Callback = function()
			SetHP(HPTable.HPToSet)
	end
})

local Tab = Window:MakeTab({ 	Name = "Enemies", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })

Tab:AddButton({
     Name = "Kill enemies",
     Callback = function()
         for _.v in pairs(game.Workspace.Game.Mobs:GetChildren()))
		if v.Name == "Enemy" then
			v.Health = 0
		end
	end
end
})

Tab:AddLabel("Insta-kill was patched :P (fuck you devs)")

local function GSmite(Targ)
 local args = {
    [1] = "GasterBlaster",
    [2] = workspace.Game.Mobs [Targ],
    [3] = "inf"
 }

 game:GetService("ReplicatedStorage").ArmorShoot:FireServer(unpack(args))
end

local TargetToSmite = {
   Target = "Nan"
}

Tab:AddDropdown({
    Name = "God Smite an enemy",
	Default = "Select Priority",
	Options = {"Dummy", "Dummy2", "Dummy3"},
	Callback = function(Value)
    TargetToSmite.Target = Value
	end
})

Tab:AddButton({
     Name = "God Smite Selected",
	  Callback = function()
	   GSmite(TargetToSmite.Target)
   end
})

Tab:AddLabel("Attacks")

local Dmg = {
  DMGVal = 0
}

Tab:AddTextbox({
    Name = "Input Damage to do",
	Default = 0,
	TextDisappear = false,
	Callback = function(Value)
	   Dmg.DMGVal = Value
	end
})

Tab:AddButton({
    Name = "Gaster Blaster P1",
	Callback = function()
	     local args = {
    [1] = "GasterBlaster",
    [2] = workspace.Game.Mobs:WaitForChild("Dummy"),
    [3] = Dmg.DMGVal
 }

 game:GetService("ReplicatedStorage").ArmorShoot:FireServer(unpack(args))
    end
})

Tab:AddButton({
    Name = "Gaster Blaster P2",
	Callback = function()
	     local args = {
    [1] = "GasterBlaster",
    [2] = workspace.Game.Mobs:WaitForChild("Dummy2"),
    [3] = Dmg.DMGVal
 }

 game:GetService("ReplicatedStorage").ArmorShoot:FireServer(unpack(args))
    end
})

Tab:AddButton({
    Name = "Gaster Blaster P3",
	Callback = function()
	     local args = {
    [1] = "GasterBlaster",
    [2] = workspace.Game.Mobs:WaitForChild("Dummy3"),
    [3] = Dmg.DMGVal
 }

 game:GetService("ReplicatedStorage").ArmorShoot:FireServer(unpack(args))
    end
})

Tab:AddLabel("Spears")

Tab:AddButton({
    Name = "999999 Spears P1",
	Callback = function()
	     local args = {
    [1] = "TrueSpear",
    [2] = workspace.Game.Mobs.Dummy,
    [3] = 999999,
    [4] = "Skill1",
    [5] = 0,
    [6] = "DMG"
 }

 game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
    end
})

Tab:AddButton({
    Name = "999999 Spears P2",
	Callback = function()
	     local args = {
    [1] = "TrueSpear",
    [2] = workspace.Game.Mobs.Dummy2,
    [3] = 999999,
    [4] = "Skill1",
    [5] = 0,
    [6] = "DMG"
 }

 game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
    end
})

Tab:AddButton({
    Name = "999999 Spears P3",
	Callback = function()
	     local args = {
    [1] = "TrueSpear",
    [2] = workspace.Game.Mobs.Dummy3,
    [3] = 999999,
    [4] = "Skill1",
    [5] = 0,
    [6] = "DMG"
 }

 game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
    end
})

local Tab = Window:MakeTab({ 	Name = "Secrets", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })

local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

Tab:AddDropdown({
    Name = "Teleport to a secret boss",
	Default = "Select Boss",
	Options = {"Player", "Gaster", "Toby", "Sinz", "Evil Tem", "OofEggs", "Xinos"},
	Callback = function(selc)
	local a = selc
	    if a == "Player" then
		    plr.CFrame = CFrame.new(175.254593, 156.524826, -35.5136757, -0.0283752866, -2.29360424e-08, -0.999597311, 1.04961773e-08, 1, -2.32432331e-08, 0.999597311, -1.11514842e-08, -0.0283752866)
			elseif a == "Toby" then
			plr.CFrame = CFrame.new(191.391251, 171.239075, 395.656433, -0.00764092663, -9.18578458e-09, -0.999970794, 2.12815121e-09, 1, -9.20231358e-09, 0.999970794, -2.19840324e-09, -0.00764092663)
			elseif a == "Xinos" then
			plr.CFrame = CFrame.new(-830.007629, 169.496933, -1329.19678, -0.0762154907, 3.85985608e-08, 0.997091353, 5.59963347e-08, 1, -3.44309186e-08, -0.997091353, 5.32092912e-08, -0.0762154907)
			elseif a == "Evil Tem" then
			plr.CFrame = CFrame.new(2249.52026, 184.615189, 480.656494, -0.999116123, 1.54631075e-09, 0.0420354344, 2.30578889e-10, 1, -3.13053903e-08, -0.0420354344, -3.12680299e-08, -0.999116123)
			elseif a == "OofEggs" then
			plr.CFrame = CFrame.new(2167.14746, 140.574539, 614.099915, -0.0316104814, 9.31860722e-09, 0.999500275, 8.34950455e-08, 1, -6.68262778e-09, -0.999500275, 8.32420781e-08, -0.0316104814)
			elseif a == "Sinz" then
			plr.CFrame = CFrame.new(340.171692, 209.98851, -3407.72705, 0.994106948, -1.29119049e-09, -0.108403757, 1.22710764e-09, 1, -6.57857879e-10, 0.108403757, 5.20958054e-10, 0.994106948)
			elseif a == "Gaster" then
			plr.CFrame = CFrame.new(1426.70789, 121.170441, 18392.0605, 0.988672495, 1.80412627e-08, -0.150089115, -1.93946939e-08, 1, -7.55376206e-09, 0.150089115, 1.03791287e-08, 0.988672495)
		end
	end
})

Tab:AddLabel("Secret Extras ;) ")

Tab:AddButton({
    Name = "Delete most attacks (God Mode V1)",
	Callback = function()
    local a = game.Lighting:FindFirstChild("Lighting")
    
    a:Destroy()
   
  end
})

local tt = Instance.new("Folder")
tt.Parent = game.Workspace
tt.Name = "TEMPFOLDERLOL"  
   
Tab:AddButton({
    Name = "God Mode V2",
    Callback = function()
    local br = game.ReplicatedStorage:WaitForChild("Functions")
    br.Parent = game.Workspace:WaitForChild("TEMPFOLDERLOL")
 end
})

Tab:AddButton({
    Name = "Un-God Mode V2",
    Callback = function()
    local br = tt:WaitForChild("Functions")
    br.Parent = game.ReplicatedStorage
 end
})



   
OrionLib:Init()

else

print("Wrong game detected!") 

game.StarterGui:SetCore("SendNotification", { 
Title = "Wrong game!";
Text = "Teleporting you to correct game in 5+ seconds."; 
Duration = 100
}) 

wait(5) 

game:GetService('TeleportService'):Teleport(2848920787)

end
