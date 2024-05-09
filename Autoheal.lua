local Players,UserInput = game:GetService'Players',game:GetService'UserInputService'
local LP = Players.LocalPlayer
local Debounce = false 

local PartTable  = {
    ['Burger'] = workspace:FindFirstChild'Burger | $15':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
    ['Drink'] = workspace:FindFirstChild'Drink | $15':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
}

local function Heal()
	if Debounce then return end
	local CFRame = LP.Character.HumanoidRootPart.CFrame 
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(20,45),0,math.random(1,5))
    wait()
    repeat  
        LP.Character.HumanoidRootPart.CFrame = PartTable['Burger']
        game:GetService'RunService'.Heartbeat:wait()
	until LP.Backpack:FindFirstChild'Burger' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	if LP.Backpack:FindFirstChild'Burger' then 
		local Burg = LP.Backpack.Burger
		Burg.Parent = LP.Character
		Burg:Activate()
	end
    repeat 
        LP.Character.HumanoidRootPart.CFrame = PartTable['Drink']
        game:GetService'RunService'.Heartbeat:wait()
	until LP.Backpack:FindFirstChild'Drink' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	if LP.Backpack:FindFirstChild'Drink' then 
		local Drink = LP.Backpack.Drink
		Drink.Parent = LP.Character
		Drink:Activate()
	end
	LP.Character.HumanoidRootPart.CFrame = CFRame
end

UserInput.InputBegan:Connect(function(Key,Chatting)
    if Key.KeyCode == Enum.KeyCode.H and not Chatting then 
        Heal()
        Debounce = true 
        repeat wait() until workspace:FindFirstChild'Burger | $15' and workspace:FindFirstChild'Drink | $15' 
        Debounce = false 
    end
end)
