-- by dot_mp4
local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Tools = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    table.insert(Tools, v)
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    table.insert(Tools, v)
end
local AntiKill, ControlHeld = false, false

local function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Icon = icon;
        Duration = duration;
     })
end

coroutine.resume(coroutine.create(function()
    RunService.Stepped:Connect(function()
        if AntiKill then
            if Player.Character and Player.Character:FindFirstChild("Right Arm") and Player.Character["Right Arm"]:FindFirstChild("Right Grip") then
                if Player.Character:FindFirstChildOfClass("Tool") and not table.find(Tools, Player.Character:FindFirstChildOfClass("Tool")) then
                    Player.Character["Right Arm"]["Right Grip"]:Destroy()
                end
            end
        end
    end)
end))

UserInputService.InputBegan:Connect(function(Input, Processed)
    if not Processed then
        if Input.KeyCode == Enum.KeyCode.LeftControl then
            ControlHeld = true
        end
        if Input.KeyCode == Enum.KeyCode.H then
            AntiKill = not AntiKill
            notify("antikill", "is now set to " .. tostring(AntiKill), "rbxassetid://28319805", 5)
        end
    end
end)

UserInputService.InputEnded:Connect(function(Input, Processed)
    if not Processed then
        if Input.KeyCode == Enum.KeyCode.LeftControl then
            ControlHeld = false
        end
    end
end)

Player.CharacterAdded:Connect(function()
    repeat wait() until Player.Backpack:FindFirstChildOfClass'Tool'
    wait(0.3)
    table.foreach(Tools, function(i, v)
        table.remove(Tools, i)
    end)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        table.insert(Tools, v)
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        table.insert(Tools, v)
    end
end)
