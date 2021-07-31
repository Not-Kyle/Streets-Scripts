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
