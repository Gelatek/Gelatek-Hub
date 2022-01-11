local function Message(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[Gelatek Hub]: ".. text,
		Color = Color3.fromRGB(255,255, 255),
		TextSize = 18,
	});
end

local Executor = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local SideBar = Instance.new("Frame")
local TheJ = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local Execute = Instance.new("ImageButton")
local Info = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Clear = Instance.new("ImageButton")
local Info_2 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Hats = Instance.new("ImageButton")
local Info_3 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local Commands = Instance.new("ImageButton")
local Info_4 = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local Credits = Instance.new("ImageButton")
local Info_5 = Instance.new("Frame")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local TextLabel_15 = Instance.new("TextLabel")
local Server = Instance.new("ImageButton")
local Info_6 = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")
local TextLabel_17 = Instance.new("TextLabel")
local TextLabel_18 = Instance.new("TextLabel")
local TopBar = Instance.new("Frame")
local TextLabel_19 = Instance.new("TextLabel")
local Exit = Instance.new("ImageButton")
local TextEditor = Instance.new("TextBox")

--Properties:

Executor.Name = "Executor"
Executor.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = Executor
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.370758802, 0, 0.322699368, 0)
Main.Size = UDim2.new(0, 447, 0, 270)

SideBar.Name = "SideBar"
SideBar.Parent = Main
SideBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SideBar.BorderSizePixel = 0
SideBar.Position = UDim2.new(0.928411663, 0, 0.101, 0)
SideBar.Size = UDim2.new(0, 31, 0, 242)

TheJ.Name = "TheJ"
TheJ.Parent = SideBar
TheJ.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TheJ.BackgroundTransparency = 1.000
TheJ.BorderSizePixel = 0
TheJ.Size = UDim2.new(0, 31, 0, 236)

UIGridLayout.Parent = TheJ
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIGridLayout.CellSize = UDim2.new(0, 20, 0, 20)

Execute.Name = "Execute"
Execute.Parent = TheJ
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BackgroundTransparency = 1.000
Execute.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Execute.Size = UDim2.new(0, 20, 0, 20)
Execute.Image = "http://www.roblox.com/asset/?id=6026663699"

Info.Name = "Info"
Info.Parent = Execute
Info.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info.Size = UDim2.new(0, 117, 0, 55)
Info.Visible = false

TextLabel.Parent = Info
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 79, 0, 22)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Execute"
TextLabel.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = Info
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_2.Size = UDim2.new(0, 117, 0, 33)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "Runs a command written in GUI"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 12.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Info
TextLabel_3.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_3.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_3.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_3.Size = UDim2.new(0, 96, 0, 0)
TextLabel_3.Font = Enum.Font.GothamBold
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_3.TextSize = 14.000

Clear.Name = "Clear"
Clear.Parent = TheJ
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Clear.Size = UDim2.new(0, 20, 0, 20)
Clear.Visible = true
Clear.Image = "rbxassetid://4370337241"
Clear.ScaleType = Enum.ScaleType.Fit

Info_2.Name = "Info"
Info_2.Parent = Clear
Info_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info_2.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info_2.Size = UDim2.new(0, 117, 0, 55)

TextLabel_4.Parent = Info_2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 79, 0, 22)
TextLabel_4.Font = Enum.Font.GothamBold
TextLabel_4.Text = "Clear Executor"
TextLabel_4.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_4.TextSize = 14.000
Info_2.Visible = false
TextLabel_5.Parent = Info_2
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_5.Size = UDim2.new(0, 117, 0, 33)
TextLabel_5.Font = Enum.Font.GothamSemibold
TextLabel_5.Text = "Clears text on executor"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 12.000
TextLabel_5.TextWrapped = true
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ImageLabel.Parent = Executor.Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.051454138, 0, -0.0583212376, 0)
ImageLabel.Size = UDim2.new(0, 495, 0, 301)
ImageLabel.Image = "rbxassetid://5554236805"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

UICorner.CornerRadius = UDim.new(0.0199999996, 1)
UICorner.Parent = Main

UICorner_2.CornerRadius = UDim.new(0.0199999996, 1)
UICorner_2.Parent = SideBar

UICorner_3.CornerRadius = UDim.new(0.0900000036, 1)
UICorner_3.Parent = TopBar
TextLabel_6.Parent = Info_2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_6.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_6.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_6.Size = UDim2.new(0, 96, 0, 0)
TextLabel_6.Font = Enum.Font.GothamBold
TextLabel_6.Text = ""
TextLabel_6.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_6.TextSize = 14.000

Hats.Name = "Hats"
Hats.Parent = TheJ
Hats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hats.BackgroundTransparency = 1.000
Hats.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Hats.Size = UDim2.new(0, 20, 0, 20)
Hats.Image = "rbxassetid://4384396122"
Hats.ScaleType = Enum.ScaleType.Fit

Info_3.Name = "Info"
Info_3.Parent = Hats
Info_3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info_3.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info_3.Size = UDim2.new(0, 117, 0, 55)
Info_3.Visible = false

TextLabel_7.Parent = Info_3
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 79, 0, 22)
TextLabel_7.Font = Enum.Font.GothamBold
TextLabel_7.Text = "Hats"
TextLabel_7.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_7.TextSize = 14.000

TextLabel_8.Parent = Info_3
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_8.Size = UDim2.new(0, 117, 0, 33)
TextLabel_8.Font = Enum.Font.GothamSemibold
TextLabel_8.Text = "Copies link to hats"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 12.000
TextLabel_8.TextWrapped = true

TextLabel_9.Parent = Info_3
TextLabel_9.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_9.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_9.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_9.Size = UDim2.new(0, 96, 0, 0)
TextLabel_9.Font = Enum.Font.GothamBold
TextLabel_9.Text = ""
TextLabel_9.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_9.TextSize = 14.000

Commands.Name = "Commands"
Commands.Parent = TheJ
Commands.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Commands.BackgroundTransparency = 1.000
Commands.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Commands.Size = UDim2.new(0, 20, 0, 20)
Commands.Image = "rbxassetid://3944704135"
Commands.ScaleType = Enum.ScaleType.Fit

Info_4.Name = "Info"
Info_4.Parent = Commands
Info_4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info_4.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info_4.Size = UDim2.new(0, 117, 0, 55)
Info_4.Visible = false

TextLabel_10.Parent = Info_4
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel_10.Size = UDim2.new(0, 79, 0, 22)
TextLabel_10.Font = Enum.Font.GothamBold
TextLabel_10.Text = "Commands"
TextLabel_10.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_10.TextSize = 14.000

TextLabel_11.Parent = Info_4
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_11.Size = UDim2.new(0, 117, 0, 33)
TextLabel_11.Font = Enum.Font.GothamSemibold
TextLabel_11.Text = "Copies link with commands"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextSize = 12.000
TextLabel_11.TextWrapped = true

TextLabel_12.Parent = Info_4
TextLabel_12.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_12.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_12.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_12.Size = UDim2.new(0, 96, 0, 0)
TextLabel_12.Font = Enum.Font.GothamBold
TextLabel_12.Text = ""
TextLabel_12.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_12.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = TheJ
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Credits.Size = UDim2.new(0, 20, 0, 20)
Credits.Image = "rbxassetid://4335489513"
Credits.ScaleType = Enum.ScaleType.Fit

Info_5.Name = "Info"
Info_5.Parent = Credits
Info_5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info_5.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info_5.Size = UDim2.new(0, 117, 0, 55)
Info_5.Visible = false

TextLabel_13.Parent = Info_5
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel_13.Size = UDim2.new(0, 79, 0, 22)
TextLabel_13.Font = Enum.Font.GothamBold
TextLabel_13.Text = "Credits"
TextLabel_13.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_13.TextSize = 14.000

TextLabel_14.Parent = Info_5
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_14.Size = UDim2.new(0, 117, 0, 33)
TextLabel_14.Font = Enum.Font.GothamSemibold
TextLabel_14.Text = "Copies link with credits"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextSize = 12.000
TextLabel_14.TextWrapped = true

TextLabel_15.Parent = Info_5
TextLabel_15.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_15.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_15.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_15.Size = UDim2.new(0, 96, 0, 0)
TextLabel_15.Font = Enum.Font.GothamBold
TextLabel_15.Text = ""
TextLabel_15.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_15.TextSize = 14.000

Server.Name = "Server"
Server.Parent = TheJ
Server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Server.BackgroundTransparency = 1.000
Server.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Server.Size = UDim2.new(0, 20, 0, 20)
Server.Image = "rbxassetid://3610245066"
Server.ScaleType = Enum.ScaleType.Fit

Info_6.Name = "Info"
Info_6.Parent = Server
Info_6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Info_6.Position = UDim2.new(1.77574503, 0, -0.887037039, 0)
Info_6.Size = UDim2.new(0, 117, 0, 55)
Info_6.Visible = false

TextLabel_16.Parent = Info_6
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.Position = UDim2.new(0.159091011, 0, 0, 0)
TextLabel_16.Size = UDim2.new(0, 79, 0, 22)
TextLabel_16.Font = Enum.Font.GothamBold
TextLabel_16.Text = "Discord"
TextLabel_16.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_16.TextSize = 14.000

TextLabel_17.Parent = Info_6
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_17.Size = UDim2.new(0, 117, 0, 33)
TextLabel_17.Font = Enum.Font.GothamSemibold
TextLabel_17.Text = "Copies discord invite to clipboard"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.TextSize = 12.000
TextLabel_17.TextWrapped = true

TextLabel_18.Parent = Info_6
TextLabel_18.BackgroundColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_18.BorderColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_18.Position = UDim2.new(0.0940170959, 0, 0.400000006, 0)
TextLabel_18.Size = UDim2.new(0, 96, 0, 0)
TextLabel_18.Font = Enum.Font.GothamBold
TextLabel_18.Text = ""
TextLabel_18.TextColor3 = Color3.fromRGB(171, 255, 125)
TextLabel_18.TextSize = 14.000

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0, 0, -0.00276568369, 0)
TopBar.Size = UDim2.new(0, 447, 0, 28)

TextLabel_19.Parent = TopBar
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.Size = UDim2.new(0, 166, 0, 28)
TextLabel_19.Font = Enum.Font.GothamBold
local Version = "1.0.0"
TextLabel_19.Text = "GELATEK HUB V".. Version
TextLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.TextSize = 14.000

Exit.Name = "Exit"
Exit.Parent = TopBar
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.941191792, 0, 0.142857149, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.Image = "http://www.roblox.com/asset/?id=6031094678"
Exit.MouseButton1Down:Connect(function()
	Executor:Destroy()
end)

TextEditor.Name = "TextEditor"
TextEditor.Parent = Main
TextEditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextEditor.BackgroundTransparency = 0.950
TextEditor.BorderSizePixel = 0
TextEditor.Position = UDim2.new(0.0156599544, 0, 0.123160243, 0)
TextEditor.Size = UDim2.new(0, 402, 0, 230)
TextEditor.Font = Enum.Font.Code
TextEditor.MultiLine = true
TextEditor.Text = ""
TextEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
TextEditor.TextSize = 14.000
TextEditor.TextXAlignment = Enum.TextXAlignment.Left
TextEditor.TextYAlignment = Enum.TextYAlignment.Top

-- Scripts:

local function TLEJBQQ_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
end
coroutine.wrap(TLEJBQQ_fake_script)()
local function JPXSNXR_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
		script.Parent.MouseButton1Down:Connect(function()
		TextEditor.Text = "";
	end)
end
coroutine.wrap(JPXSNXR_fake_script)()
local function XTID_fake_script() -- Hats.LocalScript 
	local script = Instance.new('LocalScript', Hats)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
    script.Parent.MouseButton1Down:Connect(function()
		setclipboard("https://github.com/Gelatek/Gelatek-Hub/blob/main/HATS.md")
	end)
end
coroutine.wrap(XTID_fake_script)()
local function QJHHGGA_fake_script() -- Commands.LocalScript 
	local script = Instance.new('LocalScript', Commands)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
    script.Parent.MouseButton1Down:Connect(function()
		setclipboard("https://github.com/Gelatek/Gelatek-Hub/blob/main/COMMANDS.md")
	end)
end
coroutine.wrap(QJHHGGA_fake_script)()
local function LXMGACU_fake_script() -- Credits.LocalScript 
	local script = Instance.new('LocalScript', Credits)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
    script.Parent.MouseButton1Down:Connect(function()
		setclipboard("https://github.com/Gelatek/Gelatek-Hub/blob/main/Credits.md")
	end)
end
coroutine.wrap(LXMGACU_fake_script)()
local function WXCMEZC_fake_script() -- Server.LocalScript 
	local script = Instance.new('LocalScript', Server)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Info.Visible = true
	end)
	script.Parent.MouseLeave:Connect(function()
		script.Parent.Info.Visible = false
	end)
	script.Parent.MouseButton1Down:Connect(function()
		setclipboard("https://discord.gg/MXH3MyQ3wA")
	end)
end
coroutine.wrap(WXCMEZC_fake_script)()


function dragify(Frame)
dragToggle = nil
dragSpeed = 0.05 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
end

Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Frame.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end
dragify(Main)

local commands = {"zapscannon", "chips", "thehotline", "cadacus","scythe"}
Execute.MouseButton1Down:Connect(function()
    if not table.find(commands, TextEditor.Text) then
      Message("Command [ ".. TextEditor.Text.. " ] Does not exist in hub!")
    end
end)      
local Character = game.Players.LocalPlayer.Character
Execute.MouseButton1Down:Connect(function()
    if TextEditor.Text == "zapscannon" then
        if Character:FindFirstChild("Starslayer Railgun") and Character:FindFirstChild("Angel wings") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Scripts/ZaphickelCannon"))()
        else
            Message("Missing Hats!")
            return            
		end
    end
end)      

Execute.MouseButton1Down:Connect(function()
    if TextEditor.Text == "chips" then
        if Character:FindFirstChild("Pillow") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Scripts/Chips"))()
        else
            Message("Missing Hats!")
            return            
		end
    end
end)      

Execute.MouseButton1Down:Connect(function()
    if TextEditor.Text == "cadacus" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Scripts/Cadacus"))()

    end
end)      

Execute.MouseButton1Down:Connect(function()
    if TextEditor.Text == "thehotline" then
        if Character:FindFirstChild("AR-L 10 SWAT [Front]") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Scripts/TheHotline"))()
        else
            Message("Missing Hats!")
            return            
		end
    end
end)      

Execute.MouseButton1Down:Connect(function()
    if TextEditor.Text == "scythe" then
        if Character:FindFirstChild("Dark Matter Scythe") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Scripts/SoulScythe"))()
        else
            Message("Missing Hats!")
            return            
		end
    end
end)      
