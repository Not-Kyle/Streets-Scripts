--xaxa's stuff

local crtl = false


mouse = game.Players.LocalPlayer:GetMouse()


local air = Instance.new("Part", workspace)
air.Size = Vector3.new(7, 2, 3)
air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
air.Transparency = 1
air.Anchored = true
air.Name = "Airwalk"


mouse.KeyDown:Connect(function(key)
   if key == "2" then
       air.Size = Vector3.new(4, -0.5, 3)
   end
end)

mouse.KeyUp:Connect(function(key)
   if key == "2" then
       air.Size = Vector3.new(7, 2, 3)
   end
end)


for i = 1, math.huge do
   air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
   wait(0.01)
end
