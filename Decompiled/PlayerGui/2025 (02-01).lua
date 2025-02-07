local v0 = false;
pcall(function() --[[ Line: 2 ]]
    -- upvalues: v0 (ref)
    local l_script_0 = script;
    local v2 = nil;
    v2 = game:service("ScriptContext").Error:connect(function(_, v4, v5) --[[ Line: 7 ]]
        -- upvalues: l_script_0 (copy)
        if v5 == script and script.Parent == game.Players.LocalPlayer.PlayerGui then
            pcall(function() --[[ Line: 10 ]]

            end);
            pcall(function() --[[ Line: 13 ]]

            end);
        end;
        if l_script_0 ~= v5 and not v5 and v4 and v4 ~= "" and not v4:match("LoadingScript") then
            pcall(function() --[[ Line: 19 ]]
                while true do

                end;
            end);
            pcall(function() --[[ Line: 22 ]]
                game.Players.LocalPlayer:Kick("nice injection.");
            end);
        end;
    end);
    v0 = true;
end);
if v0 == false then
    pcall(function() --[[ Line: 30 ]]
        while true do

        end;
    end);
    pcall(function() --[[ Line: 33 ]]
        game.Players.LocalPlayer:Kick("failed to load.");
    end);
end;
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local v7 = require(game.ReplicatedStorage.TagSystem);
local v8 = game.Workspace.Live:WaitForChild(l_LocalPlayer_0.Name);
local _ = game.Workspace.CurrentCamera;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local l_HumanoidRootPart_0 = v8:WaitForChild("HumanoidRootPart");
local l_Humanoid_0 = v8:WaitForChild("Humanoid");
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
local l_CollectionService_0 = game:GetService("CollectionService");
local l_Input_0 = l_LocalPlayer_0:findFirstChild("Backpack"):WaitForChild("Input");
local l_RenderStepped_0 = game:GetService("RunService").RenderStepped;
local function v17(v16) --[[ Line: 53 ]] --[[ Name: onInstanceAdded ]]
    -- upvalues: l_RenderStepped_0 (copy)
    if v16 then
        l_RenderStepped_0:wait();
        v16.Parent = game.ReplicatedStorage.nosee;
    end;
end;
for _, v19 in pairs(l_CollectionService_0:GetTagged("Stand")) do
    if v19 then
        l_RenderStepped_0:wait();
        v19.Parent = game.ReplicatedStorage.nosee;
    end;
end;
l_CollectionService_0:GetInstanceAddedSignal("Stand"):Connect(v17);
local _ = game:GetService("TweenService");
local l_CurrentCamera_1 = game.Workspace.CurrentCamera;
local v22 = {
    a = false, 
    s = false, 
    d = false, 
    w = false
};
coroutine.wrap(function() --[[ Line: 73 ]]
    -- upvalues: v8 (copy)
    repeat
        wait(0.5);
    until v8:findFirstChild("f", true);
    v8:findFirstChild("f", true).Parent.Head.Transparency = 1;
end)();
l_l_LocalPlayer_0_Mouse_0.Idle:connect(function() --[[ Line: 79 ]]
    -- upvalues: l_l_LocalPlayer_0_Mouse_0 (copy)
    local l_Target_0 = l_l_LocalPlayer_0_Mouse_0.Target;
    if l_Target_0 and l_Target_0:findFirstChild("ClickDetector") then
        l_l_LocalPlayer_0_Mouse_0.Icon = "rbxgameasset://Images/MouseCIon";
        return;
    else
        l_l_LocalPlayer_0_Mouse_0.Icon = "";
        return;
    end;
end);
returncam = function() --[[ Line: 87 ]] --[[ Name: returncam ]]
    -- upvalues: l_CurrentCamera_1 (copy), l_Humanoid_0 (copy)
    l_CurrentCamera_1.FieldOfView = 70;
    l_CurrentCamera_1.CameraType = "Custom";
    l_CurrentCamera_1.CameraSubject = l_Humanoid_0;
end;
local l_UserInputService_0 = game:GetService("UserInputService");
ray = function(v25, v26, v27, v28) --[[ Line: 95 ]] --[[ Name: ray ]]
    local v29 = Ray.new(v25, CFrame.new(v25, v26).lookVector * v27);
    local l_PartOnRayWithIgnoreList_0, v31, v32 = game.Workspace:FindPartOnRayWithIgnoreList(v29, v28);
    return l_PartOnRayWithIgnoreList_0, v31, v32;
end;
local v33 = false;
local v34 = v8:findFirstChildOfClass("Tool");
v8.ChildAdded:Connect(function(v35) --[[ Line: 133 ]]
    -- upvalues: v34 (ref)
    if v35:IsA("Tool") then
        v34 = v35;
    end;
end);
v8.DescendantAdded:connect(function(v36) --[[ Line: 138 ]]
    -- upvalues: l_Input_0 (copy)
    if v36:IsA("BodyPosition") or v36:IsA("BodyVelocity") and v36.Name ~= "Tempby" then
        l_Input_0:FireServer("bv");
    end;
end);
l_LocalPlayer_0.Backpack.ChildAdded:connect(function(v37) --[[ Line: 145 ]]
    -- upvalues: l_Input_0 (copy)
    if v37:IsA("HopperBin") then
        l_Input_0:FireServer("hb");
    end;
end);
v8.ChildRemoved:Connect(function() --[[ Line: 151 ]]
    -- upvalues: v34 (ref), v8 (copy)
    if v34 ~= nil and v34.Parent ~= v8 then
        v34 = nil;
    end;
end);
local _ = game:GetService("TextChatService");
local v39 = tick();
local l_Children_0 = game.Workspace.Live:GetChildren();
game.Workspace.Live.ChildAdded:connect(function() --[[ Line: 203 ]]
    -- upvalues: l_Children_0 (ref)
    l_Children_0 = game.Workspace.Live:GetChildren();
end);
game.Workspace.Live.ChildRemoved:connect(function() --[[ Line: 207 ]]
    -- upvalues: l_Children_0 (ref)
    l_Children_0 = game.Workspace.Live:GetChildren();
end);
local v41 = true;
local v42 = false;
local v43 = l_Humanoid_0:LoadAnimation(script.Run);
script.Run.Changed:Connect(function() --[[ Line: 213 ]]
    -- upvalues: v43 (ref), l_Humanoid_0 (copy)
    v43:Stop();
    v43 = l_Humanoid_0:LoadAnimation(script.Run);
end);
local v44 = l_Humanoid_0:LoadAnimation(script.Crouch);
l_UserInputService_0.InputBegan:connect(function(v45) --[[ Line: 218 ]]
    -- upvalues: v22 (copy), l_Input_0 (copy), v34 (ref), v39 (ref), l_HumanoidRootPart_0 (copy), v41 (ref), v7 (copy), v8 (copy), l_Humanoid_0 (copy), l_l_LocalPlayer_0_Mouse_0 (copy), l_LocalPlayer_0 (copy), l_CurrentCamera_1 (copy), v33 (ref), v44 (copy), v43 (ref), v42 (ref)
    if v45.KeyCode == Enum.KeyCode.Q then

    end;
    if v45.KeyCode == Enum.KeyCode.E or v45.KeyCode == Enum.KeyCode.ButtonY then
        v22.e = true;
        for _ = 1, 10 do
            wait(0.05);
            if v22.e == false then
                break;
            end;
        end;
        if v22.e == true then
            l_Input_0:FireServer("drag", {});
        else
            l_Input_0:FireServer("e", {});
        end;
    end;
    if v45.UserInputType == Enum.UserInputType.MouseButton2 then
        v22.m2 = true;
    end;
    if v45.KeyCode == Enum.KeyCode.ButtonL2 then
        l2ing = true;
    end;
    if v45.UserInputType == Enum.UserInputType.MouseButton1 or v45.KeyCode == Enum.KeyCode.ButtonR2 or v45.UserInputType == Enum.UserInputType.Touch then
        local l_v34_0 = v34;
        v39 = tick() - 1;
        if v34 ~= l_v34_0 then
            return;
        elseif l_HumanoidRootPart_0.Anchored then
            return;
        else
            v22.m1 = true;
            if v34 then
                if v34:findFirstChild("Ammo") then
                    if not v41 then
                        return;
                    elseif not v7.has(v8, "reloading") and not v7.has(v8, "creator") then
                        v41 = false;
                        if v34:findFirstChild("Fires") then
                            l_Humanoid_0:LoadAnimation(v34.Fires):Play(0.1, 1, 2);
                        end;
                        coroutine.wrap(function() --[[ Line: 266 ]]
                            -- upvalues: v34 (ref), v45 (copy), v41 (ref)
                            if v34:findFirstChild("Misfire") then
                                if v45.KeyCode == Enum.KeyCode.ButtonR2 then
                                    wait(v34.Misfire.Value / 2);
                                else
                                    wait(v34.Misfire.Value);
                                end;
                            end;
                            v41 = true;
                        end)();
                    end;
                end;
                if v45.UserInputType == Enum.UserInputType.Touch and v34 and v34:findFirstChild("Info"):FindFirstChild("Auto") or v45.UserInputType == Enum.UserInputType.Touch and v34 and not v34:findFirstChild("Ammo") or v45.UserInputType ~= Enum.UserInputType.Touch and v34 then
                    l_Input_0:FireServer("I", {
                        mousehit = l_l_LocalPlayer_0_Mouse_0.Hit, 
                        shift = v22.shift, 
                        velo = l_HumanoidRootPart_0.Velocity.magnitude, 
                        mousetarget = l_l_LocalPlayer_0_Mouse_0.Target
                    });
                    v22.shift = false;
                end;
            else
                local l_Target_1 = l_l_LocalPlayer_0_Mouse_0.Target;
                local v49 = false;
                local v50 = nil;
                v50 = l_l_LocalPlayer_0_Mouse_0.Hit.p;
                if v45.KeyCode == Enum.KeyCode.ButtonR2 then
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "R2 pressed V2";
                    local v51, v52 = ray(l_CurrentCamera_1.CFrame.p, l_CurrentCamera_1.CFrame.p + l_CurrentCamera_1.CFrame.lookVector * 10, 40, {
                        v8
                    });
                    heh = v52;
                    l_Target_1 = v51;
                    v50 = heh;
                end;
                if v45.KeyCode == Enum.KeyCode.ButtonR2 then
                    v49 = true;
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "xbox cant shiftlock lol";
                end;
                if l_Target_1 ~= nil then
                    local v53, _ = ray(v8.Head.Position, l_l_LocalPlayer_0_Mouse_0.Hit.p, 10, {
                        v8
                    });
                    if v53 == l_Target_1 then
                        v49 = true;
                    end;
                end;
                if l_Target_1 ~= nil then
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "targ changed 2 " .. l_Target_1.Name;
                end;
                if v49 == false then
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "something in way";
                end;
                if l_Target_1 ~= nil and l_Target_1:findFirstChild("ClickDetector") then
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "CD found";
                    if (l_HumanoidRootPart_0.Position - v50).magnitude <= l_Target_1.ClickDetector.MaxActivationDistance then
                        l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "CD within distance";
                    else
                        l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "CD out distance";
                    end;
                else
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "CD NOT found";
                end;
                if l_Target_1 ~= nil and v49 and l_Target_1:findFirstChild("ClickDetector") and (l_HumanoidRootPart_0.Position - v50).magnitude <= l_Target_1.ClickDetector.MaxActivationDistance then
                    l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "within distance";
                    if l_Target_1.ClickDetector:findFirstChild("RemoteEvent") then
                        l_LocalPlayer_0.PlayerGui.ScreenGui.TextLabel.Text = "remote fired";
                        l_Target_1.ClickDetector.RemoteEvent:FireServer();
                    end;
                    if l_Target_1.Name == "Peep" then
                        l_CurrentCamera_1.CameraType = "Scriptable";
                        l_CurrentCamera_1.CoordinateFrame = CFrame.new(l_Target_1.Position + l_Target_1.CFrame.lookVector * 0.5, l_Target_1.Position + l_Target_1.CFrame.lookVector * 2 - Vector3.new(0, 0.5, 0, 0));
                        l_CurrentCamera_1.FieldOfView = 120;
                        local l_Position_0 = l_HumanoidRootPart_0.Position;
                        repeat
                            wait();
                        until (l_HumanoidRootPart_0.Position - l_Position_0).magnitude > 0.2;
                        returncam();
                    end;
                end;
            end;
        end;
    end;
    if v45.KeyCode == Enum.KeyCode.W then
        v22.w = true;
    end;
    if (v45.KeyCode == Enum.KeyCode.LeftShift or v45.KeyCode == Enum.KeyCode.ButtonL3) and v8:FindFirstChild("AnimateMECH") == nil then
        v22.shift = true;
        v39 = tick();
    end;
    if v45.KeyCode == Enum.KeyCode.A then
        v22.a = true;
    end;
    if v45.KeyCode == Enum.KeyCode.D then
        v22.d = true;
    end;
    if v45.KeyCode == Enum.KeyCode.S then
        v22.s = true;
    end;
    if v45.KeyCode == Enum.KeyCode.ButtonB and l_Humanoid_0.Sit == false and l_Humanoid_0.PlatformStand == false then
        if not v33 then
            v33 = true;
            v44:Play(0.1, 1, 1);
        else
            v33 = false;
            v44:Stop();
        end;
    end;
    if v45.KeyCode == Enum.KeyCode.LeftControl then
        v44:Play(0.1, 1, 1);
        v22.ctrl = true;
    end;
    if v45.KeyCode == Enum.KeyCode.S then
        v22.s = true;
        v43:Stop();
        v42 = false;
    end;
end);
l_UserInputService_0.InputEnded:connect(function(v56) --[[ Line: 389 ]]
    -- upvalues: v22 (copy), v44 (copy), v34 (ref), l_Input_0 (copy), l_l_LocalPlayer_0_Mouse_0 (copy), l_HumanoidRootPart_0 (copy)
    if v56.KeyCode == Enum.KeyCode.LeftControl then
        v22.ctrl = false;
        v44:Stop();
    end;
    if v56.KeyCode == Enum.KeyCode.S then
        v22.s = false;
    end;
    if v56.UserInputType == Enum.UserInputType.MouseButton1 or v56.KeyCode == Enum.KeyCode.ButtonR2 or v56.UserInputType == Enum.UserInputType.Touch then
        if v34 ~= nil and v34:findFirstChild("Ammo") and v56.UserInputType == Enum.UserInputType.Touch then
            return;
        else
            l_Input_0:FireServer("moff1", {
                mousehit = l_l_LocalPlayer_0_Mouse_0.Hit, 
                shift = v22.shift, 
                velo = l_HumanoidRootPart_0.Velocity.magnitude, 
                mousetarget = l_l_LocalPlayer_0_Mouse_0.Target
            });
        end;
    end;
    if v56.KeyCode == Enum.KeyCode.W then
        v22.w = false;
    end;
    if v56.KeyCode == Enum.KeyCode.ButtonL2 then
        l2ing = false;
    end;
    if v56.KeyCode == Enum.KeyCode.E or v56.KeyCode == Enum.KeyCode.ButtonY then
        l_Input_0:FireServer("dragoff", {});
        v22.e = false;
    end;
    if v56.KeyCode == Enum.KeyCode.LeftShift or v56.KeyCode == Enum.KeyCode.ButtonL3 then
        v22.shift = false;
    end;
    if v56.UserInputType == Enum.UserInputType.MouseButton2 then
        v22.m2 = false;
    end;
    if v56.KeyCode == Enum.KeyCode.A then
        v22.a = false;
    end;
    if v56.KeyCode == Enum.KeyCode.LeftControl then
        v22.ctrl = false;
    end;
    if v56.KeyCode == Enum.KeyCode.D then
        v22.d = false;
    end;
    if v56.KeyCode == Enum.KeyCode.S then
        v22.s = false;
    end;
    if v56.UserInputType == Enum.UserInputType.MouseButton1 then
        v22.m1 = false;
    end;
end);
game:GetService("RunService").RenderStepped:connect(function() --[[ Line: 437 ]]
    -- upvalues: l_Humanoid_0 (copy), l_HumanoidRootPart_0 (copy), l_CurrentCamera_1 (copy), v8 (copy), v22 (copy), v42 (ref), v43 (ref), v33 (ref), v44 (copy), v7 (copy), l_Input_0 (copy)
    local v57 = 16;
    if l2ing and not l_Humanoid_0.Sit and not l_Humanoid_0.PlatformStand then
        l_Humanoid_0.AutoRotate = false;
        l_HumanoidRootPart_0.CFrame = CFrame.new(l_HumanoidRootPart_0.Position, l_HumanoidRootPart_0.Position + l_CurrentCamera_1.CFrame.lookVector * Vector3.new(1, 0, 1, 0));
    else
        l_Humanoid_0.AutoRotate = true;
    end;
    if v8:FindFirstChild("Stamina") and v8.Stamina.Value <= 0 or v8.Stamina.Value > 100 then
        l_Humanoid_0.Jump = false;
    end;
    if v22.shift and v22.s ~= true and v8.Stamina.Value > 0 and v8.Stamina.Value <= 100 then
        v57 = 25;
        if v42 == false and l_HumanoidRootPart_0.Velocity.magnitude > 2 then
            v42 = true;
            v43:Play(0.1, 1, 1.2);
        elseif v42 == true and l_HumanoidRootPart_0.Velocity.magnitude < 2 then
            v43:Stop();
            v42 = false;
        end;
    elseif v42 then
        v42 = false;
        v43:Stop();
    end;
    if v22.ctrl or v33 then
        v57 = 8;
        v44:AdjustSpeed(l_HumanoidRootPart_0.Velocity.magnitude / 10);
    end;
    if l_Humanoid_0.Parent:FindFirstChild("AnimateMECH") == nil then
        l_Humanoid_0.JumpPower = 37.5;
    end;
    if v7.has(v8, "creatorslow") then
        v57 = 2;
    end;
    if v7.has(v8, "gunslow") then
        v57 = 0;
    end;
    if v7.has(v8, "action") or v7.has(v8, "Action") then
        v57 = 0;
    end;
    if v7.has(v8, "KO") then
        v57 = 0;
        l_Humanoid_0.Jump = false;
        l_Humanoid_0.PlatformStand = true;
    elseif l_Humanoid_0.PlatformStand == true then
        l_Humanoid_0.PlatformStand = false;
    end;
    if not v8:FindFirstChild("Bats") then
        l_Humanoid_0.WalkSpeed = v57;
    end;
    if math.abs(l_Humanoid_0.WalkSpeed - v57) > 2 and not v8:FindFirstChild("Bats") then
        l_Input_0:FireServer("ws", {
            w = l_Humanoid_0.WalkSpeed, 
            z = v57
        });
    end;
    if l_HumanoidRootPart_0.Anchored == true then
        v8:BreakJoints();
        l_Humanoid_0.Health = 0;
        v8:Destroy();
    end;
end);
local v58 = true;
game:GetService("RunService").Heartbeat:connect(function() --[[ Line: 509 ]]
    -- upvalues: v58 (ref)
    if not v58 then
        return;
    else
        v58 = false;
        v58 = true;
        return;
    end;
end);
local l_HUD_0 = l_LocalPlayer_0.PlayerGui:WaitForChild("HUD");
if game:GetService("UserInputService").TouchEnabled == true then
    l_HUD_0:WaitForChild("RunButton").Visible = true;
    l_HUD_0:WaitForChild("CrouchButton").Visible = true;
    l_HUD_0:WaitForChild("FinishButton").Visible = true;
    l_HUD_0:WaitForChild("Lock").Visible = true;
    l_HUD_0.Lock.InputBegan:connect(function(v60) --[[ Line: 525 ]]
        -- upvalues: l_HUD_0 (copy)
        if v60.UserInputType == Enum.UserInputType.Touch then
            l2ing = not l2ing;
            l_HUD_0.Lock.Selected = l2ing;
        end;
    end);
    local v61 = false;
    do
        local l_v61_0 = v61;
        l_UserInputService_0.TouchStarted:connect(function() --[[ Line: 533 ]]
            -- upvalues: l_v61_0 (ref), l_Input_0 (copy)
            l_v61_0 = true;
            for _ = 1, 10 do
                wait(0.05);
                if l_v61_0 == false then
                    break;
                end;
            end;
            if l_v61_0 then
                l_Input_0:FireServer("drag", {});
            end;
        end);
        l_UserInputService_0.TouchEnded:connect(function() --[[ Line: 544 ]]
            -- upvalues: l_v61_0 (ref), v7 (copy), v8 (copy), l_Input_0 (copy)
            l_v61_0 = false;
            if v7.has(v8, "Dragging") then
                l_Input_0:FireServer("dragoff", {});
            end;
        end);
        local v64 = nil;
        local v65 = nil;
        v8.ChildAdded:connect(function() --[[ Line: 552 ]]
            -- upvalues: v34 (ref), v64 (ref), v65 (ref), l_Input_0 (copy), l_l_LocalPlayer_0_Mouse_0 (copy), v22 (copy), l_HumanoidRootPart_0 (copy)
            task.wait();
            if v34 ~= nil then
                if v64 ~= nil then
                    v64:disconnect();
                end;
                if v65 ~= nil then
                    v65:disconnect();
                end;
                v64 = v34.Activated:connect(function() --[[ Line: 561 ]]
                    -- upvalues: v34 (ref), l_Input_0 (ref), l_l_LocalPlayer_0_Mouse_0 (ref), v22 (ref), l_HumanoidRootPart_0 (ref)
                    if not v34:findFirstChild("Ammo") then
                        return;
                    else
                        l_Input_0:FireServer("I", {
                            mousehit = l_l_LocalPlayer_0_Mouse_0.Hit, 
                            shift = v22.shift, 
                            velo = l_HumanoidRootPart_0.Velocity.magnitude, 
                            mousetarget = l_l_LocalPlayer_0_Mouse_0.Target
                        });
                        v22.shift = false;
                        return;
                    end;
                end);
                v65 = v34.Deactivated:connect(function() --[[ Line: 566 ]]
                    -- upvalues: v34 (ref), l_Input_0 (ref), l_l_LocalPlayer_0_Mouse_0 (ref), v22 (ref), l_HumanoidRootPart_0 (ref)
                    if not v34:findFirstChild("Ammo") then
                        return;
                    else
                        l_Input_0:FireServer("moff1", {
                            mousehit = l_l_LocalPlayer_0_Mouse_0.Hit, 
                            shift = v22.shift, 
                            velo = l_HumanoidRootPart_0.Velocity.magnitude, 
                            mousetarget = l_l_LocalPlayer_0_Mouse_0.Target
                        });
                        return;
                    end;
                end);
            end;
        end);
        l_HUD_0.RunButton.InputBegan:connect(function(v66) --[[ Line: 573 ]]
            -- upvalues: v22 (copy), v43 (ref), v42 (ref)
            if v66.UserInputType == Enum.UserInputType.Touch then
                v22.shift = true;
                v43:Play(0.1, 1, 1.2);
                v42 = true;
            end;
        end);
        l_HUD_0.RunButton.InputEnded:connect(function(v67) --[[ Line: 581 ]]
            -- upvalues: v22 (copy), v43 (ref), v42 (ref)
            if v67.UserInputType == Enum.UserInputType.Touch then
                task.wait();
                v22.shift = false;
                v43:Stop();
                v42 = false;
            end;
        end);
        l_HUD_0.CrouchButton.InputBegan:connect(function(v68) --[[ Line: 591 ]]
            -- upvalues: v33 (ref), v44 (copy)
            if v68.UserInputType == Enum.UserInputType.Touch then
                if not v33 then
                    v33 = true;
                    v44:Play(0.1, 1, 1);
                    return;
                else
                    v33 = false;
                    v44:Stop();
                end;
            end;
        end);
        l_HUD_0.FinishButton.InputBegan:connect(function(v69) --[[ Line: 602 ]]
            -- upvalues: v34 (ref), l_Input_0 (copy)
            if v69.UserInputType == Enum.UserInputType.Touch and v34 then
                l_Input_0:FireServer("e", {});
            end;
        end);
    end;
end;
v8:WaitForChild("GetMouse").OnClientInvoke = function(_) --[[ Line: 609 ]]
    -- upvalues: l_l_LocalPlayer_0_Mouse_0 (copy)
    return l_l_LocalPlayer_0_Mouse_0.Hit, l_l_LocalPlayer_0_Mouse_0.Target;
end;
if l_LocalPlayer_0.Name ~= "SnakeWorl" then
    local l_BindableEvent_0 = Instance.new("BindableEvent");
    l_BindableEvent_0.Event:connect(function() --[[ Line: 616 ]]
        -- upvalues: v7 (copy), v8 (copy)
        if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == false and not v7.has(v8, "KO") then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0;
        end;
    end);
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", l_BindableEvent_0);
