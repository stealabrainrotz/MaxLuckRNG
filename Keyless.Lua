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


local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://95131770144654"
sound.Volume = 0.5
sound.Parent = workspace

sound:Play()



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



local BackgroundImage = Instance.new("ImageLabel")
BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.Position = UDim2.new(0, 0, 0, 0)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = "rbxassetid://13867634289"
BackgroundImage.ImageTransparency = 0.25
BackgroundImage.ScaleType = Enum.ScaleType.Crop
BackgroundImage.ZIndex = 1
BackgroundImage.Parent = MainFrame



local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 35)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
Header.BackgroundTransparency = 0.3
Header.BorderSizePixel = 0
Header.ZIndex = 10
Header.Parent = MainFrame



local Title = Instance.new("TextLabel")
Title.Name = "Title"

-- Width specifically for the Frenx Hub text
Title.Size = UDim2.new(0, 115, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)

Title.BackgroundTransparency = 1
Title.Text = "Frenx Hub"
Title.TextColor3 = Color3.fromRGB(250, 250, 250)
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 20
Title.Parent = Header



local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"

DiscordButton.Size = UDim2.new(0, 30, 0, 30)


DiscordButton.Position = UDim2.new(0, 135, 0.5, -15)

DiscordButton.BackgroundTransparency = 1
DiscordButton.BorderSizePixel = 0


DiscordButton.Text = "Discord"
DiscordButton.TextColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.TextSize = 22
DiscordButton.Font = Enum.Font.GothamBold

DiscordButton.AutoButtonColor = false
DiscordButton.Active = true
DiscordButton.ZIndex = 25
DiscordButton.Parent = Header




DiscordButton.MouseEnter:Connect(function()

	DiscordButton.TextColor3 = Color3.fromRGB(120, 130, 255)

end)


DiscordButton.MouseLeave:Connect(function()

	DiscordButton.TextColor3 = Color3.fromRGB(88, 101, 242)

end)




DiscordButton.Activated:Connect(function()


	local ExistingPopup = MainFrame:FindFirstChild("DiscordPopup")

	if ExistingPopup then
		ExistingPopup:Destroy()
		return
	end




	local Popup = Instance.new("Frame")
	Popup.Name = "DiscordPopup"

	Popup.Size = UDim2.new(0, 330, 0, 175)

	Popup.AnchorPoint = Vector2.new(0.5, 0.5)
	Popup.Position = UDim2.new(0.5, 0, 0.5, 0)

	Popup.BackgroundColor3 = Color3.fromRGB(20, 20, 26)
	Popup.BorderSizePixel = 0

	Popup.ZIndex = 50
	Popup.Parent = MainFrame




	local PopupCorner = Instance.new("UICorner")
	PopupCorner.CornerRadius = UDim.new(0, 10)
	PopupCorner.Parent = Popup




	local PopupStroke = Instance.new("UIStroke")
	PopupStroke.Color = Color3.fromRGB(88, 101, 242)
	PopupStroke.Thickness = 1.5
	PopupStroke.Transparency = 0.2
	PopupStroke.Parent = Popup




	local PopupTitle = Instance.new("TextLabel")
	PopupTitle.Name = "PopupTitle"

	PopupTitle.Size = UDim2.new(1, -55, 0, 30)
	PopupTitle.Position = UDim2.new(0, 15, 0, 12)

	PopupTitle.BackgroundTransparency = 1

	PopupTitle.Text = "JOIN OUR DISCORD"
	PopupTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	PopupTitle.TextSize = 14
	PopupTitle.Font = Enum.Font.GothamBold

	PopupTitle.TextXAlignment = Enum.TextXAlignment.Left

	PopupTitle.ZIndex = 51
	PopupTitle.Parent = Popup




	local Description = Instance.new("TextLabel")
	Description.Name = "Description"

	Description.Size = UDim2.new(1, -30, 0, 22)
	Description.Position = UDim2.new(0, 15, 0, 40)

	Description.BackgroundTransparency = 1

	Description.Text = "Join our Discord!"
	Description.TextColor3 = Color3.fromRGB(160, 160, 170)
	Description.TextSize = 10
	Description.Font = Enum.Font.Gotham

	Description.TextXAlignment = Enum.TextXAlignment.Left

	Description.ZIndex = 51
	Description.Parent = Popup


	

	local DiscordBox = Instance.new("TextBox")
	DiscordBox.Name = "DiscordBox"

	DiscordBox.Size = UDim2.new(1, -90, 0, 35)
	DiscordBox.Position = UDim2.new(0, 15, 0, 72)

	DiscordBox.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
	DiscordBox.BorderSizePixel = 0

	DiscordBox.Text = "https://discord.gg/X39eaDFtCS"

	DiscordBox.TextColor3 = Color3.fromRGB(220, 220, 225)
	DiscordBox.TextSize = 10
	DiscordBox.Font = Enum.Font.Gotham

	DiscordBox.ClearTextOnFocus = false
	DiscordBox.TextEditable = false

	DiscordBox.TextXAlignment = Enum.TextXAlignment.Left

	DiscordBox.ZIndex = 51
	DiscordBox.Parent = Popup



	local BoxCorner = Instance.new("UICorner")
	BoxCorner.CornerRadius = UDim.new(0, 6)
	BoxCorner.Parent = DiscordBox


	

	local CopyButton = Instance.new("TextButton")
	CopyButton.Name = "CopyButton"

	CopyButton.Size = UDim2.new(0, 60, 0, 35)
	CopyButton.Position = UDim2.new(1, -75, 0, 72)

	CopyButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	CopyButton.BorderSizePixel = 0

	CopyButton.Text = "COPY"
	CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CopyButton.TextSize = 9
	CopyButton.Font = Enum.Font.GothamBold

	CopyButton.AutoButtonColor = false
	CopyButton.ZIndex = 52
	CopyButton.Parent = Popup


	local CopyCorner = Instance.new("UICorner")
	CopyCorner.CornerRadius = UDim.new(0, 6)
	CopyCorner.Parent = CopyButton




	CopyButton.MouseEnter:Connect(function()

		CopyButton.BackgroundColor3 = Color3.fromRGB(110, 120, 255)

	end)


	CopyButton.MouseLeave:Connect(function()

		CopyButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)

	end)




	CopyButton.Activated:Connect(function()



		DiscordBox.TextEditable = true

		DiscordBox:CaptureFocus()

		DiscordBox.SelectionStart = 1
		DiscordBox.CursorPosition = #DiscordBox.Text + 1

		CopyButton.Text = "SELECTED"


		task.delay(1.5, function()

			if CopyButton and CopyButton.Parent then

				CopyButton.Text = "COPY"

				DiscordBox.TextEditable = false

			end

		end)

	end)




	local CloseButton = Instance.new("TextButton")
	CloseButton.Name = "CloseButton"

	CloseButton.Size = UDim2.new(0, 28, 0, 28)
	CloseButton.Position = UDim2.new(1, -38, 0, 8)

	CloseButton.BackgroundTransparency = 1
	CloseButton.BorderSizePixel = 0

	CloseButton.Text = "×"
	CloseButton.TextColor3 = Color3.fromRGB(180, 180, 190)
	CloseButton.TextSize = 20
	CloseButton.Font = Enum.Font.GothamBold

	CloseButton.AutoButtonColor = false
	CloseButton.ZIndex = 52
	CloseButton.Parent = Popup


	CloseButton.MouseEnter:Connect(function()

		CloseButton.TextColor3 = Color3.fromRGB(255, 80, 80)

	end)


	CloseButton.MouseLeave:Connect(function()

		CloseButton.TextColor3 = Color3.fromRGB(180, 180, 190)

	end)


	
	CloseButton.Activated:Connect(function()

		Popup:Destroy()

	end)

end)

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
StatTitle.Text = "GUARANTEED LUCK"
StatTitle.TextColor3 = Color3.fromRGB(150, 150, 160)
StatTitle.Font = Enum.Font.GothamBold
StatTitle.TextSize = 10
StatTitle.Parent = StatusCard

local StatValue = Instance.new("TextLabel")
StatValue.Size = UDim2.new(1, 0, 0, 35)
StatValue.Position = UDim2.new(0, 0, 0, 25)
StatValue.BackgroundTransparency = 1
StatValue.Text = "5:00"
StatValue.TextColor3 = Color3.fromRGB(255, 70, 70)
StatValue.Font = Enum.Font.GothamBold
StatValue.TextSize = 22
StatValue.Parent = StatusCard


local StatDetails = Instance.new("TextLabel")
StatDetails.Size = UDim2.new(1, 0, 0, 20)
StatDetails.Position = UDim2.new(0, 0, 0, 58)
StatDetails.BackgroundTransparency = 1
StatDetails.Text = "Wait until timer is done"
StatDetails.TextColor3 = Color3.fromRGB(130, 130, 140)
StatDetails.Font = Enum.Font.Gotham
StatDetails.TextSize = 9
StatDetails.Parent = StatusCard



local timeLeft = 5 * 60

while timeLeft > 0 do
	local minutes = math.floor(timeLeft / 60)
	local seconds = timeLeft % 60

	StatValue.Text = string.format("%d:%02d", minutes, seconds)

	task.wait(1)
	timeLeft -= 1
end




StatTitle.Text = "LUCK ACTIVATED"
StatTitle.TextColor3 = Color3.fromRGB(100, 255, 130)

StatValue.Text = "LUCK ACTIVE"
StatValue.TextColor3 = Color3.fromRGB(80, 255, 100)

StatDetails.Text = "Your Guaranteed luck is Activated!"
StatDetails.TextColor3 = Color3.fromRGB(100, 220, 120)

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
ServerStatus.Text = "Total Chance: 100M+\nRNG Multiplier: Épic+\nStatut: Active"
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
