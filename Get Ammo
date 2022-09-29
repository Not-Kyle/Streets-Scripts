local Input = game:GetService('UserInputService')
local ammo = false

game:GetService('RunService').Stepped:connect(
    function()
        if ammo then
                 if game.Workspace:FindFirstChild("Buy Ammo | $25") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Workspace["Buy Ammo | $25"].Head.CFrame
            end
           end
        game.Players.Localplayer.Backpack.ServerTraits.Stann.Value = 100
    end
)


Input.InputBegan:Connect(
    function(hotkey)
        if hotkey.KeyCode == Enum.KeyCode.G then
            if Input:GetFocusedTextBox() == nil then
                 local SavePos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                ammo = true
            end
        end
    end
)

Input.InputEnded:Connect(
    function(hotkey)
        if hotkey.KeyCode == Enum.KeyCode.G then
            if Input:GetFocusedTextBox() == nil then
                ammo = false
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SavePos
            end
        end
    end
)
