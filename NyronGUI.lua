--Made bychatgpt lol
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NyronGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main Frame for the GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 250)
frame.Position = UDim2.new(0.5, -200, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Add a UICorner to make the frame's edges rounded
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 20)
frameCorner.Parent = frame

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.Parent = frame

local titleBarCorner = Instance.new("UICorner")
titleBarCorner.CornerRadius = UDim.new(0, 20)
titleBarCorner.Parent = titleBar

-- Title label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -80, 1, 0)
titleLabel.Position = UDim2.new(0, 40, 0, 0)
titleLabel.Text = "Nyron 1.0"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.Parent = titleBar

-- Close button (moved to the left)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 1, 0)
closeButton.Position = UDim2.new(0, 0, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.Parent = titleBar

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 10)
closeButtonCorner.Parent = closeButton

-- Arrow toggle button (on the right)
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 40, 1, 0)
toggleButton.Position = UDim2.new(1, -40, 0, 0)
toggleButton.Text = "▼"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 20
toggleButton.Parent = titleBar

local toggleButtonCorner = Instance.new("UICorner")
toggleButtonCorner.CornerRadius = UDim.new(0, 10)
toggleButtonCorner.Parent = toggleButton

-- Create a ScrollingFrame inside the main Frame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, -40)  -- Takes the full space below the title bar
scrollingFrame.Position = UDim2.new(0, 0, 0, 40) -- Starts right below the title bar
scrollingFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.Parent = frame

local scrollingFrameCorner = Instance.new("UICorner")
scrollingFrameCorner.CornerRadius = UDim.new(0, 20)
scrollingFrameCorner.Parent = scrollingFrame

-- Infinite Yield Button
local infiniteYieldButton = Instance.new("TextButton")
infiniteYieldButton.Size = UDim2.new(0, 360, 0, 50)
infiniteYieldButton.Position = UDim2.new(0.5, -180, 0, 0)
infiniteYieldButton.Text = "Infinite Yield"
infiniteYieldButton.TextColor3 = Color3.fromRGB(0, 0, 0)
infiniteYieldButton.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
infiniteYieldButton.Font = Enum.Font.SourceSans
infiniteYieldButton.TextSize = 18
infiniteYieldButton.Parent = scrollingFrame

local infiniteYieldButtonCorner = Instance.new("UICorner")
infiniteYieldButtonCorner.CornerRadius = UDim.new(0, 15)
infiniteYieldButtonCorner.Parent = infiniteYieldButton

-- Ctrl + Click Button (moved closer to Infinite Yield)
local ctrlTeleportButton = Instance.new("TextButton")
ctrlTeleportButton.Size = UDim2.new(0, 360, 0, 50)
ctrlTeleportButton.Position = UDim2.new(0.5, -180, 0, 60) -- Moved closer to Infinite Yield
ctrlTeleportButton.Text = "Ctrl + Click = Teleport"
ctrlTeleportButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ctrlTeleportButton.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
ctrlTeleportButton.Font = Enum.Font.SourceSans
ctrlTeleportButton.TextSize = 18
ctrlTeleportButton.Parent = scrollingFrame

local ctrlTeleportButtonCorner = Instance.new("UICorner")
ctrlTeleportButtonCorner.CornerRadius = UDim.new(0, 15)
ctrlTeleportButtonCorner.Parent = ctrlTeleportButton

-- New button for Kater Hub
local katerHubButton = Instance.new("TextButton")
katerHubButton.Size = UDim2.new(0, 360, 0, 50)
katerHubButton.Position = UDim2.new(0.5, -180, 0, 120) -- Placed below Ctrl + Click
katerHubButton.Text = "Kater Hub"
katerHubButton.TextColor3 = Color3.fromRGB(0, 0, 0)
katerHubButton.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
katerHubButton.Font = Enum.Font.SourceSans
katerHubButton.TextSize = 18
katerHubButton.Parent = scrollingFrame

local katerHubButtonCorner = Instance.new("UICorner")
katerHubButtonCorner.CornerRadius = UDim.new(0, 15)
katerHubButtonCorner.Parent = katerHubButton

-- ESP Button
local espButton = Instance.new("TextButton")
espButton.Size = UDim2.new(0, 360, 0, 50)
espButton.Position = UDim2.new(0.5, -180, 0, 180) -- Placed below Kater Hub
espButton.Text = "ESP"
espButton.TextColor3 = Color3.fromRGB(0, 0, 0)
espButton.BackgroundColor3 = Color3.fromRGB(255, 99, 71)
espButton.Font = Enum.Font.SourceSans
espButton.TextSize = 18
espButton.Parent = scrollingFrame

local espButtonCorner = Instance.new("UICorner")
espButtonCorner.CornerRadius = UDim.new(0, 15)
espButtonCorner.Parent = espButton

-- Hitbox x6 Button (below ESP button)
local hitboxEnabled = false
local hitboxButton = Instance.new("TextButton")
hitboxButton.Size = UDim2.new(0, 360, 0, 50)
hitboxButton.Position = UDim2.new(0.5, -180, 0, 240) -- Placed below ESP
hitboxButton.Text = "Hitbox x6 lol ☠️ fe/op"
hitboxButton.TextColor3 = Color3.fromRGB(0, 0, 0)
hitboxButton.BackgroundColor3 = Color3.fromRGB(123, 104, 238)
hitboxButton.Font = Enum.Font.SourceSans
hitboxButton.TextSize = 18
hitboxButton.Parent = scrollingFrame

local hitboxButtonCorner = Instance.new("UICorner")
hitboxButtonCorner.CornerRadius = UDim.new(0, 15)
hitboxButtonCorner.Parent = hitboxButton

-- ESP functionality
local espEnabled = false
espButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                local highlight = Instance.new("Highlight")
                highlight.Adornee = player.Character
                highlight.Parent = player.Character
            end
        end
    else
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("Highlight") then
                player.Character.Highlight:Destroy()
            end
        end
    end
end)

-- Hitbox x6 functionality
hitboxButton.MouseButton1Click:Connect(function()
    hitboxEnabled = not hitboxEnabled
    if game.Players.LocalPlayer.Character then
        for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                if hitboxEnabled then
                    part.Size = part.Size * 6
                    part.Massless = true
                else
                    part.Size = part.Size / 6
                    part.Massless = false
                end
            end
        end
    end
end)

-- Infinite Yield functionality
local infiniteYieldEnabled = false
infiniteYieldButton.MouseButton1Click:Connect(function()
    infiniteYieldEnabled = not infiniteYieldEnabled
    infiniteYieldButton.BackgroundColor3 = infiniteYieldEnabled and Color3.new(1, 1, 1) or Color3.fromRGB(128, 0, 255)
    if infiniteYieldEnabled then
        print("Infinite Yield Enabled")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    else
        print("Infinite Yield Disabled")
    end
end)
-- Create the button for spawning objects
local spawnObjectsButton = Instance.new("TextButton")
spawnObjectsButton.Size = UDim2.new(0, 360, 0, 50)
spawnObjectsButton.Position = UDim2.new(0.5, -180, 0, 300) -- Adjust the position as needed
spawnObjectsButton.Text = "Spawn Objects *OP*"
spawnObjectsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
spawnObjectsButton.BackgroundColor3 = Color3.fromRGB(0, 191, 255)
spawnObjectsButton.Font = Enum.Font.SourceSans
spawnObjectsButton.TextSize = 18
spawnObjectsButton.Parent = scrollingFrame

local spawnObjectsButtonCorner = Instance.new("UICorner")
spawnObjectsButtonCorner.CornerRadius = UDim.new(0, 15)
spawnObjectsButtonCorner.Parent = spawnObjectsButton

-- Variable to track whether spawnObjects is enabled
local spawnObjectsEnabled = false

-- Function to spawn random objects (Ball or Cube)
local function spawnObject()
    local objectTypes = {"Ball", "Cube"}  -- List of object types to spawn
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        local objectType = objectTypes[math.random(1, #objectTypes)]  -- Randomly choose the object type
        local newObject

        -- Create the object based on the random choice
        if objectType == "Ball" then
            newObject = Instance.new("Part")
            newObject.Shape = Enum.PartType.Ball
        elseif objectType == "Cube" then
            newObject = Instance.new("Part")
        end

        -- Set properties for the new object
        if newObject then
            newObject.Size = Vector3.new(5, 5, 5)  -- Set the size of the object
            newObject.Position = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * 5  -- Position in front of the player
            newObject.BrickColor = BrickColor.Random()  -- Random color
            newObject.Material = Enum.Material.SmoothPlastic
            newObject.Anchored = false  -- Make sure it can move and be affected by physics
            newObject.Parent = workspace
        end
    end
end

-- Connect the spawn function to the button's click event
spawnObjectsButton.MouseButton1Click:Connect(function()
    spawnObjectsEnabled = not spawnObjectsEnabled  -- Toggle the state
    if spawnObjectsEnabled then
        spawnObject()  -- Call the spawn object function when the button is clicked
    end
end)


-- Ctrl + Click teleport functionality
local teleportEnabled = false
local teleportConnection
ctrlTeleportButton.MouseButton1Click:Connect(function()
    teleportEnabled = not teleportEnabled
    ctrlTeleportButton.BackgroundColor3 = teleportEnabled and Color3.new(1, 1, 1) or Color3.fromRGB(0, 255, 128)
    if teleportEnabled then
        print("Ctrl + Click = Teleport Enabled")
        local UserInputService = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        teleportConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                player.Character:MoveTo(mouse.Hit.p)
            end
        end)
    else
        print("Ctrl + Click = Teleport Disabled")
        if teleportConnection then
            teleportConnection:Disconnect()
            teleportConnection = nil
        end
    end
end)

-- New button for Kater Hub
katerHubButton.MouseButton1Click:Connect(function()
    print("Kater Hub Loaded")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Roblox/main/KaterHub.Lua"))()
end)

-- TweenService for animations
local TweenService = game:GetService("TweenService")
local isCollapsed = false

-- Roll-up / Collapse functionality (toggle by clicking the arrow button)
toggleButton.MouseButton1Click:Connect(function()
    if isCollapsed then
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Size = UDim2.new(0, 400, 0, 250)})
        tween:Play()
        toggleButton.Text = "▼"
        scrollingFrame.Visible = true
    else
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Size = UDim2.new(0, 400, 0, 40)})
        tween:Play()
        toggleButton.Text = "▲"
        scrollingFrame.Visible = false
    end
    isCollapsed = not isCollapsed
end)

-- Close button
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    toggleButton.Visible = false
end)
