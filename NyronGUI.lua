-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NyronGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a larger Frame for the GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 250) -- Larger box: Width 400px, Height 250px
frame.Position = UDim2.new(0.5, -200, 0.5, -125) -- Centered on screen
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
frame.Active = true -- Enable interaction
frame.Draggable = true -- Enable dragging
frame.Parent = screenGui

-- Add a title bar with a toggle arrow and close button
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40) -- Full width, height 40px
titleBar.Position = UDim2.new(0, 0, 0, 0) -- Top of the frame
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.Parent = frame

-- Add a title label
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -80, 1, 0) -- Leaves space for the arrow and close button
title.Position = UDim2.new(0, 40, 0, 0) -- Shifted to make room for the close button
title.Text = "Nyron 1.0"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20
title.Parent = titleBar

-- Add an arrow button to toggle the frame size
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 40, 1, 0) -- Small button in the corner
toggleButton.Position = UDim2.new(1, -40, 0, 0) -- Align to the right of the title bar
toggleButton.Text = "▼" -- Down arrow
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 20
toggleButton.Parent = titleBar

-- Add a close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 1, 0) -- Small button in the corner
closeButton.Position = UDim2.new(0, 0, 0, 0) -- Top-left corner
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.Parent = titleBar

-- Create a Button labeled "Infinite Yield"
local infiniteYieldButton = Instance.new("TextButton")
infiniteYieldButton.Size = UDim2.new(0, 360, 0, 50) -- Adjusted to fit the larger frame
infiniteYieldButton.Position = UDim2.new(0.5, -180, 0.5, -25) -- Centered inside the frame
infiniteYieldButton.Text = "Infinite Yield"
infiniteYieldButton.TextColor3 = Color3.fromRGB(0, 0, 0)
infiniteYieldButton.BackgroundColor3 = Color3.fromRGB(128, 0, 255) -- Purple color
infiniteYieldButton.Font = Enum.Font.SourceSans
infiniteYieldButton.TextSize = 18
infiniteYieldButton.Parent = frame

-- Add toggle functionality to the arrow button
local isCollapsed = false
toggleButton.MouseButton1Click:Connect(function()
    if isCollapsed then
        -- Expand the frame
        frame.Size = UDim2.new(0, 400, 0, 250)
        toggleButton.Text = "▼" -- Down arrow
        infiniteYieldButton.Visible = true -- Show the button
        isCollapsed = false
    else
        -- Collapse the frame
        frame.Size = UDim2.new(0, 400, 0, 40)
        toggleButton.Text = "▲" -- Up arrow
        infiniteYieldButton.Visible = false -- Hide the button
        isCollapsed = true
    end
end)

-- Add functionality to the close button
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() -- Remove the GUI
end)

-- Add functionality to the "Infinite Yield" button
infiniteYieldButton.MouseButton1Click:Connect(function()
    print("Infinite Yield button clicked! Attempting to load script...")
    local success, err = pcall(function()
        -- Attempt to fetch and execute the script
        local scriptContent = game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt")
        if scriptContent then
            print("Script fetched successfully.")
            loadstring(scriptContent)()
        else
            warn("Failed to fetch script content.")
        end
    end)
    
    if success then
        print("Script executed successfully.")
    else
        warn("An error occurred while executing the script: " .. tostring(err))
    end
end)
