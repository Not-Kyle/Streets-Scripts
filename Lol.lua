game.StarterGui:SetCore("SendNotification", {
    Title = "Injecting...",
    Text = "This Won't Take Long...",
    Icon = "http://www.roblox.com/asset/?id=1281286925",
    Duration = 2
    }
)

wait(1)

local parts = game.Workspace:GetChildren()
for i = 1,#parts do
    local name = string.lower(parts[i].Name)
    if (string.find(name,"lag") ~= nil) and ((string.find(name,"anti") ~= nil) or (string.find(name,"no") ~= nil) or (string.find(name,"remover") ~= nil) or (string.find(name,"killer") ~= nil)) and (parts[i] ~= script) then
        parts[i]:remove()
    end
end

wait()
script:remove()

--print("Fix Lag Success!")

for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "SpawnLocation"
or v.ClassName == "Decal"
or v.ClassName == "Texture" then
v:Destroy()
end
end

--print("Remove Spawns, Decals and some shit")

local Tick = tick();

local lighting2 = game.Lighting
        if lighting2:FindFirstChild("ColorCorrection") then
            lighting2:FindFirstChild("ColorCorrection"):Remove()
        end
        if lighting2:FindFirstChild("Correction") then
            lighting2:FindFirstChild("Correction"):Remove()
        end
        if lighting2:FindFirstChildOfClass("SunRaysEffect") then
            lighting2:FindFirstChildOfClass("SunRaysEffect"):Remove()
        end
        --print("Remove Shaders And  Better Lighting")

rpm = 1
game:GetService('RunService').RenderStepped:connect(function()
    --[[for i=1,math.ceil((rpm/60)/60) do]] -- not needed :shrug:
        game.Lighting.TimeOfDay = "14:00:00" -- makes it day all the time
    end)
--[[end)]]
function notify(NTitle, NText, NIcon, NDurFation)
    game.StarterGui:SetCore("SendNotification",{
		Title = NTitle;
		Text = NText;
		Icon = NIcon;
		Duration = NDuration;
	})
 end
notify("4k Sky", " has been applied", "", "3")
local lighting = game.Lighting
local sunray = Instance.new("SunRaysEffect", lighting)
local sky = lighting.Sky
sky.SkyboxBk = "rbxassetid://653719502"
sky.SkyboxDn = "rbxassetid://653718790"
sky.SkyboxFt = "rbxassetid://653719067"
sky.SkyboxLf = "rbxassetid://653719190"
sky.SkyboxRt = "rbxassetid://653718931"
sky.SkyboxUp = "rbxassetid://653719321"
sky.StarCount = 1334
sky.SunAngularSize = 21
sky.MoonAngularSize = 11
--print("4K Sky Has Been Applied!")
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid then
        if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet") then
            if game.Players.LocalPlayer.Character.Humanoid.Bullet:findFirstChild("Trail") then
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name == "BulletDone" then
                end
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet"):findFirstChild("Trail").Lifetime < 0.21 then
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Lifetime = 0.21
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Transparency = NumberSequence.new(0)
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Color = ColorSequence.new(Color3.fromRGB(100, 255, 255),Color3.fromRGB(210, 255, 255))
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name = "BulletDone"
                end
            end
        end
    end
end)
--print("BulletTrail")
local localp = game:GetService("Players").LocalPlayer
local RS = game:GetService("RunService")
RS.RenderStepped:Connect(function()
    local function GunSkins(GunTable, Color, Material)
		for _, v in pairs(GunTable:GetChildren()) do
			if v:IsA"Tool" and v:FindFirstChild"Fire" then
				for _, i in pairs(v:GetDescendants()) do 
					if i:IsA"UnionOperation" or i:IsA"Part" or i:IsA"MeshPart" then 
						if i:IsA"UnionOperation" then 
							i.UsePartColor = true
						end
						i.Material = Material
						i.Color = Color
					end
				end
			end
		end
	end
	GunSkins(localp.Backpack, Color3.fromRGB(200, 255, 255), "ForceField")
end)
--print(".Colorful Gun.")
game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(old, new)
    if new == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding then
	    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	    game.Players.LocalPlayer.Character.Humanoid.Sit = false
	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    repeat wait() until char:FindFirstChild("Humanoid")
    char.Humanoid.StateChanged:Connect(function(old, new)
	    if new == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding then
	        char.Humanoid.PlatformStand = false
	        char.Humanoid.Sit = false
	        char.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	        char.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	    end
    end)
end)
--print("antiknock!")
function onKeyPress(inputObject, gameProcessedEvent)
    if gameProcessedEvent == false then
        if inputObject.KeyCode == Enum.KeyCode.R then
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
end
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(key)
  if key == "p" then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
	if workspace:FindFirstChild'Armoured Truck' then 
	    VanPart.Color,VanPart.CFrame,VanPart.Size,VanPart.Material,VanPart.Anchored = Color3.fromRGB(196,40,28),CFrame.new(-136.858002,0,-523.700012),Vector3.new(9.93,1,20.31),"ForceField",true
	    workspace:FindFirstChild'Armoured Truck':Destroy()
	elseif workspace:FindFirstChild'TPer' then
	    VanPart.Color,VanPart.CFrame,VanPart.Size,VanPart.Material,VanPart.Anchored = Color3.fromRGB(196,40,28),CFrame.new(-31,-0.2,221),Vector3.new(12,1,6),"ForceField",true
	    workspace:FindFirstChild'TPer':Destroy()
	else
		VanPart:Destroy()
	end
    end
end)
local Players, RService = game:GetService"Players", game:GetService"RunService";
local Client, PGui, UD2 = Players.LocalPlayer, Players.LocalPlayer:WaitForChild"PlayerGui", UDim2.new;
RService.RenderStepped:Connect(function()
    if PGui and PGui:FindFirstChild"HUD" and PGui.HUD:FindFirstChild"Ammo" then 
        local AmmoLabel, Tool = PGui.HUD.Ammo, Client.Character:FindFirstChildOfClass"Tool"
        pcall(function()
            if AmmoLabel then 
                AmmoLabel.Text = (Tool:FindFirstChild"Ammo".Value.." Shots\n"..Tool:FindFirstChild"Clips".Value.." Clips")
                AmmoLabel.Font = "Code"
                AmmoLabel.TextColor3 = Color3.new(210, 255, 255)
                --AmmoLabel.Position = UD2(0.423320651, 0, 0.741550624, 0)
            end
        end)
    end
end)
--print("Cool Bullet Counter!")
local Players, RService = game:GetService"Players", game:GetService"RunService";
local Client, PGui, UD2 = Players.LocalPlayer, Players.LocalPlayer:WaitForChild"PlayerGui", UDim2.new;
RService.RenderStepped:Connect(function()
    if PGui and PGui:FindFirstChild"HUD" and PGui.HUD:FindFirstChild"Cash" then 
        local CashLabel, Tool = PGui.HUD.Cash, Client.Character:FindFirstChildOfClass"Tool"
        pcall(function()
            if CashLabel then 
                CashLabel.Text = ("void on top")
                CashLabel.Font = "Code"
                CashLabel.TextColor3 = Color3.new(170, 255, 255)
            end
        end)
    end
end)
game:GetService("StarterGui"):SetCore('ChatWindowPosition', UDim2.new(0.7, 0, 0.7, 0))
local Players, SGui = game:GetService("Players"), game:GetService("StarterGui");
local Client, NColor3, UD, UD2 = Players.LocalPlayer, Color3.new, UDim.new, UDim2.new
local function ChatSpy()
   local ChatSpyFrame = Client.PlayerGui.Chat.Frame
   ChatSpyFrame.ChatChannelParentFrame.Visible = true
   ChatSpyFrame.ChatBarParentFrame.Position = ChatSpyFrame.ChatChannelParentFrame.Position + UD2(UD(), ChatSpyFrame.ChatChannelParentFrame.Size.Y)
end
ChatSpy()
getgenv().ShowHiddenMsg = function(T, C)
   SGui:SetCore("ChatMakeSystemMessage", {
       Text = T;
       Color = C;
   })
end
getgenv().Spy = function(Target)
   Target.Chatted:Connect(function(Msg)
       if string.find(Msg, "/e ") or string.find(Msg, "/w ") or string.find(Msg, "/whisper ") then
           ShowHiddenMsg("".."["..tostring(Target).."]: "..Msg, NColor3(255,255,255)) -- https://www.rapidtables.com/web/color/RGB_Color.html if you want to change the color of the hidden msg's
       end
   end)
end
--print("Chatspy")
local GP = Players:GetPlayers()
for i = 1, #GP do
   local Plr = GP[i]
   if tostring(Plr) then
       Spy(Plr)
   end
end
Players.PlayerAdded:Connect(function(P)
   if tostring(P) then
       Spy(P)
   end
end)
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
--print("antiafk")
function onKeyPress(inputObject, gameProcessedEvent)
    if gameProcessedEvent == false then
        if inputObject.KeyCode == Enum.KeyCode.P then
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
if game.PlaceId ~= 4669040 then
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/isthatjack/streets/master/noccooldown.lua'), true))()
end
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
function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
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
            notify("antife", "is now set to " .. tostring(AntiKill), "rbxassetid://28319805", 5)
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
--print("AntiKill")
local function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration;
     })
end
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "g" then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/The-Streets-Scripts/master/Truegod", true))()
  notify("God Mode", "Turning on\n Reset to turn off", "rbxassetid://28319805", 2)
 end
end)
--print("GodMode")
local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character
local garbage = {
    "ur bad";
    "sit";
    "ez";
    "L";
    "dog";
    "son";
    "LOL";
    "xd";
    "cry";
    "XD";
    "kid";
    "sadd";
    "lol";
}
function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.T and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
Duration = 16;
local LocalP = game.Players.LocalPlayer
local mouse = LocalP:GetMouse()
local rightclickdown = false
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
end)
local lp = game.Players.LocalPlayer
local lpimage = game.Players:GetUserThumbnailAsync(lp.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
local mouse = lp:GetMouse()
local rservice = game:GetService("RunService")
local prefix = "."
local cmds
local resetkey = "r"
local infstam = true
local dsky = false
local ac = false
local noclip = false
local rejoin = false
local glocklaunch = false
local meta = getrawmetatable(game)
local caller = checkcaller or is_protosmasher_caller
local newindex = meta.__newindex
setreadonly(meta, false)
meta.__newindex =
    newcclosure(
    function(self, meme, value)
        if caller() then
            return newindex(self, meme, value)
        end
        if tostring(self) == "HumanoidRootPart" or tostring(self) == "Torso" then
            if meme == "CFrame" or meme == "Position" or meme == "Velocity" then
                return true
            end
        end
        return newindex(self, meme, value)
    end
)
setreadonly(meta, true)
function esp(player)
    if player.Name ~= lp.Name then
        local bbg = Instance.new("BillboardGui", game.CoreGui)
        bbg.Name = player.Name
        bbg.AlwaysOnTop = true
        bbg.Enabled = true
        bbg.Size = UDim2.new(1, 0, 1, 0)
        bbg.StudsOffset = Vector3.new(0, 2, 0)
        local tlabel = Instance.new("TextLabel", bbg)
        tlabel.BackgroundTransparency = 1
        tlabel.Size = UDim2.new(1, 0, 1, 0)
        tlabel.Text = player.Name
        tlabel.TextColor3 = Color3.new(210, 255, 255)
        game.Players.PlayerRemoving:Connect(
            function(plrr)
                if plrr == player then
                    game.CoreGui:FindFirstChild(plrr.Name):Destroy()
                end
            end
        )
    end
end
lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
lp.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
function notif(title, msg, dur)
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            ["Icon"] = lpimage,
            ["Title"] = title,
            ["Text"] = msg,
            ["Duration"] = dur
        }
    )
end
function infstam()
    wait(0.5)
    if game.PlaceId ~= 455366377 then
        lp.Backpack.ServerTraits.Stann.Changed:Connect(
            function()
                if infstam then
                    lp.Backpack.ServerTraits.Stann.Value = 100
                end
            end
        )
    else
        lp.Character.Stamina.Changed:Connect(
            function()
                if infstam then
                    lp.Character.Stamina.Value = 100
                end
            end
        )
    end
end
function anticlaim()
    local myTools = {}
    for _, z in pairs(lp.Backpack:GetChildren()) do
        if z:IsA "Tool" then
            table.insert(myTools, z)
        end
    end
    lp.Character.ChildAdded:Connect(
        function(instance)
            if ac then
                if instance.Name ~= "nillingprocessigbecausethisisalongnameeitherwaystillworks" and instance:IsA "Tool" then
                    instance:Destroy()
                    wait(0.1)
                    instance:Destroy()
                end
            end
        end
    )
    lp.Backpack.ChildRemoved:Connect(
        function(instance)
            local toolnames_ = {}
            table.insert(toolnames_, instance.Name)
            instance.Name = "nillingprocessigbecausethisisalongnameeitherwaystillworks"
            wait()
            instance.Name = toolnames_[1]
        end
    )
end
infstam()
anticlaim()
lp.CharacterAdded:Connect(
    function()
        infstam()
        anticlaim()
    end
)
mouse.KeyDown:Connect(
    function(key)
        if key == resetkey then
            lp.Character.Humanoid:ChangeState(15)
        end
    end
)
lp.Chatted:Connect(
    function(Message)
        local args = string.split(Message, " ")
        if args[1] == prefix .. "cmds" then
            print("; To Open Command Bar")
            print("cOMMANDS!!!")
            print("Prefix = .")
            print("noclip")
            print("ac - AntiClaim")
            print("infstam - Inf Stamina")
            print("esp (playername)")
            print("fov")
            print("rejoin")
            print("glocklaunch")
            print("dsky - Default Sky")
            print("rseats - Detroy all seats in game")
            print("HOTKEYS:")
            print("R or P - Reset")
            print("T - TrashTalk")
            print("G - GodMode")
            print("H - AntiFe")
            notif("F9 For Commands!","", 2)
        end
        
        if args[1] == prefix .. "view" then
            if args[2] and args[2] ~= "" or " " then end
            local Targ = GetPlayer(tostring(args[2]))
            Workspace.CurrentCamera.CameraSubject = Targ.Character.Humanoid
            notif("View", "Now Viewing" .. Targ.Name, 2)
        end
        if args[1] == prefix .. "unview" then
            Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
            notif("UnView", "Unviewed", 2)
        end
        if args[1] == prefix .. "reset" then
            lp.Character.Humanoid:ChangeState(15)
        end
        if args[1] == prefix .. "prefix" then
            if args[2] and args[2] ~= "" or " " then end
            prefix = args[2]
        end
        if args[1] == prefix .. "esp" then
            if args[2] and args[2] ~= "" or " " then end
            local plYer = GetPlayer(tostring(args[2]))
            esp(plYer)
            notif("Revealed", plYer.Name, 2)
        end
        if args[1] == prefix .. "unesp" then
            if args[2] and args[2] ~= "" or " " then end
            local plYer = GetPlayer(tostring(args[2]))
            if game.CoreGui:FindFirstChild(plYer.Name) then
                game.CoreGui:FindFirstChild(plYer.Name):Destroy()
            else
                notif("Cannot UnEsp", plYer.Name, 2)
            end
        end
        if args[1] == prefix .. "fov" then
            if args[2] and args[2] ~= "" or " " then end
            Workspace.CurrentCamera.FieldOfView = tonumber(args[2])
            notif("FieldOfView", "Changed To" .. " " .. tonumber(args[2]), 2)
        end
        if args[1] == prefix .. "dsky" then
         for _, z in next, game:GetService("Lighting"):GetChildren() do
          z:Destroy()
         end
        end
        if args[1] == prefix .. "infstam" then
            infstam = not infstam
            if infstam then
                notif("Infinite Stamina", "Turned To True", 2)
            else
                notif("Infinite Stamina", "Turned To False", 2)
            end
        end
        if args[1] == prefix .. "anticlaim" then
            ac = not ac
            if ac then
                notif("Anti - Claim", "Turned To True", 2)
            else
                notif("Anti - Claim", "Turned To False", 2)
            end
        end
        if args[1] == prefix .. "noclip" then
            noclip = not noclip
            if noclip then
                notif("Noclip", "Turned To True", 2)
            else
                notif("Noclip", "Turned To False", 2)
            end
        end
        if args[1] == prefix .. "rejoin" then
            local ts = game:GetService("TeleportService")
             local p = game:GetService("Players").LocalPlayer
              ts:Teleport(game.PlaceId, p)
              notif("Rejoin", "Rejoining...", 2)
        end
        if args[1] == prefix .. "glocklaunch" then
            game.Players.LocalPlayer.Backpack.Glock.Barrel.CanCollide=true
        notif("Glock Launch", "Done!", 2)
        end
        if args[1] == prefix .. "rseats" then
            for _,z in pairs(game:GetDescendants()) do
                if z:IsA'Seat' then
                    z:Destroy()
                end
            end
        end
    end
)
function GetPlayer(String)
    local Targ
    local StrLower = String:lower()
    for _, z in pairs(game:GetService("Players"):GetPlayers()) do
        if z.Name:lower():sub(1, #String) == String:lower() then
            Targ = z
        end
    end
    if String == "me" then
        Targ = lp
    end
    if String == "" or String == " " then
        Targ = nil
    end
    return Targ
end
rservice.Stepped:Connect(
    function()
        pcall(
            function()
                if noclip then
                    for _, z in pairs(lp.Character:GetDescendants()) do
                        if z:IsA "Part" then
                            z.CanCollide = false
                        end
                    end
                end
                for _, z in pairs(game.CoreGui:GetChildren()) do
                    if z:IsA "BillboardGui" then
                        for _, v in pairs(game.Players:GetPlayers()) do
                            if z.Name == v.Name then
                                if v.Character and v.Character.Head and v.Character.Humanoid then
                                    z.Adornee = v.Character.Head
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
game.StarterGui:SetCore("SendNotification", {
    Title = "Enjoy!...",
    Text = "Thank you for your patience",
    Icon = "http://www.roblox.com/asset/?id=1281454262",
    Duration = 3
    }
)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script",
    Text = "Took "
    ..string.format("%.3f", tick() - Tick)..
    " seconds to load",
    Icon = "http://www.roblox.com/asset/?id=1281284684",
    Duration = 4
    }
)
game.StarterGui:SetCore("SendNotification", {
    Title = ".cmds",
    Text = "For Commands!",
    Icon = "http://www.roblox.com/asset/?id=1281476978",
    Duration = 2
    }
)
--print("Digi fat XD")
