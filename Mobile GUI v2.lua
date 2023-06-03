-- #NebulaOnTop

local MainGui = Instance.new('ScreenGui')
local GUI = Instance.new('Frame')
local UICorner = Instance.new('UICorner')
local Killer1 = Instance.new('TextButton')
local UICorner_2 = Instance.new('UICorner')
local Killer2 = Instance.new('TextButton')
local UICorner_3 = Instance.new('UICorner')
local Killer3 = Instance.new('TextButton')
local UICorner_4 = Instance.new('UICorner')

MainGui.Name = 'MainGui'
MainGui.Parent = game:GetService('CoreGui')

GUI.Name = 'GUI'
GUI.Size = UDim2.new(0.15876652300357819, 0, 0.4316537082195282, 0)
GUI.Position = UDim2.new(0.571938157081604, 0, 0.10433071106672287, 0)
GUI.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
GUI.Parent = MainGui
GUI.Draggable = true

UICorner.Parent = GUI

Killer1.Name = 'Killer1'
Killer1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Killer1.Size = UDim2.new(0, 113, 0, 40)
Killer1.TextSize = 20
Killer1.TextColor3 = Color3.fromRGB(0, 0, 0)
Killer1.Text = 'Killer P1'
Killer1.Font = Enum.Font.Unknown
Killer1.Position = UDim2.new(0.05592300370335579, 0, 0.11752135306596756, 0)
Killer1.Parent = GUI
Killer1.MouseButton1Click:Connect(function()
game.Workspace.Game.Mobs.Dummy.Enemy.Health = 0
end)

UICorner_2.Parent = Killer1

Killer2.Name = 'Killer2'
Killer2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Killer2.Size = UDim2.new(0, 113, 0, 40)
Killer2.TextSize = 20
Killer2.TextColor3 = Color3.fromRGB(0, 0, 0)
Killer2.Text = 'Killer P2'
Killer2.Font = Enum.Font.Unknown
Killer2.Position = UDim2.new(0.0524255633354187, 0, 0.3329075574874878, 0)
Killer2.Parent = GUI
Killer2.MouseButton1Click:Connect(function()
game.Workspace.Game.Mobs.Dummy2.Enemy.Health = 0
end)

UICorner_3.Parent = Killer2

Killer3.Name = 'Killer3'
Killer3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Killer3.Size = UDim2.new(0, 113, 0, 40)
Killer3.TextSize = 20
Killer3.TextColor3 = Color3.fromRGB(0, 0, 0)
Killer3.Text = 'Killer P3'
Killer3.Font = Enum.Font.Unknown
Killer3.Position = UDim2.new(0.044936198741197586, 0, 0.5518056750297546, 0)
Killer3.Parent = GUI
Killer3.MouseButton1Click:Connect(function()
game.Workspace.Game.Mobs.Dummy3.Enemy.Health = 0
end)

UICorner_4.Parent = Killer3



-- #NebulaOnTop

local ScreenGui = Instance.new('ScreenGui')
local TextButton = Instance.new('TextButton')

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService('CoreGui')
local Main = game.CoreGui.MainGui.GUI

TextButton.TextWrapped = true
TextButton.Draggable = true
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Size = UDim2.new(0, 97, 0, 50)
TextButton.TextSize = 15
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = 'Gui toggle button'
TextButton.Font = Enum.Font.Unknown
TextButton.Position = UDim2.new(0.003567181993275881, 0, 0.36220473051071167, 0)
TextButton.Parent = ScreenGui
TextButton.MouseButton1Click:Connect(function()
if Main.Visible == true then
	Main.Visible = false
	elseif Main.Visible == false then
		Main.Visible = true
		end
end)
