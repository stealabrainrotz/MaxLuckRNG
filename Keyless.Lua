--[[
    ==================================================
    bIssvqxwcUI — GUI Panel
    ==================================================
--]]

local CoreGui = game:GetService("CoreGui")

-- Supprime l'ancien UI si déjà présent
if CoreGui:FindFirstChild("bIssvqxwcUI") then
    CoreGui.bIssvqxwcUI:Destroy()
end

-- ScreenGui Principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Frenx Hub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

-- Fenêtre principale
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 520, 0, 320)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame

local MainBorder = Instance.new("UIStroke")
MainBorder.Color = Color3.fromRGB(180, 40, 40)
MainBorder.Thickness = 1.5
MainBorder.Parent = MainFrame

-- Image d'arrière-plan
local BackgroundImage = Instance.new("ImageLabel")
BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = "rbxassetid://13867634289" -- L'image sombre / lune
BackgroundImage.ImageTransparency = 0.25
BackgroundImage.ScaleType = Enum.ScaleType.Crop
BackgroundImage.Parent = MainFrame

-- En-tête / Barre de titre
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 35)
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
Header.BackgroundTransparency = 0.3
Header.BorderSizePixel = 0
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "b Issvqxwc"
Title.TextColor3 = Color3.fromRGB(250, 250, 250)
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 25, 0, 25)
CloseBtn.Position = UDim2.new(1, -30, 0.5, -12)
CloseBtn.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 12
CloseBtn.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 4)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Colonne Gauche : Options
local LeftContainer = Instance.new("Frame")
LeftContainer.Size = UDim2.new(0.55, -15, 1, -50)
LeftContainer.Position = UDim2.new(0, 10, 0, 42)
LeftContainer.BackgroundTransparency = 1
LeftContainer.Parent = MainFrame

local LeftLayout = Instance.new("UIListLayout")
LeftLayout.Padding = UDim.new(0, 8)
LeftLayout.SortOrder = Enum.SortOrder.LayoutOrder
LeftLayout.Parent = LeftContainer

local function CreateToggleBtn(text, defaultState)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 34)
    btn.BackgroundColor3 = defaultState and Color3.fromRGB(45, 25, 28) or Color3.fromRGB(20, 20, 25)
    btn.BackgroundTransparency = 0.3
    btn.Text = "  " .. text
    btn.TextColor3 = defaultState and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(180, 180, 190)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 12
    btn.TextXAlignment = Enum.TextXAlignment.Left

    local stroke = Instance.new("UIStroke")
    stroke.Color = defaultState and Color3.fromRGB(200, 50, 50) or Color3.fromRGB(60, 60, 70)
    stroke.Thickness = 1
    stroke.Parent = btn

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    local active = defaultState
    btn.MouseButton1Click:Connect(function()
        active = not active
        btn.BackgroundColor3 = active and Color3.fromRGB(45, 25, 28) or Color3.fromRGB(20, 20, 25)
        btn.TextColor3 = active and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(180, 180, 190)
        stroke.Color = active and Color3.fromRGB(200, 50, 50) or Color3.fromRGB(60, 60, 70)
    end)

    return btn
end

CreateToggleBtn("✓ Activer Chance Boostée", true).Parent = LeftContainer
CreateToggleBtn("🎲 Simuler Double Chance", false).Parent = LeftContainer
CreateToggleBtn("✨ Effet RNG Divin", true).Parent = LeftContainer
CreateToggleBtn("⚡ Force Steal Brainrot (x50)", false).Parent = LeftContainer

-- Colonne Droite : Stats & Informations
local RightContainer = Instance.new("Frame")
RightContainer.Size = UDim2.new(0.45, -15, 1, -50)
RightContainer.Position = UDim2.new(0.55, 5, 0, 42)
RightContainer.BackgroundTransparency = 1
RightContainer.Parent = MainFrame

local RightLayout = Instance.new("UIListLayout")
RightLayout.Padding = UDim.new(0, 8)
RightLayout.SortOrder = Enum.SortOrder.LayoutOrder
RightLayout.Parent = RightContainer

-- Card Status
local StatusCard = Instance.new("Frame")
StatusCard.Size = UDim2.new(1, 0, 0, 110)
StatusCard.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
StatusCard.BackgroundTransparency = 0.3
StatusCard.Parent = RightContainer

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0, 6)
StatusCorner.Parent = StatusCard

local StatusStroke = Instance.new("UIStroke")
StatusStroke.Color = Color3.fromRGB(60, 60, 70)
StatusStroke.Parent = StatusCard

local StatTitle = Instance.new("TextLabel")
StatTitle.Size = UDim2.new(1, 0, 0, 25)
StatTitle.BackgroundTransparency = 1
StatTitle.Text = "CHANCE ACTUELLE"
StatTitle.TextColor3 = Color3.fromRGB(150, 150, 160)
StatTitle.Font = Enum.Font.GothamBold
StatTitle.TextSize = 10
StatTitle.Parent = StatusCard

local StatValue = Instance.new("TextLabel")
StatValue.Size = UDim2.new(1, 0, 0, 35)
StatValue.Position = UDim2.new(0, 0, 0, 25)
StatValue.BackgroundTransparency = 1
StatValue.Text = "99.9%"
StatValue.TextColor3 = Color3.fromRGB(255, 70, 70)
StatValue.Font = Enum.Font.GothamBold
StatValue.TextSize = 22
StatValue.Parent = StatusCard

-- Barre de progression
local ProgressBarBg = Instance.new("Frame")
ProgressBarBg.Size = UDim2.new(0.85, 0, 0, 8)
ProgressBarBg.Position = UDim2.new(0.075, 0, 0, 75)
ProgressBarBg.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
ProgressBarBg.BorderSizePixel = 0
ProgressBarBg.Parent = StatusCard

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(0, 4)
BarCorner.Parent = ProgressBarBg

local ProgressBarFill = Instance.new("Frame")
ProgressBarFill.Size = UDim2.new(0.99, 0, 1, 0)
ProgressBarFill.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
ProgressBarFill.BorderSizePixel = 0
ProgressBarFill.Parent = ProgressBarBg

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(0, 4)
FillCorner.Parent = ProgressBarFill

-- Statut Général
local ServerStatus = Instance.new("TextLabel")
ServerStatus.Size = UDim2.new(1, 0, 0, 130)
ServerStatus.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
ServerStatus.BackgroundTransparency = 0.3
ServerStatus.Text = "Total Chance: 100M+\nRNG Multiplier: Épic+\nStatut: Actif"
ServerStatus.TextColor3 = Color3.fromRGB(180, 180, 190)
ServerStatus.Font = Enum.Font.GothamSemibold
ServerStatus.TextSize = 11
ServerStatus.Parent = RightContainer

local ServerCorner = Instance.new("UICorner")
ServerCorner.CornerRadius = UDim.new(0, 6)
ServerCorner.Parent = ServerStatus

local ServerStroke = Instance.new("UIStroke")
ServerStroke.Color = Color3.fromRGB(60, 60, 70)
ServerStroke.Parent = ServerStatus

-- anti leave

task.spawn(function() while task.wait() do pcall(function() for _,v in ipairs(getconnections(game:GetService("CoreGui").RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.Page.PageViewClipper.PageView.PageViewInnerFrame.LeaveGamePage.LeaveButtonsContainer.LeaveButtonsContainer.LeaveGameButton.Activated)) do v:Disable() end end) end end)
