local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Nick's Bonus UTBB GUI", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Messing around")

Section:NewKeybind("Real knife spam ", "nil", Enum.KeyCode.P, function()
local args = {
[1] = "RealKnife",
[2] = game.Workspace.Game.Mobs.Dummy,
[3] = 10000,
[4] = "Skill1",
[5] = 0,
[6] = "DMG"
}
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
end)

Section:NewKeybind("Real knife spam ", "nil", Enum.KeyCode.P, function()
local args = {
[1] = "RealKnife",
[2] = game.Workspace.Game.Mobs.Dummy2,
[3] = 10000,
[4] = "Skill1",
[5] = 0,
[6] = "DMG"
}
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
end)

Section:NewKeybind("Real knife spam ", "nil", Enum.KeyCode.P, function()
local args = {
[1] = "RealKnife",
[2] = game.Workspace.Game.Mobs.Dummy3,
[3] = 10000,
[4] = "Skill1",
[5] = 0,
[6] = "DMG"
}
game:GetService("ReplicatedStorage"):WaitForChild("Skill"):FireServer(unpack(args))	
end)



Section:NewKeybind("Instant Kill P1 ", "Kills first priority enemy (Bypasses Dodges)", Enum.KeyCode.K, function()
game.Workspace.Game.Mobs.Dummy.Enemy.Health = 0
end)

Section:NewKeybind("Instant Kill P2", "Kills second priority enemy (Bypasses Dodges)", Enum.KeyCode.K, function()
game.Workspace.Game.Mobs.Dummy2.Enemy.Health = 0
end)

Section:NewKeybind("Instant Kill P3", "Kills third priority enemy (Bypasses Dodges)", Enum.KeyCode.K, function()
game.Workspace.Game.Mobs.Dummy3.Enemy.Health = 0
end)

Section:NewKeybind("GUI Toggle", "Toggles the gui", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
