-- Don't use this, its like the worst Decomplier ever (Syn Z)


-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local koto = false
local pcall = pcall
local v0_2_ = function()
    local v1_0_ = script
    local v1_1_ = nil
    local v1_3_ = game
    local v1_5_ = "ScriptContext"
    v1_3_ = v1_3_:service(v1_5_)
    local v1_2_ = v1_3_.Error
    local v1_4_ = function(a1, a2, a3)
        local v2_3_ = script
        if a3 == v2_3_ then
            local v2_4_ = script
            v2_3_ = v2_4_.Parent
            local v2_7_ = game
            local v2_6_ = v2_7_.Players
            local v2_5_ = v2_6_.LocalPlayer
            v2_4_ = v2_5_.PlayerGui
            if v2_3_ == v2_4_ then
                v2_3_ = pcall
                v2_4_ = function()
                end
                v2_3_(v2_4_)
                v2_3_ = pcall
                v2_4_ = function()
                end
                v2_3_(v2_4_)
            end
        end
        v2_3_ = v1_0_
        if v2_3_ ~= a3 then
            if not a3 then
                if a2 then
                    if a2 ~= "" then
                        local v2_5_ = "LoadingScript"
                        v2_3_ = a2:match(v2_5_)
                        if not v2_3_ then
                            v2_3_ = pcall
                            local v2_4_ = function()
                            end
                            v2_3_(v2_4_)
                            v2_3_ = pcall
                            v2_4_ = function()
                                local v6_2_ = game
                                local v6_1_ = v6_2_.Players
                                local v6_0_ = v6_1_.LocalPlayer
                                v6_2_ = "nice injection."
                                v6_0_:Kick(v6_2_)
                            end
                            v2_3_(v2_4_)
                        end
                    end
                end
            end
        end
    end
    v1_2_ = v1_2_:connect(v1_4_)
    v1_1_ = v1_2_
    v1_2_ = true
    v0_0_ = v1_0_
end
pcall(v0_2_)
if v0_0_ == false then
    pcall = pcall
    v0_2_ = function()
    end
    pcall(v0_2_)
    pcall = pcall
    v0_2_ = function()
        local v8_2_ = game
        local v8_1_ = v8_2_.Players
        local v8_0_ = v8_1_.LocalPlayer
        v8_2_ = "failed to load."
        v8_0_:Kick(v8_2_)
    end
    pcall(v0_2_)
end
local v0_3_ = game
v0_2_ = v0_3_.Players
pcall = v0_2_.LocalPlayer
v0_2_ = require
local v0_5_ = game
local v0_4_ = v0_5_.ReplicatedStorage
v0_3_ = v0_4_.TagSystem
v0_2_ = v0_2_(v0_3_)
v0_5_ = game
v0_4_ = v0_5_.Workspace
v0_3_ = v0_4_.Live
v0_5_ = pcall.Name
v0_3_ = v0_3_:WaitForChild(v0_5_)
local game.Players.LocalPlayer = game
v0_5_ = game.Players.LocalPlayer.Workspace
v0_4_ = v0_5_.CurrentCamera
v0_5_ = pcall:GetMouse()
local v0_8_ = "HumanoidRootPart"
game.Players.LocalPlayer = v0_3_:WaitForChild(v0_8_)
local v0_9_ = "Humanoid"
local v0_7_ = v0_3_:WaitForChild(v0_9_)
local Ragdoll = Enum.HumanoidStateType.Ragdoll
local v0_11_ = false
v0_7_:SetStateEnabled(Ragdoll, v0_11_)
local FallingDown = Enum.HumanoidStateType.FallingDown
v0_11_ = false
v0_7_:SetStateEnabled(FallingDown, v0_11_)
local StrafingNoPhysics = Enum.HumanoidStateType.StrafingNoPhysics
v0_11_ = false
v0_7_:SetStateEnabled(StrafingNoPhysics, v0_11_)
v0_8_ = game
local v0_10_ = "CollectionService"
v0_8_ = v0_8_:GetService(v0_10_)
v0_11_ = "Backpack"
v0_9_ = pcall:findFirstChild(v0_11_)
v0_11_ = "Input"
v0_9_ = v0_9_:WaitForChild(v0_11_)
v0_11_ = game
local v0_13_ = "RunService"
v0_11_ = v0_11_:GetService(v0_13_)
v0_10_ = v0_11_.RenderStepped
v0_11_ = function(a1)
    if a1 then
        local v9_1_ = v0_10_
        v9_1_:wait()
        local v9_3_ = game
        local v9_2_ = v9_3_.ReplicatedStorage
        v9_1_ = v9_2_.nosee
        a1.Parent = v9_1_
    end
end
local v0_12_ = pairs
local v0_15_ = "Stand"
local v0_12_, v0_13_, v0_14_ = v0_12_(v0_8_:GetTagged(v0_15_))
for v0_15_, v0_16_ in v0_12_, v0_13_, v0_14_ do
    if v0_16_ then
        v0_10_:wait()
        local v0_19_ = game
        local v0_18_ = v0_19_.ReplicatedStorage
        local v0_17_ = v0_18_.nosee
        v0_16_.Parent = v0_17_
    end
end
v0_14_ = "Stand"
v0_12_ = v0_8_:GetInstanceAddedSignal(v0_14_)
v0_14_ = v0_11_
v0_12_:Connect(v0_14_)
v0_12_ = game
v0_14_ = "TweenService"
v0_12_ = v0_12_:GetService(v0_14_)
v0_15_ = game
v0_14_ = v0_15_.Workspace
v0_13_ = v0_14_.CurrentCamera
v0_14_ = {}
v0_15_ = false
v0_14_.a = v0_15_
v0_15_ = false
v0_14_.s = v0_15_
v0_15_ = false
v0_14_.d = v0_15_
v0_15_ = false
v0_14_.w = v0_15_
local wrap = coroutine.wrap
local v0_16_ = function()
    local v10_0_ = wait
    local v10_1_ = 0.500000
    v10_0_(v10_1_)
    v10_0_ = v0_3_
    local v10_2_ = "f"
    local v10_3_ = true
    v10_0_ = v10_0_:findFirstChild(v10_2_, v10_3_)
    while not v10_0_ do
    end
    v10_2_ = v0_3_
    local v10_4_ = "f"
    local v10_5_ = true
    v10_2_ = v10_2_:findFirstChild(v10_4_, v10_5_)
    v10_1_ = v10_2_.Parent
    v10_0_ = v10_1_.Head
    v10_1_ = 1
    v10_0_.Transparency = v10_1_
end
v0_15_ = wrap(v0_16_)
v0_15_()
v0_15_ = v0_5_.Idle
local v0_17_ = function()
    local v11_1_ = v0_5_
    local v11_0_ = v11_1_.Target
    if v11_0_ then
        local v11_3_ = "ClickDetector"
        v11_1_ = v11_0_:findFirstChild(v11_3_)
        if v11_1_ then
            v11_1_ = v0_5_
            local v11_2_ = "rbxgameasset://Images/MouseCIon"
            v11_1_.Icon = v11_2_
            return
        end
    end
    v11_1_ = v0_5_
    local v11_2_ = ""
    v11_1_.Icon = v11_2_
end
v0_15_:connect(v0_17_)
v0_15_ = function()
    local v12_0_ = v0_13_
    local v12_1_ = 70
    v12_0_.FieldOfView = v12_1_
    v12_0_ = v0_13_
    v12_1_ = "Custom"
    v12_0_.CameraType = v12_1_
    v12_0_ = v0_13_
    v12_1_ = v0_7_
    v12_0_.CameraSubject = v12_1_
end
returncam = v0_15_
v0_15_ = game
v0_17_ = "UserInputService"
v0_15_ = v0_15_:GetService(v0_17_)
v0_16_ = function(a1, a2, a3, a4)
    local new = Ray.new
    local v13_5_ = a1
    local new_0 = CFrame.new
    local v13_9_ = a1
    local v13_10_ = a2
    local v13_8_ = new_0(v13_9_, v13_10_)
    local v13_7_ = v13_8_.lookVector
    local v13_6_ = v13_7_ * a3
    local v13_4_ = new(v13_5_, v13_6_)
    v13_6_ = game
    v13_5_ = v13_6_.Workspace
    v13_7_ = v13_4_
    v13_8_ = a4
    v13_5_, v13_6_, v13_7_ = v13_5_:FindPartOnRayWithIgnoreList(v13_7_, v13_8_)
    return v13_5_, v13_6_, v13_7_
end
ray = v0_16_
v0_16_ = game
local v0_18_ = "LogService"
v0_16_ = v0_16_:GetService(v0_18_)
v0_17_ = v0_16_.MessageOut
local v0_19_ = function(a1, a2)
    local MessageOutput = Enum.MessageType.MessageOutput
    if a2 == MessageOutput then
        local v14_3_ = game
        local v14_5_ = "Players"
        v14_3_ = v14_3_:GetService(v14_5_)
        local v14_2_ = v14_3_.LocalPlayer
        local v14_4_ = "\n\nExternal software detected.\nPlease close any programs that may be connected to your Roblox client and rejoin please.\n\nThank you."
        v14_2_:Kick(v14_4_)
    end
end
v0_17_:Connect(v0_19_)
v0_17_ = false
local v0_20_ = "Tool"
v0_18_ = v0_3_:findFirstChildOfClass(v0_20_)
v0_19_ = v0_3_.ChildAdded
local v0_21_ = function(a1)
    local v15_3_ = "Tool"
    local v15_1_ = a1:IsA(v15_3_)
    if v15_1_ then
        v0_18_ = a1
    end
end
v0_19_:Connect(v0_21_)
v0_19_ = v0_3_.DescendantAdded
v0_21_ = function(a1)
    local v16_3_ = "BodyPosition"
    local v16_1_ = a1:IsA(v16_3_)
    if not v16_1_ then
        v16_3_ = "BodyVelocity"
        v16_1_ = a1:IsA(v16_3_)
        if v16_1_ then
            v16_1_ = a1.Name
            if v16_1_ ~= "Tempby" then
                v16_1_ = v0_9_
                v16_3_ = "bv"
                v16_1_:FireServer(v16_3_)
            end
        end
    end
    v16_1_ = v0_9_
    v16_3_ = "bv"
    v16_1_:FireServer(v16_3_)
end
v0_19_:connect(v0_21_)
v0_20_ = pcall.Backpack
v0_19_ = v0_20_.ChildAdded
v0_21_ = function(a1)
    local v17_3_ = "HopperBin"
    local v17_1_ = a1:IsA(v17_3_)
    if v17_1_ then
        v17_1_ = v0_9_
        v17_3_ = "hb"
        v17_1_:FireServer(v17_3_)
    end
end
v0_19_:connect(v0_21_)
v0_19_ = v0_3_.ChildRemoved
v0_21_ = function()
    local v18_0_ = v0_18_
    if v18_0_ ~= nil then
        local v18_1_ = v0_18_
        v18_0_ = v18_1_.Parent
        v18_1_ = v0_3_
        if v18_0_ ~= v18_1_ then
            v18_0_ = nil
            v0_18_ = v18_0_
        end
    end
end
v0_19_:Connect(v0_21_)
v0_19_ = game
v0_21_ = "Chat"
v0_19_ = v0_19_:GetService(v0_21_)
v0_20_ = function()
    local v19_0_ = {}
    local v19_1_ = pairs
    local v19_3_ = game
    local v19_2_ = v19_3_.Players
    v19_1_, v19_2_, v19_3_ = v19_1_(v19_2_:GetPlayers())
    for v19_4_, v19_5_ in v19_1_, v19_2_, v19_3_ do
        if v19_5_ then
            local v19_8_ = "DarkTheme"
            local v19_6_ = v19_5_:findFirstChild(v19_8_)
            if v19_6_ then
                v19_6_ = v19_5_.UserId
                local v19_7_ = {}
                local fromRGB = Color3.fromRGB
                local v19_9_ = 51
                local v19_10_ = 51
                local v19_11_ = 62
                v19_8_ = fromRGB(v19_9_, v19_10_, v19_11_)
                v19_7_.BackgroundColor3 = v19_8_
                local fromRGB = Color3.fromRGB
                v19_9_ = 194
                v19_10_ = 194
                v19_11_ = 235
                v19_8_ = fromRGB(v19_9_, v19_10_, v19_11_)
                v19_7_.TextColor3 = v19_8_
                v19_0_[v19_6_] = v19_7_
            end
        end
    end
    v19_1_ = 633527.000000
    v19_2_ = {}
    local fromRGB = Color3.fromRGB
    local v19_4_ = 240
    local v19_5_ = 153
    local v19_6_ = 32
    v19_3_ = fromRGB(v19_4_, v19_5_, v19_6_)
    v19_2_.BackgroundColor3 = v19_3_
    local fromRGB = Color3.fromRGB
    v19_4_ = 40
    v19_5_ = 33
    v19_6_ = 13
    v19_3_ = fromRGB(v19_4_, v19_5_, v19_6_)
    v19_2_.TextColor3 = v19_3_
    v19_0_[v19_1_] = v19_2_
    v19_1_ = {}
    v19_1_.UserSpecificSettings = v19_0_
    v19_2_ = v0_19_
    v19_4_ = v19_1_
    v19_2_:SetBubbleChatSettings(v19_4_)
end
updatechat = v0_20_
v0_20_ = updatechat
v0_20_()
local v0_22_ = game
v0_21_ = v0_22_.ReplicatedStorage
local v0_23_ = "guh"
v0_21_ = v0_21_:WaitForChild(v0_23_)
v0_20_ = v0_21_.ChildAdded
v0_22_ = updatechat
v0_20_:connect(v0_22_)
v0_20_ = tick
v0_20_ = v0_20_()
v0_23_ = game
v0_22_ = v0_23_.Workspace
v0_21_ = v0_22_.Live
v0_21_ = v0_21_:GetChildren()
local v0_25_ = game
local v0_24_ = v0_25_.Workspace
v0_23_ = v0_24_.Live
v0_22_ = v0_23_.ChildAdded
v0_24_ = function()
    local v20_2_ = game
    local v20_1_ = v20_2_.Workspace
    local v20_0_ = v20_1_.Live
    v20_0_ = v20_0_:GetChildren()
    v0_21_ = v20_0_
    v20_0_ = updatechat
    v20_0_()
end
v0_22_:connect(v0_24_)
v0_25_ = game
v0_24_ = v0_25_.Workspace
v0_23_ = v0_24_.Live
v0_22_ = v0_23_.ChildRemoved
v0_24_ = function()
    local v21_2_ = game
    local v21_1_ = v21_2_.Workspace
    local v21_0_ = v21_1_.Live
    v21_0_ = v21_0_:GetChildren()
    v0_21_ = v21_0_
end
v0_22_:connect(v0_24_)
v0_22_ = true
v0_23_ = false
local v0_27_ = script
local v0_26_ = v0_27_.Run
v0_24_ = v0_7_:LoadAnimation(v0_26_)
v0_27_ = script
v0_26_ = v0_27_.Run
v0_25_ = v0_26_.Changed
v0_27_ = function()
    local v22_0_ = v0_24_
    v22_0_:Stop()
    v22_0_ = v0_7_
    local v22_3_ = script
    local v22_2_ = v22_3_.Run
    v22_0_ = v22_0_:LoadAnimation(v22_2_)
    v0_24_ = v22_0_
end
v0_25_:Connect(v0_27_)
local v0_28_ = script
v0_27_ = v0_28_.Crouch
v0_25_ = v0_7_:LoadAnimation(v0_27_)
v0_26_ = v0_15_.InputBegan
v0_28_ = function(a1)
    local v23_1_ = a1.KeyCode
    local Q = Enum.KeyCode.Q
    if v23_1_ == Q then
    end
    v23_1_ = a1.KeyCode
    local E = Enum.KeyCode.E
    if v23_1_ ~= E then
        v23_1_ = a1.KeyCode
        local ButtonY = Enum.KeyCode.ButtonY
        if v23_1_ == ButtonY then
            v23_1_ = v0_14_
            local Input = true
            v23_1_.e = Input
            local v23_3_ = 1
            v23_1_ = 10
            Input = 1
            for v23_3_ = v23_3_, v23_1_, Input do
                local index_I = wait
                local args = 0.050000
                index_I(args)
                args = v0_14_
                index_I = args.e
                if index_I ~= false then
                end
            end
            Input = v0_14_
            v23_1_ = Input.e
            if v23_1_ == true then
                v23_1_ = v0_9_
                v23_3_ = "drag"
                local index_I = {}
                v23_1_:FireServer(v23_3_, index_I)
            else
                v23_1_ = v0_9_
                v23_3_ = "e"
                local index_I = {}
                v23_1_:FireServer(v23_3_, index_I)
            end
        end
    end
    v23_1_ = v0_14_
    local Input = true
    v23_1_.e = Input
    local v23_3_ = 1
    v23_1_ = 10
    Input = 1
    for v23_3_ = v23_3_, v23_1_, Input do
        local index_I = wait
        local args = 0.050000
        index_I(args)
        args = v0_14_
        index_I = args.e
        if index_I ~= false then
        end
    end
    Input = v0_14_
    v23_1_ = Input.e
    if v23_1_ == true then
        v23_1_ = v0_9_
        v23_3_ = "drag"
        local index_I = {}
        v23_1_:FireServer(v23_3_, index_I)
    else
        v23_1_ = v0_9_
        v23_3_ = "e"
        local index_I = {}
        v23_1_:FireServer(v23_3_, index_I)
    end
    v23_1_ = a1.UserInputType
    local MouseButton2 = Enum.UserInputType.MouseButton2
    if v23_1_ == MouseButton2 then
        v23_1_ = v0_14_
        Input = true
        v23_1_.m2 = Input
    end
    v23_1_ = a1.KeyCode
    local ButtonL2 = Enum.KeyCode.ButtonL2
    if v23_1_ == ButtonL2 then
        v23_1_ = true
        l2ing = v23_1_
    end
    v23_1_ = a1.UserInputType
    local MouseButton1 = Enum.UserInputType.MouseButton1
    if v23_1_ ~= MouseButton1 then
        v23_1_ = a1.KeyCode
        local ButtonR2 = Enum.KeyCode.ButtonR2
        if v23_1_ ~= ButtonR2 then
            v23_1_ = a1.UserInputType
            local Touch = Enum.UserInputType.Touch
            while v23_1_ == Touch do
                v23_1_ = v0_18_
                v23_3_ = tick
                v23_3_ = v23_3_()
                Input = v23_3_ - 1.000000
                v0_20_ = v23_3_
                Input = v0_18_
                if Input ~= v23_1_ then
                    return
                end
                v23_3_ = game.Players.LocalPlayer
                Input = v23_3_.Anchored
                if Input then
                    return
                end
                Input = v0_14_
                v23_3_ = true
                Input.m1 = v23_3_
                Input = v0_18_
                if Input then
                    Input = v0_18_
                    local index_I = "Ammo"
                    Input = Input:findFirstChild(index_I)
                    if Input then
                        Input = v0_22_
                        if not Input then
                            return
                        end
                        v23_3_ = v0_2_
                        Input = v23_3_.has
                        v23_3_ = v0_3_
                        index_I = "reloading"
                        Input = Input(v23_3_, index_I)
                        if not Input then
                            v23_3_ = v0_2_
                            Input = v23_3_.has
                            v23_3_ = v0_3_
                            index_I = "creator"
                            Input = Input(v23_3_, index_I)
                            if not Input then
                                Input = false
                                v0_22_ = nil
                                Input = v0_18_
                                index_I = "Fires"
                                Input = Input:findFirstChild(index_I)
                                if Input then
                                    Input = v0_7_
                                    local args = v0_18_
                                    index_I = args.Fires
                                    Input = Input:LoadAnimation(index_I)
                                    args = 0.100000
                                    local hit = 1
                                    local mouse = 2
                                    Input:Play(args, hit, mouse)
                                end
                                local wrap = coroutine.wrap
                                v23_3_ = function()
                                    local v24_0_ = v0_18_
                                    local v24_2_ = "Misfire"
                                    v24_0_ = v24_0_:findFirstChild(v24_2_)
                                    if v24_0_ then
                                        local v24_1_ = a1
                                        v24_0_ = v24_1_.KeyCode
                                        local ButtonR2 = Enum.KeyCode.ButtonR2
                                        if v24_0_ == ButtonR2 then
                                            v24_0_ = wait
                                            local v24_4_ = v0_18_
                                            local v24_3_ = v24_4_.Misfire
                                            v24_2_ = v24_3_.Value
                                            v24_1_ = v24_2_ / 2.000000
                                            v24_0_(v24_1_)
                                        else
                                            v24_0_ = wait
                                            local v24_3_ = v0_18_
                                            v24_2_ = v24_3_.Misfire
                                            v24_1_ = v24_2_.Value
                                            v24_0_(v24_1_)
                                        end
                                    end
                                    v24_0_ = true
                                    v0_22_ = v24_2_
                                end
                                Input = wrap(v23_3_)
                                Input()
                            end
                        end
                    end
                    Input = a1.UserInputType
                    local Touch = Enum.UserInputType.Touch
                    if Input == Touch then
                        Input = v0_18_
                        if Input then
                            Input = v0_18_
                            index_I = "Info"
                            Input = Input:findFirstChild(index_I)
                            index_I = "Auto"
                            Input = Input:FindFirstChild(index_I)
                            if not Input then
                                Input = a1.UserInputType
                                local Touch_0 = Enum.UserInputType.Touch
                                if Input == Touch_0 then
                                    Input = v0_18_
                                    if Input then
                                        Input = v0_18_
                                        index_I = "Ammo"
                                        Input = Input:findFirstChild(index_I)
                                        if Input then
                                            Input = a1.UserInputType
                                            local Touch = Enum.UserInputType.Touch
                                            while Input ~= Touch do
                                                Input = v0_18_
                                                while Input do
                                                    Input = v0_9_
                                                    index_I = "I"
                                                    local args = {}
                                                    local mouse = v0_5_
                                                    local hit = mouse.Hit
                                                    args.mousehit = hit
                                                    mouse = v0_14_
                                                    hit = mouse.shift
                                                    args.shift = hit
                                                    local host = game.Players.LocalPlayer
                                                    mouse = host.Velocity
                                                    hit = mouse.magnitude
                                                    args.velo = hit
                                                    mouse = v0_5_
                                                    hit = mouse.Target
                                                    args.mousetarget = hit
                                                    Input:FireServer(index_I, args)
                                                    Input = v0_14_
                                                    v23_3_ = false
                                                    Input.shift = v23_3_
                                                    v23_3_ = v0_5_
                                                    Input = v23_3_.Target
                                                    v23_3_ = false
                                                    index_I = nil
                                                    hit = v0_5_
                                                    args = hit.Hit
                                                    index_I = args.p
                                                    args = a1.KeyCode
                                                    local ButtonR2 = Enum.KeyCode.ButtonR2
                                                    if args == ButtonR2 then
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "R2 pressed V2"
                                                        args.Text = hit
                                                        args = ray
                                                        host = v0_13_
                                                        mouse = host.CFrame
                                                        hit = mouse.p
                                                        local v23_10_ = v0_13_
                                                        local v23_9_ = v23_10_.CFrame
                                                        host = v23_9_.p
                                                        local v23_12_ = v0_13_
                                                        local v23_11_ = v23_12_.CFrame
                                                        v23_10_ = v23_11_.lookVector
                                                        v23_9_ = v23_10_ * 10.000000
                                                        mouse = host + v23_9_
                                                        host = 40
                                                        v23_9_ = table.create(1)
                                                        v23_10_ = v0_3_
                                                        v23_9_[1] = v23_10_
                                                        args, hit = args(hit, mouse, host, v23_9_)
                                                        heh = hit
                                                        Input = args
                                                        index_I = heh
                                                    end
                                                    args = a1.KeyCode
                                                    local ButtonR2_0 = Enum.KeyCode.ButtonR2
                                                    if args == ButtonR2_0 then
                                                        v23_3_ = true
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "xbox cant shiftlock lol"
                                                        args.Text = hit
                                                    end
                                                    if Input ~= nil then
                                                        args = ray
                                                        host = v0_3_
                                                        mouse = host.Head
                                                        hit = mouse.Position
                                                        local v23_9_ = v0_5_
                                                        host = v23_9_.Hit
                                                        mouse = host.p
                                                        host = 10
                                                        v23_9_ = table.create(1)
                                                        local v23_10_ = v0_3_
                                                        v23_9_[1] = v23_10_
                                                        args, hit = args(hit, mouse, host, v23_9_)
                                                        if args == Input then
                                                            v23_3_ = true
                                                        end
                                                    end
                                                    if Input ~= nil then
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        mouse = "targ changed 2 "
                                                        host = Input.Name
                                                        hit = mouse
                                                        args.Text = hit
                                                    end
                                                    if v23_3_ == false then
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "something in way"
                                                        args.Text = hit
                                                    end
                                                    if Input ~= nil then
                                                        mouse = "ClickDetector"
                                                        args = Input:findFirstChild(mouse)
                                                        if args then
                                                            host = pcall
                                                            mouse = host.PlayerGui
                                                            hit = mouse.ScreenGui
                                                            args = hit.TextLabel
                                                            hit = "CD found"
                                                            args.Text = hit
                                                            host = game.Players.LocalPlayer
                                                            mouse = host.Position
                                                            hit = mouse - index_I
                                                            args = hit.magnitude
                                                            mouse = Input.ClickDetector
                                                            hit = mouse.MaxActivationDistance
                                                            if args <= hit then
                                                                host = pcall
                                                                mouse = host.PlayerGui
                                                                hit = mouse.ScreenGui
                                                                args = hit.TextLabel
                                                                hit = "CD within distance"
                                                                args.Text = hit
                                                            else
                                                                host = pcall
                                                                mouse = host.PlayerGui
                                                                hit = mouse.ScreenGui
                                                                args = hit.TextLabel
                                                                hit = "CD out distance"
                                                                args.Text = hit
                                                                host = pcall
                                                                mouse = host.PlayerGui
                                                                hit = mouse.ScreenGui
                                                                args = hit.TextLabel
                                                                hit = "CD NOT found"
                                                                args.Text = hit
                                                            end
                                                        else
                                                            host = pcall
                                                            mouse = host.PlayerGui
                                                            hit = mouse.ScreenGui
                                                            args = hit.TextLabel
                                                            hit = "CD NOT found"
                                                            args.Text = hit
                                                        end
                                                    else
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "CD NOT found"
                                                        args.Text = hit
                                                    end
                                                    while Input ~= nil do
                                                        while v23_3_ do
                                                            mouse = "ClickDetector"
                                                            args = Input:findFirstChild(mouse)
                                                            while args do
                                                                host = game.Players.LocalPlayer
                                                                mouse = host.Position
                                                                hit = mouse - index_I
                                                                args = hit.magnitude
                                                                mouse = Input.ClickDetector
                                                                hit = mouse.MaxActivationDistance
                                                                while args <= hit do
                                                                    host = pcall
                                                                    mouse = host.PlayerGui
                                                                    hit = mouse.ScreenGui
                                                                    args = hit.TextLabel
                                                                    hit = "within distance"
                                                                    args.Text = hit
                                                                    args = Input.ClickDetector
                                                                    mouse = "RemoteEvent"
                                                                    args = args:findFirstChild(mouse)
                                                                    if args then
                                                                        host = pcall
                                                                        mouse = host.PlayerGui
                                                                        hit = mouse.ScreenGui
                                                                        args = hit.TextLabel
                                                                        hit = "remote fired"
                                                                        args.Text = hit
                                                                        hit = Input.ClickDetector
                                                                        args = hit.RemoteEvent
                                                                        args:FireServer()
                                                                    end
                                                                    args = Input.Name
                                                                    while args == "Peep" do
                                                                        args = v0_13_
                                                                        hit = "Scriptable"
                                                                        args.CameraType = hit
                                                                        args = v0_13_
                                                                        local new = CFrame.new
                                                                        host = Input.Position
                                                                        local v23_11_ = Input.CFrame
                                                                        local v23_10_ = v23_11_.lookVector
                                                                        local v23_9_ = v23_10_ * 0.500000
                                                                        mouse = host + v23_9_
                                                                        v23_10_ = Input.Position
                                                                        local v23_13_ = Input.CFrame
                                                                        local v23_12_ = v23_13_.lookVector
                                                                        v23_11_ = v23_12_ * 2.000000
                                                                        v23_9_ = v23_10_ + v23_11_
                                                                        v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                                        host = v23_9_ - v23_10_
                                                                        hit = new(mouse, host)
                                                                        args.CoordinateFrame = hit
                                                                        args = v0_13_
                                                                        hit = 120
                                                                        args.FieldOfView = hit
                                                                        hit = game.Players.LocalPlayer
                                                                        args = hit.Position
                                                                        hit = wait
                                                                        hit()
                                                                        v23_9_ = game.Players.LocalPlayer
                                                                        host = v23_9_.Position
                                                                        mouse = host - args
                                                                        hit = mouse.magnitude
                                                                        mouse = 0.200000
                                                                        if mouse < hit then
                                                                            hit = returncam
                                                                            hit()
                                                                        else
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                Input = a1.UserInputType
                                local Touch = Enum.UserInputType.Touch
                                while Input ~= Touch do
                                    Input = v0_18_
                                    while Input do
                                        Input = v0_9_
                                        index_I = "I"
                                        local args = {}
                                        local mouse = v0_5_
                                        local hit = mouse.Hit
                                        args.mousehit = hit
                                        mouse = v0_14_
                                        hit = mouse.shift
                                        args.shift = hit
                                        local host = game.Players.LocalPlayer
                                        mouse = host.Velocity
                                        hit = mouse.magnitude
                                        args.velo = hit
                                        mouse = v0_5_
                                        hit = mouse.Target
                                        args.mousetarget = hit
                                        Input:FireServer(index_I, args)
                                        Input = v0_14_
                                        v23_3_ = false
                                        Input.shift = v23_3_
                                        v23_3_ = v0_5_
                                        Input = v23_3_.Target
                                        v23_3_ = false
                                        index_I = nil
                                        hit = v0_5_
                                        args = hit.Hit
                                        index_I = args.p
                                        args = a1.KeyCode
                                        local ButtonR2 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2 then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "R2 pressed V2"
                                            args.Text = hit
                                            args = ray
                                            host = v0_13_
                                            mouse = host.CFrame
                                            hit = mouse.p
                                            local v23_10_ = v0_13_
                                            local v23_9_ = v23_10_.CFrame
                                            host = v23_9_.p
                                            local v23_12_ = v0_13_
                                            local v23_11_ = v23_12_.CFrame
                                            v23_10_ = v23_11_.lookVector
                                            v23_9_ = v23_10_ * 10.000000
                                            mouse = host + v23_9_
                                            host = 40
                                            v23_9_ = table.create(1)
                                            v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            heh = hit
                                            Input = args
                                            index_I = heh
                                        end
                                        args = a1.KeyCode
                                        local ButtonR2_0 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2_0 then
                                            v23_3_ = true
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "xbox cant shiftlock lol"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            args = ray
                                            host = v0_3_
                                            mouse = host.Head
                                            hit = mouse.Position
                                            local v23_9_ = v0_5_
                                            host = v23_9_.Hit
                                            mouse = host.p
                                            host = 10
                                            v23_9_ = table.create(1)
                                            local v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            if args == Input then
                                                v23_3_ = true
                                            end
                                        end
                                        if Input ~= nil then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            mouse = "targ changed 2 "
                                            host = Input.Name
                                            hit = mouse
                                            args.Text = hit
                                        end
                                        if v23_3_ == false then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "something in way"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            mouse = "ClickDetector"
                                            args = Input:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD found"
                                                args.Text = hit
                                                host = game.Players.LocalPlayer
                                                mouse = host.Position
                                                hit = mouse - index_I
                                                args = hit.magnitude
                                                mouse = Input.ClickDetector
                                                hit = mouse.MaxActivationDistance
                                                if args <= hit then
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD within distance"
                                                    args.Text = hit
                                                else
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD out distance"
                                                    args.Text = hit
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD NOT found"
                                                    args.Text = hit
                                                end
                                            else
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD NOT found"
                                                args.Text = hit
                                            end
                                        else
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "CD NOT found"
                                            args.Text = hit
                                        end
                                        while Input ~= nil do
                                            while v23_3_ do
                                                mouse = "ClickDetector"
                                                args = Input:findFirstChild(mouse)
                                                while args do
                                                    host = game.Players.LocalPlayer
                                                    mouse = host.Position
                                                    hit = mouse - index_I
                                                    args = hit.magnitude
                                                    mouse = Input.ClickDetector
                                                    hit = mouse.MaxActivationDistance
                                                    while args <= hit do
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "within distance"
                                                        args.Text = hit
                                                        args = Input.ClickDetector
                                                        mouse = "RemoteEvent"
                                                        args = args:findFirstChild(mouse)
                                                        if args then
                                                            host = pcall
                                                            mouse = host.PlayerGui
                                                            hit = mouse.ScreenGui
                                                            args = hit.TextLabel
                                                            hit = "remote fired"
                                                            args.Text = hit
                                                            hit = Input.ClickDetector
                                                            args = hit.RemoteEvent
                                                            args:FireServer()
                                                        end
                                                        args = Input.Name
                                                        while args == "Peep" do
                                                            args = v0_13_
                                                            hit = "Scriptable"
                                                            args.CameraType = hit
                                                            args = v0_13_
                                                            local new = CFrame.new
                                                            host = Input.Position
                                                            local v23_11_ = Input.CFrame
                                                            local v23_10_ = v23_11_.lookVector
                                                            local v23_9_ = v23_10_ * 0.500000
                                                            mouse = host + v23_9_
                                                            v23_10_ = Input.Position
                                                            local v23_13_ = Input.CFrame
                                                            local v23_12_ = v23_13_.lookVector
                                                            v23_11_ = v23_12_ * 2.000000
                                                            v23_9_ = v23_10_ + v23_11_
                                                            v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                            host = v23_9_ - v23_10_
                                                            hit = new(mouse, host)
                                                            args.CoordinateFrame = hit
                                                            args = v0_13_
                                                            hit = 120
                                                            args.FieldOfView = hit
                                                            hit = game.Players.LocalPlayer
                                                            args = hit.Position
                                                            hit = wait
                                                            hit()
                                                            v23_9_ = game.Players.LocalPlayer
                                                            host = v23_9_.Position
                                                            mouse = host - args
                                                            hit = mouse.magnitude
                                                            mouse = 0.200000
                                                            if mouse < hit then
                                                                hit = returncam
                                                                hit()
                                                            else
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    Input = a1.UserInputType
                    local Touch_0 = Enum.UserInputType.Touch
                    if Input == Touch_0 then
                        Input = v0_18_
                        if Input then
                            Input = v0_18_
                            index_I = "Ammo"
                            Input = Input:findFirstChild(index_I)
                            if Input then
                                Input = a1.UserInputType
                                local Touch = Enum.UserInputType.Touch
                                while Input ~= Touch do
                                    Input = v0_18_
                                    while Input do
                                        Input = v0_9_
                                        index_I = "I"
                                        local args = {}
                                        local mouse = v0_5_
                                        local hit = mouse.Hit
                                        args.mousehit = hit
                                        mouse = v0_14_
                                        hit = mouse.shift
                                        args.shift = hit
                                        local host = game.Players.LocalPlayer
                                        mouse = host.Velocity
                                        hit = mouse.magnitude
                                        args.velo = hit
                                        mouse = v0_5_
                                        hit = mouse.Target
                                        args.mousetarget = hit
                                        Input:FireServer(index_I, args)
                                        Input = v0_14_
                                        v23_3_ = false
                                        Input.shift = v23_3_
                                        v23_3_ = v0_5_
                                        Input = v23_3_.Target
                                        v23_3_ = false
                                        index_I = nil
                                        hit = v0_5_
                                        args = hit.Hit
                                        index_I = args.p
                                        args = a1.KeyCode
                                        local ButtonR2 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2 then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "R2 pressed V2"
                                            args.Text = hit
                                            args = ray
                                            host = v0_13_
                                            mouse = host.CFrame
                                            hit = mouse.p
                                            local v23_10_ = v0_13_
                                            local v23_9_ = v23_10_.CFrame
                                            host = v23_9_.p
                                            local v23_12_ = v0_13_
                                            local v23_11_ = v23_12_.CFrame
                                            v23_10_ = v23_11_.lookVector
                                            v23_9_ = v23_10_ * 10.000000
                                            mouse = host + v23_9_
                                            host = 40
                                            v23_9_ = table.create(1)
                                            v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            heh = hit
                                            Input = args
                                            index_I = heh
                                        end
                                        args = a1.KeyCode
                                        local ButtonR2_0 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2_0 then
                                            v23_3_ = true
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "xbox cant shiftlock lol"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            args = ray
                                            host = v0_3_
                                            mouse = host.Head
                                            hit = mouse.Position
                                            local v23_9_ = v0_5_
                                            host = v23_9_.Hit
                                            mouse = host.p
                                            host = 10
                                            v23_9_ = table.create(1)
                                            local v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            if args == Input then
                                                v23_3_ = true
                                            end
                                        end
                                        if Input ~= nil then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            mouse = "targ changed 2 "
                                            host = Input.Name
                                            hit = mouse
                                            args.Text = hit
                                        end
                                        if v23_3_ == false then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "something in way"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            mouse = "ClickDetector"
                                            args = Input:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD found"
                                                args.Text = hit
                                                host = game.Players.LocalPlayer
                                                mouse = host.Position
                                                hit = mouse - index_I
                                                args = hit.magnitude
                                                mouse = Input.ClickDetector
                                                hit = mouse.MaxActivationDistance
                                                if args <= hit then
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD within distance"
                                                    args.Text = hit
                                                else
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD out distance"
                                                    args.Text = hit
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD NOT found"
                                                    args.Text = hit
                                                end
                                            else
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD NOT found"
                                                args.Text = hit
                                            end
                                        else
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "CD NOT found"
                                            args.Text = hit
                                        end
                                        while Input ~= nil do
                                            while v23_3_ do
                                                mouse = "ClickDetector"
                                                args = Input:findFirstChild(mouse)
                                                while args do
                                                    host = game.Players.LocalPlayer
                                                    mouse = host.Position
                                                    hit = mouse - index_I
                                                    args = hit.magnitude
                                                    mouse = Input.ClickDetector
                                                    hit = mouse.MaxActivationDistance
                                                    while args <= hit do
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "within distance"
                                                        args.Text = hit
                                                        args = Input.ClickDetector
                                                        mouse = "RemoteEvent"
                                                        args = args:findFirstChild(mouse)
                                                        if args then
                                                            host = pcall
                                                            mouse = host.PlayerGui
                                                            hit = mouse.ScreenGui
                                                            args = hit.TextLabel
                                                            hit = "remote fired"
                                                            args.Text = hit
                                                            hit = Input.ClickDetector
                                                            args = hit.RemoteEvent
                                                            args:FireServer()
                                                        end
                                                        args = Input.Name
                                                        while args == "Peep" do
                                                            args = v0_13_
                                                            hit = "Scriptable"
                                                            args.CameraType = hit
                                                            args = v0_13_
                                                            local new = CFrame.new
                                                            host = Input.Position
                                                            local v23_11_ = Input.CFrame
                                                            local v23_10_ = v23_11_.lookVector
                                                            local v23_9_ = v23_10_ * 0.500000
                                                            mouse = host + v23_9_
                                                            v23_10_ = Input.Position
                                                            local v23_13_ = Input.CFrame
                                                            local v23_12_ = v23_13_.lookVector
                                                            v23_11_ = v23_12_ * 2.000000
                                                            v23_9_ = v23_10_ + v23_11_
                                                            v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                            host = v23_9_ - v23_10_
                                                            hit = new(mouse, host)
                                                            args.CoordinateFrame = hit
                                                            args = v0_13_
                                                            hit = 120
                                                            args.FieldOfView = hit
                                                            hit = game.Players.LocalPlayer
                                                            args = hit.Position
                                                            hit = wait
                                                            hit()
                                                            v23_9_ = game.Players.LocalPlayer
                                                            host = v23_9_.Position
                                                            mouse = host - args
                                                            hit = mouse.magnitude
                                                            mouse = 0.200000
                                                            if mouse < hit then
                                                                hit = returncam
                                                                hit()
                                                            else
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    Input = a1.UserInputType
                    local Touch = Enum.UserInputType.Touch
                    while Input ~= Touch do
                        Input = v0_18_
                        while Input do
                            Input = v0_9_
                            index_I = "I"
                            local args = {}
                            local mouse = v0_5_
                            local hit = mouse.Hit
                            args.mousehit = hit
                            mouse = v0_14_
                            hit = mouse.shift
                            args.shift = hit
                            local host = game.Players.LocalPlayer
                            mouse = host.Velocity
                            hit = mouse.magnitude
                            args.velo = hit
                            mouse = v0_5_
                            hit = mouse.Target
                            args.mousetarget = hit
                            Input:FireServer(index_I, args)
                            Input = v0_14_
                            v23_3_ = false
                            Input.shift = v23_3_
                            v23_3_ = v0_5_
                            Input = v23_3_.Target
                            v23_3_ = false
                            index_I = nil
                            hit = v0_5_
                            args = hit.Hit
                            index_I = args.p
                            args = a1.KeyCode
                            local ButtonR2 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2 then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "R2 pressed V2"
                                args.Text = hit
                                args = ray
                                host = v0_13_
                                mouse = host.CFrame
                                hit = mouse.p
                                local v23_10_ = v0_13_
                                local v23_9_ = v23_10_.CFrame
                                host = v23_9_.p
                                local v23_12_ = v0_13_
                                local v23_11_ = v23_12_.CFrame
                                v23_10_ = v23_11_.lookVector
                                v23_9_ = v23_10_ * 10.000000
                                mouse = host + v23_9_
                                host = 40
                                v23_9_ = table.create(1)
                                v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                heh = hit
                                Input = args
                                index_I = heh
                            end
                            args = a1.KeyCode
                            local ButtonR2_0 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2_0 then
                                v23_3_ = true
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "xbox cant shiftlock lol"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                args = ray
                                host = v0_3_
                                mouse = host.Head
                                hit = mouse.Position
                                local v23_9_ = v0_5_
                                host = v23_9_.Hit
                                mouse = host.p
                                host = 10
                                v23_9_ = table.create(1)
                                local v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                if args == Input then
                                    v23_3_ = true
                                end
                            end
                            if Input ~= nil then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                mouse = "targ changed 2 "
                                host = Input.Name
                                hit = mouse
                                args.Text = hit
                            end
                            if v23_3_ == false then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "something in way"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                mouse = "ClickDetector"
                                args = Input:findFirstChild(mouse)
                                if args then
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD found"
                                    args.Text = hit
                                    host = game.Players.LocalPlayer
                                    mouse = host.Position
                                    hit = mouse - index_I
                                    args = hit.magnitude
                                    mouse = Input.ClickDetector
                                    hit = mouse.MaxActivationDistance
                                    if args <= hit then
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD within distance"
                                        args.Text = hit
                                    else
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD out distance"
                                        args.Text = hit
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD NOT found"
                                        args.Text = hit
                                    end
                                else
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD NOT found"
                                    args.Text = hit
                                end
                            else
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD NOT found"
                                args.Text = hit
                            end
                            while Input ~= nil do
                                while v23_3_ do
                                    mouse = "ClickDetector"
                                    args = Input:findFirstChild(mouse)
                                    while args do
                                        host = game.Players.LocalPlayer
                                        mouse = host.Position
                                        hit = mouse - index_I
                                        args = hit.magnitude
                                        mouse = Input.ClickDetector
                                        hit = mouse.MaxActivationDistance
                                        while args <= hit do
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "within distance"
                                            args.Text = hit
                                            args = Input.ClickDetector
                                            mouse = "RemoteEvent"
                                            args = args:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "remote fired"
                                                args.Text = hit
                                                hit = Input.ClickDetector
                                                args = hit.RemoteEvent
                                                args:FireServer()
                                            end
                                            args = Input.Name
                                            while args == "Peep" do
                                                args = v0_13_
                                                hit = "Scriptable"
                                                args.CameraType = hit
                                                args = v0_13_
                                                local new = CFrame.new
                                                host = Input.Position
                                                local v23_11_ = Input.CFrame
                                                local v23_10_ = v23_11_.lookVector
                                                local v23_9_ = v23_10_ * 0.500000
                                                mouse = host + v23_9_
                                                v23_10_ = Input.Position
                                                local v23_13_ = Input.CFrame
                                                local v23_12_ = v23_13_.lookVector
                                                v23_11_ = v23_12_ * 2.000000
                                                v23_9_ = v23_10_ + v23_11_
                                                v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                host = v23_9_ - v23_10_
                                                hit = new(mouse, host)
                                                args.CoordinateFrame = hit
                                                args = v0_13_
                                                hit = 120
                                                args.FieldOfView = hit
                                                hit = game.Players.LocalPlayer
                                                args = hit.Position
                                                hit = wait
                                                hit()
                                                v23_9_ = game.Players.LocalPlayer
                                                host = v23_9_.Position
                                                mouse = host - args
                                                hit = mouse.magnitude
                                                mouse = 0.200000
                                                if mouse < hit then
                                                    hit = returncam
                                                    hit()
                                                else
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    v23_3_ = v0_5_
                    Input = v23_3_.Target
                    v23_3_ = false
                    local index_I = nil
                    local hit = v0_5_
                    local args = hit.Hit
                    index_I = args.p
                    args = a1.KeyCode
                    local ButtonR2 = Enum.KeyCode.ButtonR2
                    if args == ButtonR2 then
                        local host = pcall
                        local mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "R2 pressed V2"
                        args.Text = hit
                        args = ray
                        host = v0_13_
                        mouse = host.CFrame
                        hit = mouse.p
                        local v23_10_ = v0_13_
                        local v23_9_ = v23_10_.CFrame
                        host = v23_9_.p
                        local v23_12_ = v0_13_
                        local v23_11_ = v23_12_.CFrame
                        v23_10_ = v23_11_.lookVector
                        v23_9_ = v23_10_ * 10.000000
                        mouse = host + v23_9_
                        host = 40
                        v23_9_ = table.create(1)
                        v23_10_ = v0_3_
                        v23_9_[1] = v23_10_
                        args, hit = args(hit, mouse, host, v23_9_)
                        heh = hit
                        Input = args
                        index_I = heh
                    end
                    args = a1.KeyCode
                    local ButtonR2_0 = Enum.KeyCode.ButtonR2
                    if args == ButtonR2_0 then
                        v23_3_ = true
                        local host = pcall
                        local mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "xbox cant shiftlock lol"
                        args.Text = hit
                    end
                    if Input ~= nil then
                        args = ray
                        local host = v0_3_
                        local mouse = host.Head
                        hit = mouse.Position
                        local v23_9_ = v0_5_
                        host = v23_9_.Hit
                        mouse = host.p
                        host = 10
                        v23_9_ = table.create(1)
                        local v23_10_ = v0_3_
                        v23_9_[1] = v23_10_
                        args, hit = args(hit, mouse, host, v23_9_)
                        if args == Input then
                            v23_3_ = true
                        end
                    end
                    if Input ~= nil then
                        local host = pcall
                        local mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        mouse = "targ changed 2 "
                        host = Input.Name
                        hit = mouse
                        args.Text = hit
                    end
                    if v23_3_ == false then
                        local host = pcall
                        local mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "something in way"
                        args.Text = hit
                    end
                    if Input ~= nil then
                        local mouse = "ClickDetector"
                        args = Input:findFirstChild(mouse)
                        if args then
                            local host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "CD found"
                            args.Text = hit
                            host = game.Players.LocalPlayer
                            mouse = host.Position
                            hit = mouse - index_I
                            args = hit.magnitude
                            mouse = Input.ClickDetector
                            hit = mouse.MaxActivationDistance
                            if args <= hit then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD within distance"
                                args.Text = hit
                            else
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD out distance"
                                args.Text = hit
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD NOT found"
                                args.Text = hit
                            end
                        else
                            local host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "CD NOT found"
                            args.Text = hit
                        end
                    else
                        local host = pcall
                        local mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "CD NOT found"
                        args.Text = hit
                    end
                    while Input ~= nil do
                        while v23_3_ do
                            local mouse = "ClickDetector"
                            args = Input:findFirstChild(mouse)
                            while args do
                                local host = game.Players.LocalPlayer
                                mouse = host.Position
                                hit = mouse - index_I
                                args = hit.magnitude
                                mouse = Input.ClickDetector
                                hit = mouse.MaxActivationDistance
                                while args <= hit do
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "within distance"
                                    args.Text = hit
                                    args = Input.ClickDetector
                                    mouse = "RemoteEvent"
                                    args = args:findFirstChild(mouse)
                                    if args then
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "remote fired"
                                        args.Text = hit
                                        hit = Input.ClickDetector
                                        args = hit.RemoteEvent
                                        args:FireServer()
                                    end
                                    args = Input.Name
                                    while args == "Peep" do
                                        args = v0_13_
                                        hit = "Scriptable"
                                        args.CameraType = hit
                                        args = v0_13_
                                        local new = CFrame.new
                                        host = Input.Position
                                        local v23_11_ = Input.CFrame
                                        local v23_10_ = v23_11_.lookVector
                                        local v23_9_ = v23_10_ * 0.500000
                                        mouse = host + v23_9_
                                        v23_10_ = Input.Position
                                        local v23_13_ = Input.CFrame
                                        local v23_12_ = v23_13_.lookVector
                                        v23_11_ = v23_12_ * 2.000000
                                        v23_9_ = v23_10_ + v23_11_
                                        v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                        host = v23_9_ - v23_10_
                                        hit = new(mouse, host)
                                        args.CoordinateFrame = hit
                                        args = v0_13_
                                        hit = 120
                                        args.FieldOfView = hit
                                        hit = game.Players.LocalPlayer
                                        args = hit.Position
                                        hit = wait
                                        hit()
                                        v23_9_ = game.Players.LocalPlayer
                                        host = v23_9_.Position
                                        mouse = host - args
                                        hit = mouse.magnitude
                                        mouse = 0.200000
                                        if mouse < hit then
                                            hit = returncam
                                            hit()
                                        else
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    v23_1_ = v0_18_
    v23_3_ = tick
    v23_3_ = v23_3_()
    Input = v23_3_ - 1.000000
    v0_20_ = v23_3_
    Input = v0_18_
    if Input ~= v23_1_ then
        return
    end
    v23_3_ = game.Players.LocalPlayer
    Input = v23_3_.Anchored
    if Input then
        return
    end
    Input = v0_14_
    v23_3_ = true
    Input.m1 = v23_3_
    Input = v0_18_
    if Input then
        Input = v0_18_
        local index_I = "Ammo"
        Input = Input:findFirstChild(index_I)
        if Input then
            Input = v0_22_
            if not Input then
                return
            end
            v23_3_ = v0_2_
            Input = v23_3_.has
            v23_3_ = v0_3_
            index_I = "reloading"
            Input = Input(v23_3_, index_I)
            if not Input then
                v23_3_ = v0_2_
                Input = v23_3_.has
                v23_3_ = v0_3_
                index_I = "creator"
                Input = Input(v23_3_, index_I)
                if not Input then
                    Input = false
                    v0_22_ = nil
                    Input = v0_18_
                    index_I = "Fires"
                    Input = Input:findFirstChild(index_I)
                    if Input then
                        Input = v0_7_
                        local args = v0_18_
                        index_I = args.Fires
                        Input = Input:LoadAnimation(index_I)
                        args = 0.100000
                        local hit = 1
                        local mouse = 2
                        Input:Play(args, hit, mouse)
                    end
                    local wrap = coroutine.wrap
                    v23_3_ = function()
                        local v25_0_ = v0_18_
                        local v25_2_ = "Misfire"
                        v25_0_ = v25_0_:findFirstChild(v25_2_)
                        if v25_0_ then
                            local v25_1_ = a1
                            v25_0_ = v25_1_.KeyCode
                            local ButtonR2 = Enum.KeyCode.ButtonR2
                            if v25_0_ == ButtonR2 then
                                v25_0_ = wait
                                local v25_4_ = v0_18_
                                local v25_3_ = v25_4_.Misfire
                                v25_2_ = v25_3_.Value
                                v25_1_ = v25_2_ / 2.000000
                                v25_0_(v25_1_)
                            else
                                v25_0_ = wait
                                local v25_3_ = v0_18_
                                v25_2_ = v25_3_.Misfire
                                v25_1_ = v25_2_.Value
                                v25_0_(v25_1_)
                            end
                        end
                        v25_0_ = true
                        v0_22_ = v25_2_
                    end
                    Input = wrap(v23_3_)
                    Input()
                end
            end
        end
        Input = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if Input == Touch then
            Input = v0_18_
            if Input then
                Input = v0_18_
                index_I = "Info"
                Input = Input:findFirstChild(index_I)
                index_I = "Auto"
                Input = Input:FindFirstChild(index_I)
                if not Input then
                    Input = a1.UserInputType
                    local Touch_0 = Enum.UserInputType.Touch
                    if Input == Touch_0 then
                        Input = v0_18_
                        if Input then
                            Input = v0_18_
                            index_I = "Ammo"
                            Input = Input:findFirstChild(index_I)
                            if Input then
                                Input = a1.UserInputType
                                local Touch = Enum.UserInputType.Touch
                                while Input ~= Touch do
                                    Input = v0_18_
                                    while Input do
                                        Input = v0_9_
                                        index_I = "I"
                                        local args = {}
                                        local mouse = v0_5_
                                        local hit = mouse.Hit
                                        args.mousehit = hit
                                        mouse = v0_14_
                                        hit = mouse.shift
                                        args.shift = hit
                                        local host = game.Players.LocalPlayer
                                        mouse = host.Velocity
                                        hit = mouse.magnitude
                                        args.velo = hit
                                        mouse = v0_5_
                                        hit = mouse.Target
                                        args.mousetarget = hit
                                        Input:FireServer(index_I, args)
                                        Input = v0_14_
                                        v23_3_ = false
                                        Input.shift = v23_3_
                                        v23_3_ = v0_5_
                                        Input = v23_3_.Target
                                        v23_3_ = false
                                        index_I = nil
                                        hit = v0_5_
                                        args = hit.Hit
                                        index_I = args.p
                                        args = a1.KeyCode
                                        local ButtonR2 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2 then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "R2 pressed V2"
                                            args.Text = hit
                                            args = ray
                                            host = v0_13_
                                            mouse = host.CFrame
                                            hit = mouse.p
                                            local v23_10_ = v0_13_
                                            local v23_9_ = v23_10_.CFrame
                                            host = v23_9_.p
                                            local v23_12_ = v0_13_
                                            local v23_11_ = v23_12_.CFrame
                                            v23_10_ = v23_11_.lookVector
                                            v23_9_ = v23_10_ * 10.000000
                                            mouse = host + v23_9_
                                            host = 40
                                            v23_9_ = table.create(1)
                                            v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            heh = hit
                                            Input = args
                                            index_I = heh
                                        end
                                        args = a1.KeyCode
                                        local ButtonR2_0 = Enum.KeyCode.ButtonR2
                                        if args == ButtonR2_0 then
                                            v23_3_ = true
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "xbox cant shiftlock lol"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            args = ray
                                            host = v0_3_
                                            mouse = host.Head
                                            hit = mouse.Position
                                            local v23_9_ = v0_5_
                                            host = v23_9_.Hit
                                            mouse = host.p
                                            host = 10
                                            v23_9_ = table.create(1)
                                            local v23_10_ = v0_3_
                                            v23_9_[1] = v23_10_
                                            args, hit = args(hit, mouse, host, v23_9_)
                                            if args == Input then
                                                v23_3_ = true
                                            end
                                        end
                                        if Input ~= nil then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            mouse = "targ changed 2 "
                                            host = Input.Name
                                            hit = mouse
                                            args.Text = hit
                                        end
                                        if v23_3_ == false then
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "something in way"
                                            args.Text = hit
                                        end
                                        if Input ~= nil then
                                            mouse = "ClickDetector"
                                            args = Input:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD found"
                                                args.Text = hit
                                                host = game.Players.LocalPlayer
                                                mouse = host.Position
                                                hit = mouse - index_I
                                                args = hit.magnitude
                                                mouse = Input.ClickDetector
                                                hit = mouse.MaxActivationDistance
                                                if args <= hit then
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD within distance"
                                                    args.Text = hit
                                                else
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD out distance"
                                                    args.Text = hit
                                                    host = pcall
                                                    mouse = host.PlayerGui
                                                    hit = mouse.ScreenGui
                                                    args = hit.TextLabel
                                                    hit = "CD NOT found"
                                                    args.Text = hit
                                                end
                                            else
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "CD NOT found"
                                                args.Text = hit
                                            end
                                        else
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "CD NOT found"
                                            args.Text = hit
                                        end
                                        while Input ~= nil do
                                            while v23_3_ do
                                                mouse = "ClickDetector"
                                                args = Input:findFirstChild(mouse)
                                                while args do
                                                    host = game.Players.LocalPlayer
                                                    mouse = host.Position
                                                    hit = mouse - index_I
                                                    args = hit.magnitude
                                                    mouse = Input.ClickDetector
                                                    hit = mouse.MaxActivationDistance
                                                    while args <= hit do
                                                        host = pcall
                                                        mouse = host.PlayerGui
                                                        hit = mouse.ScreenGui
                                                        args = hit.TextLabel
                                                        hit = "within distance"
                                                        args.Text = hit
                                                        args = Input.ClickDetector
                                                        mouse = "RemoteEvent"
                                                        args = args:findFirstChild(mouse)
                                                        if args then
                                                            host = pcall
                                                            mouse = host.PlayerGui
                                                            hit = mouse.ScreenGui
                                                            args = hit.TextLabel
                                                            hit = "remote fired"
                                                            args.Text = hit
                                                            hit = Input.ClickDetector
                                                            args = hit.RemoteEvent
                                                            args:FireServer()
                                                        end
                                                        args = Input.Name
                                                        while args == "Peep" do
                                                            args = v0_13_
                                                            hit = "Scriptable"
                                                            args.CameraType = hit
                                                            args = v0_13_
                                                            local new = CFrame.new
                                                            host = Input.Position
                                                            local v23_11_ = Input.CFrame
                                                            local v23_10_ = v23_11_.lookVector
                                                            local v23_9_ = v23_10_ * 0.500000
                                                            mouse = host + v23_9_
                                                            v23_10_ = Input.Position
                                                            local v23_13_ = Input.CFrame
                                                            local v23_12_ = v23_13_.lookVector
                                                            v23_11_ = v23_12_ * 2.000000
                                                            v23_9_ = v23_10_ + v23_11_
                                                            v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                            host = v23_9_ - v23_10_
                                                            hit = new(mouse, host)
                                                            args.CoordinateFrame = hit
                                                            args = v0_13_
                                                            hit = 120
                                                            args.FieldOfView = hit
                                                            hit = game.Players.LocalPlayer
                                                            args = hit.Position
                                                            hit = wait
                                                            hit()
                                                            v23_9_ = game.Players.LocalPlayer
                                                            host = v23_9_.Position
                                                            mouse = host - args
                                                            hit = mouse.magnitude
                                                            mouse = 0.200000
                                                            if mouse < hit then
                                                                hit = returncam
                                                                hit()
                                                            else
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    Input = a1.UserInputType
                    local Touch = Enum.UserInputType.Touch
                    while Input ~= Touch do
                        Input = v0_18_
                        while Input do
                            Input = v0_9_
                            index_I = "I"
                            local args = {}
                            local mouse = v0_5_
                            local hit = mouse.Hit
                            args.mousehit = hit
                            mouse = v0_14_
                            hit = mouse.shift
                            args.shift = hit
                            local host = game.Players.LocalPlayer
                            mouse = host.Velocity
                            hit = mouse.magnitude
                            args.velo = hit
                            mouse = v0_5_
                            hit = mouse.Target
                            args.mousetarget = hit
                            Input:FireServer(index_I, args)
                            Input = v0_14_
                            v23_3_ = false
                            Input.shift = v23_3_
                            v23_3_ = v0_5_
                            Input = v23_3_.Target
                            v23_3_ = false
                            index_I = nil
                            hit = v0_5_
                            args = hit.Hit
                            index_I = args.p
                            args = a1.KeyCode
                            local ButtonR2 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2 then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "R2 pressed V2"
                                args.Text = hit
                                args = ray
                                host = v0_13_
                                mouse = host.CFrame
                                hit = mouse.p
                                local v23_10_ = v0_13_
                                local v23_9_ = v23_10_.CFrame
                                host = v23_9_.p
                                local v23_12_ = v0_13_
                                local v23_11_ = v23_12_.CFrame
                                v23_10_ = v23_11_.lookVector
                                v23_9_ = v23_10_ * 10.000000
                                mouse = host + v23_9_
                                host = 40
                                v23_9_ = table.create(1)
                                v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                heh = hit
                                Input = args
                                index_I = heh
                            end
                            args = a1.KeyCode
                            local ButtonR2_0 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2_0 then
                                v23_3_ = true
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "xbox cant shiftlock lol"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                args = ray
                                host = v0_3_
                                mouse = host.Head
                                hit = mouse.Position
                                local v23_9_ = v0_5_
                                host = v23_9_.Hit
                                mouse = host.p
                                host = 10
                                v23_9_ = table.create(1)
                                local v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                if args == Input then
                                    v23_3_ = true
                                end
                            end
                            if Input ~= nil then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                mouse = "targ changed 2 "
                                host = Input.Name
                                hit = mouse
                                args.Text = hit
                            end
                            if v23_3_ == false then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "something in way"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                mouse = "ClickDetector"
                                args = Input:findFirstChild(mouse)
                                if args then
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD found"
                                    args.Text = hit
                                    host = game.Players.LocalPlayer
                                    mouse = host.Position
                                    hit = mouse - index_I
                                    args = hit.magnitude
                                    mouse = Input.ClickDetector
                                    hit = mouse.MaxActivationDistance
                                    if args <= hit then
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD within distance"
                                        args.Text = hit
                                    else
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD out distance"
                                        args.Text = hit
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD NOT found"
                                        args.Text = hit
                                    end
                                else
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD NOT found"
                                    args.Text = hit
                                end
                            else
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD NOT found"
                                args.Text = hit
                            end
                            while Input ~= nil do
                                while v23_3_ do
                                    mouse = "ClickDetector"
                                    args = Input:findFirstChild(mouse)
                                    while args do
                                        host = game.Players.LocalPlayer
                                        mouse = host.Position
                                        hit = mouse - index_I
                                        args = hit.magnitude
                                        mouse = Input.ClickDetector
                                        hit = mouse.MaxActivationDistance
                                        while args <= hit do
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "within distance"
                                            args.Text = hit
                                            args = Input.ClickDetector
                                            mouse = "RemoteEvent"
                                            args = args:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "remote fired"
                                                args.Text = hit
                                                hit = Input.ClickDetector
                                                args = hit.RemoteEvent
                                                args:FireServer()
                                            end
                                            args = Input.Name
                                            while args == "Peep" do
                                                args = v0_13_
                                                hit = "Scriptable"
                                                args.CameraType = hit
                                                args = v0_13_
                                                local new = CFrame.new
                                                host = Input.Position
                                                local v23_11_ = Input.CFrame
                                                local v23_10_ = v23_11_.lookVector
                                                local v23_9_ = v23_10_ * 0.500000
                                                mouse = host + v23_9_
                                                v23_10_ = Input.Position
                                                local v23_13_ = Input.CFrame
                                                local v23_12_ = v23_13_.lookVector
                                                v23_11_ = v23_12_ * 2.000000
                                                v23_9_ = v23_10_ + v23_11_
                                                v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                host = v23_9_ - v23_10_
                                                hit = new(mouse, host)
                                                args.CoordinateFrame = hit
                                                args = v0_13_
                                                hit = 120
                                                args.FieldOfView = hit
                                                hit = game.Players.LocalPlayer
                                                args = hit.Position
                                                hit = wait
                                                hit()
                                                v23_9_ = game.Players.LocalPlayer
                                                host = v23_9_.Position
                                                mouse = host - args
                                                hit = mouse.magnitude
                                                mouse = 0.200000
                                                if mouse < hit then
                                                    hit = returncam
                                                    hit()
                                                else
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        Input = a1.UserInputType
        local Touch_0 = Enum.UserInputType.Touch
        if Input == Touch_0 then
            Input = v0_18_
            if Input then
                Input = v0_18_
                index_I = "Ammo"
                Input = Input:findFirstChild(index_I)
                if Input then
                    Input = a1.UserInputType
                    local Touch = Enum.UserInputType.Touch
                    while Input ~= Touch do
                        Input = v0_18_
                        while Input do
                            Input = v0_9_
                            index_I = "I"
                            local args = {}
                            local mouse = v0_5_
                            local hit = mouse.Hit
                            args.mousehit = hit
                            mouse = v0_14_
                            hit = mouse.shift
                            args.shift = hit
                            local host = game.Players.LocalPlayer
                            mouse = host.Velocity
                            hit = mouse.magnitude
                            args.velo = hit
                            mouse = v0_5_
                            hit = mouse.Target
                            args.mousetarget = hit
                            Input:FireServer(index_I, args)
                            Input = v0_14_
                            v23_3_ = false
                            Input.shift = v23_3_
                            v23_3_ = v0_5_
                            Input = v23_3_.Target
                            v23_3_ = false
                            index_I = nil
                            hit = v0_5_
                            args = hit.Hit
                            index_I = args.p
                            args = a1.KeyCode
                            local ButtonR2 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2 then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "R2 pressed V2"
                                args.Text = hit
                                args = ray
                                host = v0_13_
                                mouse = host.CFrame
                                hit = mouse.p
                                local v23_10_ = v0_13_
                                local v23_9_ = v23_10_.CFrame
                                host = v23_9_.p
                                local v23_12_ = v0_13_
                                local v23_11_ = v23_12_.CFrame
                                v23_10_ = v23_11_.lookVector
                                v23_9_ = v23_10_ * 10.000000
                                mouse = host + v23_9_
                                host = 40
                                v23_9_ = table.create(1)
                                v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                heh = hit
                                Input = args
                                index_I = heh
                            end
                            args = a1.KeyCode
                            local ButtonR2_0 = Enum.KeyCode.ButtonR2
                            if args == ButtonR2_0 then
                                v23_3_ = true
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "xbox cant shiftlock lol"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                args = ray
                                host = v0_3_
                                mouse = host.Head
                                hit = mouse.Position
                                local v23_9_ = v0_5_
                                host = v23_9_.Hit
                                mouse = host.p
                                host = 10
                                v23_9_ = table.create(1)
                                local v23_10_ = v0_3_
                                v23_9_[1] = v23_10_
                                args, hit = args(hit, mouse, host, v23_9_)
                                if args == Input then
                                    v23_3_ = true
                                end
                            end
                            if Input ~= nil then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                mouse = "targ changed 2 "
                                host = Input.Name
                                hit = mouse
                                args.Text = hit
                            end
                            if v23_3_ == false then
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "something in way"
                                args.Text = hit
                            end
                            if Input ~= nil then
                                mouse = "ClickDetector"
                                args = Input:findFirstChild(mouse)
                                if args then
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD found"
                                    args.Text = hit
                                    host = game.Players.LocalPlayer
                                    mouse = host.Position
                                    hit = mouse - index_I
                                    args = hit.magnitude
                                    mouse = Input.ClickDetector
                                    hit = mouse.MaxActivationDistance
                                    if args <= hit then
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD within distance"
                                        args.Text = hit
                                    else
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD out distance"
                                        args.Text = hit
                                        host = pcall
                                        mouse = host.PlayerGui
                                        hit = mouse.ScreenGui
                                        args = hit.TextLabel
                                        hit = "CD NOT found"
                                        args.Text = hit
                                    end
                                else
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "CD NOT found"
                                    args.Text = hit
                                end
                            else
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "CD NOT found"
                                args.Text = hit
                            end
                            while Input ~= nil do
                                while v23_3_ do
                                    mouse = "ClickDetector"
                                    args = Input:findFirstChild(mouse)
                                    while args do
                                        host = game.Players.LocalPlayer
                                        mouse = host.Position
                                        hit = mouse - index_I
                                        args = hit.magnitude
                                        mouse = Input.ClickDetector
                                        hit = mouse.MaxActivationDistance
                                        while args <= hit do
                                            host = pcall
                                            mouse = host.PlayerGui
                                            hit = mouse.ScreenGui
                                            args = hit.TextLabel
                                            hit = "within distance"
                                            args.Text = hit
                                            args = Input.ClickDetector
                                            mouse = "RemoteEvent"
                                            args = args:findFirstChild(mouse)
                                            if args then
                                                host = pcall
                                                mouse = host.PlayerGui
                                                hit = mouse.ScreenGui
                                                args = hit.TextLabel
                                                hit = "remote fired"
                                                args.Text = hit
                                                hit = Input.ClickDetector
                                                args = hit.RemoteEvent
                                                args:FireServer()
                                            end
                                            args = Input.Name
                                            while args == "Peep" do
                                                args = v0_13_
                                                hit = "Scriptable"
                                                args.CameraType = hit
                                                args = v0_13_
                                                local new = CFrame.new
                                                host = Input.Position
                                                local v23_11_ = Input.CFrame
                                                local v23_10_ = v23_11_.lookVector
                                                local v23_9_ = v23_10_ * 0.500000
                                                mouse = host + v23_9_
                                                v23_10_ = Input.Position
                                                local v23_13_ = Input.CFrame
                                                local v23_12_ = v23_13_.lookVector
                                                v23_11_ = v23_12_ * 2.000000
                                                v23_9_ = v23_10_ + v23_11_
                                                v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                                host = v23_9_ - v23_10_
                                                hit = new(mouse, host)
                                                args.CoordinateFrame = hit
                                                args = v0_13_
                                                hit = 120
                                                args.FieldOfView = hit
                                                hit = game.Players.LocalPlayer
                                                args = hit.Position
                                                hit = wait
                                                hit()
                                                v23_9_ = game.Players.LocalPlayer
                                                host = v23_9_.Position
                                                mouse = host - args
                                                hit = mouse.magnitude
                                                mouse = 0.200000
                                                if mouse < hit then
                                                    hit = returncam
                                                    hit()
                                                else
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        Input = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        while Input ~= Touch do
            Input = v0_18_
            while Input do
                Input = v0_9_
                index_I = "I"
                local args = {}
                local mouse = v0_5_
                local hit = mouse.Hit
                args.mousehit = hit
                mouse = v0_14_
                hit = mouse.shift
                args.shift = hit
                local host = game.Players.LocalPlayer
                mouse = host.Velocity
                hit = mouse.magnitude
                args.velo = hit
                mouse = v0_5_
                hit = mouse.Target
                args.mousetarget = hit
                Input:FireServer(index_I, args)
                Input = v0_14_
                v23_3_ = false
                Input.shift = v23_3_
                v23_3_ = v0_5_
                Input = v23_3_.Target
                v23_3_ = false
                index_I = nil
                hit = v0_5_
                args = hit.Hit
                index_I = args.p
                args = a1.KeyCode
                local ButtonR2 = Enum.KeyCode.ButtonR2
                if args == ButtonR2 then
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "R2 pressed V2"
                    args.Text = hit
                    args = ray
                    host = v0_13_
                    mouse = host.CFrame
                    hit = mouse.p
                    local v23_10_ = v0_13_
                    local v23_9_ = v23_10_.CFrame
                    host = v23_9_.p
                    local v23_12_ = v0_13_
                    local v23_11_ = v23_12_.CFrame
                    v23_10_ = v23_11_.lookVector
                    v23_9_ = v23_10_ * 10.000000
                    mouse = host + v23_9_
                    host = 40
                    v23_9_ = table.create(1)
                    v23_10_ = v0_3_
                    v23_9_[1] = v23_10_
                    args, hit = args(hit, mouse, host, v23_9_)
                    heh = hit
                    Input = args
                    index_I = heh
                end
                args = a1.KeyCode
                local ButtonR2_0 = Enum.KeyCode.ButtonR2
                if args == ButtonR2_0 then
                    v23_3_ = true
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "xbox cant shiftlock lol"
                    args.Text = hit
                end
                if Input ~= nil then
                    args = ray
                    host = v0_3_
                    mouse = host.Head
                    hit = mouse.Position
                    local v23_9_ = v0_5_
                    host = v23_9_.Hit
                    mouse = host.p
                    host = 10
                    v23_9_ = table.create(1)
                    local v23_10_ = v0_3_
                    v23_9_[1] = v23_10_
                    args, hit = args(hit, mouse, host, v23_9_)
                    if args == Input then
                        v23_3_ = true
                    end
                end
                if Input ~= nil then
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    mouse = "targ changed 2 "
                    host = Input.Name
                    hit = mouse
                    args.Text = hit
                end
                if v23_3_ == false then
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "something in way"
                    args.Text = hit
                end
                if Input ~= nil then
                    mouse = "ClickDetector"
                    args = Input:findFirstChild(mouse)
                    if args then
                        host = pcall
                        mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "CD found"
                        args.Text = hit
                        host = game.Players.LocalPlayer
                        mouse = host.Position
                        hit = mouse - index_I
                        args = hit.magnitude
                        mouse = Input.ClickDetector
                        hit = mouse.MaxActivationDistance
                        if args <= hit then
                            host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "CD within distance"
                            args.Text = hit
                        else
                            host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "CD out distance"
                            args.Text = hit
                            host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "CD NOT found"
                            args.Text = hit
                        end
                    else
                        host = pcall
                        mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "CD NOT found"
                        args.Text = hit
                    end
                else
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "CD NOT found"
                    args.Text = hit
                end
                while Input ~= nil do
                    while v23_3_ do
                        mouse = "ClickDetector"
                        args = Input:findFirstChild(mouse)
                        while args do
                            host = game.Players.LocalPlayer
                            mouse = host.Position
                            hit = mouse - index_I
                            args = hit.magnitude
                            mouse = Input.ClickDetector
                            hit = mouse.MaxActivationDistance
                            while args <= hit do
                                host = pcall
                                mouse = host.PlayerGui
                                hit = mouse.ScreenGui
                                args = hit.TextLabel
                                hit = "within distance"
                                args.Text = hit
                                args = Input.ClickDetector
                                mouse = "RemoteEvent"
                                args = args:findFirstChild(mouse)
                                if args then
                                    host = pcall
                                    mouse = host.PlayerGui
                                    hit = mouse.ScreenGui
                                    args = hit.TextLabel
                                    hit = "remote fired"
                                    args.Text = hit
                                    hit = Input.ClickDetector
                                    args = hit.RemoteEvent
                                    args:FireServer()
                                end
                                args = Input.Name
                                while args == "Peep" do
                                    args = v0_13_
                                    hit = "Scriptable"
                                    args.CameraType = hit
                                    args = v0_13_
                                    local new = CFrame.new
                                    host = Input.Position
                                    local v23_11_ = Input.CFrame
                                    local v23_10_ = v23_11_.lookVector
                                    local v23_9_ = v23_10_ * 0.500000
                                    mouse = host + v23_9_
                                    v23_10_ = Input.Position
                                    local v23_13_ = Input.CFrame
                                    local v23_12_ = v23_13_.lookVector
                                    v23_11_ = v23_12_ * 2.000000
                                    v23_9_ = v23_10_ + v23_11_
                                    v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                                    host = v23_9_ - v23_10_
                                    hit = new(mouse, host)
                                    args.CoordinateFrame = hit
                                    args = v0_13_
                                    hit = 120
                                    args.FieldOfView = hit
                                    hit = game.Players.LocalPlayer
                                    args = hit.Position
                                    hit = wait
                                    hit()
                                    v23_9_ = game.Players.LocalPlayer
                                    host = v23_9_.Position
                                    mouse = host - args
                                    hit = mouse.magnitude
                                    mouse = 0.200000
                                    if mouse < hit then
                                        hit = returncam
                                        hit()
                                    else
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        v23_3_ = v0_5_
        Input = v23_3_.Target
        v23_3_ = false
        local index_I = nil
        local hit = v0_5_
        local args = hit.Hit
        index_I = args.p
        args = a1.KeyCode
        local ButtonR2 = Enum.KeyCode.ButtonR2
        if args == ButtonR2 then
            local host = pcall
            local mouse = host.PlayerGui
            hit = mouse.ScreenGui
            args = hit.TextLabel
            hit = "R2 pressed V2"
            args.Text = hit
            args = ray
            host = v0_13_
            mouse = host.CFrame
            hit = mouse.p
            local v23_10_ = v0_13_
            local v23_9_ = v23_10_.CFrame
            host = v23_9_.p
            local v23_12_ = v0_13_
            local v23_11_ = v23_12_.CFrame
            v23_10_ = v23_11_.lookVector
            v23_9_ = v23_10_ * 10.000000
            mouse = host + v23_9_
            host = 40
            v23_9_ = table.create(1)
            v23_10_ = v0_3_
            v23_9_[1] = v23_10_
            args, hit = args(hit, mouse, host, v23_9_)
            heh = hit
            Input = args
            index_I = heh
        end
        args = a1.KeyCode
        local ButtonR2_0 = Enum.KeyCode.ButtonR2
        if args == ButtonR2_0 then
            v23_3_ = true
            local host = pcall
            local mouse = host.PlayerGui
            hit = mouse.ScreenGui
            args = hit.TextLabel
            hit = "xbox cant shiftlock lol"
            args.Text = hit
        end
        if Input ~= nil then
            args = ray
            local host = v0_3_
            local mouse = host.Head
            hit = mouse.Position
            local v23_9_ = v0_5_
            host = v23_9_.Hit
            mouse = host.p
            host = 10
            v23_9_ = table.create(1)
            local v23_10_ = v0_3_
            v23_9_[1] = v23_10_
            args, hit = args(hit, mouse, host, v23_9_)
            if args == Input then
                v23_3_ = true
            end
        end
        if Input ~= nil then
            local host = pcall
            local mouse = host.PlayerGui
            hit = mouse.ScreenGui
            args = hit.TextLabel
            mouse = "targ changed 2 "
            host = Input.Name
            hit = mouse
            args.Text = hit
        end
        if v23_3_ == false then
            local host = pcall
            local mouse = host.PlayerGui
            hit = mouse.ScreenGui
            args = hit.TextLabel
            hit = "something in way"
            args.Text = hit
        end
        if Input ~= nil then
            local mouse = "ClickDetector"
            args = Input:findFirstChild(mouse)
            if args then
                local host = pcall
                mouse = host.PlayerGui
                hit = mouse.ScreenGui
                args = hit.TextLabel
                hit = "CD found"
                args.Text = hit
                host = game.Players.LocalPlayer
                mouse = host.Position
                hit = mouse - index_I
                args = hit.magnitude
                mouse = Input.ClickDetector
                hit = mouse.MaxActivationDistance
                if args <= hit then
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "CD within distance"
                    args.Text = hit
                else
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "CD out distance"
                    args.Text = hit
                    host = pcall
                    mouse = host.PlayerGui
                    hit = mouse.ScreenGui
                    args = hit.TextLabel
                    hit = "CD NOT found"
                    args.Text = hit
                end
            else
                local host = pcall
                mouse = host.PlayerGui
                hit = mouse.ScreenGui
                args = hit.TextLabel
                hit = "CD NOT found"
                args.Text = hit
            end
        else
            local host = pcall
            local mouse = host.PlayerGui
            hit = mouse.ScreenGui
            args = hit.TextLabel
            hit = "CD NOT found"
            args.Text = hit
        end
        while Input ~= nil do
            while v23_3_ do
                local mouse = "ClickDetector"
                args = Input:findFirstChild(mouse)
                while args do
                    local host = game.Players.LocalPlayer
                    mouse = host.Position
                    hit = mouse - index_I
                    args = hit.magnitude
                    mouse = Input.ClickDetector
                    hit = mouse.MaxActivationDistance
                    while args <= hit do
                        host = pcall
                        mouse = host.PlayerGui
                        hit = mouse.ScreenGui
                        args = hit.TextLabel
                        hit = "within distance"
                        args.Text = hit
                        args = Input.ClickDetector
                        mouse = "RemoteEvent"
                        args = args:findFirstChild(mouse)
                        if args then
                            host = pcall
                            mouse = host.PlayerGui
                            hit = mouse.ScreenGui
                            args = hit.TextLabel
                            hit = "remote fired"
                            args.Text = hit
                            hit = Input.ClickDetector
                            args = hit.RemoteEvent
                            args:FireServer()
                        end
                        args = Input.Name
                        while args == "Peep" do
                            args = v0_13_
                            hit = "Scriptable"
                            args.CameraType = hit
                            args = v0_13_
                            local new = CFrame.new
                            host = Input.Position
                            local v23_11_ = Input.CFrame
                            local v23_10_ = v23_11_.lookVector
                            local v23_9_ = v23_10_ * 0.500000
                            mouse = host + v23_9_
                            v23_10_ = Input.Position
                            local v23_13_ = Input.CFrame
                            local v23_12_ = v23_13_.lookVector
                            v23_11_ = v23_12_ * 2.000000
                            v23_9_ = v23_10_ + v23_11_
                            v23_10_ = Vector3.new(0.000000, 0.500000, 0.000000)
                            host = v23_9_ - v23_10_
                            hit = new(mouse, host)
                            args.CoordinateFrame = hit
                            args = v0_13_
                            hit = 120
                            args.FieldOfView = hit
                            hit = game.Players.LocalPlayer
                            args = hit.Position
                            hit = wait
                            hit()
                            v23_9_ = game.Players.LocalPlayer
                            host = v23_9_.Position
                            mouse = host - args
                            hit = mouse.magnitude
                            mouse = 0.200000
                            if mouse < hit then
                                hit = returncam
                                hit()
                            else
                            end
                        end
                    end
                end
            end
        end
    end
    v23_1_ = a1.KeyCode
    local W = Enum.KeyCode.W
    if v23_1_ == W then
        v23_1_ = v0_14_
        Input = true
        v23_1_.w = Input
    end
    v23_1_ = a1.KeyCode
    local LeftShift = Enum.KeyCode.LeftShift
    if v23_1_ ~= LeftShift then
        v23_1_ = a1.KeyCode
        local ButtonL3 = Enum.KeyCode.ButtonL3
        if v23_1_ == ButtonL3 then
            v23_1_ = v0_3_
            v23_3_ = "AnimateMECH"
            v23_1_ = v23_1_:FindFirstChild(v23_3_)
            if v23_1_ == nil then
                v23_1_ = v0_14_
                Input = true
                v23_1_.shift = Input
                v23_1_ = tick
                v23_1_ = v23_1_()
                v0_20_ = v23_3_
            end
        end
    end
    v23_1_ = v0_3_
    v23_3_ = "AnimateMECH"
    v23_1_ = v23_1_:FindFirstChild(v23_3_)
    if v23_1_ == nil then
        v23_1_ = v0_14_
        Input = true
        v23_1_.shift = Input
        v23_1_ = tick
        v23_1_ = v23_1_()
        v0_20_ = v23_3_
    end
    v23_1_ = a1.KeyCode
    local A = Enum.KeyCode.A
    if v23_1_ == A then
        v23_1_ = v0_14_
        Input = true
        v23_1_.a = Input
    else
    end
    v23_1_ = a1.KeyCode
    local D = Enum.KeyCode.D
    if v23_1_ == D then
        v23_1_ = v0_14_
        Input = true
        v23_1_.d = Input
    end
    v23_1_ = a1.KeyCode
    local S = Enum.KeyCode.S
    if v23_1_ == S then
        v23_1_ = v0_14_
        Input = true
        v23_1_.s = Input
    end
    v23_1_ = a1.KeyCode
    local ButtonB = Enum.KeyCode.ButtonB
    if v23_1_ == ButtonB then
        Input = v0_7_
        v23_1_ = Input.Sit
        if v23_1_ == false then
            Input = v0_7_
            v23_1_ = Input.PlatformStand
            if v23_1_ == false then
                v23_1_ = v0_17_
                if not v23_1_ then
                    v23_1_ = true
                    v0_17_ = nil
                    v23_1_ = v0_25_
                    v23_3_ = 0.100000
                    local index_I = 1
                    local args = 1
                    v23_1_:Play(v23_3_, index_I, args)
                else
                    v23_1_ = false
                    v0_17_ = nil
                    v23_1_ = v0_25_
                    v23_1_:Stop()
                end
            end
        end
    end
    v23_1_ = a1.KeyCode
    local LeftControl = Enum.KeyCode.LeftControl
    if v23_1_ == LeftControl then
        v23_1_ = v0_25_
        v23_3_ = 0.100000
        local index_I = 1
        local args = 1
        v23_1_:Play(v23_3_, index_I, args)
        v23_1_ = v0_14_
        Input = true
        v23_1_.ctrl = Input
    end
    v23_1_ = a1.KeyCode
    local S = Enum.KeyCode.S
    if v23_1_ == S then
        v23_1_ = v0_14_
        Input = true
        v23_1_.s = Input
        v23_1_ = v0_24_
        v23_1_:Stop()
        v23_1_ = false
        v0_23_ = nil
    end
end
v0_26_:connect(v0_28_)
v0_26_ = v0_15_.InputEnded
v0_28_ = function(a1)
    local v26_1_ = a1.KeyCode
    local LeftControl = Enum.KeyCode.LeftControl
    if v26_1_ == LeftControl then
        v26_1_ = v0_14_
        local v26_2_ = false
        v26_1_.ctrl = v26_2_
        v26_1_ = v0_25_
        v26_1_:Stop()
    end
    v26_1_ = a1.KeyCode
    local S = Enum.KeyCode.S
    if v26_1_ == S then
        v26_1_ = v0_14_
        local v26_2_ = false
        v26_1_.s = v26_2_
    end
    v26_1_ = a1.UserInputType
    local MouseButton1 = Enum.UserInputType.MouseButton1
    if v26_1_ ~= MouseButton1 then
        v26_1_ = a1.KeyCode
        local ButtonR2 = Enum.KeyCode.ButtonR2
        if v26_1_ ~= ButtonR2 then
            v26_1_ = a1.UserInputType
            local Touch = Enum.UserInputType.Touch
            if v26_1_ == Touch then
                v26_1_ = v0_18_
                if v26_1_ ~= nil then
                    v26_1_ = v0_18_
                    local v26_3_ = "Ammo"
                    v26_1_ = v26_1_:findFirstChild(v26_3_)
                    if v26_1_ then
                        v26_1_ = a1.UserInputType
                        local Touch_0 = Enum.UserInputType.Touch
                        if v26_1_ == Touch_0 then
                            return
                        end
                    end
                end
                v26_1_ = v0_9_
                local v26_3_ = "moff1"
                local v26_4_ = {}
                local v26_6_ = v0_5_
                local v26_5_ = v26_6_.Hit
                v26_4_.mousehit = v26_5_
                v26_6_ = v0_14_
                v26_5_ = v26_6_.shift
                v26_4_.shift = v26_5_
                local v26_7_ = game.Players.LocalPlayer
                v26_6_ = v26_7_.Velocity
                v26_5_ = v26_6_.magnitude
                v26_4_.velo = v26_5_
                v26_6_ = v0_5_
                v26_5_ = v26_6_.Target
                v26_4_.mousetarget = v26_5_
                v26_1_:FireServer(v26_3_, v26_4_)
            end
        end
    end
    v26_1_ = v0_18_
    if v26_1_ ~= nil then
        v26_1_ = v0_18_
        local v26_3_ = "Ammo"
        v26_1_ = v26_1_:findFirstChild(v26_3_)
        if v26_1_ then
            v26_1_ = a1.UserInputType
            local Touch = Enum.UserInputType.Touch
            if v26_1_ == Touch then
                return
            end
        end
    end
    v26_1_ = v0_9_
    local v26_3_ = "moff1"
    local v26_4_ = {}
    local v26_6_ = v0_5_
    local v26_5_ = v26_6_.Hit
    v26_4_.mousehit = v26_5_
    v26_6_ = v0_14_
    v26_5_ = v26_6_.shift
    v26_4_.shift = v26_5_
    local v26_7_ = game.Players.LocalPlayer
    v26_6_ = v26_7_.Velocity
    v26_5_ = v26_6_.magnitude
    v26_4_.velo = v26_5_
    v26_6_ = v0_5_
    v26_5_ = v26_6_.Target
    v26_4_.mousetarget = v26_5_
    v26_1_:FireServer(v26_3_, v26_4_)
    v26_1_ = a1.KeyCode
    local W = Enum.KeyCode.W
    if v26_1_ == W then
        v26_1_ = v0_14_
        local v26_2_ = false
        v26_1_.w = v26_2_
    end
    v26_1_ = a1.KeyCode
    local ButtonL2 = Enum.KeyCode.ButtonL2
    if v26_1_ == ButtonL2 then
        v26_1_ = false
        l2ing = v26_1_
    end
    v26_1_ = a1.KeyCode
    local E = Enum.KeyCode.E
    if v26_1_ ~= E then
        v26_1_ = a1.KeyCode
        local ButtonY = Enum.KeyCode.ButtonY
        if v26_1_ == ButtonY then
            v26_1_ = v0_9_
            v26_3_ = "dragoff"
            v26_4_ = {}
            v26_1_:FireServer(v26_3_, v26_4_)
            v26_1_ = v0_14_
            local v26_2_ = false
            v26_1_.e = v26_2_
        end
    end
    v26_1_ = v0_9_
    v26_3_ = "dragoff"
    v26_4_ = {}
    v26_1_:FireServer(v26_3_, v26_4_)
    v26_1_ = v0_14_
    local v26_2_ = false
    v26_1_.e = v26_2_
    v26_1_ = a1.KeyCode
    local LeftShift = Enum.KeyCode.LeftShift
    if v26_1_ ~= LeftShift then
        v26_1_ = a1.KeyCode
        local ButtonL3 = Enum.KeyCode.ButtonL3
        if v26_1_ == ButtonL3 then
            v26_1_ = v0_14_
            v26_2_ = false
            v26_1_.shift = v26_2_
        end
    end
    v26_1_ = v0_14_
    v26_2_ = false
    v26_1_.shift = v26_2_
    v26_1_ = a1.UserInputType
    local MouseButton2 = Enum.UserInputType.MouseButton2
    if v26_1_ == MouseButton2 then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.m2 = v26_2_
    end
    v26_1_ = a1.KeyCode
    local A = Enum.KeyCode.A
    if v26_1_ == A then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.a = v26_2_
    end
    v26_1_ = a1.KeyCode
    local LeftControl = Enum.KeyCode.LeftControl
    if v26_1_ == LeftControl then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.ctrl = v26_2_
    end
    v26_1_ = a1.KeyCode
    local D = Enum.KeyCode.D
    if v26_1_ == D then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.d = v26_2_
    end
    v26_1_ = a1.KeyCode
    local S = Enum.KeyCode.S
    if v26_1_ == S then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.s = v26_2_
    end
    v26_1_ = a1.UserInputType
    local MouseButton1 = Enum.UserInputType.MouseButton1
    if v26_1_ == MouseButton1 then
        v26_1_ = v0_14_
        v26_2_ = false
        v26_1_.m1 = v26_2_
    end
end
v0_26_:connect(v0_28_)
v0_27_ = game
local v0_29_ = "RunService"
v0_27_ = v0_27_:GetService(v0_29_)
v0_26_ = v0_27_.RenderStepped
v0_28_ = function()
    local v27_0_ = 16
    local v27_1_ = l2ing
    if v27_1_ then
        local v27_2_ = v0_7_
        v27_1_ = v27_2_.Sit
        if not v27_1_ then
            v27_2_ = v0_7_
            v27_1_ = v27_2_.PlatformStand
            if not v27_1_ then
                v27_1_ = v0_7_
                v27_2_ = false
                v27_1_.AutoRotate = v27_2_
                v27_1_ = game.Players.LocalPlayer
                local new = CFrame.new
                local v27_4_ = game.Players.LocalPlayer
                local v27_3_ = v27_4_.Position
                local v27_6_ = game.Players.LocalPlayer
                local v27_5_ = v27_6_.Position
                local v27_9_ = v0_13_
                local v27_8_ = v27_9_.CFrame
                local v27_7_ = v27_8_.lookVector
                v27_8_ = Vector3.new(1.000000, 0.000000, 1.000000)
                v27_6_ = v27_7_ * v27_8_
                v27_4_ = v27_5_ + v27_6_
                v27_2_ = new(v27_3_, v27_4_)
                v27_1_.CFrame = v27_2_
            else
                v27_1_ = v0_7_
                v27_2_ = true
                v27_1_.AutoRotate = v27_2_
            end
        else
            v27_1_ = v0_7_
            v27_2_ = true
            v27_1_.AutoRotate = v27_2_
        end
    else
        v27_1_ = v0_7_
        local v27_2_ = true
        v27_1_.AutoRotate = v27_2_
    end
    v27_1_ = v0_3_
    local v27_3_ = "Stamina"
    v27_1_ = v27_1_:FindFirstChild(v27_3_)
    if v27_1_ then
        v27_3_ = v0_3_
        local v27_2_ = v27_3_.Stamina
        v27_1_ = v27_2_.Value
        v27_2_ = 0
        if v27_1_ > v27_2_ then
            v27_3_ = v0_3_
            v27_2_ = v27_3_.Stamina
            v27_1_ = v27_2_.Value
            v27_2_ = 100
            if v27_2_ < v27_1_ then
                v27_1_ = v0_7_
                v27_2_ = false
                v27_1_.Jump = v27_2_
            end
        end
    end
    v27_3_ = v0_3_
    local v27_2_ = v27_3_.Stamina
    v27_1_ = v27_2_.Value
    v27_2_ = 100
    if v27_2_ < v27_1_ then
        v27_1_ = v0_7_
        v27_2_ = false
        v27_1_.Jump = v27_2_
    end
    v27_2_ = v0_14_
    v27_1_ = v27_2_.shift
    if v27_1_ then
        v27_2_ = v0_14_
        v27_1_ = v27_2_.s
        if v27_1_ ~= true then
            v27_3_ = v0_3_
            v27_2_ = v27_3_.Stamina
            v27_1_ = v27_2_.Value
            v27_2_ = 0
            if v27_2_ < v27_1_ then
                v27_3_ = v0_3_
                v27_2_ = v27_3_.Stamina
                v27_1_ = v27_2_.Value
                v27_2_ = 100
                if v27_1_ <= v27_2_ then
                    v27_0_ = 25
                    v27_1_ = v0_23_
                    if v27_1_ == false then
                        v27_3_ = game.Players.LocalPlayer
                        v27_2_ = v27_3_.Velocity
                        v27_1_ = v27_2_.magnitude
                        v27_2_ = 2
                        if v27_2_ < v27_1_ then
                            v27_1_ = true
                            v0_23_ = nil
                            v27_1_ = v0_24_
                            v27_3_ = 0.100000
                            local v27_4_ = 1
                            local v27_5_ = 1.200000
                            v27_1_:Play(v27_3_, v27_4_, v27_5_)
                        else
                            v27_1_ = v0_23_
                            if v27_1_ == true then
                                v27_3_ = game.Players.LocalPlayer
                                v27_2_ = v27_3_.Velocity
                                v27_1_ = v27_2_.magnitude
                                v27_2_ = 2
                                if v27_1_ < v27_2_ then
                                    v27_1_ = v0_24_
                                    v27_1_:Stop()
                                    v27_1_ = false
                                    v0_23_ = nil
                                    v27_1_ = v0_23_
                                    if v27_1_ then
                                        v27_1_ = false
                                        v0_23_ = nil
                                        v27_1_ = v0_24_
                                        v27_1_:Stop()
                                    end
                                end
                            end
                        end
                    else
                        v27_1_ = v0_23_
                        if v27_1_ == true then
                            v27_3_ = game.Players.LocalPlayer
                            v27_2_ = v27_3_.Velocity
                            v27_1_ = v27_2_.magnitude
                            v27_2_ = 2
                            if v27_1_ < v27_2_ then
                                v27_1_ = v0_24_
                                v27_1_:Stop()
                                v27_1_ = false
                                v0_23_ = nil
                                v27_1_ = v0_23_
                                if v27_1_ then
                                    v27_1_ = false
                                    v0_23_ = nil
                                    v27_1_ = v0_24_
                                    v27_1_:Stop()
                                end
                            end
                        end
                    end
                else
                    v27_1_ = v0_23_
                    if v27_1_ then
                        v27_1_ = false
                        v0_23_ = nil
                        v27_1_ = v0_24_
                        v27_1_:Stop()
                    end
                end
            else
                v27_1_ = v0_23_
                if v27_1_ then
                    v27_1_ = false
                    v0_23_ = nil
                    v27_1_ = v0_24_
                    v27_1_:Stop()
                end
            end
        else
            v27_1_ = v0_23_
            if v27_1_ then
                v27_1_ = false
                v0_23_ = nil
                v27_1_ = v0_24_
                v27_1_:Stop()
            end
        end
    else
        v27_1_ = v0_23_
        if v27_1_ then
            v27_1_ = false
            v0_23_ = nil
            v27_1_ = v0_24_
            v27_1_:Stop()
        end
    end
    v27_2_ = v0_14_
    v27_1_ = v27_2_.ctrl
    if not v27_1_ then
        v27_1_ = v0_17_
        if v27_1_ then
            v27_0_ = 8
            v27_1_ = v0_25_
            local v27_6_ = game.Players.LocalPlayer
            local v27_5_ = v27_6_.Velocity
            local v27_4_ = v27_5_.magnitude
            v27_3_ = v27_4_ / 10.000000
            v27_1_:AdjustSpeed(v27_3_)
        end
    end
    v27_0_ = 8
    v27_1_ = v0_25_
    local v27_6_ = game.Players.LocalPlayer
    local v27_5_ = v27_6_.Velocity
    local v27_4_ = v27_5_.magnitude
    v27_3_ = v27_4_ / 10.000000
    v27_1_:AdjustSpeed(v27_3_)
    v27_2_ = v0_7_
    v27_1_ = v27_2_.Parent
    v27_3_ = "AnimateMECH"
    v27_1_ = v27_1_:FindFirstChild(v27_3_)
    if v27_1_ == nil then
        v27_1_ = v0_7_
        v27_2_ = 37.500000
        v27_1_.JumpPower = v27_2_
    end
    v27_2_ = v0_2_
    v27_1_ = v27_2_.has
    v27_2_ = v0_3_
    v27_3_ = "creatorslow"
    v27_1_ = v27_1_(v27_2_, v27_3_)
    if v27_1_ then
        v27_0_ = 2
    end
    v27_2_ = v0_2_
    v27_1_ = v27_2_.has
    v27_2_ = v0_3_
    v27_3_ = "gunslow"
    v27_1_ = v27_1_(v27_2_, v27_3_)
    if v27_1_ then
        v27_0_ = 0
    end
    v27_2_ = v0_2_
    v27_1_ = v27_2_.has
    v27_2_ = v0_3_
    v27_3_ = "action"
    v27_1_ = v27_1_(v27_2_, v27_3_)
    if not v27_1_ then
        v27_2_ = v0_2_
        v27_1_ = v27_2_.has
        v27_2_ = v0_3_
        v27_3_ = "Action"
        v27_1_ = v27_1_(v27_2_, v27_3_)
        if v27_1_ then
            v27_0_ = 0
        end
    end
    v27_0_ = 0
    v27_2_ = v0_2_
    v27_1_ = v27_2_.has
    v27_2_ = v0_3_
    v27_3_ = "KO"
    v27_1_ = v27_1_(v27_2_, v27_3_)
    if v27_1_ then
        v27_0_ = 0
        v27_1_ = v0_7_
        v27_2_ = false
        v27_1_.Jump = v27_2_
        v27_1_ = v0_7_
        v27_2_ = true
        v27_1_.PlatformStand = v27_2_
    else
        v27_2_ = v0_7_
        v27_1_ = v27_2_.PlatformStand
        if v27_1_ == true then
            v27_1_ = v0_7_
            v27_2_ = false
            v27_1_.PlatformStand = v27_2_
        end
    end
    v27_1_ = v0_3_
    v27_3_ = "Bats"
    v27_1_ = v27_1_:FindFirstChild(v27_3_)
    if not v27_1_ then
        v27_1_ = v0_7_
        v27_1_.WalkSpeed = v27_0_
    end
    v27_4_ = v0_7_
    v27_3_ = v27_4_.WalkSpeed
    v27_2_ = v27_3_ - v27_0_
    local abs = math.abs
    v27_1_ = abs(v27_2_)
    v27_2_ = 2
    if v27_2_ < v27_1_ then
        v27_1_ = v0_3_
        v27_3_ = "Bats"
        v27_1_ = v27_1_:FindFirstChild(v27_3_)
        if not v27_1_ then
            v27_1_ = v0_9_
            v27_3_ = "ws"
            v27_4_ = {}
            v27_6_ = v0_7_
            v27_5_ = v27_6_.WalkSpeed
            v27_4_.w = v27_5_
            v27_4_.z = v27_0_
            v27_1_:FireServer(v27_3_, v27_4_)
        end
    end
    v27_2_ = game.Players.LocalPlayer
    v27_1_ = v27_2_.Anchored
    if v27_1_ == true then
        v27_1_ = v0_3_
        v27_1_:BreakJoints()
        v27_1_ = v0_7_
        v27_2_ = 0
        v27_1_.Health = v27_2_
        v27_1_ = v0_3_
        v27_1_:Destroy()
    end
end
v0_26_:connect(v0_28_)
v0_26_ = true
v0_28_ = game
local v0_30_ = "RunService"
v0_28_ = v0_28_:GetService(v0_30_)
v0_27_ = v0_28_.Heartbeat
v0_29_ = function()
    local v28_0_ = v0_26_
    if not v28_0_ then
        return
    end
    v28_0_ = false
    v0_26_ = v28_0_
    v28_0_ = true
    v0_26_ = v28_0_
end
v0_27_:connect(v0_29_)
v0_27_ = pcall.PlayerGui
v0_29_ = "HUD"
v0_27_ = v0_27_:WaitForChild(v0_29_)
v0_29_ = game
local v0_31_ = "UserInputService"
v0_29_ = v0_29_:GetService(v0_31_)
v0_28_ = v0_29_.TouchEnabled
if v0_28_ == true then
    v0_30_ = "RunButton"
    v0_28_ = v0_27_:WaitForChild(v0_30_)
    v0_29_ = true
    v0_28_.Visible = v0_29_
    v0_30_ = "CrouchButton"
    v0_28_ = v0_27_:WaitForChild(v0_30_)
    v0_29_ = true
    v0_28_.Visible = v0_29_
    v0_30_ = "FinishButton"
    v0_28_ = v0_27_:WaitForChild(v0_30_)
    v0_29_ = true
    v0_28_.Visible = v0_29_
    v0_30_ = "Lock"
    v0_28_ = v0_27_:WaitForChild(v0_30_)
    v0_29_ = true
    v0_28_.Visible = v0_29_
    v0_29_ = v0_27_.Lock
    v0_28_ = v0_29_.InputBegan
    v0_30_ = function(a1)
        local v29_1_ = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if v29_1_ == Touch then
            local v29_2_ = l2ing
            v29_1_ = not v29_2_
            l2ing = v29_1_
            v29_2_ = v0_27_
            v29_1_ = v29_2_.Lock
            v29_2_ = l2ing
            v29_1_.Selected = v29_2_
        end
    end
    v0_28_:connect(v0_30_)
    v0_28_ = false
    v0_29_ = v0_15_.TouchStarted
    v0_31_ = function()
        local v30_0_ = true
        v0_28_ = v30_0_
        local v30_2_ = 1
        v30_0_ = 10
        local v30_1_ = 1
        for v30_2_ = v30_2_, v30_0_, v30_1_ do
            local v30_3_ = wait
            local v30_4_ = 0.050000
            v30_3_(v30_4_)
            v30_3_ = v0_28_
            if v30_3_ ~= false then
            end
        end
        v30_0_ = v0_28_
        if v30_0_ then
            v30_0_ = v0_9_
            v30_2_ = "drag"
            local v30_3_ = {}
            v30_0_:FireServer(v30_2_, v30_3_)
        end
    end
    v0_29_:connect(v0_31_)
    v0_29_ = v0_15_.TouchEnded
    v0_31_ = function()
        local v31_0_ = false
        v0_28_ = v31_0_
        local v31_1_ = v0_2_
        v31_0_ = v31_1_.has
        v31_1_ = v0_3_
        local v31_2_ = "Dragging"
        v31_0_ = v31_0_(v31_1_, v31_2_)
        if v31_0_ then
            v31_0_ = v0_9_
            v31_2_ = "dragoff"
            local v31_3_ = {}
            v31_0_:FireServer(v31_2_, v31_3_)
        end
    end
    v0_29_:connect(v0_31_)
    v0_29_ = nil
    v0_30_ = nil
    v0_31_ = v0_3_.ChildAdded
    local v0_33_ = function()
        local wait = task.wait
        wait()
        local v32_0_ = v0_18_
        if v32_0_ ~= nil then
            v32_0_ = v0_29_
            if v32_0_ ~= nil then
                v32_0_ = v0_29_
                v32_0_:disconnect()
            end
            v32_0_ = v0_30_
            if v32_0_ ~= nil then
                v32_0_ = v0_30_
                v32_0_:disconnect()
            end
            local v32_1_ = v0_18_
            v32_0_ = v32_1_.Activated
            local v32_2_ = function()
                local v33_0_ = v0_18_
                local v33_2_ = "Ammo"
                v33_0_ = v33_0_:findFirstChild(v33_2_)
                if not v33_0_ then
                    return
                end
                v33_0_ = v0_9_
                v33_2_ = "I"
                local v33_3_ = {}
                local v33_5_ = v0_5_
                local v33_4_ = v33_5_.Hit
                v33_3_.mousehit = v33_4_
                v33_5_ = v0_14_
                v33_4_ = v33_5_.shift
                v33_3_.shift = v33_4_
                local v33_6_ = game.Players.LocalPlayer
                v33_5_ = v33_6_.Velocity
                v33_4_ = v33_5_.magnitude
                v33_3_.velo = v33_4_
                v33_5_ = v0_5_
                v33_4_ = v33_5_.Target
                v33_3_.mousetarget = v33_4_
                v33_0_:FireServer(v33_2_, v33_3_)
                v33_0_ = v0_14_
                local v33_1_ = false
                v33_0_.shift = v33_1_
            end
            v32_0_ = v32_0_:connect(v32_2_)
            v0_29_ = v32_1_
            v32_1_ = v0_18_
            v32_0_ = v32_1_.Deactivated
            v32_2_ = function()
                local v34_0_ = v0_18_
                local v34_2_ = "Ammo"
                v34_0_ = v34_0_:findFirstChild(v34_2_)
                if not v34_0_ then
                    return
                end
                v34_0_ = v0_9_
                v34_2_ = "moff1"
                local v34_3_ = {}
                local v34_5_ = v0_5_
                local v34_4_ = v34_5_.Hit
                v34_3_.mousehit = v34_4_
                v34_5_ = v0_14_
                v34_4_ = v34_5_.shift
                v34_3_.shift = v34_4_
                local v34_6_ = game.Players.LocalPlayer
                v34_5_ = v34_6_.Velocity
                v34_4_ = v34_5_.magnitude
                v34_3_.velo = v34_4_
                v34_5_ = v0_5_
                v34_4_ = v34_5_.Target
                v34_3_.mousetarget = v34_4_
                v34_0_:FireServer(v34_2_, v34_3_)
            end
            v32_0_ = v32_0_:connect(v32_2_)
            v0_30_ = v32_2_
        end
    end
    v0_31_:connect(v0_33_)
    local v0_32_ = v0_27_.RunButton
    v0_31_ = v0_32_.InputBegan
    v0_33_ = function(a1)
        local v35_1_ = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if v35_1_ == Touch then
            v35_1_ = v0_14_
            local v35_2_ = true
            v35_1_.shift = v35_2_
            v35_1_ = v0_24_
            local v35_3_ = 0.100000
            local v35_4_ = 1
            local v35_5_ = 1.200000
            v35_1_:Play(v35_3_, v35_4_, v35_5_)
            v35_1_ = true
            v0_23_ = v35_2_
        end
    end
    v0_31_:connect(v0_33_)
    v0_32_ = v0_27_.RunButton
    v0_31_ = v0_32_.InputEnded
    v0_33_ = function(a1)
        local v36_1_ = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if v36_1_ == Touch then
            local wait = task.wait
            wait()
            v36_1_ = v0_14_
            local v36_2_ = false
            v36_1_.shift = v36_2_
            v36_1_ = v0_24_
            v36_1_:Stop()
            v36_1_ = false
            v0_23_ = v36_2_
        end
    end
    v0_31_:connect(v0_33_)
    v0_32_ = v0_27_.CrouchButton
    v0_31_ = v0_32_.InputBegan
    v0_33_ = function(a1)
        local v37_1_ = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if v37_1_ == Touch then
            v37_1_ = v0_17_
            if not v37_1_ then
                v37_1_ = true
                v0_17_ = a1
                v37_1_ = v0_25_
                local v37_3_ = 0.100000
                local v37_4_ = 1
                local v37_5_ = 1
                v37_1_:Play(v37_3_, v37_4_, v37_5_)
                return
            end
            v37_1_ = false
            v0_17_ = a1
            v37_1_ = v0_25_
            v37_1_:Stop()
        end
    end
    v0_31_:connect(v0_33_)
    v0_32_ = v0_27_.FinishButton
    v0_31_ = v0_32_.InputBegan
    v0_33_ = function(a1)
        local v38_1_ = a1.UserInputType
        local Touch = Enum.UserInputType.Touch
        if v38_1_ == Touch then
            v38_1_ = v0_18_
            if v38_1_ then
                v38_1_ = v0_9_
                local v38_3_ = "e"
                local v38_4_ = {}
                v38_1_:FireServer(v38_3_, v38_4_)
            end
        end
    end
    v0_31_:connect(v0_33_)
end
v0_30_ = "GetMouse"
v0_28_ = v0_3_:WaitForChild(v0_30_)
v0_29_ = function(a1)
    local v39_2_ = v0_5_
    local v39_1_ = v39_2_.Hit
    local v39_3_ = v0_5_
    v39_2_ = v39_3_.Target
    return v39_1_, v39_2_
end
v0_28_.OnClientInvoke = v0_29_
v0_28_ = pcall.Name
if v0_28_ ~= "SnakeWorl" then
    local new = Instance.new
    v0_29_ = "BindableEvent"
    v0_28_ = new(v0_29_)
    v0_29_ = v0_28_.Event
    v0_31_ = function()
        local v40_5_ = game
        local v40_4_ = v40_5_.Players
        local v40_3_ = v40_4_.LocalPlayer
        local v40_2_ = v40_3_.Character
        local v40_1_ = v40_2_.Humanoid
        local v40_0_ = v40_1_.PlatformStand
        if v40_0_ == false then
            v40_1_ = v0_2_
            v40_0_ = v40_1_.has
            v40_1_ = v0_3_
            v40_2_ = "KO"
            v40_0_ = v40_0_(v40_1_, v40_2_)
            if not v40_0_ then
                v40_4_ = game
                v40_3_ = v40_4_.Players
                v40_2_ = v40_3_.LocalPlayer
                v40_1_ = v40_2_.Character
                v40_0_ = v40_1_.Humanoid
                v40_1_ = 0
                v40_0_.Health = v40_1_
            end
        end
    end
    v0_29_:connect(v0_31_)
    v0_29_ = game
    v0_31_ = "StarterGui"
    v0_29_ = v0_29_:GetService(v0_31_)
    v0_31_ = "ResetButtonCallback"
    local v0_32_ = v0_28_
    v0_29_:SetCore(v0_31_, v0_32_)
end
--fast
