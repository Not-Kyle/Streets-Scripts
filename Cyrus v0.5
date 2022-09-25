local Players = game:GetService'Players'
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local NormalWS = LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed
local NormalJP = LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower 
local NormalHip = LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight
local NormalGravity = workspace.Gravity 
local UserInput = game:GetService'UserInputService'
local CoreGui = game:GetService'CoreGui'
local TeleportService = game:GetService'TeleportService'
local RunService = game:GetService'RunService'
local Lighting = game:GetService'Lighting'
local StarterGui = game:GetService'StarterGui'
local HttpService = game:GetService'HttpService'
local TweenService = game:GetService'TweenService'
local MarketplaceService = game:GetService'MarketplaceService'
local BypassOn = false
local AirWalkOn = false
local AntiFeKill = false
local SpawnAtDeathPos = false
local WaitingToRespawn = false
local Duping = false
local Noclipping = false
local Blinking = false
local AutoSaveTools = false 
local BfgOn = false
local NormalBFG = true 
local MinigunBFG = false
local FreeCamBlink = false
local DiedHandler = nil
local BlinkSpeed = nil
local SpawnWS = nil 
local SpawnJP = nil
local SpawnHip = nil
local SpawnGravity = nil
local speedfly = 2
local CurrentAdminVersion = "Released: 0.5"
local BlinkKey = ""
local ClickTpKey = ""
local DeathPos = CFrame.new()
local WaitingToRespawnPos = CFrame.new()
local Ticker = tick()
local Cmds = {}
local AntiKillTools = {}
local GunTable = {}
local Keys = {}
local CmdsList = {"Speed // Ws [Arguments]","Bypass [On/Off]","JumpPower // Jp [Arguments]","HipHeight // Hip // Hh [Arguments]","Rejoin // Rj","AirWalk [On/Off]","Steal [plr]","Lock // Unlock","DeathSpawn [On/Off]","Btools","Reset // Re","Noclip [On/Off]","To // Goto [plr]","AntiKill","Time [Arguments]","Song [Id]","Dupe [Arguments]","Kill [plr]","Blink [Arguments]","Fly [Arguments] // Unfly","HideRadio","Loop [Ws/Jp/Hip/Gravity] // Unloop","AutoSave [On/Off]","Key [Key] [Cmd]","RemoveKey [Key]","RemoveAllKeys","ClickTp [key]","View [plr] // Unview","BFG [on/off]","Mode [Minigun/Normal]","style/void","style/wormhole","style/circle","style/shield1","style/shield2","style/sphere","style/storm","style/deathcircle","style/ufo","Style/JewUfo","Fblink [key]","Fspeed [Arguments]","Spamclick [Amount]","Disable","Esp [Player]","Unesp [Player]"}
local AirWalk = Instance.new'Part'
local AntiKill = Instance.new'Part'
local Clone = Instance.new'HopperBin'
local Destroy = Instance.new'HopperBin'
local Grab = Instance.new'HopperBin'
 
local function RunCmd(Msg)
local CommandName
local NewCommandName
local Arguments = {}
local Msg = Msg:lower()
local NewMsg = string.match(Msg,"")
    if NewMsg then
        Msg = string.gsub(Msg,""..NewMsg,"",1)
        for Arguments2 in string.gmatch(Msg,"[^%s]+") do
            table.insert(Arguments,Arguments2)
        end 
        CommandName = Arguments[1]
        table.remove(Arguments,1)
        NewCommandName = Cmds[CommandName]
        if NewCommandName then
            NewCommandName(Arguments)
        end
    end
end
 
local SavedSettings = {
    Keys = {};
    ClickTpKey = "";
    BlinkKey = "";
}
 
local NEWSETTINGS = HttpService:JSONEncode(SavedSettings)
 
local function SaveSettings()
    writefile("CyrusStreetsAdminSettings", NEWSETTINGS)
    local read = readfile("CyrusStreetsAdminSettings")
    local NewSettings = HttpService:JSONDecode(read)
    Keys = NewSettings.Keys
    ClickTpKey = NewSettings.ClickTpKey
    BlinkKey = NewSettings.BlinkKey
end
 
local function UpdateSettings()
    local OLDSETTINGS = {
        Keys = Keys;
        ClickTpKey = ClickTpKey;
        BlinkKey = BlinkKey;
    }
    local NEWUPDATE = HttpService:JSONEncode(OLDSETTINGS)
    writefile("CyrusStreetsAdminSettings", NEWUPDATE)
end
 
if writefile then
    local function TEST()
        local TESTING = readfile("CyrusStreetsAdminSettings")
        if not TESTING then
            return false
        else
            return true
        end
    end
    local work = pcall(TEST)
    if work then
        local function working()
            local read = readfile("CyrusStreetsAdminSettings")
            local NewSettings = HttpService:JSONDecode(read)
            Keys = NewSettings.Keys
            ClickTpKey = NewSettings.ClickTpKey
            BlinkKey = NewSettings.BlinkKey
        end
        working()
    elseif not work then
        SaveSettings()
    end
else
    Keys = {};
    ClickTpKey = "";
    BlinkKey = ""
end
 
local function PlrFinder(Plr)
local PlrTable = {}
local NewPlr = Plr:lower() 
    for _,v in pairs(Players:GetPlayers()) do 
        if string.lower(v.Name):sub(1,#NewPlr) == string.lower(NewPlr) then 
            table.insert(PlrTable,v)
            return PlrTable
        end
    end
end
 
local function God()
    local Original = LP.Character:FindFirstChildWhichIsA'Humanoid'
    local New = Original:Clone()
    New.Parent = LP.Character
    Original:Destroy()
    workspace.CurrentCamera.CameraSubject = LP.Character
    LP.Character.Animate.Disabled = true
    LP.Character.Animate.Disabled = false
    LP.Character:FindFirstChildWhichIsA'Humanoid'.DisplayDistanceType = 'None'
end
 
local function notif(title,message,length,icon)
    StarterGui:SetCore("SendNotification",{['Title'] = title;['Text'] = message;['Duration'] = length;['Icon'] = icon;})
end
 
local function tools()
    local chartools = false
    local backpacktools = false
    for _,v in pairs(LP.Character:GetDescendants()) do
        if v:IsA'Tool' then
            if v then
                chartools = true
            else
                chartools = false
            end
        end
    end
    for _,g in pairs(LP.Backpack:GetDescendants()) do
        if g:IsA'Tool' then
            if g then
                backpacktools = true
            else
                backpacktools = false
            end
        end
    end
    return chartools or backpacktools
end
 
local function Unequip()
    for _,v in pairs(LP.Character:GetChildren()) do 
        if v:IsA'Tool' then
            v.Parent = LP.Backpack
        end
    end
end
 
local function Style1(Amount)
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(0,0.6,Amount * i)
            BfgOn = true 
            v.Parent = LP.Character
        end
    end
end
 
local function Style2()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(1 * i,1.5,0)
            BfgOn = true
            v.Parent = LP.Character
        end
    end
end
 
local function Style3()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty"  then 
            v.Grip = CFrame.Angles(5,50*i,0) + Vector3.new(0,0,0.6)
            BfgOn = true
            v.Parent = LP.Character
        end
    end
end
 
local function Style4(Amount)
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(30,Amount*i,0) + Vector3.new(10,0.5,0.6)
            BfgOn = true
            v.Parent = LP.Character
        end
    end
end
 
local function Style5()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(5*i,2*i,7*i) + Vector3.new(0,5,0)
            BfgOn = true
            v.Parent = LP.Character
        end
    end
end
 
local function Style6()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then
            v.Grip = CFrame.Angles(5*i,2040/i,2*i/i*10)
            BfgOn = true
            v.Parent = LP.Character
        end
    end
end
 
local function Style7()
Unequip()
UnAnim()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(5,200*i,2*i)
            BfgOn = true 
            v.Parent = LP.Character
        end
    end 
end
 
local function Style8()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" or v.Name == "BoomBox" or v.Name == "Knife" then 
            v.Grip = CFrame.Angles(0.1/i*i,200*i,0) + Vector3.new(0,0,5)
            BfgOn = true 
            v.Parent = LP.Character
        end
    end
end
 
local function Style9()
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" or v.Name == "BoomBox" then 
            v.Grip = CFrame.Angles(4/i*i,200*i,0) + Vector3.new(0,0,5)
            BfgOn = true 
            v.Parent = LP.Character
        end
    end
end
 
local function Style11()
BfgOn = true
Unequip()
    for i,v in pairs(LP.Backpack:GetChildren()) do 
        if v.Name == "BoomBox" or v.Name == "Shotty" then 
            v.Grip = CFrame.Angles(5/i*i,200*i,0) + Vector3.new(0,0,5)
            v.Parent = LP.Character
        end
    end
end
 
local function View(Plr)
    if Plr.Character then 
        workspace.CurrentCamera.CameraSubject = Plr.Character
    end
end
 
 
local function Fblink()
    if workspace:FindFirstChild'BlinkPart' then
        workspace.BlinkPart:Destroy()
    end
    local speedget = speedfly
    local CameraPart = Instance.new("Part",workspace)
    CameraPart.CanCollide = false
    CameraPart.CFrame = LP.Character.Head.CFrame
    CameraPart.Locked = true
    CameraPart.Transparency = 1
    CameraPart.Size = Vector3.new(1, 1, 1)
    CameraPart.Name = "BlinkPart"
    workspace.CurrentCamera.CameraSubject = CameraPart
    local T = CameraPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = speedget
    local function FreeCam()
        LP.Character.Head.Anchored = true
        doFREECAM = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
        BV.velocity = Vector3.new(0, 0.1, 0)
        end
        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not doFREECAM
                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                SPEED = 0
                BG:destroy()
                BV:destroy()
            end)
        end
    local function FFly(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = speedfly
        elseif KEY:lower() == 's' then
            CONTROL.B = -speedfly
        elseif KEY:lower() == 'a' then
            CONTROL.L = -speedfly 
        elseif KEY:lower() == 'd' then 
            CONTROL.R = speedfly
        end
    end
    local function UnFFly(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end
    FreeCam()
    FreeCamBlink = true
    Mouse.KeyDown:Connect(FFly)
    Mouse.KeyUp:Connect(UnFFly)
end
 
local function UnFblink()
local OldPos = workspace.BlinkPart.CFrame
    LP.Character.Head.Anchored = false
    if workspace.BlinkPart then 
        workspace.BlinkPart:Destroy()
    end
    workspace.CurrentCamera.CameraSubject = LP.Character
    FreeCamBlink = false
    if game.PlaceId ~= 455366377 then 
        LP.Character.HumanoidRootPart.CFrame = OldPos
    else 
        local BlinkPartCFrame = {}
        BlinkPartCFrame.CFrame = OldPos
        local Speed = 2.3
        local FinalTp = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), BlinkPartCFrame)
        FinalTp:Play()
    end
end
 
local function esp()
    for _,createESP in pairs(LP.Character:GetDescendants()) do
    if createESP.Name == "Torso" or createESP.Name == "Left Leg" or createESP.Name == "Right Leg" or createESP.Name == "UpperTorso" or createESP.Name == "LowerTorso" or createESP.Name == "RightLowerLeg" or createESP.Name == "RightUpperLeg" or createESP.Name == "RightFoot"or createESP.Name == "UpperTorso" or createESP.Name == "LeftFoot" or createESP.Name == "LeftLowerLeg" or createESP.Name == "LeftUpperLeg" or createESP.Name == "Left Arm" or createESP.Name == "Right Arm" then
        if createESP.Name ~= "HumanoidRootPart" and createESP.Name ~= "Handle" then
            local espBOX = Instance.new("BoxHandleAdornment",CoreGui.RobloxGui)
                espBOX.Name = "[ BLINK ] "..LP.Name
                espBOX.Adornee = createESP
                espBOX.AlwaysOnTop = true
                espBOX.ZIndex = 0
                espBOX.Size = Vector3.new(createESP.Size.X,2,createESP.Size.Z)
                espBOX.Transparency = 0.5
                espBOX.Color = BrickColor.new(255, 0, 0 )
            local AboveHead = Instance.new("BillboardGui",CoreGui.RobloxGui)
                AboveHead.Adornee = LP.Character.Head
                AboveHead.Name = "[ BLINK ] "..LP.Name
                AboveHead.Size = UDim2.new(0, 100, 0, 100)
                AboveHead.StudsOffset = Vector3.new(0, 1, 0)
                AboveHead.AlwaysOnTop = true
                AboveHead.Name = "[ BLINK ] "..LP.Name
            local Info = Instance.new("TextLabel",AboveHead)
                Info.BackgroundTransparency = 1
                Info.Name = "[ BLINK ] "..LP.Name
                Info.Position = UDim2.new(0, 0, 0, 0)
                Info.Size = UDim2.new(1, 0, 0, 40)
                Info.TextColor3 = Color3.fromRGB(200,200,200)
                Info.TextStrokeTransparency = 0.5
                Info.TextSize = 15
                Info.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
                Info.Text = "[ Blink ] "..LP.Name
            end
        end
    end
end
 
local function unesp()
    for _,v in pairs(game:GetService'CoreGui':GetDescendants()) do 
        if v.Name == "[ BLINK ] "..LP.Name then 
            v:Destroy()
        end
    end
end
 
local function HotkeyHandler(Key)
    for _,v in pairs(Keys) do 
        local currentKey = string.match(v, "[%a%d]+$")
        if string.len(currentKey) == 1 then
            if Key == string.sub(v,#v,#v) then
                local CMD = string.match(v, "^[%w%s]+")
                if string.sub(string.lower(tostring(CMD)),1,3) == "fly" then
                    if flying then 
                        flying = false
                    else
                        RunCmd(tostring(CMD))
                    end
                    elseif tostring(CMD) == "noclip" then
                        if Noclipping then 
                        RunCmd("noclip off")
                    else
                        RunCmd("noclip on")
                    end
                    elseif tostring(CMD) == "bypass" then
                        if BypassOn then
                        BypassOn = false 
                        LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = false 
                    else 
                        BypassOn = true 
                        LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true   
                        end
                    elseif tostring(CMD) == "airwalk" then
                        if AirWalkOn then
                            AirWalkOn = false
                        else
                            AirWalkOn = true
                        end
                    else    
                    RunCmd(tostring(CMD))
                end
            end
        end
    end
    if Key == ClickTpKey and Mouse.Target and game.PlaceId ~= 455366377 then
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0))
    end
    if Key == BlinkKey then
        if FreeCamBlink then 
            UnFblink()
            unesp()
        else
            Fblink()
            esp()
        end
    end
    if Key == ClickTpKey and Mouse.Target and game.PlaceId == 455366377 then
        local ClickTp = {}
        local Speed = 2.3
        ClickTp.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0))
        local ClickTpFunction = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), ClickTp)
        ClickTpFunction:Play()
    end
end
 
local function Jump(Key,chatting)
    if Key.KeyCode == Enum.KeyCode.Space and LP.Character:FindFirstChildWhichIsA'Humanoid' and BypassOn and not chatting then
        LP.Character:FindFirstChildWhichIsA'Humanoid'.Jump = true
    end
end
 
local function Looped()
    pcall(function()
        if Noclipping then 
            for _,v in pairs(LP.Character:GetDescendants()) do 
                if v:IsA'BasePart' then 
                    v.CanCollide = false 
                end
            end
        end
    end)
end
 
local function ChatHandler(Msg)
    Msg = Msg:lower()
    RunCmd(Msg)
        if Msg:lower():sub(1,10) == "style/void" then 
        if not tonumber(Msg:sub(12)) then 
            Style1(0.6) 
        else
            Style1(tonumber(Msg:sub(12)))
        end
    end
    if Msg:lower():sub(1,13) == "style/shield1" then
        Style2()
    end
    if Msg:lower():sub(1,14) == "style/wormhole" then 
        Style3()
    end
    if Msg:lower():sub(1,12) == "style/circle" then
        if not tonumber(Msg:sub(14)) then 
            Style4(100)
        else 
            Style4(tonumber(Msg:sub(14)))
        end
    end
    if Msg:lower():sub(1,12) == "style/sphere" then 
        Style5()
    end
    if Msg:lower():sub(1,11) == "style/storm" then
        Style6()
    end
    if Msg:lower():sub(1,13) == "style/shield2" then
        Style7()
    end
    if Msg:lower():sub(1,17) == "style/deathcircle" then
        Style8()
    end
    if Msg:lower():sub(1,9) == "style/ufo" then
        Style9()
    end
    if Msg:lower():sub(1,12) == "style/jewufo" then
        Style11()
    end
end
 
local function Died()
    GunTable = {}
    if SpawnAtDeathPos then 
        DeathPos = LP.Character.HumanoidRootPart.CFrame
    end
    for _,v in pairs(LP.Character:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" and game.PlaceId ~= 455366377 then
            v.Parent = LP 
        end
    end
    for _,g in pairs(LP.Backpack:GetChildren()) do 
        if g:IsA'Tool' and g.Name == "Glock" or g.Name == "Uzi" or g.Name == "Sawed Off" or g.Name == "Shotty" and game.PlaceId ~= 455366377  then
            g.Parent = LP 
        end
    end
    if AutoSaveTools then 
        for _,v in pairs(LP.Backpack:GetChildren()) do 
            if v:IsA'Tool' and game.PlaceId ~= 455366377 then 
                v.Parent = LP
            end
        end
    end
end
 
local function CharAdded(b)
    if b:IsA'Tool' and b.Name == "Glock" or b.Name == "Uzi" or b.Name == "Sawed Off" or b.Name == "Shotty" and BfgOn and not Duping then
        for _,c in pairs(LP.Backpack:GetChildren()) do
            if c:IsA'Tool' and c.Name == "Glock" or c.Name == "Uzi" or c.Name == "Sawed Off" or c.Name == "Shotty" and BfgOn and not Duping then
                c.Parent = LP.Character
            end
        end
    end
end
 
local function Modes()
    if BfgOn and NormalBFG and not MinigunBFG then
        for _,b in pairs(LP.Character:GetChildren()) do 
            if b:IsA'Tool' and b.Name == "Glock" or b.Name == "Uzi" or b.Name == "Sawed Off" or b.Name == "Shotty" then
                b.Fire:FireServer(Mouse.Hit)
            end
        end
    end
    if BfgOn and MinigunBFG and not NormalBFG then
        for _,b in pairs(LP.Character:GetChildren()) do 
            if b:IsA'Tool' and b.Name == "Glock" or b.Name == "Uzi" or b.Name == "Sawed Off" or b.Name == "Shotty" then
                b.Fire:FireServer(Mouse.Hit)
                wait()
            end
        end
    end
end
 
local function UziDisable(v)
    if v.Name == "Uzi" then 
        if not v.Parent == LP.Character or not Players:GetPlayerFromCharacter(v.Parent):IsFriendsWith(LP.UserId)then 
            v.Fire:FireServer'rip your gun - Cyrus' 
        end
    end
end
 
local function Added()
    repeat wait(0.5) until LP.Character:FindFirstChildWhichIsA'Humanoid' and LP.Character.Animate
    DiedHandler = LP.Character:FindFirstChildWhichIsA'Humanoid'.Died:Connect(Died)
    AddedCheck = LP.Character.ChildAdded:Connect(CharAdded)
    if LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked then 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = SpawnWS
        LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = SpawnJP
        LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = SpawnHip
        workspace.Gravity = SpawnGravity
    end
    for _,v in pairs(LP:GetChildren()) do 
        if v:IsA'Tool' and v.Name == "Glock" or v.Name == "Uzi" or v.Name == "Sawed Off" or v.Name == "Shotty" then
            v.Parent = LP.Backpack
        end
    end
    if SpawnAtDeathPos and game.PlaceId ~= 455366377 then 
        LP.Character.HumanoidRootPart.CFrame = DeathPos
    elseif SpawnAtDeathPos and game.PlaceId == 455366377 then
        local TpToDeath = {}
        TpToDeath.CFrame = DeathPos
        local Speed = 2.5
        local FinalTp = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), TpToDeath)
        FinalTp:Play()
    end
    if BypassOn then 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true
    end
    if WaitingToRespawn and game.PlaceId ~= 455366377 then
        LP.Character.HumanoidRootPart.CFrame = WaitingToRespawnPos
        WaitingToRespawn = false
    elseif WaitingToRespawn and game.PlaceId == 455366377 then 
        local DeathPosCFrame = {}
        DeathPosCFrame.CFrame = WaitingToRespawnPos
        local Speed = 2.5
        local FinalTp = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), DeathPosCFrame)
        FinalTp:Play()
        WaitingToRespawn = false
    end
    if AutoSaveTools then
        for _,v in pairs(LP:GetChildren()) do 
            if v:IsA'Tool' then 
                v.Parent = LP.Backpack
            end
        end
    end
end
 
Cmds.bypass = function(Arguments)
    if Arguments[1] then
        if string.lower(tostring(Arguments[1])) == "on" then
            BypassOn = true 
            LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true 
        elseif string.lower(tostring(Arguments[1])) == "off" then
            BypassOn = false
            LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = false
        end
    end
end
 
Cmds.disable = function(Arguments) 
    if game.PlaceId ~= 455366377 then 
              notif("WARNING","This will only work on streets as it disables others Uzis.",10,"rbxassetid://1281286925")
        return
    end
    workspace.DescendantAdded:Connect(UziDisable)
end
    
Cmds.spamclick = function(Arguments)
    if Arguments[1] then 
        for _ = 1,Arguments[1] do 
            for _,v in pairs(LP.Backpack:GetChildren()) do 
                if v:IsA'Tool' and v:FindFirstChild'Click' then 
                    v.Click:FireServer()
                end
            end
            for _,v in pairs(LP.Character:GetChildren()) do 
                if v:IsA'Tool' and v:FindFirstChild'Click' then
                    v.Click:FireServer()
                end
            end
            wait()
        end
    end
end
 
Cmds.speed = function(Arguments)
    if Arguments[1] then 
        BypassOn = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[1]
    end
end
 
Cmds.ws = function(Arguments)
    if Arguments[1] then 
        RunCmd("speed "..Arguments[1])
    end
end
 
Cmds.jumppower = function(Arguments)
    if Arguments[1] then 
        BypassOn = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[1]
    end
end
 
Cmds.jp = function(Arguments)
    if Arguments[1] then
        RunCmd("jumppower "..Arguments[1])
    end
end
 
Cmds.hipheight = function(Arguments)
    if Arguments[1] then 
        BypassOn = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = Arguments[1]
    end
end
 
Cmds.hip = function(Arguments)
    if Arguments[1] then 
        RunCmd("hipheight "..Arguments[1])
    end
end
 
Cmds.hh = function(Arguments)
    if Arguments[1] then 
        RunCmd("hipheight "..Arguments[1])
    end
end
 
Cmds.grav = function(Arguments)
    if Arguments[1] then
        workspace.Gravity = Arguments[1]
    end
end
 
Cmds.gravity = function(Arguments)
    if Arguments[1] then 
        RunCmd("grav "..Arguments[1])
    end
end
 
Cmds.rejoin = function(Arguments)
    TeleportService:Teleport(game.PlaceId)
end
 
Cmds.rj = function(Arguments)
    RunCmd("rejoin")
end
 
Cmds.airwalk = function(Arguments)
    if Arguments[1] then 
        if tostring(string.lower(Arguments[1])) == "on" then
            AirWalkOn = true 
            AirWalk.Anchored = true 
            AirWalk.Size = Vector3.new(5,1,5)
            AirWalk.Transparency = 1 
            AirWalk.Parent = workspace
        elseif tostring(string.lower(Arguments[1])) == "off" then
            AirWalkOn = false
            AirWalk.Parent = nil
        end
    end
end
 
Cmds.steal = function(Arguments)
    if Arguments[1] and writefile then
        for _,v in pairs(PlrFinder(Arguments[1])) do
            for _,x in pairs(v.Character:GetDescendants()) do
                if x:IsA'Sound' and not string.find(x.SoundId,"rbxasset://sounds.+") then 
                    local Id = MarketplaceService:GetProductInfo(x.SoundId:match"%d+")
                    if Id.AssetTypeId == 3 then
                        writefile("AudioLog".." From "..v.Name.." "..math.random(1,999999)..".txt","Stolen ID: "..Id.AssetId.." From: "..v.Name)
                    end     
                end
            end
        end
    end
end
 
Cmds.btools = function(Arguments)
    if game.PlaceId ~= 455366377 then 
        BypassOn = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
        Clone.Parent = LP.Backpack 
        Destroy.Parent = LP.Backpack 
        Grab.Parent = LP.Backpack
        Clone.BinType = "Clone" 
        Destroy.BinType = "Hammer"
        Grab.BinType = "Grab"
    end 
end
 
Cmds.lock = function(Arguments)
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA'BasePart' then 
            v.Locked = true 
        end
    end
end
 
Cmds.unlock = function(Arguments)
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA'BasePart' then 
            v.Locked = false 
        end
    end
end
 
Cmds.deathspawn = function(Arguments)
    if Arguments[1] then
        if string.lower(tostring(Arguments[1])) == "on" then 
            BypassOn = true 
            SpawnAtDeathPos = true
        elseif string.lower(tostring(Arguments[1])) == "off" then 
            SpawnAtDeathPos = false
        end
    end
end
 
Cmds.reset = function(Arguments)
    WaitingToRespawn = true 
    BypassOn = true 
    WaitingToRespawnPos = LP.Character.HumanoidRootPart.CFrame
    LP.Character:BreakJoints()
end
 
Cmds.re = function(Arguments)
    RunCmd("reset")
end
 
Cmds.noclip = function(Arguments)
    if Arguments[1] then 
        if tostring(string.lower(Arguments[1])) == "on" then
            Noclipping = true
            LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true 
            BypassOn = true 
            notif("Command: Noclip: on","Noclip is on.",5,"rbxassetid://1281284684")
        elseif tostring(string.lower(Arguments[1])) == "off" then 
            Noclipping = false
            notif("Command: Noclip: off","Noclip is off.",5,"rbxassetid://1281284684")
        end
    end
end
 
Cmds.to = function(Arguments)
    if Arguments[1] then
        if game.PlaceId ~= 455366377 then 
        for _,v in pairs(PlrFinder(Arguments[1])) do
            LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true 
            BypassOn = true 
            repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
            LP.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame          
        end
        elseif Arguments[1] and game.PlaceId == 455366377 then
            for _,v in pairs(PlrFinder(Arguments[1])) do 
            local TpToPlayer = {}
            TpToPlayer.CFrame = v.Character.HumanoidRootPart.CFrame
            local Speed = 2.5
            local FinalTp = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), TpToPlayer)
                FinalTp:Play()
            end
        end
    end
end
 
Cmds.goto = function(Arguments)
    if Arguments[1] then
        RunCmd("to "..Arguments[1])
    end
end
 
Cmds.antikill = function(Arguments)
AntiKill.Size = Vector3.new(5,1,5)
AntiKill.Transparency = 1
AntiKill.Anchored = true 
 
for _,v in pairs(LP.Backpack:GetChildren()) do 
    if v:IsA'Tool' then 
        table.insert(AntiKillTools,v)
    end
end
 
local function ToolAdded(h)
    if h:IsA'Tool' then
        for _,v in pairs(AntiKillTools) do if h == v then return end end 
            AntiKill.Parent = workspace
            AntiKill.CFrame = LP.Character.Head.CFrame + Vector3.new(0,-4,0)
            LP.Character.HumanoidRootPart.CFrame = AntiKill.CFrame
            LP.Character.Head.Anchored = true
            AntiKill.Parent = nil 
            repeat wait() until not LP.Character:FindFirstChild(h)
            LP.Character.Head.Anchored = false
            table.insert(AntiKillTools,h)
        end
    end
    LP.Character.ChildAdded:Connect(ToolAdded)
end
 
Cmds.time = function(Arguments)
    if Arguments[1] then
        Lighting.ClockTime = Arguments[1]
    end
end
 
Cmds.song = function(Arguments)
    if Arguments[1] then
        LP.Character:FindFirstChildWhichIsA'Humanoid':UnequipTools()
        local BoomBox = LP.Backpack:FindFirstChild'BoomBox'
        if BoomBox then 
            BoomBox.Parent = LP.Character
            BoomBox:FindFirstChildWhichIsA'RemoteEvent':FireServer("PlaySong",string.rep('0',1638)..Arguments[1])
            repeat wait() until LP.Character.Torso:FindFirstChildWhichIsA'Sound' and LP.Character.Torso:FindFirstChildWhichIsA'Sound'.Playing
            if BoomBox:FindFirstChild'Server' then 
                BoomBox.Server:Destroy()
            end 
            if BoomBox:FindFirstChild'Client' then
                BoomBox.Client:Destroy()
            end
            if LP.PlayerGui:FindFirstChild'ChooseSongGui' then 
                LP.PlayerGui.ChooseSongGui:Destroy()
            end
            BoomBox.Parent = LP.Backpack
        end
    end
end
 
Cmds.dupe = function(Arguments)
    if Arguments[1] and game.PlaceId ~= 455366377 then
      Duping = true
local dupe = LP.Character.HumanoidRootPart.CFrame   
local multiplier = Arguments[1]
for i = 1,multiplier do 
    for _,v in pairs(LP.Backpack:GetChildren()) do 
    if v:IsA'Tool' then 
        v.Parent = LP
    end
end
    wait(0.1)
    LP.Character:BreakJoints()
    LP.Character.Parent = nil
    wait(8)
end
    wait(0.1)
    for _,v in pairs(LP:GetChildren()) do 
        if v:IsA'Tool' then 
            v.Parent = LP.Backpack
                LP.Character.HumanoidRootPart.CFrame = dupe
                Duping = false 
            end
        end
    end
end
 
Cmds.kill = function(Arguments)
    if Arguments[1] and game.PlaceId ~= 455366377 then
        for _,v in pairs(PlrFinder(Arguments[1])) do
            if not tools() then
                    notif("WARNING","You need a tool in your backpack to use the kill command.",5,"rbxassetid://1281286925")
                else
                    God()
                for _,v in pairs(LP.Backpack:GetChildren())do
                    LP.Character.Humanoid:EquipTool(v)
                end
                Noclipping = false
                WaitingToRespawn = true
                BypassOn = true 
                repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
                RunCmd("fly")
                RunCmd("blink "..0.2)
                WaitingToRespawnPos = LP.Character.HumanoidRootPart.CFrame
                repeat wait() LP.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame + Vector3.new(0,-2,0) until not LP.Character:FindFirstChildWhichIsA'Tool' or v.Character:FindFirstChildWhichIsA'Humanoid'.Health <= 0 
                LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000,-495,100000))
                wait(1)
                LP.Character:BreakJoints()
                LP.Character.Parent = nil
                Blinking = false
            end         
        end
    end
end
 
 
Cmds.blink = function(Arguments)
    if Arguments[1] then 
        Blinking = true
        BlinkSpeed = Arguments[1] 
    else 
        Blinking = true 
        BlinkSpeed = 0.3
    end
end
 
Cmds.unblink = function(Arguments)
    Blinking = false
end
 
Cmds.fly = function(Arguments)
    BypassOn = true 
    LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true
    repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked 
    pcall(function()
        local speedget
        if Arguments[1] then
            speedfly = Arguments[1]
        else
            speedfly = 1
        end
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local SPEED = speedget
        
        local function fly()
            flying = true
            local BG = Instance.new('BodyGyro', LP.Character.Head)
            local BV = Instance.new('BodyVelocity', LP.Character.Head)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = LP.Character.Head.CFrame
            BV.velocity = Vector3.new(0, 0.1, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            spawn(function()
            repeat wait()
            LP.Character:FindFirstChildWhichIsA'Humanoid'.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
            SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
            SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
            BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not flying
                    CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    SPEED = 0
                    BG:destroy()
                    BV:destroy()
                    LP.Character:FindFirstChildWhichIsA'Humanoid'.PlatformStand = false
                end)
            end
        local function f(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = speedfly
            elseif KEY:lower() == 's' then
                CONTROL.B = -speedfly
            elseif KEY:lower() == 'a' then
                CONTROL.L = -speedfly 
            elseif KEY:lower() == 'd' then 
                CONTROL.R = speedfly
            end
        end
        local function u(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            end
        end
        Mouse.KeyDown:Connect(f)
        Mouse.KeyUp:Connect(u)
        fly()
    end)
end
 
Cmds.unfly = function(Arguments)
    flying = false
end
 
Cmds.hideradio = function(Arguments)
    if LP.Character:FindFirstChild'BoomBox' then
        if LP.Character.BoomBox:FindFirstChild'Client' then 
            LP.Character.BoomBox.Client:Destroy()
        end
        if LP.Character.BoomBox:FindFirstChld'Server' then 
            LP.Character.BoomBox.Server:Destroy()
        end
        if LP.PlayerGui:FindFirstChild'ChooseSongGui' then 
            LP.PlayerGui.ChooseSongGui:Destroy()
        end
    end
end
 
Cmds.loop = function(Arguments)
    if Arguments[1] and Arguments[2] then 
        LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.Robloxlocked 
        BypassOn = true
        if string.lower(tostring(Arguments[1])) == "ws" or string.lower(tostring(Arguments[1])) == "speed" then 
            LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[2]
            SpawnWS = Arguments[2] or NormalWS
        elseif string.lower(tostring(Arguments[1])) == "jp" or string.lower(tostring(Arguments[1])) == "jumppower" then 
            LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[2]
            SpawnJP = Arguments[2] or NormalJP
        elseif string.lower(tostring(Arguments[1])) == "hip" or string.lower(tostring(Arguments[1])) == "hh" or string.lower(tostring(Arguments[1])) == "hipheight" then
            LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = Arguments[2] 
            SpawnHip = Arguments[2] or NormalHip
        elseif string.lower(tostring(Arguments[1])) == "grav" or string.lower(tostring(Arguments[1])) == "gravity" then 
            workspace.Gravity = Arguments[2] 
            SpawnGravity = Arguments[2] or NormalGravity 
        end
    end
end
 
Cmds.unloop = function(Arguments)
    SpawnWS = NormalWS
    SpawnJP = NormalJP
    SpawnHip = NormalHip
    SpawnGravity = NormalGravity
end
 
Cmds.autosave = function(Arguments)
    if Arguments[1] then
        if tostring(string.lower(Arguments[1])) == "on" then 
            AutoSaveTools = true 
        elseif tostring(string.lower(Arguments[1])) == "off" then
            AutoSaveTools = false
        end
    end
end
 
Cmds.key = function(Arguments)
    if Arguments[1] and Arguments[2] then
        for x,v in pairs(Keys) do
        local Key = string.match(v, "[%a%d]+$")
        if Key == string.lower(tostring(Arguments[1])) then
                table.remove(Keys,x)
            end
        end
        local hotkeyKEY = string.sub(tostring(Arguments[1]), 1, 3)
        table.remove(Arguments, 1)
        local hotkeyCMD = table.concat(Arguments, " ")
        table.insert(Keys, hotkeyCMD.."||"..hotkeyKEY)
        UpdateSettings()
    end
end 
 
 
Cmds.removekey = function(Arguments)
    if Arguments[1] then
        for x,v in pairs(Keys) do
            local Key = string.match(v, "[%a%d]+$")
            if Key == string.lower(tostring(Arguments[1])) then
                table.remove(Keys,x)
                UpdateSettings()
            end
        end
    end
end
 
Cmds.removeallkeys = function(Arguments)
    Keys = {}
    ClickTpKey = ""
    UpdateSettings()
end
 
Cmds.clicktp = function(Arguments)
    if Arguments[1] then
        LP.Character:FindFirstChildWhichIsA'Humanoid'.RobloxLocked = true 
        repeat wait() until LP.Character:FindFirstChildWhichIsA'Humanoid'.Robloxlocked 
        BypassOn = true
        ClickTpKey = string.sub(tostring(Arguments[1]), 1, 1)
        UpdateSettings()
    end
end
 
Cmds.view = function(Arguments)
    if Arguments[1] then
        for _,v in pairs(PlrFinder(Arguments[1])) do
            View(v)
        end
    end
end
 
Cmds.unview = function(Arguments)
    View(LP)
end
 
Cmds.bfg = function(Arguments)
    if Arguments[1] and game.PlaceId ~= 455366377 then 
        if string.lower(tostring(Arguments[1])) == "on" then
            BfgOn = true 
        elseif string.lower(tostring(Arguments[1])) == "off" then
            BfgOn = false
        end
    end
end
 
Cmds.mode = function(Arguments)
    if Arguments[1] then 
        if string.lower(tostring(Arguments[1])) == "normal" then
            NormalBFG = true 
            MinigunBFG = false 
        elseif string.lower(tostring(Arguments[1])) == "minigun" then
            MinigunBFG = true 
            NormalBFG = false
        end 
    end
end
 
Cmds.fblink = function(Arguments)
    if Arguments[1] then 
        BlinkKey = Arguments[1]:sub(1,1)
        UpdateSettings()
    end
end
 
Cmds.fspeed = function(Arguments)
    if Arguments[1] then
        speedfly = Arguments[1]
    end
end
 
Cmds.esp = function(Arguments)
    if Arguments[1] then
        for _,v in pairs(PlrFinder(Arguments[1])) do 
            for i,createESP in pairs(v.Character:GetDescendants()) do
                if createESP.Name == "Torso" or createESP.Name == "Left Leg" or createESP.Name == "Right Leg" or createESP.Name == "UpperTorso" or createESP.Name == "LowerTorso" or createESP.Name == "RightLowerLeg" or createESP.Name == "RightUpperLeg" or createESP.Name == "RightFoot"or createESP.Name == "UpperTorso" or createESP.Name == "LeftFoot" or createESP.Name == "LeftLowerLeg" or createESP.Name == "LeftUpperLeg" or createESP.Name == "Left Arm" or createESP.Name == "Right Arm" then
                    if createESP.Name ~= "HumanoidRootPart" and createESP.Name ~= "Handle" then
                    local espBOX = Instance.new("BoxHandleAdornment",CoreGui.RobloxGui)
                        espBOX.Name = "[ESP]"..v.Name
                        espBOX.Adornee = createESP
                        espBOX.AlwaysOnTop = true
                        espBOX.ZIndex = 0
                        espBOX.Size = Vector3.new(createESP.Size.X,2,createESP.Size.Z)
                        espBOX.Transparency = 0.5
                        espBOX.Color = BrickColor.new(255, 0, 0 )
                    local AboveHead = Instance.new("BillboardGui",CoreGui.RobloxGui)
                        AboveHead.Adornee = v.Character.Head
                        AboveHead.Name = "[ESP]"..v.Name
                        AboveHead.Size = UDim2.new(0, 100, 0, 100)
                        AboveHead.StudsOffset = Vector3.new(0, 1, 0)
                        AboveHead.AlwaysOnTop = true
                    local Info = Instance.new("TextLabel",AboveHead)
                        Info.BackgroundTransparency = 1
                        Info.Name = "[ESP]"..v.Name
                        Info.Position = UDim2.new(0, 0, 0, 0)
                        Info.Size = UDim2.new(1, 0, 0, 40)
                        Info.TextColor3 = Color3.fromRGB(200,200,200)
                        Info.TextStrokeTransparency = 0.5
                        Info.TextSize = 15
                        Info.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
                        Info.Text = v.Name
                        local function Removed1()
                            current = false
                            espBOX:Destroy()
                            AboveHead:Destroy()
                        end
                        v.CharacterRemoved:Connect(Removed1)
                        local function Removed2(plr)
                            if plr == v then
                                current = false
                                espBOX:Destroy()
                                AboveHead:Destroy()
                            end
                            Players.PlayerRemoving:Connect(Removed2)
                        end
                    end
                end
            end
        end
    end
end
 
Cmds.unesp = function(Arguments)
    if not Arguments[1] then
        for _,v in pairs(CoreGui:GetDescendants()) do
            if string.sub(v.Name, 1, 5) == "[ESP]" then
                v:Destroy()
            end
        end
    else
        for _,v in pairs(CoreGui:GetDescendants()) do
            if string.sub(v.Name, 1, 5) == "[ESP]" then
                for _,a in pairs(PlrFinder(Arguments[1])) do
                    if string.sub(v.Name, 6) == a.Name then
                        v:Destroy()
                    end
                end
            end
        end
    end
end
 
local Cframe = Instance.new("Frame",CoreGui.RobloxGui)
local CText = Instance.new("TextBox",Cframe)
 
Cframe.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Cframe.BackgroundTransparency = 0.20000000298023
Cframe.BorderSizePixel = 0
Cframe.Position = UDim2.new(0, 0, 1, 0)
Cframe.Size = UDim2.new(0, 270, 0, 35)
Cframe.Name = math.random(1,3000000)
 
CText.BackgroundColor3 = Color3.new(0, 0.000738177, 0.000738177)
CText.BorderSizePixel = 0
CText.Position = UDim2.new(0, 5, 0, 5)
CText.Size = UDim2.new(0, 260, 0, 25)
CText.Font = Enum.Font.SourceSansLight
CText.Text = ""
CText.TextColor3 = Color3.new(1, 1, 1)
CText.TextScaled = true
CText.TextSize = 14
CText.TextWrapped = true
CText.Name = math.random(1,3000000)
 
local CmdFrame = Instance.new("Frame",Cframe)
CmdFrame.BackgroundColor3 = Color3.new(0, 0.000738177, 0.000738177)
CmdFrame.BorderSizePixel = 0
CmdFrame.Position = UDim2.new(0, 0, -4, 0)
CmdFrame.Size = UDim2.new(1, 0, 4, 0)
CmdFrame.Visible = false
 
local function Create(Text)
    local CmdList = Instance.new("TextLabel",CmdFrame)
    CmdList.BackgroundColor3 = Color3.new(0.666667, 0, 0)
    CmdList.BackgroundTransparency = 0.20000000298023
    CmdList.BorderSizePixel = 0
    CmdList.Position = UDim2.new(-10, 0, 0, 0)
    CmdList.Size = UDim2.new(1, 0, 0, 20)
    CmdList.Font = Enum.Font.SourceSansLight
    CmdList.Text = Text
    CmdList.TextColor3 = Color3.new(0.952941, 0.952941, 0.952941)
    CmdList.TextScaled = true
    CmdList.TextWrapped = true
end
 
for _,cmds in pairs(CmdsList) do
    Create(cmds)
end
 
local function Changed()
pcall(function() 
    if CText.Text ~= "" then
        CmdFrame.Visible = true
        local PositionMatch = 0
        for _,cmd in pairs(CmdFrame:GetChildren()) do
                if string.find(string.lower(cmd.Text),string.lower(CText.Text)) then
                    cmd.Position = UDim2.new(0, 0, 0, 2 + (PositionMatch * 20))
                    PositionMatch = PositionMatch + 1
                    if cmd.Position == UDim2.new(0, 0, 0, 142) then
                        cmd.Position = UDim2.new(-10, 0, 0, 0)
                        PositionMatch = PositionMatch - 1
                    end
                else
                    cmd.Position = UDim2.new(-10, 0, 0, 0)
                end
            end
        else
            CmdFrame.Visible = false
        end
    end)
end
 
local function Started(key,chatting)
    if key.KeyCode == Enum.KeyCode.Quote and not chatting then
        CText:CaptureFocus()
        Cframe:TweenPosition(UDim2.new(0.015, 0, 0.95, 0), "Out", "Elastic", 0.5, true)
    end
end
 
local function Lost(Enter)
    Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0), "Out", "Quad", 0.5, true)
    if Enter then 
        local Cmd = CText.Text
        CText.Text = ""
        RunCmd(Cmd)
    end
end
 
local function Released(cmd)
    if cmd == CText then 
        local Cmd = CText.text
        CText.Text = ""
        RunCmd(Cmd)
        Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0), "Out", "Quad", 0.5, true)
    end
end
 
LP.Chatted:Connect(ChatHandler)
DiedHandler = LP.Character:FindFirstChildWhichIsA'Humanoid'.Died:Connect(Died)  
AddedCheck = LP.Character.ChildAdded:Connect(CharAdded)
LP.CharacterAdded:Connect(Added)
UserInput.InputBegan:Connect(Jump)
RunService.Stepped:Connect(Looped)
Mouse.KeyDown:Connect(HotkeyHandler)
Mouse.Button1Down:Connect(Modes)
CText.Changed:Connect(Changed)
CText.FocusLost:Connect(Lost)
UserInput.InputBegan:Connect(Started)
UserInput.TextBoxFocusReleased:Connect(Released)
 
for i in pairs(CmdsList) do 
    CmdsAmount = i 
end
 
notif("Cyrus' Admin Loaded in: "..tostring(tick()-Ticker):sub(1,7).." Amount of Commands: "..CmdsAmount.." Current Admin Version: "..CurrentAdminVersion,10,"rbxassetid://2831398990")
 
while true do 
    if AirWalkOn then
        if LP.Character:FindFirstChild'HumanoidRootPart' then
            AirWalk.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0,-4,0)
            LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = NormalHip
        end
    end 
    if Blinking then
        if LP.Character:FindFirstChild'HumanoidRootPart' then
            LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * BlinkSpeed
        end
    end
    wait()
end
