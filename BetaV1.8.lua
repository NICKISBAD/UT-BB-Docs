--Beta Version 1.8 (INSTA KILL BYPASS HAHAHAHA FUCK YOU DEVS I WIN HAHAHA)

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

Tab:AddLabel("Instakill placed in bonus gui bc orion is coding like shit :/")

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

Tab:AddLabel("Real knife")
	
Tab:AddBind({
Name = "RealKnife Slash Spam P1",
Default = Enum.KeyCode.T,
Hold = true,
Callback = function()	
local args = {
[1] = "RealKnife",
[2] = game.Workspace.Game.Mobs.Dummy,
[3] = 10000,
[4] = "Skill1",
[5] = 0,
[6] = "DMG"
}
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
end
})

Tab:AddButton({
Name = "RealKnife Slash Spam P1",
Callback = function()
local args = {
[1] = "RealKnife",
[2] = game.Workspace.Game.Mobs.Dummy,
[3] = 10000,
[4] = "Skill1",
[5] = 0,
[6] = "DMG"
}
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
end

})

local Tab = Window:MakeTab({ 	Name = "Secrets", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })


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


local Tab = Window:MakeTab({ 	Name = "Misc", 	Icon = "rbxassetid://4483345998", 	PremiumOnly = false })

Tab:AddButton({
    Name = "Bonus GUI (PC ONLY)";
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/BonusGUI.lua"))()
  end
})

Tab:AddButton({
Name = "Bonus GUI (Mobile supported!!!")
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Testing-UI-libs/main/new%202.lua"))()
end
})

Tab:AddButton({
Name = "Bonus Gui V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/Mobile%20GUI%20v2.lua"))()
end
})

Tab:AddLabel("Above bonus guis have a working insta kill bypass (FUCK YOU DEVS HAHAHAHA")


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
