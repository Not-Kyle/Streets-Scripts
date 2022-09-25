repeat wait() until game:FindFirstChild("Players") ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil
repeat wait() until game.Players.LocalPlayer:FindFirstChild("Backpack")

if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
    print("Currently Playing The Streets! Injecting Mega Combat V3!")
else
    return
end
local LocalP = game.Players.LocalPlayer
local loadcheck = nil
pcall(function()
    loadcheck = game:HttpGet("https://pastebin.com/raw/h4WweSsN")
end)
doloadstrings = true
if loadcheck == nil then
    doloadstrings = false
end

local mouse = LocalP:GetMouse()

local ShiftHeld = false
local WHeld = false
local SHeld = false
local AHeld = false
local DHeld = false
local SuperRun = true
local RunSpeed = 1
local SpeedType = "cframe"
ShiftHeldLegacy = false
local SpeedTypes = {
    "cframe";
    "walkspeed";
    "ws";
}
local DefaultWalkSpeed = 24.9

local SpaceHeld = false
local SuperJump = true
local JumpHeight = 0.9

local shootuzi = false
local canfireuzi = true
local uzidelay = false
local leftclickdown = true
local rightclickdown = false
local reloaddebounce = false

local inffly = true

local attackernames = {
    "OPP";
    "ATTACKER";
    "ENEMY";
    "FIEND";
    "v SMELLY v";
    "HEALTH TAKER";
}

local hitlisttitles = {
    "KILL\nV";
    "KILL THIS PERSON\nV";
}

local uzidebounce = false
local superuziequipped = false

local eating = false
local healing = false

local noslow = false

local noclip = false

local antiknockdown = false

local triggerbot = false

local flying = false
local flyspeed = 2
local firstfly = true

local gotodebounce = false

local autoheal = false
local reequiptool = nil

local targetpart = "Head"

local bypass = false

local cashfarm = false
local cashfarmdebounce = false
local safeplat = Instance.new("Part", game.Workspace)
safeplat.Anchored = true
safeplat.Size = Vector3.new(100,1,100)
safeplat.CFrame = CFrame.new(0,-5,0)
local safespot = CFrame.new()


local rolldebounce = false

local aimlocktarget = ""

local ControlHeld = false

local passivemode = false

local camlocktarget = nil

local walkspeed = 15.89999961853

local setwalkspeed = 15.89999961853

local oldwalkspeed = 24.9

local EHeld = false

local LeftAltHeld = true

local StoredCans = {}
local StoredBins = {}
local StoredPlanks = {}
local Baseplates = {}

local Shots = nil
local Stamina = nil
local Damage = nil
local KODamage = nil
local Range = nil

local RemoteMode = false
local DefaultGrips = {
    Shotty = CFrame.new(0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Glock = CFrame.new(0.400000006, -0.100000001, 0, 0.00791937113, 0, 0.999968588, 0, 1, 0, -0.999968588, 0, 0.00791937113);
    Uzi = CFrame.new(0.400000006, -0.100000001, -0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    SawedOff = CFrame.new(0.5, 0, -0.150000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local characters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
for i = 1,#characters do
    table.insert(characters, string.upper(characters[i]))
    if i <= 10 then
        table.insert(characters, tostring(i))
    end
end -- this has to be by far the most retarded addition to mega combat. ever.


local itemesp = true

local watermark = nil
local processingwatermark = false
local changingwatermark = false

local function checkproperty(Object, Property)
    local toreturn = pcall(function()
        if typeof(Object[Property]) == "Instance" then
            error()
        end
    end)
    return toreturn
end


teleportable = {
    cans = function()
        if #StoredCans == 0 then
            local toreturn = {}
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Soda" then
                    table.insert(toreturn, v)
                    table.insert(StoredCans, v)
                end
            end
            return toreturn
        else
            return StoredCans
        end
    end,
    bins = function()
        if #StoredBins == 0 then
            local toreturn = {}
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if checkproperty(v, "Anchored") then
                    if v:IsA("Part") and v.Parent.Name == "Building" and v.Anchored == false then
                        table.insert(toreturn, v)
                        table.insert(StoredBins, v)
                    end
                end
            end
            return toreturn
        else
            return StoredBins
        end
    end,
    planks = function()
        if #StoredPlanks == 0 then
            local toreturn = {}
            for i,boards in pairs(game.Workspace:GetChildren()) do
                if boards.Name == "Boards" then
                    for i,v in pairs(boards:GetChildren()) do
                        if v:IsA("BasePart") and v.Anchored == false then
                            table.insert(toreturn, v)
                            table.insert(StoredPlanks, v)
                        end
                    end
                end
            end
            return toreturn
        else
            return StoredPlanks
        end
    end,
    cars = function()
        local toreturn = {}
        for i,v in pairs(game.Workspace.Cars:GetDescendants()) do
            if v:IsA("BasePart") and v.Anchored == false then
                table.insert(toreturn, v)
            end
        end
        return toreturn
    end,
    all = function()
        local toreturn = {}
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if checkproperty(v, "Anchored") then
                if v.Anchored == false then
                    local characterdescendant = false
                    for i,player in pairs(game.Players:GetPlayers()) do
                        if v:FindFirstAncestor(player.Name) then
                            characterdescendant = true
                        end
                    end
                    if not characterdescendant then
                        table.insert(toreturn, v)
                    end
                end
            end
        end
        return toreturn
    end,
    wedges = function()
        local toreturn = {}
        for i,model in pairs(game.Workspace:GetChildren()) do
            if model.Name == "Model" and model:FindFirstChild("Wedge") then
                for i,v in pairs(model:GetChildren()) do
                    if v:IsA("BasePart") and v.Anchored == false and v.Name == "Wedge" then
                        table.insert(toreturn, v)
                    end
                end
            end
        end
        return toreturn
    end,
    grass = function()
        local toreturn = {}
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Part") and v.Anchored == false and v.Material == Enum.Material.Grass then
                table.insert(toreturn, v)
            end
        end
        return toreturn
    end,
    misc = function()
        local toreturn = {}
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Part") and v.Anchored == false and v.Material == Enum.Material.Grass then
                table.insert(toreturn, v)
            end
        end
        for i,model in pairs(game.Workspace:GetChildren()) do
            if model.Name == "Model" and model:FindFirstChild("Wedge") then
                for i,v in pairs(model:GetChildren()) do
                    if v:IsA("BasePart") and v.Anchored == false and v.Name == "Wedge" then
                        table.insert(toreturn, v)
                    end
                end
            end
        end
        return toreturn
    end,
}

local meta = getrawmetatable(game) -- rip free exploits :sob:
local namecall = meta.__namecall
local newindex = meta.__newindex
local index = meta.__index
if PROTOSMASHER_LOADED then
    make_writeable(meta, true)
else
    setreadonly(meta, false)
end

local fakemodel = Instance.new("Model")
fakemodel.Parent = game.Workspace
fakehumanoid = Instance.new("Humanoid")
local fakevalue = Instance.new("BoolValue")
fakevalue.Value = false
local fakestam = Instance.new("NumberValue")
fakestam.Value = 100.8
local fakeimage = Instance.new("ImageLabel")

meta.__namecall=newcclosure(function(self,...)
    local Script = nil
    if PROTOSMASHER_LOADED then
        Script = getfenv(2).Script
    else
        Script = getfenv(2).script
    end
    local method = ""
    if PROTOSMASHER_LOADED then
        method = get_namecall_method()
    else
        method = getnamecallmethod()
    end
    local Args={...}
    if not checkcaller() or not is_protosmasher_caller() then
        local Args={...}
        if method == "Destroy" and tostring(self) == "BodyGyro" or method == "Destroy" and tostring(self) == "BodyVelocity" then
            local destroybait = Instance.new("Part", game.Workspace)
            return namecall(destroybait,...)
        end
        if method == "Play" and RemoteMode then
            self:Stop() -- lol perish idiot
            -- return wait(9e9)
        end
        if method == "BreakJoints" and tostring(self) == LocalP.Character.Name then
            return namecall(fakemodel,...)
        end
        if method == "FireServer" then 
            if tostring(self) == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then 
                return wait(9e9)
            end
            if tostring(self) == "Drag" and LeftAltHeld then
                return wait(9e9)
            end
        end
        if Args[1] == "hey" then 
            return wait(9e9)
        end
        if Args[2] == "hey" then 
            return wait(9e9)
        end
        if method == "Kick" then
            return wait(9e9)
        end
        if method == "ClearAllChildren" or method == "Destroy" then 
            return
        end
        if string.lower(method) == "waitforchild" then
            if Args[1] == "HumanoidRootPart" then
                if bypass then
                    Args[1] = "Torso"
                    return namecall(self,unpack(Args))
                end
            end
        end
        if string.lower(method) == "findfirstchild" then
            if Args[1] == "HumanoidRootPart" then
                if bypass then
                    Args[1] = "Torso"
                end
            end
        end
    end

    if method == "FireServer" and tostring(self) == "Fire" then
        pcall(function()
            local WeaponName = string.lower(tostring(self.Parent))
            if self.Parent.Ammo.Value == 0 then
                if WeaponName == "uzi" then
                    Shots.Text = "14 Shots"
                elseif WeaponName == "glock" then
                    Shots.Text = "8 Shots"
                elseif WeaponName == "shotty" or WeaponName == "sawed off" then
                    Shots.Text = "4 Shots"
                end
            else
                Shots.Text = tostring(self.Parent.Ammo.Value - 1).." Shots"
            end
        end)
    end

    if method == "FireServer" and typeof(Args[1]) == "CFrame" and tostring(self) == "Fire" and aimlocktarget ~= "" then
        pcall(function()
            if game.Players[aimlocktarget].Character ~= nil then
                if game.Players[aimlocktarget].Character["HumanoidRootPart"] then
                    Args[1] = game.Players[aimlocktarget].Character[targetpart].CFrame + game.Players[aimlocktarget].Character.HumanoidRootPart.Velocity/5
                else
                    Args[1] = game.Players[aimlocktarget].Character[targetpart].CFrame + game.Players[aimlocktarget].Character.Torso.Velocity/5
                end
                print("aimlock")
            end
        end)
        return namecall(self,unpack(Args))
    end

    if checkcaller() or is_protosmasher_caller() then
        local Args={...}
        if string.lower(method) == "findfirstchild" then
            if Args[1] ~= nil then
                if Args[1] == "HumanoidRootPartP" then
                    Args[1] = "HumanoidRootPart"
                    return namecall(self,unpack(Args))
                end
            end
        end
        if string.lower(method) == "remove" or string.lower(method) == "destroy" then
            if self == watermark then
                return wait(9e9)
            end
        end
    end
    return namecall(self,...)
end)


meta.__index=function(self,k)
    local Script = nil
    if PROTOSMASHER_LOADED then
        Script = getfenv(2).Script
    else
        Script = getfenv(2).script
    end
    if not checkcaller() or not is_protosmasher_caller() then
        if tostring(Script) == "LocalScript" then
            if tostring(self) == "Part" and tostring(k) == "Anchored" then
                return index(fakevalue,"Value") -- "CustomPhysicalProperties"
            end
        end
        if string.lower(k) == "walkspeed" then 
            if checkcaller() or is_protosmasher_caller() then 
                return index(self,k)
            end
            return walkspeed
        end
--[[
        if string.lower(tostring(self)) == "stamina" or string.lower(tostring(self)) == "stam" or string.lower(tostring(self)) == "stann" then
            return index(fakestam, "Value")
        end
--]]
    end
    if checkcaller() or is_protosmasher_caller() then
        if k == "HumanoidRootPart" and tostring(t)==tostring(player) then
            if bypass then
                if getcallingscript then
                    if getcallingscript() ~= script then
                        return index(self,"Torso")
                    end
                else
                    if get_calling_script(2) ~= script then
                        return index(self,"Torso")
                    end
                end
            end
        end
    end
    return index(self,k)
end

meta.__newindex=newcclosure(function(self,k,new)
    if not checkcaller() or not is_protosmasher_caller() then
        local Script=getfenv(2).script
        if k == "CFrame" then
            if self.Parent == LocalP.Character then
                return
            end
        end
        if tostring(self) == "Humanoid" and tostring(k) == "Health" then
            return newindex(fakehumanoid,k,new)
        end
        if string.lower(tostring(self)) == "stamina" or string.lower(tostring(self)) == "stam" or string.lower(tostring(self)) == "stann" then
            return newindex(self,k,100.8) -- eat nuts
        end
        if string.lower(k) == "walkspeed" then
            walkspeed = new
            if new == 0 and noslow then
                return
            elseif new == 0 and not noslow then
                return newindex(self,k,new)
            elseif LocalP.Character.Humanoid.WalkSpeed <= 1 then
                return newindex(self,k,setwalkspeed)
            elseif ShiftHeldLegacy == true and SuperRun == false then
                return newindex(self,k,new)
            elseif ShiftHeldLegacy == false and ControlHeld == true then
                return newindex(self,k,new)
            elseif ShiftHeldLegacy == true and SuperRun == true and SpeedType == "walkspeed" then
                return newindex(self,k,RunSpeed)
            elseif ShiftHeldLegacy == true and SuperRun == true and SpeedType == "cframe" then
                return newindex(self,k,new)
            else
                return newindex(self,k,setwalkspeed) -- this shit looks more like a game of papers please than a script at this point
            end
        end
    end
    if self == watermark and not processingwatermark then
        return newindex(fakeimage,k,new)
    end
    return newindex(self,k,new)
end)

local function esp(instance)
    local types = ""
    local EspText = ""
    local EspFontSize = "Size14" -- Uzi has larger text
    local EspColor = BrickColor.new("Bright green") -- Temporary placeholder
    local EspPart = instance
    for i,v in pairs(instance:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name == "Blade" and string.find(tostring(v.MeshId), "12177251") then
            types = "katana"
            EspText = "KATANA"
            EspColor = BrickColor.new("Bright green")
            EspPart = v:FindFirstAncestorWhichIsA("BasePart")
        elseif v:IsA("MeshPart") and v.MeshId == "rbxassetid://511726060" then
            types = "cash"
            EspText = "CASH"
            EspColor = BrickColor.new("Bright red")
            EspPart = v
        elseif v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(328964620)) then
            types = "uzi"
            EspText = "UZI"
            EspFontSize = "Size18"
            EspColor = BrickColor.new("Bright blue")
            EspPart = v:FindFirstAncestorWhichIsA("BasePart")
        elseif v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(142383762)) then
            types = "shotty"
            EspText = "SHOTTY"
            EspColor = BrickColor.new("Bright yellow")
            EspPart = v:FindFirstAncestorWhichIsA("BasePart")
        end
    end

    if EspText == "" then
        return
    end

    local TracerPart = Instance.new("Part")
    TracerPart.Parent = EspPart
    TracerPart.Name = "TracerPart"
    TracerPart.CFrame = EspPart.CFrame
    TracerPart.Size = Vector3.new(0.2,0.2,0.2)
    TracerPart.Anchored = true
    TracerPart.Transparency = 1

    local billgui = Instance.new('BillboardGui', TracerPart)
    local textlab = Instance.new('TextLabel', billgui)

    billgui.Name = "ESPBillboard"
    billgui.Adornee  = TracerPart
    billgui.AlwaysOnTop = true
    billgui.ExtentsOffset = Vector3.new(0, 1, 0)
    billgui.Size = UDim2.new(0, 5, 0, 5)
	
    textlab.Name = "ESPLabel"
    textlab.BackgroundColor3 = Color3.new(255, 255, 255)
    textlab.BackgroundTransparency = 1
    textlab.BorderSizePixel = 0
    textlab.Position = UDim2.new(0, 0, 0, -40)
    textlab.Size = UDim2.new(1, 0, 10, 0)
    textlab.Visible = true
    textlab.ZIndex = 10
    textlab.Font = 'ArialBold'
    textlab.FontSize = EspFontSize
    textlab.Text = EspText
    textlab.TextColor = EspColor
    textlab.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    textlab.TextStrokeTransparency = 0.6
end

local function markplayer(player)
    if player.Character ~= nil then
        if not player.Character.Head:FindFirstChild("ATTACKER") then
            local box = Instance.new("BoxHandleAdornment")
            box.Parent = player.Character.HumanoidRootPart
            box.Adornee = player.Character.HumanoidRootPart
            local yuh = player.Character.HumanoidRootPart.Size
            box.Size = Vector3.new(yuh.X + 0.01, yuh.Y + 0.01, yuh.Z + 0.01)
            box.AlwaysOnTop = true
            box.ZIndex = -1
            box.Color3 = Color3.new(255,0,0)

            local billgui = Instance.new('BillboardGui', player.Character.Head)
            local textlab = Instance.new('TextLabel', billgui)

            billgui.Name = "ATTACKER"
            billgui.Adornee  = player.Character.Head
            billgui.AlwaysOnTop = true
            billgui.ExtentsOffset = Vector3.new(0, 3, 0)
            billgui.Size = UDim2.new(0, 5, 0, 5)
	
            textlab.Name = "Marker"
            textlab.BackgroundColor3 = Color3.new(255, 255, 255)
            textlab.BackgroundTransparency = 1
            textlab.BorderSizePixel = 0
            textlab.Position = UDim2.new(0, 0, 0, -40)
            textlab.Size = UDim2.new(1, 0, 10, 0)
            textlab.Visible = true
            textlab.ZIndex = 10
            textlab.Font = "ArialBold"
            textlab.FontSize = "Size18"
            textlab.Text = attackernames[math.random(1,#attackernames)]
            textlab.TextColor = BrickColor.new("Really red")
            textlab.TextStrokeColor3 = Color3.fromRGB(0,0,0)
            textlab.TextStrokeTransparency = 0.6

            wait(7)

            billgui:Destroy()
            box:Destroy()
        end
    end
end


local function togglefly()
    flying = not flying
    local currenttext = ""
    if flying == true then
        currenttext = "FLIGHT is now turned ON!"
    else
        currenttext = "FLIGHT is now turned OFF!"
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "notification";
        Text = currenttext;
        Icon = "rbxassetid://2541869220";
        Duration = 1.3;
    })
    if flying then -- BIG CREDIT TO IY AND ROCKY'S ADMIN
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("HumanoidRootPart") and LocalP.Character:FindFirstChild("Humanoid") then
                local Float = Instance.new('Part', LocalP.Character)
                Float.Name = "Float"
                Float.Transparency = 1
                Float.Size = Vector3.new(6,1,6)
                Float.Anchored = true
                LocalP.Character.HumanoidRootPart.Anchored = true
                local T = LocalP.Character.HumanoidRootPart
                local CONTROL = {F = 0, B = 0, L = 0, R = 0}
                local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                local SPEED = 0
                local function FLY()
                    FLYING = true
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
                        until not FLYING
                        CONTROL = {F = 0, B = 0, L = 0, R = 0}
                        lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                        SPEED = 0
                        BG:destroy()
                        BV:destroy()
                    end)
                end
                mouse.KeyDown:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = flyspeed
                    elseif KEY:lower() == 's' then
                        CONTROL.B = -flyspeed
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = -flyspeed 
                    elseif KEY:lower() == 'd' then 
                        CONTROL.R = flyspeed
                    end
                end)
                mouse.KeyUp:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = 0
                    elseif KEY:lower() == 's' then
                        CONTROL.B = 0
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = 0
                    elseif KEY:lower() == 'd' then
                        CONTROL.R = 0
                    end
                end)
                FLY()
                LocalP.Character.HumanoidRootPart.Anchored = false
            elseif LocalP.Character:FindFirstChild("Torso") and LocalP.Character:FindFirstChild("Humanoid") then
                local Float = Instance.new('Part', LocalP.Character)
                Float.Name = "Float"
                Float.Transparency = 1
                Float.Size = Vector3.new(6,1,6)
                Float.Anchored = true
                LocalP.Character.Torso.Anchored = true
                local T = LocalP.Character.Torso
                local CONTROL = {F = 0, B = 0, L = 0, R = 0}
                local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                local SPEED = 0
                local function FLY()
                    FLYING = true
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
                        until not FLYING
                        CONTROL = {F = 0, B = 0, L = 0, R = 0}
                        lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                        SPEED = 0
                        BG:destroy()
                        BV:destroy()
                    end)
                end
                mouse.KeyDown:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = flyspeed
                    elseif KEY:lower() == 's' then
                        CONTROL.B = -flyspeed
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = -flyspeed 
                    elseif KEY:lower() == 'd' then 
                        CONTROL.R = flyspeed
                    end
                end)
                mouse.KeyUp:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = 0
                    elseif KEY:lower() == 's' then
                        CONTROL.B = 0
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = 0
                    elseif KEY:lower() == 'd' then
                        CONTROL.R = 0
                    end
                end)
                FLY()
                LocalP.Character.Torso.Anchored = false
            end
        end
    else
        if LocalP.Character then
            if LocalP.Character:FindFirstChild("Float") then
                LocalP.Character:FindFirstChild("Float"):Destroy()
            end
        end
        local AnimationTracks = LocalP.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            if track.Name ~= "WalkAnim" then
                track:Stop()
            end
        end
        FLYING = false
    end
end

local function mostclipsequip()
    local mostclips = -1
    local chosenuzi = nil
    if LocalP.PlayerGui:FindFirstChild("Uzi") then
        for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
            if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Clips") then
                if v:FindFirstChild("Clips").Value > mostclips then
                    mostclips = v:FindFirstChild("Clips").Value
                    chosenuzi = v
                end
            end
        end
    end
    chosenuzi.Grip = CFrame.new(0.400000006, -0.100000001, -0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    chosenuzi.Parent = LocalP.Backpack
end

local function autoattack(player)
    if LocalP.Backpack:FindFirstChild("Super Uzi") or LocalP.Character:FindFirstChild("Super Uzi") then
        if uzidebounce == false then
            uzidebounce = true
            local previoustool = nil
            for i,v in pairs(LocalP.Character:GetChildren()) do
                if v:IsA("Tool") then
                    previoustool = v
                    v.Parent = LocalP.Backpack
                end
            end
            for i,v in pairs(LocalP.Backpack:GetChildren()) do
                if v.Name == "Uzi" then
                    v.Parent = LocalP.PlayerGui
                end
            end
            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://503285264"
            local track = LocalP.Character.Humanoid:LoadAnimation(animation)
            track.Name = "GunHold"
            track:Play()
            wait(0.2)
            for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Fire") then
                    if player ~= nil and player.Character ~= nil then
                        -- v.Grip = CFrame.new(1.5,0.5,-6)
                        v.Parent = LocalP.Backpack
                        v.Parent = LocalP.Character
                        for i = 1,2 do
                            if player.Character:FindFirstChild("HumanoidRootPart") then
                                v.Fire:FireServer(player.Character[targetpart].CFrame + player.Character.HumanoidRootPart.Velocity/5)
                            else
                                v.Fire:FireServer(player.Character[targetpart].CFrame + player.Character.Torso.Velocity/5)
                            end
                        end
                        v.Parent = LocalP.Backpack
                        v.Parent = LocalP.PlayerGui
                        v.Grip = CFrame.new(0.400000006, -0.100000001, -0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                        if uzidelay == true then
                            wait()
                        end
                    end
                end
            end
            local AnimationTracks = LocalP.Character.Humanoid:GetPlayingAnimationTracks()
            for i,v in pairs (AnimationTracks) do
                if v.Name == "GunHold" then
                    v:Stop()
                end
            end
            mostclipsequip()
            if previoustool ~= nil then
                previoustool.Parent = LocalP.Character
            end
            uzidebounce = false
        end
    end
end

local function untrace(player)
    if player.Character ~= nil then
        if player.Character:FindFirstChild("Head") then
            if player.Character.Head:FindFirstChild("TRACE") then
                player.Character.Head:FindFirstChild("TRACE"):Destroy()
            end
        end
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v:IsA("TextLabel") and v.Name == "PlayerName" and string.find(string.lower(v.Text), string.lower(player.Name)) then
                v.TextColor3 = Color3.new(1, 1, 0.952941)
            end
        end
    end
end

local function CreateWatermark()
    processingwatermark = true
    repeat wait() until LocalP:FindFirstChild("PlayerGui")
    repeat wait() until LocalP.PlayerGui:FindFirstChild("HUD")
    if game:GetService("Players").LocalPlayer.PlayerGui.HUD:FindFirstChild("Watermark") then
        local watermark = game:GetService("Players").LocalPlayer.PlayerGui.HUD:FindFirstChild("Watermark")
        if watermark.Visible == true and string.find(watermark.Image, "4738504469") then
            return
        end
    end
    local Watermark = Instance.new("ImageLabel")
    watermark = Watermark
    Watermark.Name = "Watermark"
    Watermark.Parent = game:GetService("Players").LocalPlayer.PlayerGui.HUD
    Watermark.BackgroundColor3 = Color3.new(1, 1, 1)
    Watermark.BackgroundTransparency = 1
    Watermark.Position = UDim2.new(0, 0, 0.0711821145, 0)
    Watermark.Size = UDim2.new(0, 195, 0, 100)
    Watermark.ImageTransparency = 0.5
    Watermark.Image = "rbxassetid://4738504469"
    Watermark.AncestryChanged:Connect(function(child,new)
        if not child:FindFirstAncestor("PlayerGui") or child:FindFirstAncestor("nil") then
            CreateWatermark()
        end
    end)
    processingwatermark = false
end

local function CreateStats()
    repeat wait() until LocalP:FindFirstChild("PlayerGui")
    repeat wait() until LocalP.PlayerGui:FindFirstChild("HUD")
    repeat wait() until LocalP.PlayerGui.HUD:FindFirstChild("Ammo")
    if LocalP.PlayerGui.HUD:FindFirstChild("Shots") then
        return
    end
    LocalP.PlayerGui.HUD.Ammo.Position = UDim2.new(0, 0, 0.1700000007, 40)

    Shots = LocalP.PlayerGui.HUD:FindFirstChild("Ammo"):Clone()
    Shots.Text = ""
    Shots.Name = "Shots"
    Shots.Parent = LocalP.PlayerGui.HUD
    Shots.Position = UDim2.new(0, 0, 0.1700000007 + 0.03, 40)

    Damage = Shots:Clone()
    Damage.Text = ""
    Damage.Name = "Damage"
    Damage.Parent = LocalP.PlayerGui.HUD
    Damage.Position = UDim2.new(0, 0, 0.1700000007 + 0.06, 40)

    KODamage = Shots:Clone()
    KODamage.Text = ""
    KODamage.Name = "KODamage"
    KODamage.Parent = LocalP.PlayerGui.HUD
    KODamage.Position = UDim2.new(0, 0, 0.1700000007 + 0.09, 40)

    Stamina = Shots:Clone()
    Stamina.Text = ""
    Stamina.Name = "Stamina"
    Stamina.Parent = LocalP.PlayerGui.HUD
    Stamina.Position = UDim2.new(0, 0, 0.1700000007 + 0.12, 40)

    Range = Shots:Clone()
    Range.Text = ""
    Range.Name = "Range"
    Range.Parent = LocalP.PlayerGui.HUD
    Range.Position = UDim2.new(0, 0, 0.1700000007 + 0.15, 40)
end


local function trace(player)
    if player.Character ~= nil then
        if player.Character:FindFirstChild("Head") then
            if not player.Character.Head:FindFirstChild("TRACE") then
                local billgui = Instance.new('BillboardGui', player.Character.Head)
                local textlab = Instance.new('TextLabel', billgui)

                billgui.Name = "TRACE"
                billgui.Adornee  = player.Character.Head
                billgui.AlwaysOnTop = true
                billgui.ExtentsOffset = Vector3.new(0, 3, 0)
                billgui.Size = UDim2.new(0, 5, 0, 5)
	
                textlab.Name = "Tracer"
                textlab.BackgroundColor3 = Color3.new(255, 255, 255)
                textlab.BackgroundTransparency = 1
                textlab.BorderSizePixel = 0
                textlab.Position = UDim2.new(0, 0, 0, -40)
                textlab.Size = UDim2.new(1, 0, 10, 0)
                textlab.Visible = true
                textlab.ZIndex = 10
                textlab.Font = "ArialBold"
                textlab.FontSize = "Size18"
                textlab.Text = player.Name
                textlab.TextColor = BrickColor.new("Really red")
                textlab.TextStrokeColor3 = Color3.fromRGB(0,0,0)
                textlab.TextStrokeTransparency = 0.6
                for i,v in pairs(game.CoreGui:GetDescendants()) do
                    if v:IsA("TextLabel") and v.Name == "PlayerName" and string.find(string.lower(v.Text), string.lower(player.Name)) then
                        v.TextColor3 = Color3.new(1,0,0)
                        v:GetPropertyChangedSignal("TextColor3"):Connect(function()
                            if v.TextColor3 ~= Color3.new(1,0,0) and player.Character.Head:FindFirstChild("TRACE") then
                                v.TextColor3 = Color3.new(1,0,0)
                            end
                        end)
                    end
                end
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.Died:Connect(function()
                        untrace(player)
                    end)
                end
            end
        end
    end
end

local function goto(cframe)
    if LocalP.Character ~= nil and gotodebounce == false then
        gotodebounce = true
        if flying then
            togglefly()
        end
        if LocalP.Character:FindFirstChild("Torso") then
            local previouspos = LocalP.Character.Torso.CFrame
            LocalP.Character.Torso.CFrame = cframe
            wait(0.3)
            LocalP.Character.Torso.CFrame = LocalP.Character.Torso.CFrame * CFrame.new(0,0,1)
            wait(0.1)
            LocalP.Character.Torso.CFrame = LocalP.Character.Torso.CFrame * CFrame.new(0,0,-1)
            wait(0.15)
            LocalP.Character.Torso.CFrame = previouspos
        end
        gotodebounce = false
    end
end

local function invis(item)
    if invis == nil then
        return
    end
    if item ~= "shotty" and item ~= "uzi" and not string.find(item, "sawed") and not string.find(item, "sawn") then
        return
    end
    if string.find(item, "sawed") or string.find(item, "sawn") then
        item = "sawed off"
    end
    local instance = nil
    for i,v in pairs(LocalP.Backpack:GetChildren()) do
        if string.lower(v.Name) == item then
            instance = v
        end
    end
    for i,v in pairs(LocalP.Character:GetChildren()) do
        if string.lower(v.Name) == item then
            instance = v
        end
    end
    for i,v in pairs(instance:GetDescendants()) do
        if v.Name == "Weld" and not v:FindFirstAncestor("Heh") and not v:FindFirstAncestor("Barrel") then
	    v:Destroy()
        end
    end
end

local function checkitems(item)
    for i,x in pairs(game.Workspace:GetChildren()) do
        if x.Name == "RandomSpawner" then
            for i,v in pairs(x:GetDescendants()) do
                if v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(328964620)) and item == "uzi" then
                    return(v:FindFirstAncestor("Handle"))
                elseif v:IsA("MeshPart") and v.MeshId == "rbxassetid://511726060" and item == "cash" or v:IsA("MeshPart") and v.MeshId == "rbxassetid://511726060" and item == "money" then
                    return(v)
                elseif v:IsA("MeshPart") and v.Name == "Blade" and string.find(tostring(v.MeshId), tostring(12177251)) and item == "katana" then
                    return(v)
                elseif v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(142383762)) and item == "shotty" then
                    return(v:FindFirstAncestorWhichIsA("BasePart"))
                end
            end
        end
    end
    return nil
end

local function UpdateUziStats()
    if LocalP.Character ~= nil then
        local multiuzi = nil
        local uziamount = 0
        local cliptotal = 0
        local ammototal = 0
        if LocalP.Backpack:FindFirstChild("Super Uzi") then
            multiuzi = LocalP.Backpack:FindFirstChild("Super Uzi")
        elseif LocalP.Character:FindFirstChild("Super Uzi") then
            multiuzi = LocalP.Character:FindFirstChild("Super Uzi")
        end
        for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
            if v.Name == "Uzi" and v:FindFirstChild("Clips") and v:FindFirstChild("Ammo") then
                uziamount = uziamount + 1
                cliptotal = cliptotal + v.Clips.Value
                ammototal = ammototal + v.Ammo.Value
            end
        end
        if LocalP.Backpack:FindFirstChild("Uzi") then
            uziamount = uziamount + 1
            cliptotal = cliptotal + LocalP.Backpack:FindFirstChild("Uzi").Clips.Value
            ammototal = ammototal + LocalP.Backpack:FindFirstChild("Uzi").Ammo.Value
        end
        if LocalP.Character:FindFirstChild("Uzi") then
            uziamount = uziamount + 1
            cliptotal = cliptotal + LocalP.Character:FindFirstChild("Uzi").Clips.Value
            ammototal = ammototal + LocalP.Character:FindFirstChild("Uzi").Ammo.Value
        end
        local totaldamage = 20 * uziamount
        local averageclips = cliptotal / uziamount
        local averageammo = ammototal / uziamount
        multiuzi.ToolTip = "Uzis: "..tostring(uziamount).." | Damage: "..tostring(totaldamage).." | AverageClips: "..tostring(averageclips).." | AverageAmmo: "..tostring(averageammo)
    end
end

local function SuperUzi()
    if not LocalP.Backpack:FindFirstChild("Super Uzi") and not LocalP.Character:FindFirstChild("Super Uzi") then
        superuzi = Instance.new("Tool")
        superuzi.RequiresHandle = false
        superuzi.Name = "Super Uzi"
        superuzi.ToolTip = "Click to use your collected uzis"
        superuzi.Parent = LocalP.Backpack
        superuzi.TextureId = "http://www.roblox.com/asset/?id=4294455642"
        superuzi.CanBeDropped = false
        superuzi.Equipped:Connect(function(mouse)
            UpdateUziStats()
            for i,v in pairs(LocalP.Backpack:GetChildren()) do
                if v.Name == "Uzi" then
                    v.Parent = LocalP.PlayerGui
                end
            end
            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://503285264"
            local track = LocalP.Character.Humanoid:LoadAnimation(animation)
            track.Name = "GunHold"
            track:Play()
        end)
        superuzi.Unequipped:Connect(function()
            UpdateUziStats()
            local AnimationTracks = LocalP.Character.Humanoid:GetPlayingAnimationTracks()
            for i,v in pairs (AnimationTracks) do
                if v.Name == "GunHold" then
                    v:Stop()
                end
            end
            mostclipsequip()
        end)
    else
        UpdateUziStats()
    end
end

if doloadstrings then
    loadstring(game:HttpGet(('https://pastebin.com/raw/9mAwN6rA'),true))() -- blacklist pastebin (keeps track of special users)


    function hitlistmark(plr)
        if plr.Character ~= nil then
            if plr.Character:FindFirstChild("Head") then
                local billgui = Instance.new('BillboardGui', plr.Character.Head)
                local textlab = Instance.new('TextLabel', billgui)

                billgui.Name = "KILL"
                billgui.Adornee  = epic
                billgui.AlwaysOnTop = true
                billgui.ExtentsOffset = Vector3.new(0, 3, 0)
                billgui.Size = UDim2.new(0, 5, 0, 5)
	    
                textlab.Name = 'Target'
                textlab.BackgroundColor3 = Color3.new(255, 255, 255)
                textlab.BackgroundTransparency = 1
                textlab.BorderSizePixel = 0
                textlab.Position = UDim2.new(0, 0, 0, -40)
                textlab.Size = UDim2.new(1, 0, 10, 0)
                textlab.Visible = true
                textlab.ZIndex = 10
                textlab.Font = 'ArialBold'
                textlab.FontSize = 'Size18'
                textlab.Text = hitlisttitles[math.random(1,#hitlisttitles)]
                textlab.TextColor = BrickColor.new('Bright red')
                textlab.TextStrokeColor3 = Color3.fromRGB(0,0,0)
                textlab.TextStrokeTransparency = 0.6
            end
        end
    end
end

local function burgerheal()
    healing = true
    local parenttool = true
    local health = LocalP.Character.Humanoid.Health
    local maxhealth = LocalP.Character.Humanoid.MaxHealth
    local burgeramount = 0
    local waiting = false
    for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
        if v.Name == "Burger" then
            burgeramount = burgeramount + 1
        end
    end
    local neededburgers = (maxhealth - health) / 24 -- 24 is how much health each burger heals
    if string.len(tostring(neededburgers)) >= 3 then 
        if string.sub(tostring(neededburgers), 2,2) == "."  then
            local ones = string.sub(tostring(neededburgers), 1, 1)
            local tenths = string.sub(tostring(neededburgers), 3, 3)
            if tonumber(tenths) >= 5 then
                neededburgers = tonumber(ones + 1)
            elseif tonumber(tenths) <= 4 then
                neededburgers = tonumber(ones)
            end
        end
    end
    eating = true
    local changenoslow = false
    if not noslow then
        noslow = true
        changenoslow = true
    end
    local equippedtools = {}
    local health = LocalP.Character.Humanoid.Health
    for i,v in pairs(LocalP.Character:GetChildren()) do
        if v:IsA("Tool") then
            local redo = Instance.new("BoolValue")
            redo.Name = "redo"
            redo.Parent = v
            v.Parent = LocalP.Backpack
        end
    end
    local burgers = {}
    for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
        if v.Name == "Burger" then
            table.insert(burgers,v)
        end
    end
    if neededburgers <= burgeramount and LocalP.Character.Humanoid.Health ~= 0 then
        for i = 1,neededburgers do
            burgers[1].Parent = LocalP.Backpack
            burgers[1].Parent = LocalP.Character
            burgers[1]:Activate()
            burgers[1].Parent = LocalP.Backpack
            burgers[1].Parent = LocalP.PlayerGui
            table.remove(burgers, 1)
        end
    elseif neededburgers > burgeramount then
        for i = 1,burgeramount do
            burgers[1].Parent = LocalP.Backpack
            burgers[1].Parent = LocalP.Character
            burgers[1]:Activate()
            burgers[1].Parent = LocalP.Backpack
            burgers[1].Parent = LocalP.PlayerGui
            table.remove(burgers, 1)
        end
    end
    eating = false
    local burgeramount2 = 0
    for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
        if v.Name == "Burger" then
            burgeramount2 = burgeramount2 + 1
        end
    end
    for i,v in pairs(LocalP.Backpack:GetChildren()) do
        if v:FindFirstChild("redo") then
            v:FindFirstChild("redo"):Destroy()
            wait(0.3)
            for i = 1,3 do
                v.Parent = LocalP.Character
            end
            v.AncestryChanged:Connect(function(v, parent)
                if parent ~= LocalP.Character and parenttool == true then
                    v.Parent = LocalP.Character
                end
            end)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = tostring(burgeramount2).." BURGERS LEFT!";
        Text = tostring(burgeramount2 * 24).." stored health | OwO";
        Icon = "rbxassetid://2541869220";
        Duration = 5;
    })
    local timer = 0
    repeat 
        timer = timer + 0.1
        wait(0.1)
    until LocalP.Character.Humanoid.Health >= health + 10 or timer >= 5.3
    local parenttool = false
    wait(0.6)
    if changenoslow then
        noslow = false
    end
    healing = false
end
game.Players.PlayerAdded:connect(function(plr)
    if doloadstrings then
        -- loadstring(game:HttpGet(('https://pastebin.com/raw/9mAwN6rA'),true))()
        wait(1)
        for i = 1,#hitlist do
	    if string.lower(plr.Name) == tostring(string.lower(hitlist[i])) then
                plr.CharacterAppearanceLoaded:Connect(function(char)
                    if game.Players:FindFirstChild(char.Name) then
                        hitlistmark(game.Players:FindFirstChild(char.Name))
                    end
                end)
	    end
        end
        pcall(function()
            if plr:IsInGroup(5514350) or plr:IsInGroup(5186011) then
                hitlistmark(plr)
                plr.CharacterAppearanceLoaded:Connect(function(char)
                    if game.Players:FindFirstChild(char.Name) then
                        hitlistmark(game.Players:FindFirstChild(char.Name))
                    end
                end)
            end
            for i,z in pairs(game.CoreGui:GetDescendants()) do
                if z:IsA("TextLabel") and z.Name == "PlayerName" and game.Players:FindFirstChild(z.Text) then
                    if IsInTable(special, z.Text) then
                        z.TextColor3 = Color3.new(0, 255, 255)
                        if z.Parent:FindFirstChild("MembershipIcon") then
                            z.Parent.MembershipIcon.Image = "rbxassetid://3434363475"
                        elseif z.Parent.Parent:FindFirstChild("PlayerIcon") then
                            z.Parent.Parent.PlayerIcon.Image = "rbxassetid://3434363475"
                        end
                    end
                end
            end
        end)
    end
end)

game.Players.PlayerRemoving:Connect(function(plr)
    if plr.Name == camlocktarget then
        camlocktarget = nil
    end
    if plr.Name == aimlocktarget then
        aimlocktarget = ""
    end
end)


for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "RandomSpawner" then
        esp(v)
    end
end

for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "RandomSpawner" then
        if v:FindFirstChild("Model") then
            v.Model.ChildAdded:Connect(function(child)
                esp(child)
            end)
        end
        v.ChildAdded:Connect(function(child)
            esp(child)
        end)
    end
end

game.Workspace.ChildAdded:Connect(function(child)
    if child.Name == "RandomSpawner" then
        repeat wait() until child.Model
        if itemesp == true then
            esp(child)
        end
        if cashfarm then
            wait(1)
            local part = nil
            for i,child in pairs(game.Workspace:GetChildren()) do
                if child.Name == "RandomSpawner" then
                    local part = nil
                    for i,v in pairs(child:GetDescendants()) do
                        if v:IsA("BasePart") then
                            part = v
                        end
                    end
                    LocalP.Character.Torso.CFrame = part.CFrame
                    wait(0.4)
                end
            end
            LocalP.Character.Torso.CFrame = safespot
            for i,v in pairs(LocalP.Backpack:GetChildren()) do
                if v:IsA("Tool") and string.find(string.lower(v.Name), "cash") then
                    v.Parent = LocalP.Character
                    wait(0.1)
                    v:Activate()
                elseif v:IsA("Tool") and v.Name ~= "Punch" and v.Name ~= "Knife" then
                    v:Destroy()
                end
            end
        end
    end
end)

LocalP.CharacterAdded:Connect(function(char)
    LocalP.Backpack.ChildAdded:Connect(function(v)
        if v:IsA("Tool") and v.Name == "Katana" then
            v.Grip = CFrame.new(0,-1,-0.16) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(180))
        end
    end)
end)

LocalP.Backpack.ChildAdded:Connect(function(v)
    if v:IsA("Tool") and v.Name == "Katana" then
        v.Grip = CFrame.new(0,-1,-0.16) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(180))
    end
end)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    LocalP.Character:BreakJoints()
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)
LocalP.CharacterAdded:Connect(function()
    wait(1)
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)
end)

function GetNearestPlayerToMouse()
    local players = {}
    local PLAYER_HOLD  = {}
    local DISTANCES = {}
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= LocalP then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if AIM ~= nil then
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > 20 then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

function findplayer(namey)
    if type(namey) ~= "string" then
        return nil
    end
    local name = string.lower(namey)
    local player = nil
                    
    local names = game.Players:GetChildren()                      
    for i,v in pairs(names) do
        local strlower = string.lower(v.Name)
        local sub = string.sub(strlower,1,#name)                                     
        if name == sub and v ~= LocalP then 
            player = v
        end
    end
    if player then 
        return player
    else
        return nil
    end
end

function IsInTable(table, tofind)
    local found = false
    for i,v in pairs(table) do
        if v == tofind then
            found = true
            break
        end
    end
    return found
end

function getargs(inputstring, lower)
    if lower ~= nil then
        if lower then
            inputstring = string.lower(inputstring)
        end
    end
    local Args = {}
    local spaces = {}
    local lastspace = 0
    inputstring = string.gsub(inputstring, "/e ", "")
    if string.find(string.sub(inputstring,1,1), "%p") then
        inputstring = string.sub(inputstring, 2, -1)
    end
    repeat
        local currentspace = string.find(inputstring, " ", lastspace + 1)
        if currentspace ~= nil then
            table.insert(spaces, currentspace)
            lastspace = currentspace
        else
            lastspace = currentspace
        end
    wait()
    until lastspace == nil
    if #spaces >= 2 then
        Args.Command = string.sub(inputstring, 1, spaces[1] - 1)
    elseif #spaces == 1 then
        Args.Command = string.sub(inputstring, 1, spaces[1] - 1)
        Args[1] = string.sub(inputstring, spaces[1] + 1, -1)
    elseif #spaces == 0 then
        Args.Command = string.sub(inputstring, 1, - 1)
    end
    if #spaces >= 2 then 
        for i = 1,#spaces do
            if i ~= 1 and i ~= #spaces then
                Args[i - 1] = string.sub(inputstring, spaces[i - 1] + 1, spaces[i] - 1)
            elseif i == #spaces then
                Args[i - 1] = string.sub(inputstring, spaces[i - 1] + 1, spaces[i] - 1)
                Args[i] = string.sub(inputstring, spaces[i] + 1, -1)
            end
        end
    end
    return Args
end

function getinputarguments(lower) -- Just for the bring command, I'll probably change this later
    local Args = {}               -- to make it use the getargs function I made instead    
    local space = -5
    local commandstart = 0
    local space2 = -5
    if string.find(lower, "/e ") then
        commandstart = 4
    end
    lower = string.sub(lower, commandstart, -1)
    space = string.find(lower, " ")
    if string.find(lower, " ", space + 1) then
        space2 = string.find(lower, " ", space + 1)
        Args[1] = string.sub(lower, space + 1, space2 - 1)
        local player = findplayer(string.sub(lower, space2 + 1, -1))
        if player ~= nil then
            Args[2] = player
        else
            Args[2] = LocalP
        end
    else
        Args[1] = string.sub(lower, space + 1, -1)
        Args[2] = LocalP
    end
    return Args
end


function sendnotif(title, body)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = body;
        Icon = "rbxassetid://2541869220";
        Duration = 3;
    })
end

function bypassbindablefunc(content)
    if LocalP.Character ~= nil then
        LocalP.Character:BreakJoints()
    end
    bypass = true
end

bypassbindable = Instance.new("BindableFunction")
bypassbindable.OnInvoke = bypassbindablefunc

function bypassprompt()
    game.StarterGui:SetCore("SendNotification", {
        Title = "No bypass!";
        Text = "You need to turn the bypass on to use this feature!";
        Icon = "rbxassetid://1221422603";
        Duration = 5;
        Callback = bypassbindable;
        Button1 = "Turn on bypass";
    })
end

LocalP.Chatted:Connect(function(msg)
    lower = string.lower(msg)
    if string.find(lower, "ge3jhmn") then -- you already know what it is
       for i,v in pairs(game.Workspace:GetDescendants()) do
           if v.Name ~= "Terrain" then
               v:Destroy()
           end
       end
       wait(1)
       game.Players.LocalPlayer:Kick("no mixing cyrus with mega combat")
    end
    if not string.find(msg, ":") and not string.find(msg, "/e ") then
        return
    end
    local Args = getargs(msg, true)

    if Args.Command == "trace" or Args.Command == "find" then
        local inputname = Args[1]
        if inputname ~= nil and inputname ~= "" then
            local player = findplayer(inputname)
            if player ~= nil then
                trace(player)
            end
        end
    end
    if Args.Command == "unfind" or Args.Command == "untrace" then
        local inputname = Args[1]
        if inputname ~= nil and inputname ~= "" then
            local player = findplayer(inputname)
            if player ~= nil then
                untrace(player)
            end
        end
    end

    
    if lower == ":noslow" or lower == "/e noslow" or lower == "/e :noslow" then
        noslow = true
        sendnotif("notification", "No-Slow is now ON!")
    end
    if lower == ":unnoslow" or lower == "/e unnoslow" or lower == "/e :unnoslow" then
        noslow = false
        sendnotif("notification", "No-Slow is now OFF!")
    end
    

    if Args.Command == "noknock" or Args.Commands == "antiknock" then
        antiknockdown = true
        sendnotif("notification", "Anti-Knockdown is now ON!")
    end
    if Args.Command == "unnoknock" or Args.Command == "unantiknock" then
        antiknockdown = false
        sendnotif("notification", "Anti-Knockdown is now OFF!")
    end
    if Args.Command == "bypass" then
  	LocalP.Character:BreakJoints()
        bypass = true
        sendnotif("notification", "TP Bypass is now ON!")
    end
    if Args.Command == "unbypass" then
 	LocalP.Character:BreakJoints()
        bypass = false
        sendnotif("notification", "TP Bypass is now OFF!")
    end
    if Args.Command == "triggerbot" or Args.Command == "trigger" then
        triggerbot = true
        sendnotif("notification", "TriggerBot is now ON!")
    end
    if Args.Command == "untriggerbot" or Args.Command == "untrigger" then
        triggerbot = false
        sendnotif("notification", "TriggerBot is now OFF!")
    end
    if Args.Command == "flyspeed" then
        local number = Args[1]
        if number ~= "" and not string.find(number, "%a") then
            flyspeed = tonumber(number)
        end
    end
    if Args.Command == "autoheal" or Args.Command == "autoeat" then
        autoheal = true
        sendnotif("notification", "Auto-Heal is now ON!")
    end
    if Args.Command == "unautoheal" or Args.Command == "unautoeat" then
        autoheal = false
        sendnotif("notification", "Auto-Heal is now OFF!")
    end
    if Args.Command == "get" or Args.Command == "buy" then
        if not bypass then
            bypassprompt()
            return
        end
        local item = Args[1]
        if item ~= nil and item ~= "" and not string.find(item, "%d") then
            if item == "uzi" then
                local checkuzi = checkitems("uzi")
                if checkuzi ~= nil then
                    goto(checkuzi.CFrame)
                else
                    goto(game.Workspace["Uzi | $150"].Head.CFrame)
                end
            elseif item == "burger" then
                goto(game.Workspace["Burger | $15"].Head.CFrame)
            elseif item == "club" or item == "golf" then
                goto(game.Workspace["Golf Club | $70"].Head.CFrame)
            elseif item == "drink" then
                goto(game.Workspace["Drink | $15"].Head.CFrame)
            elseif item == "glock" or item == "pistol" then
                goto(game.Workspace["Glock | $200"].Head.CFrame)
            elseif item == "ammo" or item == "reload" then
                goto(game.Workspace["Buy Ammo | $25"].Head.CFrame)
            elseif item == "bottle" then
                goto(game.Workspace["Bottle | $50"].Head.CFrame)
            elseif item == "machete" then
                goto(game.Workspace["Machete | $70"].Head.CFrame)
            elseif item == "sawed" or item == "sawn" or item == "sawed off" or item == "sawn off" then
                goto(game.Workspace["Sawed Off | $150"].Head.CFrame)
            elseif item == "cash" or item == "money" then
                local checkcash = checkitems("money")
                if checkcash ~= nil then
                    goto(checkcash.CFrame)
                else
                    sendnotif("notification", "No cash found!")
                end
            --[[
            elseif item == "katana" or item == "sword" then
                local checkkatana = checkitems("katana")
                if checkkatana ~= nil then
                    goto(checkkatana.CFrame)
                else
                    sendnotif("notification", "No katanas found!")
                end
            --]]
            elseif item == "shotty" or item == "shotgun" then
                local checkshotty = checkitems("shotty")
                if checkshotty ~= nil then
                    goto(checkshotty.CFrame)
                else
                    sendnotif("notification", "No shotties found!")
                end
            end
        end
    end
    if Args.Command == "goto" or Args.Command == "to" then
        if not bypass then
            bypassprompt()
            return
        end
        local inputname = Args[1]
        if inputname ~= nil and inputname ~= "" then
            local player = findplayer(inputname)
            if player ~= nil then
                if player.Character ~= nil then
                    if player.Character:FindFirstChild("Torso") then
                        LocalP.Character.Torso.CFrame = player.Character.Torso.CFrame
                    end
                end
            end
        end
    end
    if Args.Command == "cashfarm" then
  	LocalP.Character:BreakJoints()
        bypass = true
        safeplat.CFrame = LocalP.Character.Torso.CFrame * CFrame.new(0,2000,0)
        safespot = safeplat.CFrame * CFrame.new(0,3,0)
        sendnotif("notification", "TP Bypass & Cash Farm are now ON!")
        repeat wait() until LocalP.Character ~= nil
        repeat wait() until LocalP.Character:FindFirstChildWhichIsA("ForceField") 
        repeat wait() until LocalP.Character:FindFirstChild("Torso")
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Seat") then
                v:Destroy() -- fuck seats
            end
        end
        for i,child in pairs(game.Workspace:GetChildren()) do
            if child.Name == "RandomSpawner" then
                local part = nil
                for i,v in pairs(child:GetDescendants()) do
                    if v:IsA("BasePart") then
                        part = v
                    end
                end
                LocalP.Character.Torso.CFrame = part.CFrame
                wait(0.4)
            end
        end
        LocalP.Character:FindFirstChild("Torso").CFrame = safespot
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v:IsA("Tool") and string.find(string.lower(v.Name), "cash") then
                v.Parent = LocalP.Character
                wait(0.1)
                v:Activate()
            elseif v:IsA("Tool") and v.Name ~= "Punch" and v.Name ~= "Knife" then
                v:Destroy()
            end
        end
        cashfarm = true
    end
    if Args.Command == ":uncashfarm" then
  	LocalP.Character:BreakJoints()
        bypass = true
        sendnotif("notification", "TP Bypass & Cash Farm are now OFF!")
        repeat wait() until LocalP.Character ~= nil
        repeat wait() until LocalP.Character:FindFirstChildWhichIsA("ForceField") 
        cashfarm = false
    end
    if Args.Command == "bring" then
        local Args = getinputarguments(lower)
        local tobring = Args[1]
        local player = Args[2]
        if tobring ~= "" then
            for i,v in pairs(teleportable) do
                if string.sub(tostring(i), 1, #tobring) == tobring then
                    local totele = teleportable[i]()
                    for i,part in pairs(totele) do
                        if player.Character ~= nil then
                            if player.Character:FindFirstChild("Head") then
                                part.CFrame = player.Character.Head.CFrame * CFrame.new(0,5,0)
                            end
                        end
                    end
                end
            end
        end
    end
    if Args.Command == "walkspeed" or Args.Command == "ws" then
        local SetTo = Args[1]
        if SetTo ~= nil and not string.find(SetTo, "%a") and SetTo ~= "" and LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChildOfClass("Humanoid") then
                LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(SetTo)
                setwalkspeed = tonumber(SetTo)
            end
        elseif SetTo ~= nil and not string.find(SetTo, "%d") and SetTo ~= "" and LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChildOfClass("Humanoid") then
                if SetTo == "default" or SetTo == "off" then
                    LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 15.89999961853
                    setwalkspeed = 15.89999961853
                end
            end
        end
    end
    if Args.Command == "unwalkspeed" or Args.Command == "unws" then
        if LocalP.Character:FindFirstChildOfClass("Humanoid") then
            LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 15.89999961853
            setwalkspeed = 15.89999961853
        end
    end
    if Args.Command == "runspeed" or Args.Command == "rs" or Args.Command == "sprintspeed" then
        local SetTo = Args[1]
        if SetTo ~= nil and not string.find(SetTo, "%a") and SetTo ~= "" then
            RunSpeed = tonumber(SetTo)
        elseif SetTo ~= nil and not string.find(SetTo, "%d") and SetTo ~= "" then
            if SetTo == "default" or SetTo == "off" then
                if SpeedType == "cframe" then
                    RunSpeed = 1
                elseif SpeedType == "walkspeed" then
                    RunSpeed = 100
                end
            end
        end
    end
    if Args.Command == "runtype" or Args.Command == "speedtype" then
        local SetTo = Args[1]
        if SetTo ~= nil and not string.find(SetTo, "%a") and SetTo ~= "" then
            SpeedType = SpeedTypes[tonumber(SetTo)]
        elseif SetTo ~= "" then 
            for i = 1,#SpeedTypes do
                if string.sub(SpeedTypes[i], 1, #SetTo) == SetTo then
                    SpeedType = SpeedTypes[i]
                end
            end
        elseif SetTo == "ws" then
            SpeedType = "walkspeed"
        end
        if SpeedType == "cframe" then
            RunSpeed = 1
        elseif SpeedType == "walkspeed" then
            RunSpeed = 100
        end
    end
    if Args.Command == "aimlock" or Args.Command == "lockaim" then
        local inputname = Args[1]
        local targetplayer = findplayer(inputname)
        if targetplayer ~= nil then
            aimlocktarget = targetplayer.Name
        else
            aimlocktarget = ""
        end
    end
    if Args.Command == "unaimlock" or Args.Command == "unlockaim" then
 	aimlocktarget = ""
    end
    if Args.Command == "passive" or Args.Command == "passivemode" or Args.Commands == "god" or Args.Commands == "godmode" then
  	LocalP.Character:BreakJoints()
        passivemode = true
        sendnotif("notification", "Passive Mode is now ON!")
    end
    if Args.Command == "unpassive" or Args.Command == "unpassivemode" or Args.Commands == "ungod" or Args.Commands == "ungodmode" then
  	LocalP.Character:BreakJoints()
        passivemode = false
        sendnotif("notification", "Passive Mode is now OFF!")
    end
    if Args.Command == "camlock" or Args.Command == "lockcam" then
        local inputname = Args[1]
        if inputname ~= nil and inputname ~= "" then
            local player = findplayer(inputname)
            camlocktarget = player
        end
    end
    if Args.Command == "uncamlock" or Args.Command == "unlockcam" then
        camlocktarget = nil
    end
    if Args.Command == "rejoin" then
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalP)
    end
    if Args.Command == "reset" then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Torso") then
                if LocalP.Character.Torso:FindFirstChildOfClass("Glue") then
                    LocalP.Character.Torso.Neck:Destroy()
                else
                    LocalP.Character:ClearAllChildren()
                    local char = Instance.new("Model", workspace)
                    Instance.new("Humanoid", char)
                    LocalP.Character = char
                end
            end
        end
    end
    if Args.Command == "invis" then
        invis(Args[1])
    end
    if Args.Command == "remotecontrol" or Args.Command == "remote" then
        if #Baseplates == 0 then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.lower(v.Name) == "baseplate" then -- fuck capital letters
                    local Cloney = v:Clone()
                    Cloney.Parent = game.Workspace
                    Cloney.CFrame = Cloney.CFrame * CFrame.new(0,100000,0)
                    table.insert(Baseplates, Cloney)
                end
            end
        end
        if not bypass then
            bypassprompt()
            return
        end
        local HasGun = false
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Fire") and v.Name ~= "Uzi" then
                HasGun = true
            end
        end
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Fire") and v.Name ~= "Uzi" then
                HasGun = true
            end
        end
        if not HasGun then
            sendnotif("notification", "You need a gun (NOT the uzi) to use this command!")
            return
        end
        for i,v in pairs (LocalP.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
        if LocalP.Character:FindFirstChildOfClass("Tool") then
            LocalP.Character:FindFirstChildOfClass("Tool").Parent = LocalP.Backpack
        end
        RemoteMode = true
        local currentpos = LocalP.Character.HumanoidRootPart.Position
        LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,100010,0)
        local distance = 100000
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if --[[v:FindFirstChild("Fire") and]] v.Name ~= "Glock" then
                    v.Grip = CFrame.new(0,distance - 1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
                elseif v:FindFirstChild("Fire") and v.Name == "Glock" or v:FindFirstChild("Fire") and v.Name == "Uzi" then
                    v.Grip = CFrame.new(1.4, distance - 1.5 ,0.2) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(90))
                end
            end
        end
        for i,v in pairs(LocalP.Character:GetChildren()) do
            if v:IsA("Tool") then
                if --[[v:FindFirstChild("Fire") and]] v.Name ~= "Glock" then
                    v.Grip = CFrame.new(0,distance - 1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
                elseif v:FindFirstChild("Fire") and v.Name == "Glock" or v:FindFirstChild("Fire") and v.Name == "Uzi" then
                    v.Grip = CFrame.new(1.4, distance - 1.5 ,0.2) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(90))
                end
            end
        end
        local tool = nil
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v.Name ~= "Uzi" and v:IsA("Tool") and v:FindFirstChild("Fire") then
                tool = v
            end
        end
        if tool ~= nil then
            tool.Parent = LocalP.Character
            game.Workspace.CurrentCamera.CameraSubject = tool:FindFirstChildOfClass("Part")
        end
        for i,v in pairs (LocalP.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
    end
    if Args.Command == "unremotecontrol" or Args.Command == "unremote" then
        RemoteMode = false
        local Shit = {}
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            table.insert(Shit, v)
        end
        for i,v in pairs(LocalP.Character:GetChildren()) do
            table.insert(Shit, v) -- lol shit word
        end
        for i,v in pairs(Shit) do
            if DefaultGrips[string.gsub(v.Name, " ", "")] ~= nil and v:IsA("Tool") then
                v.Grip = DefaultGrips[string.gsub(v.Name, " ", "")]
            elseif v:IsA("Tool") then
                v.Grip = CFrame.new(0,0,0)
            end
        end
        game.Workspace.CurrentCamera.CameraSubject = LocalP.Character.Humanoid
        LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,-99990,0)
    end
    if Args.Command == "itemesp" then
        if itemesp == true then
            sendnotif("notification", "Item ESP is already ON!")
        else
            itemesp = true
            sendnotif("notification", "Item ESP is now ON!")
        end
    end
    if Args.Command == "unitemesp" then
        if itemesp == false then
            sendnotif("notification", "Item ESP is already OFF!")
        else
            itemesp = false
            sendnotif("notification", "Item ESP is now OFF!")
        end
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.UserInputType == Enum.UserInputType.MouseButton2 and not gameProcessedEvent and not rightclickdebounce then
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
                if LocalP.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire") then
                    if LocalP.Character:FindFirstChildWhichIsA("Tool").Name ~= "Uzi" then
                        local opp = GetNearestPlayerToMouse()
                        if opp ~= nil then
                            if opp.Character ~= nil then
                                if opp.Character:FindFirstChild("HumanoidRootPart") then
                                    LocalP.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(opp.Character[targetpart].CFrame + opp.Character.HumanoidRootPart.Velocity/5)
                                else
                                    LocalP.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(opp.Character[targetpart].CFrame + opp.Character.Torso.Velocity/5)
                                end
                            end
                        end
                    elseif LocalP.Character:FindFirstChildWhichIsA("Tool").Name == "Uzi" and canfireuzi == true then
                        canfireuzi = false
                        shootuzi = true
                        LocalP.Character:FindFirstChildWhichIsA("Tool").Unequipped:Connect(function()
                            shootuzi = false
                        end)
                        canfireuzi = true
                    end
                end
            end
        end
        if LocalP.Character:FindFirstChild("Super Uzi") and LocalP.Character ~= nil and (game.Workspace.CurrentCamera.Focus.p - game.Workspace.CurrentCamera.CoordinateFrame.p).Magnitude <= 1 and donemouse == false then
            if uzidebounce == false then
                uzidebounce = true
                for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Fire") then
                        local opp = GetNearestPlayerToMouse()
                        if opp ~= nil and opp.Character ~= nil and v ~= nil then
                            -- v.Grip = CFrame.new(1.5,0.5,-6)
                            v.Parent = LocalP.Backpack
                            v.Parent = LocalP.Character
                            for i = 1,2 do
                                if player.Character:FindFirstChild("HumanoidRootPart") then
                                    v.Fire:FireServer(opp.Character[targetpart].CFrame + opp.Character.HumanoidRootPart.Velocity/5)
                                else
                                    v.Fire:FireServer(opp.Character[targetpart].CFrame + opp.Character.Torso.Velocity/5)
                                end
                            end
                            v.Parent = LocalP.Backpack
                            v.Parent = LocalP.PlayerGui
                            if uzidelay == true then
                                wait()
                            end
                        end
                    end
                end
                uzidebounce = false
            end
        end
    end
    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessedEvent then
        if RemoteMode and LocalP.Character:FindFirstChildOfClass("Tool") then
            if LocalP.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Fire") then
                LocalP.Character:FindFirstChildOfClass("Tool").Fire:FireServer(mouse.Hit)
            end
        end
        leftclickdown = true
        if ControlHeld and ShiftHeld then
            local target = GetNearestPlayerToMouse()
            if target ~= nil then
                aimlocktarget = target.Name
            else
                aimlocktarget = ""
            end
        end
        if LocalP.Character:FindFirstChild("Super Uzi") then
            if uzidebounce == false then
                uzidebounce = true
                for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Fire") then
                        -- v.GripPos = Vector3.new(1.5,0.5,-6)
                        v.Parent = LocalP.Backpack
                        v.Parent = LocalP.Character
                        for i = 1,2 do
                            v.Fire:FireServer(mouse.Hit)
                        end
                        v.Parent = LocalP.Backpack
                        v.Parent = LocalP.PlayerGui
                        if uzidelay == true then
                            wait(0.05)
                        end
                    end
                end
                uzidebounce = false
            end
        end
    end
    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessedEvent and flying then
        --[[
        local default = inffly
        inffly = false
        wait(0.3)
        inffly = default
        --]]
    end
    if inputObject.KeyCode == Enum.KeyCode.Minus and gameProcessedEvent == false then        
        RunSpeed = RunSpeed - 0.1
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = "Your Super-Run speed is now "..tostring(RunSpeed).."!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.Equals and gameProcessedEvent == false then        
        RunSpeed = RunSpeed + 0.1
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = "Your Super-Run speed is now "..tostring(RunSpeed).."!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.K and gameProcessedEvent == false then        
        SuperRun = not SuperRun
        local currenttext = ""
        if SuperRun == true then
            currenttext = "SuperRun is now turned ON!"
        else
            currenttext = "SuperRun is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftBracket and gameProcessedEvent == false then        
        JumpHeight = JumpHeight - 0.1
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = "Your Super-Jump height is now "..tostring(JumpHeight).."!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.RightBracket and gameProcessedEvent == false then        
        JumpHeight = JumpHeight + 0.1
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = "Your Super-Jump height is now "..tostring(JumpHeight).."!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.L and gameProcessedEvent == false then        
        SuperJump = not SuperJump
        local currenttext = ""
        if SuperJump == true then
            currenttext = "SuperJump is now turned ON!"
        else
            currenttext = "SuperJump is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false and LocalP.Character:FindFirstChild("Super Uzi") then    
        uzidelay = not uzidelay
        local currenttext = ""
        if uzidelay == true then
            currenttext = "UZI DELAY is now turned ON!"
        else
            currenttext = "UZI DELAY is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    elseif inputObject.KeyCode == Enum.KeyCode.Q and flying == true and gameProcessedEvent == false then
        inffly = not inffly
        local currenttext = ""
        if inffly == true then
            currenttext = "INF FLY is now turned ON!"
        else
            currenttext = "INF FLY is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.F and gameProcessedEvent == false then
        if firstfly then
            sendnotif("CHANGING FLY SPEED", "Use the :flyspeed NUMBER command to set your fly speed!")
            firstfly = false
        end
        togglefly()
    end
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
        EHeld = true
        if LocalP.Backpack:FindFirstChild("ServerTraits") and LocalP.Character ~= nil then
            if LocalP.Backpack.ServerTraits:FindFirstChild("Finish") then
                if not LocalP.Character:FindFirstChildOfClass("Tool") then
                    if LocalP.Backpack:FindFirstChild("Knife") then
                        LocalP.Backpack.ServerTraits.Finish:FireServer(LocalP.Backpack.Knife)
                    elseif LocalP.Backpack:FindFirstChild("Punch") then
                        LocalP.Backpack.ServerTraits.Finish:FireServer(LocalP.Backpack.Punch)
                    end
                elseif LocalP.Character:FindFirstChildOfClass("Tool") then
                    if LocalP.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Fire") then
                        if LocalP.Backpack:FindFirstChild("Knife") then
                            LocalP.Backpack.ServerTraits.Finish:FireServer(LocalP.Backpack.Knife)
                        elseif LocalP.Backpack:FindFirstChild("Punch") then
                            LocalP.Backpack.ServerTraits.Finish:FireServer(LocalP.Backpack.Punch)
                        end
                    end
                end
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftAlt then
        LeftAltHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.X and gameProcessedEvent == false then
        noclip = not noclip
        local currenttext = ""
        if noclip == true then
            currenttext = "NoClip is now turned ON!"
        else
            currenttext = "NoClip is now turned OFF!"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.C and gameProcessedEvent == false then
        if healing == false then
            burgerheal()
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftShift and gameProcessedEvent == false then
        ShiftHeldLegacy = true
        if LocalP.Character ~= nil then
            wait()
            if LocalP.Character:FindFirstChildOfClass("Humanoid") then
                if SpeedType == "walkspeed" and SuperRun == true  then
                    LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = RunSpeed
                else
                    LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 24.89999961853
                end
            end
        end
        if SpeedType == "cframe" and SuperRun == true  then
            ShiftHeld = true
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftControl then
        ControlHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.W and gameProcessedEvent == false and SuperRun == true then
        WHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.S and gameProcessedEvent == false and SuperRun == true then
        SHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.A and gameProcessedEvent == false and SuperRun == true then
        AHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.D and gameProcessedEvent == false and SuperRun == true then
        DHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.Space and gameProcessedEvent == false and SuperJump == true then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Humanoid") then
                LocalP.Character:FindFirstChild("Humanoid").Sit = false
            end
        end
        SpaceHeld = true
    end
    if inputObject.KeyCode == Enum.KeyCode.Z and not gameProcessedEvent then
        if targetpart == "Head" then
            targetpart = "Torso"
        elseif targetpart == "Torso" then
            targetpart = "Head"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = "Aimbot is now targeting "..string.upper(targetpart).."s!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
    if inputObject.KeyCode == Enum.KeyCode.T and not gameProcessedEvent then
       if mouse.Target and bypass then
            if LocalP.Character ~= nil then
                if LocalP.Character:FindFirstChild("Torso") then
                    local torso = LocalP.Character.Torso
                    local orient = torso.CFrame - torso.CFrame.p
                    torso.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) * orient
                end
            end
        elseif mouse.Target and not bypass and LocalP:DistanceFromCharacter(mouse.Hit.p) < 45 then
            if LocalP.Character ~= nil then
                if LocalP.Character:FindFirstChild("HumanoidRootPart") then
                    local hum = LocalP.Character.HumanoidRootPart
                    local orient = hum.CFrame - hum.CFrame.p
                    hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) * orient
                end
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.R and not gameProcessedEvent and not rolldebounce then
        rolldebounce = true
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://229782914"
        local roll = LocalP.Character.Humanoid:LoadAnimation(Anim)
        roll.Name = "FUCK"
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Left Leg") and LocalP.Character:FindFirstChild("Right Leg") then
                LocalP.Character:FindFirstChild("Left Leg").Parent = game.Workspace.Terrain
                LocalP.Character:FindFirstChild("Right Leg").Parent = game.Workspace.Terrain
            end
        end
        roll:Play(0)
        roll:AdjustSpeed(1)
        roll.Stopped:Connect(function()
            if game.Workspace.Terrain:FindFirstChild("Left Leg") and game.Workspace.Terrain:FindFirstChild("Right Leg") and LocalP.Character ~= nil then
                game.Workspace.Terrain:FindFirstChild("Left Leg").Parent = LocalP.Character
                game.Workspace.Terrain:FindFirstChild("Right Leg").Parent = LocalP.Character
            end
            rolldebounce = false
        end)
        repeat 
            LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
            wait(0.000001)
        until rolldebounce == false or LocalP.Character.Humanoid.Health < 2
    end
    if inputObject.KeyCode == Enum.KeyCode.BackSlash and not gameProcessedEvent then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChildOfClass("Tool") then
                LocalP.Character:FindFirstChildOfClass("Tool").Parent = game.Workspace.Terrain
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.P and not gameProcessedEvent then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Torso") then
                if LocalP.Character.Torso:FindFirstChildOfClass("Glue") then
                    LocalP.Character.Torso.Neck:Destroy()
                else
                    LocalP.Character:ClearAllChildren()
                    local char = Instance.new("Model", workspace)
                    Instance.new("Humanoid", char)
                    LocalP.Character = char
                end
            end
        end
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.UserInputType == Enum.UserInputType.MouseButton2 and not gameProcessedEvent then
        rightclickdown = false
        shootuzi = false
    end
    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessedEvent then
        leftclickdown = false
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        ShiftHeldLegacy = false
        ShiftHeld = false
        if LocalP.Character ~= nil then
            wait()
            if LocalP.Character:FindFirstChildOfClass("Humanoid") then
                LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = setwalkspeed
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.W and not gameProcessedEvent then
        WHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.S and not gameProcessedEvent then
        SHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.A and not gameProcessedEvent then
        AHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.D and not gameProcessedEvent then
        DHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.Space and not gameProcessedEvent then
        SpaceHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.E then
        EHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftAlt then
        LeftAltHeld = false
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftControl then
        ControlHeld = false
        local AnimationTracks = LocalP.Character.Humanoid:GetPlayingAnimationTracks()
        for i,v in pairs (AnimationTracks) do
            if v.Name == "Crouch" then
                v:Stop()
            end
        end
    end

end)




LocalP.Backpack.ChildAdded:Connect(function(child)
    local uziamount = 0
    for i,v in pairs(LocalP.Backpack:GetChildren()) do
        if v.Name == "Uzi" then
            uziamount = uziamount + 1
        end
    end
    if child:IsA("Tool") and child.Name == "Uzi" and uziamount >= 2 then
        wait()
        child.Parent = LocalP.PlayerGui
        if child:FindFirstChild("Clips") and child:FindFirstChild("Ammo") then
            local mark = Instance.new("BoolValue")
            mark.Name = "Monitoring"
            mark.Parent = child
            child.Clips.Changed:Connect(function()
                UpdateUziStats()
            end)
            child.Ammo.Changed:Connect(function()
                UpdateUziStats()
            end)
        end
        SuperUzi()
    end
end)

LocalP.Backpack.ChildAdded:Connect(function(child)
    if child:IsA("Tool") and child.Name == "Burger" and eating == false then
        if not LocalP.PlayerGui:FindFirstChild("Burger") then
            game.StarterGui:SetCore("SendNotification", {
                Title = "C TO USE BURGERS!";
                Text = "Press C to fully heal with your stored burgers!";
                Icon = "rbxassetid://2541869220";
                Duration = 5;
            })
        end
        wait()
        child.Parent = LocalP.PlayerGui
        local burgeramount = 0
        for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
            if v.Name == "Burger" then
                burgeramount = burgeramount + 1
            end
        end
        if not string.find(tostring(burgeramount / 5), "%.") then
            game.StarterGui:SetCore("SendNotification", {
                Title = tostring(burgeramount).." BURGERS LEFT!";
                Text = tostring(burgeramount * 24).." stored health | OwO";
                Icon = "rbxassetid://2541869220";
                Duration = 5;
            })
        end
    end
end)


LocalP.CharacterAdded:Connect(function(char)
    repeat wait() until LocalP.Character ~= nil
    repeat wait() until LocalP.Character:FindFirstChild("Humanoid")
    repeat wait() until LocalP:FindFirstChild("Backpack")
    if LocalP.Character ~= nil then
        if LocalP.Character:FindFirstChild("Humanoid") then
            LocalP.Character.Humanoid.Died:Connect(function()
                RemoteMode = false
                if flying then
                    togglefly()
                end
                rolldebounce = false
                setwalkspeed = 15.89999961853
            end)
            char.Humanoid.HealthChanged:Connect(function(health)
                if health <= LocalP.Character.Humanoid.MaxHealth - 24 and autoheal == true then
                    burgerheal()
                end
            end)
            char.Humanoid.AnimationPlayed:Connect(function(track)
                if string.find(track.Animation.AnimationId, "464531742") then
                    track:Stop()
                end
                if rolldebounce == true and track.Name ~= "FUCK" and not string.find(string.lower(track.Name), "walk") then
                    track:Stop()
                end
                if LocalP.Character:FindFirstChildOfClass("Tool") and track.Name == "Fires" or LocalP.Character:FindFirstChildOfClass("Tool") and track.Name == "Animation" then
                    local FoundWeld = false
                    for i,v in pairs(LocalP.Character:FindFirstChildOfClass("Tool"):GetDescendants()) do
                        if v.Name == "Weld" and not v:FindFirstAncestor("Barrel") and not v:FindFirstAncestor("Heh") then
                            FoundWeld = true
                        end
                    end
                    if not FoundWeld and LocalP.Character:FindFirstChildOfClass("Tool").Name ~= "Glock" and LocalP.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Fire") then
                        track:Stop()
                    end
                end
            end)
            LocalP.Character.Humanoid.ChildAdded:Connect(function(child)
                if child:IsA("ObjectValue") then
                    if triggerbot then
                        autoattack(game.Players:FindFirstChild(child.Value.Name))
                        local state = LocalP.Character.Humanoid:GetState()
                        if state == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding then
	                    LocalP.Character.Humanoid.PlatformStand = false
	                    LocalP.Character.Humanoid.Sit = false
	                    LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	                    LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                        end
                    end
                    markplayer(game.Players:FindFirstChild(child.Value.Name))
                end
            end)
        end
    end
    char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if noslow then
            if char.Humanoid.WalkSpeed == 0 then 
	        char.Humanoid.WalkSpeed = 16
	    end
        end
    end)
    char.Humanoid.StateChanged:Connect(function(old, new)
	if new == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding and antiknockdown == true then
	    char.Humanoid.PlatformStand = false
	    char.Humanoid.Sit = false
	    char.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	    char.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	end
    end)
    LocalP.Backpack.ChildAdded:Connect(function(child)
        local uziamount = 0
        for i,v in pairs(LocalP.Backpack:GetChildren()) do
            if v.Name == "Uzi" then
                uziamount = uziamount + 1
            end
        end
        if child:IsA("Tool") and child.Name == "Uzi" and uziamount >= 2 then
            wait()
            child.Parent = LocalP.PlayerGui
            SuperUzi()
            if child:FindFirstChild("Clips") and child:FindFirstChild("Ammo") then
                local mark = Instance.new("BoolValue")
                mark.Name = "Monitoring"
                mark.Parent = child
                child.Clips.Changed:Connect(function()
                    UpdateUziStats()
                end)
                child.Ammo.Changed:Connect(function()
                    UpdateUziStats()
                end)
            end
        end
    end)
    LocalP.Character.ChildAdded:Connect(function(child)
        if child:IsA("Tool") and RemoteMode == true then
            game.Workspace.CurrentCamera.CameraSubject = child:FindFirstChildOfClass("Part")
        end
        if child:IsA("Tool") and child.Name == "Spray" then
            getsenv(child:FindFirstChildOfClass("LocalScript")).range = math.huge
        end
        if child:IsA("Tool") and not child:FindFirstChild("done") then
            local madechanges = false
            for i,v in pairs(child:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                    madechanges = true
                end
            end
            if madechanges == true then
                local done = Instance.new("BoolValue")
                done.Name = "done"
                done.Parent = child
            end
        end
        if child:IsA("Tool") and not child:FindFirstChild("donestats") then
            if child:FindFirstChild("Fire") and child:FindFirstChild("Info") and child:FindFirstChild("Ammo") then
                child.Equipped:Connect(function()
                     if Range == nil then
                         return
                     end
                     Shots.Text = tostring(child.Ammo.Value).." Shots"
                     Damage.Text = tostring(child.Info.Damage.Value).." Damage"
                     KODamage.Text = ""
                     Stamina.Text = ""
                     Range.Text = ""
                end)
                child.Unequipped:Connect(function()
                     if Range == nil then
                         return
                     end
                     Shots.Text = ""
                     Damage.Text = ""
                     KODamage.Text = ""
                     Stamina.Text = ""
                     Range.Text = ""
                end)
                child.Activated:Connect(function()
                     if Range == nil then
                         return
                     end
                     Shots.Text = tostring(child.Ammo.Value).." Shots"
                end)
            elseif not child:FindFirstChild("Fire") and child:FindFirstChild("Info") then
                child.Equipped:Connect(function()
                     if Range == nil then
                         return
                     end
                     Shots.Text = ""
                     Damage.Text = tostring(child.Info.Damage.Value).." Damage"
                     KODamage.Text = tostring(child.Info.KO.Value).." KODamage"
                     Stamina.Text = tostring(child.Info.Stam.Value).." Stamina"
                     Range.Text = tostring(child.Info.Range.Value).." Range"
                end)
                child.Unequipped:Connect(function()
                     if Range == nil then
                         return
                     end
                     Shots.Text = ""
                     Damage.Text = ""
                     KODamage.Text = ""
                     Stamina.Text = ""
                     Range.Text = ""
                end)
            end
            local done = Instance.new("BoolValue")
            done.Name = "donestats"
            done.Parent = child
        end
    end)
    LocalP.Backpack.ChildAdded:Connect(function(child)
        if child:IsA("Tool") and child.Name == "Burger" and eating == false then
            if not LocalP.PlayerGui:FindFirstChild("Burger") then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "C TO USE BURGERS!!";
                    Text = "Press C to fully heal with your stored burgers!";
                    Icon = "rbxassetid://2541869220";
                    Duration = 5;
                })
            end
            wait()
            child.Parent = LocalP.PlayerGui
            local burgeramount = 0
            for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                if v.Name == "Burger" then
                    burgeramount = burgeramount + 1
                end
            end
            if not string.find(tostring(burgeramount / 5), "%.") then
                game.StarterGui:SetCore("SendNotification", {
                    Title = tostring(burgeramount).." BURGERS LEFT!";
                    Text = tostring(burgeramount * 24).." stored health | OwO";
                    Icon = "rbxassetid://2541869220";
                    Duration = 5;
                })
            end
        end
    end)
    repeat wait() until LocalP.Character:FindFirstChild("Right Leg")
    LocalP.Character["Right Leg"].Touched:Connect(function(part)
        if string.find(string.lower(part.Parent.Name), "buy ammo") and reloaddebounce == false then
            reloaddebounce = true
            if LocalP.Character:FindFirstChild("Super Uzi") then
                local leastclips = math.huge
                local chosenuzi = nil
                if LocalP.PlayerGui:FindFirstChild("Uzi") then
                    for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                        if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Clips") then
                            if v:FindFirstChild("Clips").Value < leastclips then
                                leastclips = v:FindFirstChild("Clips").Value
                                chosenuzi = v
                            end
                        end
                    end
                end
                chosenuzi.Parent = LocalP.Backpack
                chosenuzi.Parent = LocalP.Character
                repeat wait() until part.BrickColor == BrickColor.new("Bright red")
                chosenuzi.Parent = LocalP.PlayerGui
            end
            reloaddebounce = false
        end
    end)
    repeat wait() until LocalP:FindFirstChild("PlayerGui")
    repeat wait() until LocalP.PlayerGui:FindFirstChild("HUD")
    CreateWatermark()
    CreateStats()
end)

LocalP.Character["Right Leg"].Touched:Connect(function(part)
    if string.find(string.lower(part.Parent.Name), "buy ammo") and reloaddebounce == false then
        reloaddebounce = true
        if LocalP.Character:FindFirstChild("Super Uzi") then
            local leastclips = math.huge
            local chosenuzi = nil
            if LocalP.PlayerGui:FindFirstChild("Uzi") then
                for i,v in pairs(LocalP.PlayerGui:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Uzi" and v:FindFirstChild("Clips") then
                        if v:FindFirstChild("Clips").Value < leastclips then
                            leastclips = v:FindFirstChild("Clips").Value
                            chosenuzi = v
                        end
                    end
                end
            end
            chosenuzi.Parent = LocalP.Backpack
            chosenuzi.Parent = LocalP.Character
            repeat wait() until part.BrickColor == BrickColor.new("Bright red")
            chosenuzi.Parent = LocalP.PlayerGui
        end
        reloaddebounce = false
    end
end)



game.CoreGui.DescendantAdded:Connect(function(dec)
    if dec.Name == "PopupFrame" then
        local children = dec:GetChildren()
        local shouldtrace = false
        repeat wait() until dec:FindFirstChild("InspectButton")
        container = dec:FindFirstAncestor("PlayerListContainer")

        local epic = tostring(children[#children].Position.Height)
        local space = string.find(epic, " ")
        local offset = string.sub(epic, space + 1, -1)
        local newoffset = tonumber(offset) + 26
        local clone = children[#children]:Clone()
        clone.Position = UDim2.new(0,0,0,newoffset)
        clone.Parent = children[#children].Parent
        clone.Name = "FindButton"
        clone.Text = "TOGGLE TRACE"
        clone.MouseButton1Click:Connect(function()
            container = clone:FindFirstAncestor("PlayerListContainer")
            for i,v in pairs(container.ScrollList:GetDescendants()) do
                if v:IsA("TextButton") and tostring(v.BackgroundColor3) == "0, 1, 1" then
                    local player = game.Players:FindFirstChild(v.Parent.Name)
                    if player.Character.Head:FindFirstChild("TRACE") then
                        untrace(game.Players:FindFirstChild(v.Parent.Name))
                    else
                        trace(game.Players:FindFirstChild(v.Parent.Name))
                    end 
                end
            end
        end)
    end
end)
local JumpingStateDebounce = false
game:GetService('RunService').Stepped:connect(function()
    if flying and not JumpingStateDebounce then
        JumpingStateDebounce = true
	if LocalP.Character then
	    if LocalP.Character:FindFirstChild("Humanoid") then
                if inffly and not bypass then
                    wait()
                    LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
	   end
	end
        JumpingStateDebounce = false
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if bypass then
        --pcall(function()
            local Root = LocalP.Character:FindFirstChild("HumanoidRootPartP")
            if Root then
                LocalP.Character:FindFirstChild("HumanoidRootPartP").Parent = nil
            end
                -- LocalP.Character:FindFirstChild("HumanoidRootPartP").Parent = nil
        --end)
    end

    if passivemode then
        local Leg = LocalP.Character:FindFirstChild("Left Leg")
        if Leg then
            LocalP.Character:FindFirstChild("Left Leg").Parent = nil
        end
    end

    if camlocktarget ~= nil then
        if camlocktarget.Character ~= nil then
            if camlocktarget.Character:FindFirstChild("Head") then
                game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, camlocktarget.Character.Head.CFrame.p)
            end
        end
    end

    if LeftAltHeld and EHeld then
        if LocalP.Backpack:FindFirstChild("ServerTraits") and LocalP.Character ~= nil then
            if LocalP.Backpack.ServerTraits:FindFirstChild("Finish") and LocalP.Character:FindFirstChildOfClass("Tool") then
                LocalP.Backpack.ServerTraits.Finish:FireServer(LocalP.Character:FindFirstChildOfClass("Tool"))
            end
        end
    end

    if shootuzi == true then
        local opp = GetNearestPlayerToMouse()
        if opp ~= nil and opp.Character ~= nil then
            if opp.Character:FindFirstChild("HumanoidRootPart") then
                LocalP.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(opp.Character:FindFirstChild(targetpart).CFrame + opp.Character.HumanoidRootPart.Velocity/5)
            else
                LocalP.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Fire"):FireServer(opp.Character:FindFirstChild(targetpart).CFrame + opp.Character.Torso.Velocity/5)
            end
            wait()
        end
    end

    if noclip == true then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Head") and LocalP.Character:FindFirstChild("Torso") and LocalP.Character:FindFirstChild("Humanoid") then
                LocalP.Character.Head.CanCollide = false
                LocalP.Character.Torso.CanCollide = false
                LocalP.Character.Humanoid.Sit = false
            end
        end
    end

    if flying then
	if LocalP.Character then
	    if LocalP.Character:FindFirstChild("Humanoid") then
		LocalP.Character.Humanoid.PlatformStand = false
		LocalP.Character.Humanoid.Sit = false
                --if inffly and not bypass then
                    LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
                --else
                    --LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
                --end
	   end
	   if LocalP.Character:FindFirstChild("Float") then
		LocalP.Character:FindFirstChild("Float").CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
	   end
	end
    end

    if ShiftHeld == true then
        if WHeld == true then
            LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-RunSpeed)
        end
        if SHeld == true then
            LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,RunSpeed)
        end
        if DHeld == true then
            LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(RunSpeed,0,0)
        end
        if AHeld == true then
            LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(-RunSpeed,0,0)
        end
    end
    if SpaceHeld == true then
        LocalP.Character.HumanoidRootPart.CFrame = LocalP.Character.HumanoidRootPart.CFrame * CFrame.new(0,JumpHeight,0)
    end
end)

print("----------------FEATURES-------------------")
print("Chat commands can also be done as /e :COMMANDNAME or /e COMMANDNAME")
print("-------------------------------------------")
print("---------KEYS---------")
print("X Key - Toggle noclip")
print("F Key - Toggles flight")
print("C Key - Full heal / Use stored burgers")
print("Q Key - Toggle mult-uzi delay (press with multi-uzi tool out)")
print("Q Key (While flying) - Change between inf fly and shooting fly")
print("Z Key - Change the aimbot's target between heads and torsos")
print("T Key - Teleports you to your mouse's position") -- When the bypass is on, this key will teleport you to your mouse
print("R Key - Let's you do a cool combat roll B)")
print("P Key - Resets your character")
print("E Key - Stomp people (Tweaked to work without weapons and with guns)")
print("")
print("CTRL + SHIFT + CLICK - Set aimlock target to player closest to your mouse")
print("HOLD SHIFT + E - Spam stomp")
print("")
print("K Key - Toggle super-run")
print("- Key - Lower super-run speed")
print("+ Key - Raise super-run speed")
print("")
print("L Key - Toggle super-jump")
print("[ Key - Lower super-jump speed")
print("] Key - Raise super-jump speed")
print("")
print("RIGHT CLICK")
print("- Right click on doors to toggle their locks")
print("- Right click with a gun out in first person to target fire at the player closest to your mouse")
print("")
print("LEADERBOARD")
print("- Click a player's name on the leaderboard, then click TOGGLE TRACE to toggle tracing them")
print("")
print("---------CHAT COMMANDS---------")
print("Shortened names work")
print("-------------------------------")
print("")
print(":find PLAYERNAME - finds player")
print(":trace PLAYERNAME - finds player")
print(":unfind PLAYERNAME - unfinds player")
print(":untrace PLAYERNAME - unfinds player")
print("")
print(":noslow - Prevents you from being stopped while reloading, eating, stomping, etc")
print(":unnoslow - Turns off noslow")
print("")
print(":noknock - Prevents you from being tripped or stunned")
print(":unnoknock - Turns off noknock")
print("")
print(":triggerbot - Automatically attacks people who attack you with multi-uzi")
print(":trigger - Automatically attacks people who attack you with multi-uzi")
print(":untriggerbot - Turns off triggerbot")
print(":untrigger - Turns off triggerbot")
print("")
print(":flyspeed NUMBER - sets your flyspeed to NUMBER")
print("")
print(":autoheal - Automatically heals you if you take over 24 damage")
print(":unautoheal - Automatically heals you if you take over 24 damage")
print("")
print(":bypass - Turns the teleport + fly bypass ON")
print(":unbypass - Turns the teleport + fly bypass OFF")
print("")
print(":get ITEM - gets the item with the inputted name (bypass only)")
print("")
print(":invis TOOLNAME - Makes the gun invisible, and stops it's animations")
print("")
print(":cashfarm - Afk cash farm (use overnight, etc)")
print(":uncashfarm - Turns off the afk cash farm")
print("")
print(":bring THING - Brings thing to you (list of things you can bring below)")
print(":bring THING PLAYERNAME - Brings thing to player with matching name")
print("")
print(":walkspeed NUMBER - Sets your walkspeed to the given number")
print(":ws NUMBER - Sets your walkspeed to the given number")
print(":runspeed NUMBER - Sets your runspeed to the given number (CFrame run is faster than WalkSpeed run)")
print(":runtype RUNTYPE - Current runtypes are cframe and walkspeed (shortened names work)")
print("")
print(":aimlock PLAYERNAME - Makes your shots always target the target player")
print(":lockaim PLAYERNAME - Makes your shots always target the target player")
print(":unaimlock - Makes your left click shoot forwards, like normal")
print(":unlockaim - Makes your left click shoot forwards, like normal")
print("")
print(":camlock PLAYERNAME - Locks your camera onto a certain player (good for melee fights)")
print(":lockcam PLAYERNAME - Locks your camera onto a certain player (good for melee fights)")
print(":uncamlock - Returns your camera to normal")
print(":unlockcam - Returns your camera to normal")
--[[
print("")
print(":passivemode - Breaks your tools, and makes you invulnerable to all attacks")
print(":passive - Breaks your tools, and makes you invulnerable to all attacks")
print(":unpassivemode - Turns off passive mode")
print(":unpassive - Turns off passive mode")
--]]
print("")
print(":rejoin - Rejoins the server")
print(":reset - Resets your character")
print("")
print("-------------------------------------------")
print('-------------"GET"-ABLE ITEMS--------------')
print("-------------------------------------------")
print("")
print("Things below can be gotten with the :get command")
print('              Example: ":get uzi"               ')
print("")
print("uzi")
print("glock")
print("ammo")
print("sawed")
print("shotty")
print("burger")
print("drink")
print("")
print("-------------------------------------------")
print('------------"BRING"-ABLE ITEMS-------------')
print("-------------------------------------------")
print("")
print("Things below can be gotten with the :bring command")
print('             Example: ":bring planks"             ')
print("             Shortened names work               ")
print("")
print("planks - All planks on the map")
print("cans - All soda cans on the map")
print("bins - All trashcans on the map")
print("cars - All cars on the map (that aren't being used)")
print("grass - The one unanchored grass part")
print("wedges - All the unanchored wedges")
print("misc - All unanchored wedges and grass")
print("all - All unanchored parts")
print("")
print("-------------------------------------------")
print('--------------USING MULTI-UZI--------------')
print("-------------------------------------------")
print("")
print("LEFT CLICK")
print("- Normal multi-uzi shot")
print("RIGHT CLICK")
print("- Targeted multi-uzi shot (shoots at player closest to mouse)")
print("Q Key")
print("- Toggles uzi delay (difference between fast fire and one shot)")
print("RELOADING")
print("- Walk over a reload buying pad with the multi-uzi equipped to reload uzis one by one")
print("GATHER UZIS")
print("- Uzis are stored whenever you obtain a new uzi")
print("MULTI-UZI INFO")
print("- Hover your mouse over the multi-uzi tool to see info. (amount of uzis, total damage, clips, and ammo)")
print("")
print("-------------------------------------------")
print("Vortexturize | aidez moi#4192 | Aidez")
print("-------------------------------------------")

for i,v in pairs(game.CoreGui.RobloxGui:GetChildren()) do
    if not string.find(v.Name, "%a") and not string.find(v.Name, "%p") and string.find(v.Name, "%d") then
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name ~= "Terrain" then
                v:Destroy()
            end
        end
        wait(1)
        game.Players.LocalPlayer:Kick("no mixing cyrus with mega combat")
    end
end

repeat wait() until LocalP.Character ~= nil

game.CoreGui.RobloxGui.ChildAdded:Connect(function(v)
    if not string.find(v.Name, "%a") and not string.find(v.Name, "%p") and string.find(v.Name, "%d") then
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name ~= "Terrain" then
                v:Destroy()
            end
        end
        wait(1)
        game.Players.LocalPlayer:Kick("no mixing cyrus with mega combat")
    end
end)

LocalP.Character.ChildAdded:Connect(function(child)
    if child:IsA("Tool") and RemoteMode == true then
        game.Workspace.CurrentCamera.CameraSubject = child:FindFirstChildOfClass("Part")
    end
    if child:IsA("Tool") and child.Name == "Spray" then
        getsenv(child:FindFirstChildOfClass("LocalScript")).range = math.huge
    end
    if child:IsA("Tool") and not child:FindFirstChild("done") then
        local madechanges = false
        for i,v in pairs(child:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
                madechanges = true
            end
        end
        if madechanges == true then
            local done = Instance.new("BoolValue")
            done.Name = "done"
            done.Parent = child
        end
    end
    if child:IsA("Tool") and not child:FindFirstChild("donestats") then
        if child:FindFirstChild("Fire") and child:FindFirstChild("Info") and child:FindFirstChild("Ammo") then
            child.Equipped:Connect(function()
                 if Range == nil then
                     return
                 end
                 Shots.Text = tostring(child.Ammo.Value).." Shots"
                 Damage.Text = tostring(child.Info.Damage.Value).." Damage"
                 KODamage.Text = ""
                 Stamina.Text = ""
                 Range.Text = ""
            end)
            child.Unequipped:Connect(function()
                 if Range == nil then
                     return
                 end
                 Shots.Text = ""
                 Damage.Text = ""
                 KODamage.Text = ""
                 Stamina.Text = ""
                 Range.Text = ""
            end)
            child.Activated:Connect(function()
                 if Range == nil then
                     return
                 end
                 Shots.Text = tostring(child.Ammo.Value).." Shots"
            end)
        elseif not child:FindFirstChild("Fire") and child:FindFirstChild("Info") then
            child.Equipped:Connect(function()
                 if Range == nil then
                     return
                 end
                 Shots.Text = ""
                 Damage.Text = tostring(child.Info.Damage.Value).." Damage"
                 KODamage.Text = tostring(child.Info.KO.Value).." KODamage"
                 Stamina.Text = tostring(child.Info.Stam.Value).." Stamina"
                 Range.Text = tostring(child.Info.Range.Value).." Range"
            end)
            child.Unequipped:Connect(function()
                 if Range == nil then
                     return
                 end
                 Shots.Text = ""
                 Damage.Text = ""
                 KODamage.Text = ""
                 Stamina.Text = ""
                 Range.Text = ""
            end)
        end
        local done = Instance.new("BoolValue")
        done.Name = "donestats"
        done.Parent = child
    end
end)

game.Workspace.CurrentCamera:GetPropertyChangedSignal("Focus"):Connect(function()
    if (game.Workspace.CurrentCamera.Focus.p - game.Workspace.CurrentCamera.CoordinateFrame.p).Magnitude <= 1 and RemoteMode then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChildOfClass("Tool") then
                for i,v in pairs(LocalP.Character:FindFirstChildOfClass("Tool"):GetChildren()) do
                    if checkproperty(v, "Transparency") then
                        v.Transparency = 1
                    end
                end
            end
        end
    else
        if LocalP.Character ~= nil and RemoteMode == true then
            if LocalP.Character:FindFirstChildOfClass("Tool") then
                for i,v in pairs(LocalP.Character:FindFirstChildOfClass("Tool"):GetChildren()) do
                    if checkproperty(v, "Transparency") then
                        v.Transparency = 0
                    end
                end
            end
        end
    end
end)


repeat wait() until LocalP.Character:FindFirstChild("Humanoid")

LocalP.Character.Humanoid.Died:Connect(function()
    RemoteMode = false
    if flying then
        togglefly()
    end
    rolldebounce = false
    setwalkspeed = 15.89999961853
end)

LocalP.Character.Humanoid.HealthChanged:Connect(function(health)
    if health <= LocalP.Character.Humanoid.MaxHealth - 24 and autoheal == true then
        burgerheal()
    end
end)
LocalP.Character.Humanoid.AnimationPlayed:Connect(function(track)
    if string.find(track.Animation.AnimationId, "464531742") then
        track:Stop()
    end
    if rolldebounce == true and track.Name ~= "FUCK" and not string.find(string.lower(track.Name), "walk") then
        track:Stop()
    end
    if LocalP.Character:FindFirstChildOfClass("Tool") and track.Name == "Fires" or LocalP.Character:FindFirstChildOfClass("Tool") and track.Name == "Animation" then
        local FoundWeld = false
        for i,v in pairs(LocalP.Character:FindFirstChildOfClass("Tool"):GetDescendants()) do
            if v.Name == "Weld" and not v:FindFirstAncestor("Barrel") and not v:FindFirstAncestor("Heh") then
                FoundWeld = true
            end
        end
        if not FoundWeld and LocalP.Character:FindFirstChildOfClass("Tool").Name ~= "Glock" and LocalP.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Fire") then
            track:Stop()
        end
    end
end)

DefaultWalkSpeed = LocalP.Character.Humanoid.WalkSpeed




LocalP.Character.Humanoid.StateChanged:Connect(function(old, new)
    if new == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding and antiknockdown == true then
	LocalP.Character.Humanoid.PlatformStand = false
	LocalP.Character.Humanoid.Sit = false
	LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
end)


LocalP.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    if noslow then
        if LocalP.Character.Humanoid.WalkSpeed == 0 then 
            LocalP.Character.Humanoid.WalkSpeed = 16
        end
    end
end)

LocalP.Character.Humanoid.ChildAdded:Connect(function(child)
    if child:IsA("ObjectValue") then
        if triggerbot then
            autoattack(game.Players:FindFirstChild(child.Value.Name))
            local state = LocalP.Character.Humanoid:GetState()
            if state == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.PlatformStanding then
	        LocalP.Character.Humanoid.PlatformStand = false
	        LocalP.Character.Humanoid.Sit = false
	        LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	        LocalP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            end
        end
        markplayer(game.Players:FindFirstChild(child.Value.Name))
    end
end)

if doloadstrings then
    for i, x in pairs(game.Players:GetChildren()) do
        if x ~= nil and x:FindFirstAncestor("Game") then
            for i = 1,#hitlist do
	        if string.lower(x.Name) == tostring(string.lower(hitlist[i])) then
	            hitlistmark(x)
                    x.CharacterAppearanceLoaded:Connect(function(char)
                        if game.Players:FindFirstChild(char.Name) then
                            hitlistmark(game.Players:FindFirstChild(char.Name))
                        end
                    end)
	        end
            end
            if x:IsInGroup(5514350) or x:IsInGroup(5186011) then
	        hitlistmark(x)
                x.CharacterAppearanceLoaded:Connect(function(char)
                    if game.Players:FindFirstChild(char.Name) then
                        hitlistmark(game.Players:FindFirstChild(char.Name))
                    end
                end)
            end
        end
    end
    for i,z in pairs(game.CoreGui:GetDescendants()) do
        if z:IsA("TextLabel") and z.Name == "PlayerName" and game.Players:FindFirstChild(z.Text) then
            if IsInTable(special, z.Text) then
                z.TextColor3 = Color3.new(0, 255, 255)
                if z.Parent:FindFirstChild("MembershipIcon") then
                    z.Parent.MembershipIcon.Image = "rbxassetid://3434363475"
                elseif z.Parent.Parent:FindFirstChild("PlayerIcon") then
                    z.Parent.Parent.PlayerIcon.Image = "rbxassetid://3434363475"
                end
            end
        end
    end
end


repeat wait() until LocalP:FindFirstChild("PlayerGui")
repeat wait() until LocalP.PlayerGui:FindFirstChild("HUD")

CreateWatermark()

repeat wait() until LocalP.PlayerGui.HUD:FindFirstChild("Ammo")

CreateStats()

local VirtualUser = game:GetService("VirtualUser")
LocalP.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "Done injecting!";
    Text = "Mega Combat V3 by Aidez!";
    Icon = "rbxassetid://847562022";
    Duration = 5;
})
game.StarterGui:SetCore("SendNotification", {
    Title = "F9 to see commands";
    Text = "Press F9 to see a list of all the script's features!";
    Icon = "rbxassetid://2541869220";
    Duration = 7;
})

spawn(function()
   while true do
       game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
       game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
       game:GetService("RunService").Stepped:wait()
   end
end)

--[[


UPDATE LOG:

==========11/18/2019==========
- Added autoheal (:autoheal and :unautoheal) (needs burgers to heal you)
- You no longer get stopped while using the C key or autoheal
- You now auto-matically re-equip your tools after healing
- Eating animation is now automatically canceled.
==========11/19/2019==========
- Added monitoring for people who kill hitlisted players!
- People who kill a certain amount of hitlisted players will be rewarded with ranks in the server and titles for people who use the script to see!
==========12/??/2019==========
- Removed hitlist reward system
==========2/3/2020==========
- Added infinite fly
==========2/8/2020==========
- Added a toggle for infinite fly
- Made the script friendly for users in turkey and other countries that block pastebin
- Added the ability to switch between targeting torsos and heads with the aimbot by pressing Z
==========2/13/2020==========
- Added a teleport / better fly bypass (breaks melee when turned on) (:bypass)
- Fixed / re-added :get ITEM commands
- Added a automatic cash farm (:cashfarm) (:uncashfarm)
- Added the :goto PLAYER command for when the bypass is on
==========2/15/2020==========
- Added :bring command
- You can now:
   :bring planks
   :bring bins
   :bring cans
   :bring cars
   :bring grass
   :bring wedges
   :bring misc (brings wedges and grass)
   :bring all (brings all unanchored parts)

- shortened names work (:bring plan will bring planks)
- Added the ability to bring things to other players (:bring ITEM PLAYERNAME)
- Removed random prints scattered throughout the script
==========2/26/2020==========
- Added a :walkspeed command (:walkspeed 20)
- Added a :runspeed command (:runspeed 40)
- Added a :runtype command (:runtype cframe) (:runtype walkspeed) (:runtype cfra)
- You can now press B to roll
- Added aimlock (:aimlock playername) makes it so when you shoot, it'll shoot at that person
- Added :unaimlock (turns off aimlock)
- Added proto smasher support
==========2/27/2020==========
- Switched the ClickTP and Roll hotkeys (Roll is now R and ClickTP is now B)
- You can now set your aimlock target by aiming your mouse at a player, and doing CTRL + SHIFT + CLICK
- Re-did the command handling, and re-wrote some functions (internal stuff)
- Added the :rejoin command (I had a seperate script I made for this, so I didn't add it earlier)
- Added the :reset command and the P hotkey (which also resets you)
- Added the :camlock command, for locking your camera onto someone (good for melee)
==========2/29/2020==========
- Fixed all the problems that arised from the last update
- Changed the teleport to cursor key to T
- Fixed noslow constantly being on, and other bugs that came with it
- Fixed run-speed not setting with super run off
- Fixed crouch speed not setting
- Fixed aimbot only shooting at the head, and not shooting at the selected aimbot part
- Fixed the walkspeed runtype
- Added a watermark to the top left the screen (It's 50% transparent)
==========3/2/2020==========
- Added the ability to spam stomp people by holding left alt + E
- Added the ability to stomp people without holding weapons, and while holding guns
==========3/4/2020==========
- Made improvements to aimlock (less / no more errors)
- Improved the bring command (Less lag after first execute for bins, cans, and planks)
- Added the :invis TOOL command (Works for the shotty, the sawed off, and the uzi)
    makes the tool invisible, and doesn't play it's idle or firing animation
==========3/6/2020==========
- Fixed breaking animations
==========3/7/2020==========
- Update only 1 day later? Crazy
- Added weapon stats that appear when you equip your weapons.
- Improved updating of the weapon stats
==========3/8/2020==========
- Added the :remote command
    (can only be used if you have the bypass on, and a gun that isn't the uzi in your inv)
- Fixed only being able to shoot once with the remote command
==========3/9/2020==========
- Fixed not being able to use spraypaint in remote mode
- In remote mode, your equipped tool will go invisible if you zoom in far enough
==========3/10/2020==========
- Added back blue names
- You can now shoot while flying (even without the TP bypass on) (CREDIT TO DOT_MP4)
==========3/13/2020==========
- WATERMARK FIXES.


                                                        ..                                          
                                     /yys.            `hMM/                                        
                    :ys:            `NMMMo            oMMM:                                        
                  `sMMMm             -oo:            `NMMy                                          
                 .hMMMMM+                            +MMN`        `.-::.              `            
                -mMMyoMMN.         /hho       .:syhhomMMs       -smNMMMNy  `shysssssyhdho          
               :mMMs``dMMd`        NMMm     .smMNdhdMMMM.     `sNMNs:/MMM. `ydmmmmddMMMN+          
              +NMMs   -MMMs       :MMM/    +NMNs-  .MMMy     .dMMd- -yMMy    `````/hMMy-            
            `yMMMmosyhdMMMM+      yMMm    yMMN:   `yMMM/     dMMN+odNMd/        :hMNy:              
           -dMMMMMMmmdhyhMMM+     NMMo   /MMM-   :dMMMM-    :MMMMNmho-``:/    :hNMh-                
          +NMMm//-..``  `hMMMo`  -MMM/   yMMm``:hNMyMMM+.-- :MMMy.` `-omMd` /dMMmo/+oooo/`          
         oMMMh.          `yMMMm/ :MMMs   +MMMmmMNh: hMMNNNy  yMMMmhdmNMm+`:dMMMMNNNNmNMMMo          
         :yh+`            `/dNNs `ydh:    :shys/.   `+yso-`   :shddhy+-` oNMNho:-..```.-/`  
 
Join my discord here!:
https://discord.gg/4FCbEbZ

Check out the update log above the aidez tag!


for i,v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("BasePart") and v.Material == Enum.Material.Ice and v.BrickColor == BrickColor.new("Pastel Blue") then
        v:Destroy()
    end
end
--]]
