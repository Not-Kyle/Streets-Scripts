--[[Local Whitelist.]]--
game.StarterGui:SetCore("SendNotification", {
    Title = "WHITELIST";
    Text = "Checking if player is whitelisted...";
    Icon = "rbxassetid://2541869220";
    Duration = 4;
        })
wait(2)
local LPR = game:GetService("Players").LocalPlayer
local Whitelisted = {
    [1065069613] = true; -- aimcancel | Co-Dev
    [2044912228] = true; -- ZemouIALT | Alt
    [130438890] = true; -- uhreebahfanboy | Creator / Owner
    [2378545676] = true; -- (VAL3RYSSIMP | Buyer)
    [2254367838] = true; -- (angeIangelangeI | Buyer)
    [878779033] = true; -- (The50DollarBill | Alt)
    [2626152888] = true; -- (El_ODSGxFlameskii | Buyer)
    [2626095397] = true; -- (El_ODSGxFireskii | Buyer)
    [90040548] = true; -- (ISoIdYouOnEbay | Buyer)
    [2589414633] = true; -- (MAHONTOP | Buyer)
    [1313610080] = true; -- (Zuggin | Buyer)
    [2258274790] = true; -- (07clips | Buyer Alt)
    [1697913853] = true; -- (GorillaInGorillaSkin | Buyer Alt)
    [2241682540] = true; -- (FrozenShell | Buyer Alt)
    [2345636171] = true; -- (spacejams3s | Buyer Alt)
    [2662887206] = true; -- (ROT_VIOLENCE | Buyer Alt)
}
    if Whitelisted[LPR.UserId] then
        game.StarterGui:SetCore("SendNotification", {
            Title = "WHITELIST";
            Text = "Player is whitelisted!";
            Icon = "";
            Duration = 2;
                })
    else
    LPR:Kick("You arent whitelisted sorry!")
    end
    

	local LoadingTime = tick();
local Commands, Prefix = {}, ""
getgenv().Notify = function(title, text, icon, time)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = title;
        Text = text;
        Icon = "rbxassetid://2541869220";
        Duration = time;
    }) 
end

getgenv().SearchPlayers = function(Name)
    local Inserted = {}
        for _, p in pairs(game:GetService("Players"):GetPlayers()) do 
        if string.lower(string.sub(p.Name, 1, string.len(Name))) == string.lower(Name) then 
            table.insert(Inserted, p);return p
        end
    end
end

getgenv().GetInit = function(CName)
    for _, v in next, Commands do 
        if v.Name == CName or table.find(v.Aliases, CName) then 
            return v.Function 
        end 
    end
end

getgenv().RunCommand = function(Cmd)
    Cmd = string.lower(Cmd)
    pcall(function()
        if Cmd:sub(1, #Prefix) == Prefix then 
            local Args = string.split(Cmd:sub(#Prefix + 1), " ")
            local CmdName = GetInit(table.remove(Args, 1))
            if CmdName and Args then
                return CmdName(Args)
            end
        end
    end)
end

local ScreenGui = Instance.new("ScreenGui")
local Cmdbar = Instance.new("TextBox")
local CmdbarARC = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")

coroutine.resume(coroutine.create(function()
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = ScreenGui
Cmdbar.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(0.0209330097, 0, 0.587117374, 0)
Cmdbar.Size = UDim2.new(0, 260, 0, 32)
Cmdbar.SizeConstraint = Enum.SizeConstraint.RelativeYY
Cmdbar.Font = Enum.Font.Gotham
Cmdbar.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar.Text = ""
Cmdbar.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar.TextSize = 14.000
Cmdbar.TextWrapped = true
Cmdbar.TextXAlignment = Enum.TextXAlignment.Left
Cmdbar.Visible = false

CmdbarARC.Name = "CmdbarARC"
CmdbarARC.Parent = Cmdbar
CmdbarARC.BackgroundColor3 = Color3.fromRGB(100,225,200)
CmdbarARC.BorderSizePixel = 0
CmdbarARC.Position = UDim2.new(-0.123076916, 0, 0, 0)
CmdbarARC.Size = UDim2.new(0, 32, 0, 32)
CmdbarARC.Font = Enum.Font.Code
CmdbarARC.Text = ">"
CmdbarARC.TextColor3 = Color3.fromRGB(100,225,200)
CmdbarARC.TextSize = 19.000
CmdbarARC.TextWrapped = true

Frame.Parent = Cmdbar
Frame.BackgroundColor3 = Color3.fromRGB(100,225,200)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.123076923, 0, 0.972426474, 0)
Frame.Size = UDim2.new(0, 292, 0, 2)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(100,225,200)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(100,225,200)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(128,0,128))}
UIGradient.Parent = Frame
end))

local Uis = game:GetService("UserInputService")
Uis.InputBegan:Connect(function(Key, Typing)
    if Typing then return end
    if Key.KeyCode == Enum.KeyCode.Semicolon then
        Cmdbar.Visible = true
        Cmdbar.Text = ""
        wait()
        Cmdbar:CaptureFocus()
        --Cmdbar:TweenSize(UDim2.new(0, 419, 0, 20), "Out", "Quad", 0.1, true)
    end
end)
Cmdbar.FocusLost:Connect(function(Foc)
    if Foc == true then
        Cmdbar.Visible = false
            RunCommand(Cmdbar.Text)
    end
end)
Uis.InputEnded:Connect(function(Key)
    if Key.KeyCode.Name == "LeftAlt" then
        Cmdbar.Visible = false
    end
end)

-- [[ locals ]] -- 
local Players, RService, RStorage, VUser, SGui, TPService = game:GetService("Players"), game:GetService("RunService"), game:GetService("ReplicatedStorage"), game:GetService("VirtualUser"), game:GetService("StarterGui"), game:GetService("TeleportService")
local Client, Mouse, Camera, CF, INew, Vec3, Vec2, UD2, UD = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Instance.new, Vector3.new, Vector2.new, UDim2.new, UDim.new;
local Noclip, Blink, Esp, Flying, Noseats = false, false, false, false, false;
local Aimbot, Viewing, Camlock = false, false, false;
local AimbotTarget, ViewTarget, CamlockTarget, EspTarget = nil, nil, nil, nil;
local Flyspeed, Aimvelocity, Blinkspeed = 5, 10, 2;
local AimPart, CamPart = "Torso", "Torso";
local StreetsID, PrisonID = 455366377, 4669040;
local AFK, AFKMessage = false, "AFK"

-- [[ functions ]] -- 
local AimPartTable = {
    ["torso"] = "Torso";
    ["head"] = "Head";
}
local KeysTable = {
    ["W"] = false;["A"] = false;
    ["S"] = false;["D"] = false;
    ["LeftControl"] = false;["LeftShift"] = false;
}

local function ChatSpy()
    local ChatSpyFrame = Client.PlayerGui.Chat.Frame
    ChatSpyFrame.ChatChannelParentFrame.Visible = true
    ChatSpyFrame.ChatBarParentFrame.Position = ChatSpyFrame.ChatChannelParentFrame.Position + UD2(UD(), ChatSpyFrame.ChatChannelParentFrame.Size.Y)
end
ChatSpy()

local function ConfirmCallbacks()
    wait()
    SGui:SetCore("ResetButtonCallback", true)
end
ConfirmCallbacks()

getgenv().ResetCharacter = function()
    if Client and Client.Character and Client.Character:FindFirstChild("Humanoid") then 
        Client.Character.Humanoid:ChangeState(15)
    end
end

getgenv().EspPlayer = function(Dude)
    local bgui = Instance.new("BillboardGui", Dude.Character.Head)
    local tlabel = Instance.new("TextLabel", bgui)
    
    bgui.Name = "ESP"
    bgui.Adornee = part
    bgui.AlwaysOnTop = true
    bgui.ExtentsOffset = Vector3.new(0, 3, 0)
    bgui.Size = UDim2.new(0, 5, 0, 5)
        
    tlabel.Name = "espTarget"
    tlabel.BackgroundColor3 = Color3.fromRGB(0,255,255)
    tlabel.BackgroundTransparency = 1
    tlabel.BorderSizePixel = 0
    tlabel.Position = UDim2.new(0, 0, 0, -30)
    tlabel.Size = UDim2.new(1, 0, 7, 0)
    tlabel.Visible = true
    tlabel.ZIndex = 10
    tlabel.Font = "ArialBold"
    tlabel.FontSize = "Size14"
    RService.RenderStepped:Connect(function()
        if Dude and Dude.Character and Dude.Character:FindFirstChildOfClass("Humanoid") then 
            tlabel.Text = Dude.Name.." ["..math.floor(Dude.Character.Humanoid.Health).."/"..math.floor(Dude.Character.Humanoid.MaxHealth).."]".." ["..math.floor(Dude:DistanceFromCharacter(Client.Character.Head.Position)).."]"
        end
    end)
    tlabel.TextColor = BrickColor.new("Cyan") 
    tlabel.TextStrokeTransparency = 0.1
end

getgenv().togglefly = function()
    Flying = not Flying
    Notify("Orware", "Flying: "..tostring(Flying), "", 3)
    local T = Client.Character:FindFirstChild("HumanoidRootPart") or Client.Character:FindFirstChild("Torso")
    local BV, BG = INew("BodyVelocity", T), INew("BodyGyro", T)
    BV.Velocity = Vec3(0, 0.1, 0);BV.MaxForce = Vec3(math.huge, math.huge, math.huge)
    BG.CFrame = T.CFrame;BG.P = 9e9;BG.MaxTorque = Vec3(9e9, 9e9, 9e9)
    local FlyPart = INew("Part", workspace)
    FlyPart.Anchored = true;FlyPart.Size = Vec3(6, 1, 6);FlyPart.Transparency = 1 
    
    while Flying == true and Client and Client.Character and Client.Character:FindFirstChild("Humanoid") and Client.Character.Humanoid.Health ~= 0 and RService.Heartbeat:Wait() and T do 
        local Front, Back, Left, Right = 0, 0, 0, 0
        if KeysTable["W"] == true then 
            Front = Flyspeed 
        elseif not KeysTable["W"] == true then
            Front = 0 
        end
        if KeysTable["A"] == true then 
            Right = -Flyspeed
        elseif not KeysTable["A"] == true then 
            Right = 0 
        end
        if KeysTable["S"] == true then 
            Back = -Flyspeed 
        elseif not KeysTable["S"] == true then 
            Back = 0
        end
        if KeysTable["D"] == true then 
            Left = Flyspeed
        elseif not KeysTable["D"] == true then 
            Left = 0
        end
        if tonumber(Front + Back) ~= 0 or tonumber(Left + Right) ~= 0 then 
            BV.Velocity = ((Camera.CoordinateFrame.lookVector * (Front + Back)) + ((Camera.CoordinateFrame * CF(Left + Right, (Front + Back) * 0.2, 0).p) - Camera.CoordinateFrame.p)) * 50
        else 
            BV.Velocity = Vec3(0, 0.1, 0)
        end
        BG.CFrame = Camera.CoordinateFrame
    end
    FlyPart:Destroy();BG:Remove();BV:Remove()
end

Uis.InputBegan:Connect(function(Key)
    if not (Uis:GetFocusedTextBox()) then
        if Key.KeyCode == Enum.KeyCode.W then 
            KeysTable["W"] = true 
        end 
        if Key.KeyCode == Enum.KeyCode.A then 
            KeysTable["A"] = true 
        end
        if Key.KeyCode == Enum.KeyCode.S then 
            KeysTable["S"] = true 
        end
        if Key.KeyCode == Enum.KeyCode.D then 
            KeysTable["D"] = true 
        end
        if Key.KeyCode == Enum.KeyCode.F then 
            if FirstFly == true then 
                Notify("Orware v1", "You can now fly, like a bird.", "", 3)
                FirstFly = false 
            end
            togglefly()
        end
        if Key.KeyCode == Enum.KeyCode.X then 
            Noclip = not Noclip 
            Notify("Orware", "Noclip: "..tostring(Noclip), "", 3)
        end
        if Key.KeyCode == Enum.KeyCode.LeftShift then
            KeysTable["LeftShift"] = true
            while Blink == true and KeysTable["LeftShift"] == true and Client and Client.Character and RService.Heartbeat:Wait() do
                local ClientRF = Client.Character:FindFirstChild("HumanoidRootPart") or Client.Character:FindFirstChild("Torso")
                local Hum = Client.Character:FindFirstChild("Humanoid")
                ClientRF.CFrame = ClientRF.CFrame + Vec3(Hum.MoveDirection.X * Blinkspeed, Hum.MoveDirection.Y * Blinkspeed, Hum.MoveDirection.Z * Blinkspeed)
            end 
        end
    end
end)
Uis.InputEnded:Connect(function(Key --[[Typing]])
    if not (Uis:GetFocusedTextBox()) then
        if Key.KeyCode == Enum.KeyCode.W then 
            KeysTable["W"] = false 
        end
        if Key.KeyCode == Enum.KeyCode.A then 
            KeysTable["A"] = false 
        end
        if Key.KeyCode == Enum.KeyCode.S then 
            KeysTable["S"] = false 
        end
        if Key.KeyCode == Enum.KeyCode.D then 
            KeysTable["D"] = false
        end
        if Key.KeyCode == Enum.KeyCode.LeftShift then
            KeysTable["LeftShift"] = false
        end
    end
end)

-- [[ Bypass ]] --
local rm = getrawmetatable(game) or debug.getrawmetatable(game) or getmetatable(game)
if setreadonly then setreadonly(rm, false) else make_writeable(rm, true) end
local caller, cscript = checkcaller or is_protosmasher_caller, getcallingscript or get_calling_script;
local rindex, nindex, ncall, closure = rm.__index, rm.__newindex, rm.__namecall, newcclosure or read_me;

rm.__newindex = closure(function(self, Meme, Val)
    if caller() then return nindex(self, Meme, Val) end 
    if game.PlaceId ~= (StreetsID) then 
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
    end
    if self:IsDescendantOf(Client.Character) and self.Name == "HumanoidRootPart" or self.Name == "Torso" then 
        if Meme == "CFrame" or Meme == "Position" or Meme == "Anchored" then 
            return nil 
        end
    end
    return nindex(self, Meme, Val) 
end)
rm.__namecall = closure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod() or get_namecall_method();
    if Method == "BreakJoints" then 
        return wait(9e9)
    end
    if game.PlaceId ~= (StreetsID) then
        if Method == "FireServer" and not self.Name == "SayMessageRequest" then
            if tostring(self.Parent) == "ReplicatedStorage" or self.Name == "lIII" then 
                return wait(9e9) 
            end
            if Args[1] == "hey" then 
                return wait(9e9) 
            end
        end
        if Method == "FireServer" and self.Name == "Fire" and AimbotTarget ~= nil and Aimbot == true  then
            return ncall(self, AimbotTarget.Character[AimPart].CFrame + AimbotTarget.Character[AimPart].Velocity/Aimvelocity)
        end
    end
    if game.PlaceId == (StreetsID) then
        if Method == "FireServer" and Args[1] == "WalkSpeed" or Args[1] == "JumpPower" or Args[1] == "HipHeight" then 
            return nil 
        end
        if Method == "FireServer" and self.Name == "Input" then 
            if Args[1] == "bv" or Args[1] == "hb" or Args[1] == "ws" then 
                return wait(9e9)
            end
        end
        if Method == "FireServer" and self.Name == "Input" and AimbotTarget ~= nil and Aimbot == true then 
            Args[2].mousehit = AimbotTarget.Character[AimPart].CFrame + AimbotTarget.Character[AimPart].Velocity/Aimvelocity 
            Args[2].velo = math.huge
            return ncall(self, unpack(Args))
        end
    end
    return ncall(self, unpack(Args))
end)
if setreadonly then setreadonly(rm, true) else make_writeable(rm, false) end

-- [[ CharacterAdded/Died ]] --
Client.Character.Humanoid.Died:Connect(function()
    if Flying then togglefly() end
end)
Client.CharacterAdded:Connect(function()
    repeat wait() until Client.Character:FindFirstChild("Humanoid")
    Client.Character.Humanoid.Died:Connect(function()
        if Flying then togglefly() end
    end)
end)

-- [[ Commands ]] --
Commands["Play a Song"] = {
    ["Aliases"] = {"pl", "play", "playsong", "ps", "song"};
    ["Function"] = function(Args)
        if Args[1] then 
            local Radio = Client.Backpack:FindFirstChild("BoomBox")
            if Radio then 
                Radio.Parent = Client.Character
                Radio.RemoteEvent:FireServer("play", tonumber(Args[1]))
            end
            Notify("Orware", "Audio: "..tonumber(Args[1]), "", 3)
        end
    end
}
Commands["Go AFK"] = {
    ["Aliases"] = {"afk", "brb"};
    ["Function"] = function(Args)
        AFK = not AFK
        if (not AFK) then return end
        spawn(function()
            while AFK do
                wait(0.5)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(AFKMessage, "All")
            end
        end)
    end
}
Commands["Sets your Flyspeed"] = {
    ["Aliases"] = {"flyspeed", "fs"};
    ["Function"] = function(Args)
        if Args[1] then 
            Flyspeed = tonumber(Args[1])
            Notify("Orware", "Flyspeed: "..tonumber(Flyspeed), "", 3)
        end
    end
}
Commands["Toggles Fly"] = {
    ["Aliases"] = {"fly", "togglefly"};
    ["Function"] = function(Args)
        togglefly()
    end
}
Commands["Sets your Chat Command Prefix"] = {
    ["Aliases"] = {"prefix", "pfix"};
    ["Function"] = function(Args)
        if Args[1] then 
            Prefix = Args[1]
        end
        Notify("Orware", "Prefix: "..tostring(Prefix), "", 3)
    end
}
Commands["Sets your FieldOfView"] = {
    ["Aliases"] = {"fieldofview", "fov"};
    ["Function"] = function(Args)
        if Args[1] then 
            Camera.FieldOfView = tonumber(Args[1])
        end
        Notify("Orware", "FieldOfView: "..tonumber(Args[1]), "", 3)
    end
}
Commands["Toggles Blink"] = {
    ["Aliases"] = {"blink", "blinkspd"};
    ["Function"] = function(Args)
        Blink = not Blink 
        Notify("Orware", "Blink: "..tostring(Blink), "", 3)
    end
}
Commands["Esp a Player"] = {
    ["Aliases"] = {"esp", "find"};
    ["Function"] = function(Args)
        if Args[1] then
            EspTarget = SearchPlayers(Args[1])
            if EspTarget then
                EspPlayer(EspTarget)
            end
        end
        Notify("Orware", "Esp Target: "..tostring(EspTarget), "", 3)
    end
}
Commands["UnEsp Esp'd Player"] = {
    ["Aliases"] = {"unesp", "unfind"};
    ["Function"] = function(Args)
        if Args[1] then 
            local UnEspPlayer;UnEspPlayer = SearchPlayers(Args[1])
            if UnEspPlayer then 
                for _, v in next, UnEspPlayer.Character:GetDescendants() do 
                    if v:IsA("BillboardGui") or v:IsA("TextLabel") then 
                        v:Destroy() --[[if staircase(s) go brrrRRR]]
                    end
                end
            end
        end
    end
}
Commands["Rejoins Current Game"] = {
    ["Aliases"] = {"rejoin"};
    ["Function"] = function()
        TPService:Teleport(game.PlaceId, Client)
    end
}
Commands["Resets Your Character"] = {
    ["Aliases"] = {"r", "reset", "re", "res"};
    ["Function"] = function()
        ResetCharacter()
    end
}
Commands["Sets Camlock Target"] = {
    ["Aliases"] = {"camlock", "cam", "cl", "cml"};
    ["Function"] = function(Args)
        if Args[1] then 
            CamlockTarget = SearchPlayers(Args[1]);Camlock = true
        end
        Notify("Orware", "Camlock Target: "..tostring(CamlockTarget), "", 3)
    end
}
Commands["UnCamlocks Camlocked Target"] = {
    ["Aliases"] = {"uncamlock", "uncam", "uncl", "uncml"};
    ["Function"] = function()
        CamlockTarget = nil;Camlock = false 
        Notify("Orware", "Camlock: "..tostring(Camlock), "", 3)
    end
}
Commands["Sets Aimbot Target"] = {
    ["Aliases"] = {"aim", "aimlock", "aimbot", "shoot"};
    ["Function"] = function(Args)
        if Args[1] then 
            AimbotTarget = SearchPlayers(Args[1]);Aimbot = true
        end
        Notify("Orware", "Aimbot Target: "..tostring(AimbotTarget), "", 3)
    end
}
Commands["UnAimbots Aimbotted Target"] = {
    ["Aliases"] = {"unaim", "uns", "unaimbot", "unshoot"};
    ["Function"] = function()
        AimbotTarget = nil;Aimbot = false
        Notify("Orware", "Aimbot: "..tostring(Aimbot), "", 3)
    end
}
Commands["View a Player"] = {
    ["Aliases"] = {"view"};
    ["Function"] = function(Args)
        if Args[1] then 
            ViewTarget = SearchPlayers(Args[1]);Viewing = true 
        end
        Notify("Orware", "View Target: "..tostring(ViewTarget), "", 3)
    end
}
Commands["UnView Viewed Target"] = {
    ["Aliases"] = {"unview"};
    ["Function"] = function()
        ViewTarget = nil;Viewing = false
        Camera.CameraSubject = Client.Character
        Notify("Orware", "Viewing: "..tostring(Viewing), "", 3)
    end
}
Commands["Sets Aimvelocity"] = {
    ["Aliases"] = {"aimvelocity"};
    ["Function"] = function(Args)
        if Args[1] then 
            Aimvelocity = tonumber(Args[1])
        end
        Notify("Orware", "Aimvelocity: "..tonumber(Args[1]), "", 3)
    end
}
Commands["Toggles Noclip"] = {
    ["Aliases"] = {"noclip", "nc", "nclip"};
    ["Function"] = function()
        Noclip = not Noclip 
        Notify("Orware", "Noclip: "..tostring(Noclip), "", 3)
    end
}
Commands["Sets Blinkspeed"] = {
    ["Aliases"] = {"bs", "blinkspeed"};
    ["Function"] = function(Args)
        if Args[1] then 
            Blinkspeed = tonumber(Args[1])
        end
        Notify("Orware", "Blinkspeed: "..tonumber(Args[1]), "", 3)
    end
}
Commands["Sets Aimbot Part"] = {
    ["Aliases"] = {"aimpart"};
    ["Function"] = function(Args)
        AimPart = Args[1]
        if AimPartTable[Args[1]] then 
            AimPart = AimPartTable[Args[1]] 
        end
        Notify("Orware", "AimPart: "..tostring(AimPart), "", 3)
    end
}
Commands["Removes Chairs"] = {
    ["Aliases"] = {"removechair", "rc"};
    ["Function"] = function()
        for _, v in next, workspace:GetChildren() do 
            if v:IsA("Seat") then 
                v:Destroy()
            end
        end
    end
}

RService.Stepped:Connect(function()
    if Camlock == true and CamlockTarget and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CamPart) then 
        Camera.CoordinateFrame = CF(Camera.CoordinateFrame.p, CF(CamlockTarget.Character[CamPart].Position).p)
    end
    if Noclip == true then 
        for i = 1, #Client.Character:GetChildren() do
            local CG = Client.Character:GetChildren()[i]
            if CG:IsA("BasePart") then 
                CG.CanCollide = false 
            end
        end
        pcall(function()
            if Client and Client.Backpack then 
                Client.Backpack:FindFirstChild("Glock").Barrel.CanCollide = false 
            else
                Client.Character:FindFirstChild("Glock").Barrel.CanCollide = false
            end
        end)
    end
    if Viewing == true and ViewTarget ~= nil then 
        Camera.CameraSubject = ViewTarget.Character
    end
    if Flying and Client.Character then
        if Client.Character and Client.Character:FindFirstChild("Humanoid") then
            RService.Heartbeat:Wait()
            Client.Character.Humanoid.PlatformStand = false;Client.Character.Humanoid.Sit = false
            Client.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
        end
	end
    if Client.Character:FindFirstChild("FlyPart") then
        Client.Character:FindFirstChild("FlyPart").CFrame = Client.Character.HumanoidRootPart.CFrame * CF(0, -3.5, 0)
    end
end)

print([[


]])
getgenv().Night = false -- Set to "true" if you want it to be on etc.
getgenv().Day = true -- Set to "false" if you want it to be off etc.

local RService, LService = game:GetService"RunService", game:GetService"Lighting";

RService.RenderStepped:Connect(function()
    if LService and LService.ClockTime then
        if Night == true then 
            LService.ClockTime = 3;
        elseif Day == true then 
            LService.ClockTime = 14; 
        end
    end
end)
Client.Chatted:Connect(RunCommand)
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
        if hotkey.KeyCode == Enum.KeyCode.Q then
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
game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
Notify("Orware", "Took "..string.format("%.3f", tick() - LoadingTime).." seconds to load", "" , 3)

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid then
        --print("humanoid exists")
        if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet") then
            print("bullet exists")
            if game.Players.LocalPlayer.Character.Humanoid.Bullet:findFirstChild("Trail") then
                print("trail exists")
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name == "BulletDone" then
                    print("bullet done")
                end
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet"):findFirstChild("Trail").Lifetime < 0.21 then
                    print("success!")
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Lifetime = 0.21
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Transparency = NumberSequence.new(0)
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Color = ColorSequence.new(Color3.fromRGB(0,255,0),Color3.fromRGB(255,0,0))
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name = "BulletDone"
                end
            end
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "r" then
                      game.Players.LocalPlayer.Character.Humanoid.Health = 0
 end
end)

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
        if hotkey.KeyCode == Enum.KeyCode.Y then
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

   game.StarterGui:SetCore("SendNotification", {
    Title = "BUG FIX";
    Text = "Bug Fix v2.01";
    Icon = "rbxassetid://2541869220";
    Duration = 4;
        })
	
	wait (1)
	
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



Openmain.Name = "Openmain"
Openmain.Parent = FirstScript
Openmain.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Openmain.Position = UDim2.new(0, 0, 0.54080224, 0)
Openmain.Size = UDim2.new(0, 133, 0, 48)

Open.Name = "Orware."
Open.Parent = Openmain
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.Position = UDim2.new(-0.00363767147, 0, -0.00394366682, 0)
Open.Size = UDim2.new(0, 133, 0, 48)
Open.Font = Enum.Font.GothamBold
Open.Text = "Orware."
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

local EspTable = {

[2662887206] = {
        ['Name'] = "Violence (Owner)";
        ['Colour'] = Color3.fromRGB(61, 21, 133)
    };

 [90040548] = {
        ['Name'] = "Ebay (Friend)";
        ['Colour'] = Color3.fromRGB(255, 21, 133)
    };

    [2589414633] = {
        ['Name'] = "Mah (Friend)";
        ['Colour'] = Color3.fromRGB(255,0,0)
    };
    [130438890] = {
        ['Name'] = "Linear (Main Dev)";
        ['Colour'] = Color3.fromRGB(255,255,255)
    };

     [2378545676] = {
        ['Name'] = "Jacob (Admin)";
        ['Colour'] = Color3.fromRGB(255,255,255)
    };
     [2254367838] = {
        ['Name'] = "Angel (Admin)";
        ['Colour'] = Color3.fromRGB(255,255,255)
    };
    [345636171] = {
        ['Name'] = "Aim (Co Dev)";
        ['Colour'] = Color3.fromRGB(255,255,255)
    };
}

local function EspNoteablePerson(Plr)
    local B = Instance.new('BillboardGui',Plr.Character.Head)
    B.Adornee = Plr.Character.Head
    B.Size = UDim2.new(0,100,0,100)
    B.StudsOffset = Vector3.new(0,1,0)
    B.AlwaysOnTop = true 
    local C = Instance.new('TextLabel',B)
    C.BackgroundTransparency = 1
    C.Position = UDim2.new(0,0,0,0)
    C.Size = UDim2.new(1,0,0,40)
    C.TextStrokeTransparency = 0.5
    C.TextSize = 13.8
    C.TextStrokeColor3 = EspTable[Plr.UserId].Colour
    C.TextColor3 = EspTable[Plr.UserId].Colour
    C.Text = EspTable[Plr.UserId].Name
end

local PlayersC = game:GetService'Players':GetPlayers()
for i = 1,#PlayersC do 
    local Plr = PlayersC[i]
    if EspTable[Plr.UserId] then
        local Head = Plr.Character:WaitForChild('Head',10)
        if Head then 
            EspNoteablePerson(Plr)
        end 
        Plr.CharacterAdded:Connect(function()
            Plr.Character:WaitForChild('Head',10)
            EspNoteablePerson(Plr)
        end)
    end
end 

game:GetService'Players'.PlayerAdded:Connect(function(Plr)
    if EspTable[Plr.UserId] then 
        Plr.CharacterAdded:Connect(function()
            EspNoteablePerson(Plr)
        end)
    end
end)
game:GetService'Players'.ChildAdded:Connect(function(Plr)
    if EspTable[Plr.UserId] then 
        Plr.CharacterAdded:Connect(function()
            EspNoteablePerson(Plr)
        end)
    end
end)









-- Scripts:

coroutine.wrap(MBXT_fake_script)()
local function ZTIU_fake_script() -- FirstScript.Draggable script 
	local script = Instance.new('LocalScript', FirstScript)

	frame = script.Parent.main
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(ZTIU_fake_script)()
local function ZCAEOFU_fake_script() -- Open.OpenScript 
	local script = Instance.new('LocalScript', Open)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.PlayerGui.FirstScript.main.Visible = true
	end)
end
coroutine.wrap(ZCAEOFU_fake_script)()



local LocalP = game.Players.LocalPlayer

LocalP.Character.Stamina.Changed:Connect(function()
    LocalP.Character:WaitForChild"Stamina"
    LocalP.Character.Stamina.Value = 100 
end)
LocalP.CharacterAdded:Connect(function()
    LocalP.Character:WaitForChild"Stamina"
    LocalP.Character.Stamina.Changed:Connect(function()
        LocalP.Character.Stamina.Value = 100 
    end)
end)



-- by DranghetaLurk, requested by Linear
game:GetService("RunService").RenderStepped:Connect(function()
local LService = game:GetService("Lighting")
LService.ClockTime = 14
end)

for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
    if v.Parent == game:GetService("Lighting") then
        v:Destroy()
    end
end


for _,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v.CanCollide == false and v.Parent.Name == "Tree" then
       v.Color = Color3.fromRGB(148, 190, 129)
    end
end



for _,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "PlantColor1" then
       v.Color = Color3.fromRGB(148, 190, 129)
    end
end

for _,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "PlantColor2" then
        v.Color = Color3.fromRGB(148, 190, 129)
    end
end


for _,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "PlantColor3" then
       v.Color = Color3.fromRGB(148, 190, 129)
    end
end
