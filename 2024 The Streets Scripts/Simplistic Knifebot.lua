--Knifebot
getgenv().Players = game:GetService'Players'
getgenv().Host = Players.LocalPlayer
getgenv().RunService = game:GetService'RunService'
getgenv().UserInputService = game:GetService'UserInputService'
getgenv().StarterGui = game:GetService'StarterGui'

local Bot = false
local Notify = true
local Toggle = 'G'

getgenv().AddNotification = function(Title, Text)
    if StarterGui then
        if Notify then
            StarterGui:SetCore('SendNotifiction', {Title = Title; Text = Text;})
        end
    end
end

local Args = {
    [1] = Host.Character:FindFirstChildWhichIsA'Knife';
    [2] = Host.Character.Pipe:FindFirstChild'Handle';
    [3] = false;
    [4] = true;
}

RunService.RenderStepped:Connect(function()
    if Host and Host.Character then
        if Bot then
            Host:FindFirstChild'Backpack':FindFirstChild'ServerTraits':FindFirstChild'Touch':FireServer(unpack(Args))
        elseif not Bot then
            return nil
        end
    end
end)

UserInputService.InputBegan:Connect(function(Arg, Kill)
    if Kill then
        return nil
    elseif Arg.KeyCode = Enum.KeyCode[Toggle] then
        Bot = not Bot
        AddNotification("Coryu's Knifebot", "Knifebot is now "..tostring(Bot))
    end
end)

AddNotification('Made by', 'Cory/Coryu add me on discord 4 anything @killserver')
