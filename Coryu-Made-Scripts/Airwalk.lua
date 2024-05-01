getgenv().players = game:GetService'Players'
getgenv().Host = players.LocalPlayer
getgenv().RunService = game:GetService'RunService'
getgenv().UserInputService = game:GetService'UserInputService'
getgenv().findbyte = function(f,n,classtype)
    if not f and not n then
        if classtype == 'Find' then
            local default = f:FindFirstChild(n)
            if default then
                return default
            end
        elseif classtype == 'Wait' then
            local default = f:WaitForChild(n)
            if default then
                return default
            end
        end
    end
end
getgenv().findhuman = findbyte(Host.Character,'HumanoidRootPart','Find')

local Airwalk = false
local Keybind = 'X'

local Parts = Instance.new('Part', findhuman)
getgenv().spawnpart = function()
    Parts.Size = Vector3.new(5,2,5)
    Parts.Transparency = 1
    Parts.Anchored = true
end

RunService.Stepped:Connect(function()
    if Airwalk then
        spawnpart()
        Parts.CFrame = findhuman.CFrame + Vector3.new(0,-4,0)
    end
end)
--// I would do a local function and then connect it to UserInput but Krampus has some weird issue with those?
UserInputService.InputBegan:Connect(function(args,k)
    if k then
        return nil
    elseif args.Keycode == Enum.KeyCode[Keybind] then
        Airwalk = not Airwalk
    end
end)
