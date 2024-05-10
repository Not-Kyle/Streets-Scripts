--//Objects\\--
local ScreenGui = Instance.new"ScreenGui"
local MainFrame = Instance.new"Frame"
local Frame = Instance.new"Frame"
local TextLabel = Instance.new"TextLabel"
local TextButton = Instance.new"TextButton"
local TextButton2 = Instance.new"TextButton"
local TextBox = Instance.new"TextBox"
local TextBox2 = Instance.new"TextBox"
local plr = game:GetService"Players".LocalPlayer
local Mouse = plr:GetMouse()
local CF = CFrame.new
local AutoID
local ONspin = false
local ONshoot = false
local ONitemesp = false
local ONautoplay = false
local ONrespawn = true
local ONspinvisualizer = false
local ONradiovisualizer = false
local ONgunanims = true
local ONspeed = true
local ONinfinitejump = true
local ONclickall = false
local ONclick = false
local ONdoorchaos = false
local ONunlockall = false
local ONlockall = false
local ONstompspeech = true
local ONay = false
local ONsavetools = true
local ONbfg = true
local ONdualbfg = false
local ONsuicidegun = false
local ONairwalk = true
local ONplatform = false
local offset = 3.11
local stompspeech
local deathnote
local sprining = false
local crouching = false
local taunting = false
local BFGvalue = true
local lasttaunt
local sens = 4
local speed = 100
local SpawnPos = 0
local uis = game:GetService"UserInputService"
local mps = game:GetService"MarketplaceService"
local TAUNTS = {
	{2765231211, "LONELY EMO!😂"},
	{2765231844, "Shush.. this kid is too young to play this, who let kids like this?"},
	{2765230937, "LOL ! ! ! KIDDD"},
	{2765230590, "Dude you're trash lol get rekt kid Xdddd"},
	{2765251128, "Ok so which one of y'all faxked my cousin"},
	{2765249961, "What is that? Do I hear heII_ish's audios? Hold up boys lemme get my shotgun Xdddddd"},
	{2765249450, "You've got leaked audios, poser!"}
	}
local Guns = {"Shotty", "Sawed Off", "Glock", "Uzi"}
local Doors = {}

--//Create The GUI\\--
if game.CoreGui:FindFirstChild"RadioGui" then
return
else
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "RadioGui"

MainFrame.Parent = ScreenGui
MainFrame.Name = "MainFrame"
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.69999998807907
MainFrame.Position = UDim2.new(0.75, 0, 0.5, 0)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 400, 0, 50)
MainFrame.Draggable = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.69999998807907
Frame.Position = UDim2.new(0, 0, 0.469, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 1600, 0, 40)
Frame.Draggable = false
Frame.Visible = false

TextBox2.Parent = Frame
TextBox2.BackgroundColor3 = Color3.new(0 , 255, 0)
TextBox2.BackgroundTransparency = 0.2
TextBox2.BorderColor3 = Color3.new(27, 42, 53)
TextBox2.BorderSizePixel = 1
TextBox2.Position = UDim2.new(0, 0, 0.153, 0)
TextBox2.Size = UDim2.new(0, 1600, 0, 28)
TextBox2.Font = Enum.Font.SourceSansSemibold
TextBox2.Text = ""
TextBox2.TextColor3 = Color3.new(1, 1, 1)
TextBox2.TextScaled = true
TextBox2.Visible = false

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Position = UDim2.new(0.241, 0, 0.1, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 40)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "ID"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14

TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.Position = UDim2.new(0.011, 0, 0.1, 0)
TextButton.Size = UDim2.new(0, 46.5, 0, 40)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Steal"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 19

TextButton2.Parent = MainFrame
TextButton2.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton2.BorderColor3 = Color3.new(0, 0, 0)
TextButton2.Position = UDim2.new(0.874, 0, 0.1, 0)
TextButton2.Size = UDim2.new(0, 46.5, 0, 40)
TextButton2.Font = Enum.Font.SourceSansSemibold
TextButton2.Text = "Play"
TextButton2.TextColor3 = Color3.new(1, 1, 1)
TextButton2.TextSize = 19

TextBox.Parent = MainFrame
TextBox.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.Position = UDim2.new(0.122, 0, 0.1, 0)
TextBox.Size = UDim2.new(0, 46.5, 0, 40)
TextBox.Font = Enum.Font.SourceSansSemibold
TextBox.Text = "Player"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true

--//Steal Audio\\--
TextButton.MouseButton1Click:connect(function()
	local VICTIM = game.CoreGui.RadioGui.MainFrame.TextBox.Text
	local RADIOTYPE = Radiotype(true, VICTIM)
	
	if workspace:FindFirstChild(VICTIM) then
		if workspace[VICTIM]:FindFirstChild(RADIOTYPE) then
			if RADIOTYPE == "DualGoldenSuperFlyBoombox" then
				TextLabel.Text = (workspace[VICTIM][RADIOTYPE].Handle.Audio.SoundId:match"%d+")
				elseif RADIOTYPE == "Radio" then
					TextLabel.Text = (workspace[VICTIM].Radio.Sound.SoundId:match"%d+")
				elseif RADIOTYPE == "BoomBox" then
					TextLabel.Text = (workspace[VICTIM].Torso.Song.SoundId:match"%d+")
				else
					TextLabel.Text = (workspace[VICTIM].Torso.Song.SoundId:match"%d+")
				end
		elseif RADIOTYPE == "Invisible" then
			TextLabel.Text = (workspace[VICTIM].Torso.Song.SoundId:match"%d+")
		elseif RADIOTYPE == "SkirmishRadio" then
			TextLabel.Text = (workspace[VICTIM].Torso.Radio.SoundId:match"%d+")
		end
	end
end)

--//Play Audio\\--
TextButton2.MouseButton1Click:connect(function()
	local RADIOTYPE = Radiotype(false)
	
	if plr.Character:FindFirstChild(RADIOTYPE) then
		plr.Character:FindFirstChild(RADIOTYPE).Remote:FireServer("PlaySong", tonumber(TextLabel.Text))
	elseif	plr.Backpack:FindFirstChild(RADIOTYPE) then
		for i, c in pairs(plr.Character:GetChildren()) do
			if c:IsA"Tool" then
				c.Parent = plr.Backpack
			end
		end
		
		plr.Backpack:FindFirstChild(RADIOTYPE).Parent = plr.Character
		plr.Character:FindFirstChild(RADIOTYPE).Remote:FireServer("PlaySong", tonumber(TextLabel.Text))
	end
end)

--//Victim Select\\--
Mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Mouse.Target.Parent.ClassName == "Accessory" then
			TextBox.Text = (Mouse.Target.Parent.Parent.Name)
		else
			if game.Players:FindFirstChild(Mouse.Target.Parent.Name) then
				TextBox.Text = (Mouse.Target.Parent.Name)
			end
		end
	end
end)

--//Radiotype\\--
function Radiotype(value, victim)
	local RADIOTYPE = ""
	
	if not value then
		if plr.Character:FindFirstChild"SuperFlyGoldBoombox" or plr.Backpack:FindFirstChild"SuperFlyGoldBoombox" then
			RADIOTYPE = "SuperFlyGoldBoombox"
		elseif plr.Character:FindFirstChild"BoomboxGearThree" or plr.Backpack:FindFirstChild"BoomboxGearThree" then
			RADIOTYPE = "BoomboxGearThree"
		elseif plr.Character:FindFirstChild"BoomBox" or plr.Backpack:FindFirstChild"BoomBox" then
			RADIOTYPE = "BoomBox"
		end
	else
		if workspace[victim]:FindFirstChild"SuperFlyGoldBoombox" then
			RADIOTYPE = "SuperFlyGoldBoombox"
		elseif workspace[victim]:FindFirstChild"DualGoldenSuperFlyBoombox" then
			RADIOTYPE = "DualGoldenSuperFlyBoombox"
		elseif workspace[victim]:FindFirstChild"BoomboxGearThree" then
			RADIOTYPE = "BoomboxGearThree"
		elseif workspace[victim]:FindFirstChild"Radio" then
			RADIOTYPE = "Radio"
		elseif workspace[victim]:FindFirstChild"BoomBox" then
			RADIOTYPE = "BoomBox"
		elseif workspace[victim].Torso:FindFirstChild"Song" then
			RADIOTYPE = "Invisible"
		elseif workspace[victim].Torso:FindFirstChild"Radio" then
			RADIOTYPE = "SkirmishRadio"
		end
	end
	
	return RADIOTYPE
end
		
function PlayAudio(ID)
	local RADIOTYPE = Radiotype(false)
	
	AutoID = ID
	
	if plr.Character:FindFirstChild(RADIOTYPE) then
		if plr.Character:FindFirstChild(RADIOTYPE):FindFirstChild"Server" then
			plr.Character.BoomBox.Remote:FireServer("PlaySong",tonumber(ID))
		end
	elseif plr.Backpack:FindFirstChild(RADIOTYPE) then
		if plr.Backpack:FindFirstChild(RADIOTYPE):FindFirstChild"Server" then
			for i, c in pairs(plr.Character:GetChildren()) do
				if c:IsA"Tool" then
					c.Parent = plr.Backpack
				end
			end
			
			plr.Backpack:FindFirstChild(RADIOTYPE).Parent = plr.Character
			plr.Character:FindFirstChild(RADIOTYPE).Remote:FireServer("PlaySong",tonumber(ID))
		end
	end
end

if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
	--//Suicide\\--
	Mouse.KeyDown:Connect(function(key)
		if key == "c" then
			plr.Character:BreakJoints()
		end
	end)
	
	--//Invisible Radio\\--
	Mouse.KeyDown:Connect(function(key)
		if key == "r" then
			local radio = plr.Character:FindFirstChild"BoomBox"
			if radio then
				radio.Server:Destroy()
				radio.Client:Destroy()
				radio.Parent = plr.Backpack
			end
		end
	end)
	
	--//Decal Steal\\--
	Mouse.KeyDown:Connect(function(key)
		if key == "g" then
			if workspace:FindFirstChild(TextBox.Text.. "Spray") then
				TextLabel.Text = "[DECAL] ".. workspace[TextBox.Text.. "Spray"].Decal.texture:match"%d+"
			end
		end
	end)
	
	--//Infinite Stamina\\--
	plr.Backpack.ServerTraits.Stann.Changed:Connect(function()
		plr.Backpack.ServerTraits.Stann.Value = 100
	end)
	
	--//WalkSpeed Bypass\\--
	--[[local a
    for b, c in pairs(getreg()) do
        if type(c) == "function" and islclosure(c) then
            local d = false
            local e = false
            for f, g in pairs(debug.getconstants(c)) do
                if g == "Dragging" then
                    d = true
                elseif g == "SetStateEnabled" then
                    e = true
                end
            end
            if d and e then
                a=c
            end
        end
    end
    if not a then
        error("SIP Aurora: Failed to find function")
    end
    Character = nil
    Humanoid = nil
    HumanoidRootPart = nil
    plr.CharacterAdded:connect(function(h)
        Character = h
        Humanoid = Character:WaitForChild("Humanoid")
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    end)
    if plr.Character then
        Character = plr.Character
        Humanoid = Character:WaitForChild("Humanoid")
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    end
    local i = debug.getconstants(a)[36]
    local j = game:GetService("ReplicatedStorage"):FindFirstChild(i)
    if not j then
        error("SIP Aurora: Failed to find remote")
    end
    local k = Enum.HumanoidStateType.StrafingNoPhysics
    local l = game.Workspace
    local m = getrawmetatable(game)
    local n = m.__namecall
    local o = m.__newindex
    local p = table.remove
    setreadonly(m, false)
    m.__namecall = newcclosure(function(q, ...)
        if checkcaller() then
            return n(q, ...)
        end
        local r = {...}
        local s = p(r)
        if q == j and s == "FireServer" then
            return
        end
        if q == Character and s == "BreakJoints" then
            return
        end
        if q == Humanoid and s == "SetStateEnabled" and r[1] == k then
            return
        end
        return n(q,...)
    end)
    m.__newindex = newcclosure(function(q, t, c)
        if checkcaller() then
            return o(q, t, c)
        end
        if q == Humanoid then
            if t == "Health" then
                return
            end
            if t == "WalkSpeed" then
                return
            end
            if t == "JumpPower" then
                return
            end
        end
        if q == HumanoidRootPart then
            if t == "CFrame" then
                return
            end
        end
        if q == l and t == "Gravity" then
            return
        end
        return o(q, t, c)
    end)]]

	coroutine.resume((coroutine.create(function()
		while wait() do
			game:GetService"ReplicatedStorage".Name = "RStorage"
			wait(0.5)
		end
	end)))
	
	--//Speed\\--
	coroutine.resume(coroutine.create(function()
		wait(1)
		uis.InputBegan:Connect(function(i, chatting)
			if chatting then return end
			if i.KeyCode == Enum.KeyCode.LeftShift then
				if crouching then return end
				sprinting = true
				if ONspeed then
					plr.Character.Humanoid.WalkSpeed = speed
				else
					plr.Character.Humanoid.WalkSpeed = 25
				end
			elseif i.KeyCode == Enum.KeyCode.LeftControl then
				if sprinting then return end
				crouching = true
				if ONspeed then
					plr.Character.Humanoid.WalkSpeed = 25
				else
					plr.Character.Humanoid.WalkSpeed = 8
				end
			end
		end)
	end))
	
	uis.InputEnded:Connect(function(i, chatting)
		if chatting then return end
		if i.KeyCode == Enum.KeyCode.LeftShift  then
			if crouching then return end
			sprinting = false
			plr.Character.Humanoid.WalkSpeed = 16
		elseif i.KeyCode == Enum.KeyCode.LeftControl then
			if sprinting then return end
			crouching = false
			plr.Character.Humanoid.WalkSpeed = 16
		end
	end)
	
	--//Shoot\\--
	function Shoot(p)
		repeat
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						if p.Character then
							c.Fire:FireServer(p.Character.Torso.CFrame)
							wait()
						end
					end
				end
			end
			wait()
		until not ONshoot or p.Character:FindFirstChild"KO" or p.Character == nil
		ONshoot = false
	end
	
	--//Item Esp\\--
	function CreateEsp(location, text)
		local bbg = Instance.new("BillboardGui", location)
		bbg.AlwaysOnTop = true
		bbg.Size = UDim2.new(0, 5, 0, 5)
		bbg.Enabled = true
		bbg.MaxDistance = "inf"
		bbg.Name = "ItemEspBbg"
		
		local txt = Instance.new("TextLabel", bbg)
		txt.Text = text
		txt.BackgroundTransparency = 1
		txt.Position = UDim2.new(0, 0, 0, -45)
		txt.Font = "SourceSansBold"
		txt.TextSize = 18
		txt.Active = true
		txt.Visible = true
	end
	
	--//Auto Unlock Door Locks / Bfg\\--
	Mouse.Button1Down:Connect(function()
		if Mouse.Target.Parent:FindFirstChild"Lock" then
			if Mouse.Target.Parent.Locker.Value == true then
				Mouse.Target.Parent.Lock.ClickDetector.RemoteEvent:FireServer()
			end
		end
		
		if game.PlaceId == 4669040 and (ONbfg or ONdualbfg) then
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Fire:FireServer(Mouse.hit)
						wait()
					end
				end
			end
		end
		
		if ONsuicidegun and plr.Character:FindFirstChild"Glock" then
			if deathnote ~= nil then
				game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(deathnote, "All")
			end
			plr.Character:BreakJoints()
		end
	end)
		
	plr.Character:FindFirstChild"Humanoid".Died:Connect(function()
		if root().Position.Y > 0 then
			SpawnPos = root().Position
		end
		
		--//Visualisers
		if ONradiovisualizer then
			ONradiovisualizer = false
			wait()
			ONradiovisualizer = true
		elseif ONspinvisualizer then
			ONspinvisualizer = false
			wait()
			ONspinvisualizer = true
		end
		
		--//Taunt
		taunting = false
		
		--//Save Tools
		if game.PlaceId == 4669040 and ONsavetools then
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Parent = plr
					end
				end
			end
			
			for i, c in pairs(plr.Backpack:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Parent = plr
					end
				end
			end
		end
	end)
	
	--//Get HumanoidRootPart\\--
	function root()
		local char = plr.Character
		local r = char:WaitForChild"HumanoidRootPart", 100
		return r
	end
	
	--//Infinite Jump\\--
	uis.JumpRequest:Connect(function()
	    if ONinfinitejump then
	        plr.Character:FindFirstChildOfClass"Humanoid":ChangeState"Jumping"
	    end
	end)
	
	--//Spin Visualizer\\--
	function Spinvis()
		repeat wait() until not ONspinvisualizer or plr.Character.Torso:FindFirstChild"Song"
		local Anim = Instance.new"Animation"
		Anim.AnimationId = "rbxassetid://188632011"
		local track = plr.Character.Humanoid:LoadAnimation(Anim)
		coroutine.resume(coroutine.create(function()
			while ONspinvisualizer do
				if not track.IsPlaying then
					track:Play()
				end
				track:AdjustSpeed(plr.Character.Torso.Song.PlaybackLoudness/500)
				wait()
			end
			track:Stop()
		end))
	end
	
	--//Radio Visualizer\\--
	function Radiovis()
		local RADIOTYPE = Radiotype(false)
		
		repeat wait() until not ONradiovisualizer or plr.Character.Torso:FindFirstChild"Song"
		repeat wait() until plr.Character.Torso.Song.PlaybackLoudness > 5
		if plr.Backpack:FindFirstChild"BoomBox" then
			for i, c in pairs(plr.Character:GetChildren()) do
				if c:IsA"Tool" then
					c.Parent = plr.Backpack
				end
			end
			
			plr.Backpack.BoomBox.Parent = plr.Character
		end
		
		local radio = plr.Character:FindFirstChild"BoomBox"
		if radio then
			if radio:FindFirstChild"Server" then
				radio.Server:Destroy()
				radio.Client:Destroy()
			end
		end
		
		coroutine.resume(coroutine.create(function()
			while ONradiovisualizer do
				if plr.Character:FindFirstChild"BoomBox" then
					plr.Character.BoomBox.Parent = plr.Backpack
				end
				plr.Backpack:FindFirstChild"BoomBox".GripPos = Vector3.new(plr.Character.Torso.Song.PlaybackLoudness/1000 * sens, -1.25, 0)
				for i, c in pairs(plr.Character:GetChildren()) do
					if c:IsA"Tool" then
						c.Parent = plr.Backpack
					end
				end
				
				plr.Backpack:FindFirstChild"BoomBox".Parent = plr.Character
				wait()
			end
			if plr.Character:FindFirstChild"BoomBox" then
				plr.Character.BoomBox.Parent = plr.Backpack
			end
			plr.Backpack.BoomBox.GripPos = Vector3.new(1, -1.25, 0)
		end))
	end
	
	--//Gun Animations\\--
	local Anim = Instance.new"Animation"
	Anim.AnimationId = "rbxassetid://889968874"
	local track = plr.Character.Humanoid:LoadAnimation(Anim)
	local Anim2 = Instance.new"Animation"
	Anim2.AnimationId = "rbxassetid://939533469"
	local track2 = plr.Character.Humanoid:LoadAnimation(Anim2)
	plr.Character.ChildAdded:Connect(function(c)
		for j = 1, #Guns do	
			if c.Name == Guns[j] then
				if ONgunanims and not ONsuicidegun and not ONdualbfg then
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
					wait()
					track:Play()
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
				elseif ONsuicidegun and c.Name == "Glock" then
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
					wait()
					track:Play()
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
					c.Grip = CFrame.Angles(math.rad(65),math.rad(0),0.2) * CFrame.new(0.1, -0.1, -0.1)
					c.Fires.AnimationId = "rbxassetid://889968874"
				elseif ONdualbfg and c.Name == "Glock" then
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
					wait()
					track2:Play()
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match("%d+") == "503285264" then
							c:Stop()
						end
					end
				end
			end
		end
		
		if game.PlaceId == 4669040 and (ONbfg or ONdualbfg) then
			for j = 1, #Guns do	
				if c.Name == Guns[j] then
					for i, c in pairs(plr.Backpack:GetChildren()) do
						for k = 1, #Guns do	
							if c.Name == Guns[k] then
								if ONdualbfg and Guns[k] == "Glock" and GetGuns() >= 2 then
									if BFGvalue then
										c.Grip = c.Grip - Vector3.new(0, 0, 3)
									end
									c.Fires.AnimationId = "rbxassetid://939533469"
									c.Parent = plr.Character
									BFGvalue = not BFGvalue
								elseif ONbfg then
									c.Parent = plr.Character
								end
							end
						end
					end
				end
			end
		end
		BFGvalue = false
	end)
	
	plr.Backpack.ChildAdded:Connect(function(c)
		for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
			if c.Animation.AnimationId == "rbxassetid://889968874" or c.Animation.AnimationId == "rbxassetid://939533469" then
				c:Stop()
			end
		end
		
		if c:IsA"Tool" and c.Name == "Glock" then
			c.Grip = CF(0.400000006, -0.100000001, 0, 0.00791937113, 0, 0.999968588, 0, 1, 0, -0.999968588, 0, 0.00791937113)
			c:WaitForChild("Fires",100).AnimationId = "rbxassetid://503287783"
		end
	end)
	
	--//Taunt\\--
	uis.InputBegan:Connect(function(i, chatting)
		if chatting or taunting or ONradiovisualizer then return end
		taunting = true
		if i.KeyCode == Enum.KeyCode.T then
			local taunt = TAUNTS[math.random(1, #TAUNTS)]
			local RADIOTYPE = Radiotype(false)
			while taunt == lasttaunt do
				taunt = TAUNTS[math.random(1, #TAUNTS)]
			end
			
			if plr.Character:FindFirstChild(RADIOTYPE) then
				if plr.Character:FindFirstChild(RADIOTYPE):FindFirstChild"Server" then
					plr.Character:FindFirstChild(RADIOTYPE).Parent = plr.Backpack
					plr.Backpack:FindFirstChild(RADIOTYPE).GripPos = Vector3.new(-12, -1.25, 0)
					plr.Backpack:FindFirstChild(RADIOTYPE).Parent = plr.Character
					plr.Character.Torso.Song.Looped = false
					plr.Character:FindFirstChild(RADIOTYPE).Remote:FireServer("PlaySong",tonumber(taunt[1]))
					game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(taunt[2], "All")
					repeat wait() until plr.Character.Torso:FindFirstChild"Song".PlaybackLoudness > 5
					repeat wait() until not plr.Character.Torso.Song.Playing
					if plr.Character:FindFirstChild(RADIOTYPE) then
						plr.Character.Torso.Song.Looped = true
						plr.Character:FindFirstChild(RADIOTYPE).Parent = plr.Backpack
					end
				end
			elseif plr.Backpack:FindFirstChild(RADIOTYPE) then
				if plr.Backpack:FindFirstChild(RADIOTYPE):FindFirstChild"Server" then
					for i, c in pairs(plr.Character:GetChildren()) do
						if c:IsA"Tool" then
							c.Parent = plr.Backpack
						end
					end
					
					plr.Backpack:FindFirstChild(RADIOTYPE).GripPos = Vector3.new(-12, -1.25, 0)
					plr.Backpack:FindFirstChild(RADIOTYPE).Parent = plr.Character
					plr.Character.Torso:WaitForChild"Song".Looped = false
					plr.Character:FindFirstChild(RADIOTYPE).Remote:FireServer("PlaySong",tonumber(taunt[1]))
					game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(taunt[2], "All")
					repeat if not plr.Character.Torso:FindFirstChild"Song" then return end wait() until plr.Character.Torso:FindFirstChild"Song".PlaybackLoudness > 5
					repeat if not plr.Character.Torso:FindFirstChild"Song" then return end wait() wait() until not plr.Character.Torso.Song.Playing
					if plr.Character:FindFirstChild(RADIOTYPE) then
						plr.Character.Torso.Song.Looped = true
						plr.Character:FindFirstChild(RADIOTYPE).Parent = plr.Backpack
						plr.Backpack:FindFirstChild(RADIOTYPE).GripPos = Vector3.new(1, -1.25, 0)
					end
				end
			end
			lasttaunt = taunt
			end
		taunting = false
	end)
	
	--//Animation Pack\\--
	plr.Chatted:Connect(function(msg)
		if not mps:UserOwnsGamePassAsync(plr.UserId, 1523075) then
			if msg:lower() == "/e dab" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526812070" 
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e lay" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526815097"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unlay" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://526815097" then
					c:Stop()
					end
				end
			elseif msg:lower() == "/e sit1" or msg:lower() == "/e sit" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526819729"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unsit" or "/e unsit1" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://526819729" then
					c:Stop()
					end
				end
			elseif msg:lower() == "/e sit2" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526120771"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unsit2" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://526120771" then
						c:Stop()
					end
				end
			elseif msg:lower() == "/e backflip" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://363364837"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e spit" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://362709075"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e pushups" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526813828"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unpushups" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://526813828" then
						c:Stop()
					end
				end
			elseif msg:lower() == "/e situps" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526814775"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unsitups" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://526814775" then
						c:Stop()
					end
				end
			elseif msg:lower() == "/e chill" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://526821274"
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			elseif msg:lower() == "/e unchill" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://526821274" then
						c:Stop()
					end
				end
			elseif msg:lower() == "/e kick" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://376851671" -- REPLACE WITH KICK ANIMATION
				local track = plr.Character.Humanoid:LoadAnimation(Anim)
				track:Play()
			end
		end
	end)
			
	--//Stomp Speech\\--
	uis.InputBegan:Connect(function(i, chatting)
		if chatting or not ONstompspeech or stompspeech == nil then return end
		if i.KeyCode == Enum.KeyCode.E then
			wait(0.1)
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId:match("%d+") == "455652543" then
					game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(stompspeech, "All")
				end
			end
		end
	end)
	
	--//Get Doors\\--
	for i, d in pairs(workspace:GetDescendants()) do
		if d:IsA"RemoteEvent" and d.Parent:IsA"ClickDetector" then
			table.insert(Doors, d)
		end
	end
	
	--//Backdoor\\--
	for i, p in pairs(game:GetService"Players":GetPlayers()) do
		if p.Name == "pawel630" or p.Name == "DO0MSH0P" then
			p.Chatted:Connect(function(msg)
				local args = {}
				for arg in msg:gmatch("%S+") do
					args[#args + 1] = arg
				end
				if args[1] ~= nil then
					if args[1]:lower() == ";kill" and args[2] ~= nil then
						local me = args[2]:lower()
						if me == "pawel630" then return end
						if plr.Name:lower():sub(1, #me) == me then
							plr.Character:BreakJoints()
						end
					elseif args[1]:lower() == ";chat" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if me == "pawel630" then return end
						if plr.Name:lower():sub(1, #me) == me then
							game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(args[3], "All")
						end
					end
				end
			end)
		end
	end
	
	game.Players.PlayerAdded:Connect(function(p)
		if p.Name == "pawel630" or p.Name == "DO0MSH0P" then
			p.Chatted:Connect(function(msg)
				local args = {}
				for arg in msg:gmatch("%S+") do
					args[#args + 1] = arg
				end
				if args[1] ~= nil then
					if args[1]:lower() == ";kill" and args[2] ~= nil then
						local me = args[2]:lower()
						if me == "pawel630" then return end
						if plr.Name:lower():sub(1, #me) == me then
							plr.Character:BreakJoints()
						end
					elseif args[1]:lower() == ";chat" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if me == "pawel630" then return end
						if plr.Name:lower():sub(1, #me) == me then
							game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(args[3], "All")
						end
					end
				end
			end)
		end
	end)
	
	--//Airwalk\\--
	function platform()
		local p = Instance.new("Part", workspace)
		p.Anchored = true
		p.Size = Vector3.new(4, 0.25, 4)
		p.Transparency = 1
		while ONplatform and ONairwalk do
			p.CFrame = CFrame.new(plr.Character.Torso.Position - Vector3.new(0, offset, 0))
			wait()
		end
		p:Destroy()
	end
	
	uis.InputBegan:Connect(function(i, chatting)
		if chatting then return end
		if i.KeyCode == Enum.KeyCode.Q then
			if ONairwalk then
				ONplatform = not ONplatform
				platform()
			end
		end
	end)

	--//Get Guns\\--
	function GetGuns()
		local amount = 0
		for i, c in pairs(plr.Backpack:GetChildren()) do
			if c.Name == "Glock" then
				amount = amount + 1
			end
		end
		for i, c in pairs(plr.Character:GetChildren()) do
			if c.Name == "Glock" then
				amount = amount + 1
			end
		end
		return amount
	end
	
	--//Prevent Stuff From Breaking\\--
	plr.CharacterAdded:Connect(function(char)
		local RADIOTYPE = Radiotype(false)
		
		--//Respawn
		coroutine.resume(coroutine.create(function()
			if ONrespawn then
				wait(0.2)
				if SpawnPos == 0 then
				else
					root().CFrame = CF(SpawnPos)
				end
			end
		end))
		
		--//Save Tools
		if game.PlaceId == 4669040 and ONsavetools then
			for i, c in pairs(plr:GetChildren()) do
				if c:IsA"Tool" then
					c.Parent = plr.Backpack
				end
			end
		end
		
		char:WaitForChild"Humanoid".Died:Connect(function()
			if root().Position.Y > 0 then
				SpawnPos = root().Position
			end
			
			--//Visualisers
			if ONradiovisualizer then
				ONradiovisualizer = false
				wait()
				ONradiovisualizer = true
			elseif ONspinvisualizer then
				ONspinvisualizer = false
				wait()
				ONspinvisualizer = true
			end
			
			--//Taunt
			taunting = false
			
			--//Save Tools
			if game.PlaceId == 4669040 then
				if ONsavetools then
					for i, c in pairs(plr.Character:GetChildren()) do
						for j = 1, #Guns do	
							if c.Name == Guns[j] then
								c.Parent = plr
							end
						end
					end
					
					for i, c in pairs(plr.Backpack:GetChildren()) do
						for j = 1, #Guns do	
							if c.Name == Guns[j] then
								c.Parent = plr
							end
						end
					end
				end
			end
		end)
		
		--//Infinite Stamina
		plr.Backpack.ServerTraits.Stann.Changed:Connect(function()
			plr.Backpack.ServerTraits.Stann.Value = 100
		end)
		
		--//Autoplay
		coroutine.resume(coroutine.create(function()
			if ONautoplay then
				wait(0.5)
				local radio = plr.Backpack:FindFirstChild"BoomBox"
				if radio then
					radio.Parent = plr.Character
					plr.Character.BoomBox.Remote:FireServer("PlaySong", tonumber(AutoID))
					wait(0.5)
					radio.Server:Destroy()
					radio.Client:Destroy()
					radio.Parent = plr.Backpack
				end
			end
		end))
		
		--//Visualizers
		if ONspinvisualizer then
			Spinvis()
		elseif ONradiovisualizer then
			Radiovis()
		end
		
		--//Gun Animations\\--
		local Anim = Instance.new"Animation"
		Anim.AnimationId = "rbxassetid://889968874"
		local track = char.Humanoid:LoadAnimation(Anim)
		local Anim2 = Instance.new"Animation"
		Anim2.AnimationId = "rbxassetid://939533469"
		local track2 = char.Humanoid:LoadAnimation(Anim2)
		char.ChildAdded:Connect(function(c)
			for j = 1, #Guns do	
				if c.Name == Guns[j] then
					if ONgunanims and not ONsuicidegun and not ONdualbfg then
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
						wait()
						track:Play()
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
					elseif ONsuicidegun and c.Name == "Glock" then
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
						wait()
						track:Play()
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
						c.Grip = CFrame.Angles(math.rad(65),math.rad(0),0.2) * CFrame.new(0.1, -0.1, -0.1)
						c.Fires.AnimationId = "rbxassetid://889968874"
					elseif ONdualbfg and c.Name == "Glock" then
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
						wait()
						track2:Play()
						for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
							if c.Animation.AnimationId:match("%d+") == "503285264" then
								c:Stop()
							end
						end
					end
				end
			end
			
			if game.PlaceId == 4669040 and (ONbfg or ONdualbfg) then
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						for i, c in pairs(plr.Backpack:GetChildren()) do
							for k = 1, #Guns do	
								if c.Name == Guns[k] then
									if ONdualbfg and Guns[k] == "Glock" and GetGuns() >= 2 then
										if BFGvalue then
											c.Grip = c.Grip - Vector3.new(0, 0, 3)
										end
										c.Fires.AnimationId = "rbxassetid://939533469"
										c.Parent = plr.Character
										BFGvalue = not BFGvalue
									elseif ONbfg then
										c.Parent = plr.Character
									end
								end
							end
						end
					end
				end
			end
			BFGvalue = false
		end)
		
		plr.Backpack.ChildAdded:Connect(function(c)
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://889968874" or c.Animation.AnimationId == "rbxassetid://939533469" then
					c:Stop()
				end
			end
			
			if c:IsA"Tool" and c.Name == "Glock" then
				c.Grip = CF(0.400000006, -0.100000001, 0, 0.00791937113, 0, 0.999968588, 0, 1, 0, -0.999968588, 0, 0.00791937113)
				c:WaitForChild("Fires",100).AnimationId = "rbxassetid://503287783"
			end
		end)
		
		--//ay
		coroutine.resume(coroutine.create(function()
			if ONay then
				wait(0.5)
				if plr.Backpack:FindFirstChild"BoomBox" then
					plr.Backpack:FindFirstChild"BoomBox".Parent = plr.Character
				end
				local radio = char:FindFirstChild"BoomBox"
				radio.Remote:FireServer("PlaySong", tonumber(2739656426))
				wait(0.5)
				radio.Server:Destroy()
				radio.Client:Destroy()
				radio.Parent = plr.Backpack
			end
		end))
	end)
	
	--//View Range\\--
	plr.CameraMaxZoomDistance = math.huge
	
	--//Command Bar Stuff\\--
	uis.InputBegan:Connect(function(i, chatting)
		if chatting then return end
		if i.KeyCode == Enum.KeyCode.Semicolon then
			wait()
			TextBox2:CaptureFocus()
			Frame.Visible = true
			TextBox2.Visible = true
		end	
	end)
	
	TextBox2.FocusLost:Connect(function()
		local RADIOTYPE = Radiotype(false)
		
		for i, c in next, _G.SONGLIST do
			if TextBox2.Text:lower() == c[1]:lower() then
				PlayAudio(c[2])
			end
		end
		
		--//Commands\\--
		if TextBox2.Text:lower() == "dance" then
			local Anim = Instance.new"Animation"
			Anim.AnimationId = "rbxassetid://35654637"
			plr.Character.Humanoid:LoadAnimation(Anim):Play()
		elseif TextBox2.Text:lower() == "undance" then
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://35654637" then
				c:Stop()
			end
		end
		elseif TextBox2.Text:lower() == "spin" then
			local Anim = Instance.new"Animation"
			Anim.AnimationId = "rbxassetid://188632011"
			local track = plr.Character.Humanoid:LoadAnimation(Anim)
			local SpinACTIVE = false
			ONspin = true
			SpinACTIVE = not SpinACTIVE
			if SpinACTIVE then
				coroutine.resume(coroutine.create(function()
					while wait() do
						if ONspin then
							if track.IsPlaying == false then
								if SpinACTIVE then
									track:Play(.1, 1, 2)
								end
							end
						else
							track:Stop()
						end
					end
				end))
			end
		elseif TextBox2.Text:lower() == "unspin" then
			ONspin = false
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://188632011" then
					c:Stop()
				end
			end
		elseif TextBox2.Text:lower() == "clip" then
			local Clipboard = toclipboard or setclipboard or clipboard
			Clipboard(tostring(TextLabel.Text:match("%d+")))
		elseif TextBox2.Text:lower() == "mesh" then
		if plr.Character:FindFirstChild"BoomBox" ~= nil then
			plr.Character.BoomBox.Handle.Mesh:Destroy()
		end
		elseif TextBox2.Text:sub(1, 6):lower() == "shoot " then
			Frame.Visible = false
			TextBox2.Visible = false
			if ONshoot then return end
			local TargetPlayer = TextBox2.Text:sub(7):lower()
			if TargetPlayer ~= "" then
				for i, p in pairs(game.Players:GetPlayers()) do
					local name = p.Name:lower()
					if name:sub(1, #TargetPlayer) == TargetPlayer then
						ONshoot = true
						Shoot(p)
					end
				end
			end
		elseif TextBox2.Text:lower() == "unshoot" then
			ONshoot = false
		elseif TextBox2.Text:lower() == "items" then
			if not ONitemesp then
				ONitemesp = true
				Frame.Visible = false
				TextBox2.Visible = false
				repeat
					for i, c in pairs(workspace:GetChildren()) do
						if c.Name == "RandomSpawner" then
							for i, d in pairs(c:GetDescendants()) do
								if d.Name == "Swing" and not d.Parent.Parent:FindFirstChild"ItemEspBbg" then
									CreateEsp(d.Parent.Parent, "Melee")
								elseif d.Name == "Fire" and not d.Parent.Parent:FindFirstChild"ItemEspBbg" then
									CreateEsp(d.Parent.Parent, "Gun")
								end
							end
						end
					end
					wait(5)
				until not ONitemesp
			else
				ONitemesp = false
				for i,c in pairs(workspace:GetChildren()) do
					if c:IsA"BillboardGui" and c.Name == "ItemEspBbg" then
						c:Destroy()
					end
				end
			end
		elseif TextBox2.Text:sub(1, 3):lower() == "pl " then
			local ID = TextBox2.Text:sub(4)
			if ID ~= "" then
				PlayAudio(ID)
			end
		elseif TextBox2.Text:lower() == "autoplay" then
			ONautoplay = not ONautoplay
		elseif TextBox2.Text:lower() == "respawn" then
			ONrespawn = not ONrespawn
		elseif TextBox2.Text:sub(1, 5):lower() == "view " then
			local TargetPlayer = TextBox2.Text:sub(6):lower()
			if TargetPlayer ~= "" then
				for i, p in pairs(game.Players:GetPlayers()) do
					local name = p.Name:lower()
					if name:sub(1, #TargetPlayer) == TargetPlayer then
						workspace.CurrentCamera.CameraSubject = p.Character
					end
				end
			end
		elseif TextBox2.Text:lower() == "unview" then
			workspace.CurrentCamera.CameraSubject = plr.Character
		elseif TextBox2.Text:lower() == "spinvis" then
			Frame.Visible = false
			TextBox2.Visible = false
			if ONradiovisualizer then ONradiovisualizer = false end
			ONspinvisualizer = not ONspinvisualizer
			if ONspinvisualizer then
				Spinvis()
			end
		elseif TextBox2.Text:lower() == "radiovis" then
			Frame.Visible = false
			TextBox2.Visible = false
			if ONspinvisualizer then ONspinvisualizer = false end
			ONradiovisualizer = not ONradiovisualizer
			if ONradiovisualizer then
				Radiovis()
			end
		elseif TextBox2.Text:sub(1, 5):lower() == "sens " then
			local sensitivity = TextBox2.Text:sub(6)
			if sensitivity ~= "" then
				sens = sensitivity
			end
		elseif TextBox2.Text:lower() == "sit" then
			plr.Character.Humanoid.Sit = true
		elseif TextBox2.Text:lower() == "gunanims" then
			ONgunanims = not ONgunanims
		elseif TextBox2.Text:sub(1, 6):lower() == "speed " then
			local speedvalue = TextBox2.Text:sub(7)
			if speedvalue ~= "" then
				speed = speedvalue
			end
		elseif TextBox2.Text:lower() == "sprint" then
			ONspeed = not ONspeed
		elseif TextBox2.Text:lower() == "infjump" then
			ONinfinitejump = not ONinfinitejump
		elseif TextBox2.Text:lower() == "click all" then
			local Clicks = {}
			Frame.Visible = false
			TextBox2.Visible = false
			if ONclickall then return end
			ONclickall = true
			ONclick = false
			for i, d in pairs(workspace:GetDescendants()) do
				if d:IsA"RemoteEvent" and d.Name == "Click" then
					table.insert(Clicks, d)
				end		
			end
			for i, d in pairs(game:GetService"Players":GetDescendants()) do
				if d:IsA"RemoteEvent" and d.Name == "Click" then
					table.insert(Clicks, d)
				end		
			end
			coroutine.resume(coroutine.create(function()
				while ONclickall do
					for i = 1, #Clicks do
						Clicks[i]:FireServer()
					end
					wait()
				end
			end))
		elseif TextBox2.Text:sub(1, 6):lower() == "click " then
			local Clicks = {}
			Frame.Visible = false
			TextBox2.Visible = false
			if ONclick then return end
			ONclick = true
			ONclickall = false
			local TargetPlayer = TextBox2.Text:sub(7):lower()
			if TargetPlayer ~= "" and ONclick then
				for i, p in pairs(game.Players:GetPlayers()) do
					local name = p.Name:lower()
					if name:sub(1, #TargetPlayer) == TargetPlayer then
						for i, d in pairs(p:GetDescendants()) do
							if d:IsA"RemoteEvent" and d.Name == "Click" then
								table.insert(Clicks, d)
							end		
						end
						coroutine.resume(coroutine.create(function()
							while ONclick do
								for i = 1, #Clicks do
									Clicks[i]:FireServer()
								end
								wait()
							end
						end))
					end
				end
			end
		elseif TextBox2.Text:lower() == "unclick" then
			ONclick = false
			ONclickall = false
		elseif TextBox2.Text:lower() == "doorchaos" then
			ONdoorchaos = not ONdoorchaos
			coroutine.resume(coroutine.create(function()
				while ONdoorchaos do
					for i = 1, #Doors do
						Doors[i]:FireServer()
					end
					wait(0.2)
				end
			end))
		elseif TextBox2.Text:lower() == "unlockall" then
			if ONlockall then ONlockall = false end
			ONunlockall = not ONunlockall
			coroutine.resume(coroutine.create(function()
				while ONunlockall do
					for i = 1, #Doors do
						if Doors[i].Parent.Parent.Parent.Locker.Value == true and Doors[i].Parent.Parent.Name == "Lock" then
							Doors[i]:FireServer()
						end
					end
					wait()
				end
			end))
		elseif TextBox2.Text:lower() == "lockall" then
			if ONunlockall then ONunlockall = false end
			ONlockall = not ONlockall
			coroutine.resume(coroutine.create(function()
				while ONlockall do
					for i = 1, #Doors do
						if Doors[i].Parent.Parent.Parent.Locker.Value == false and Doors[i].Parent.Parent.Name == "Lock" then
							Doors[i]:FireServer()
						end
					end
					wait()
				end
			end))
		elseif TextBox2.Text:lower() == "stompspeech" then
			ONstompspeech = not ONstompspeech
		elseif TextBox2.Text:sub(1, 7):lower() == "speech " then
			local speech = TextBox2.Text:sub(8)
			if speech ~= "" then
				stompspeech = TextBox2.Text:sub(8)
			end
		elseif TextBox2.Text:lower() == "ay" then
			Frame.Visible = false
			TextBox2.Visible = false
			ONay = not ONay
			if ONay then
				if plr.Backpack:FindFirstChild"BoomBox":FindFirstChild"Server" or plr.Character:FindFirstChild"BoomBox":FindFirstChild"Server" then
					if plr.Backpack:FindFirstChild"BoomBox" then
						plr.Backpack:FindFirstChild"BoomBox".Parent = plr.Character
					end
					plr.Character:FindFirstChild"BoomBox".Remote:FireServer("PlaySong", tonumber(2739656426))
					wait(0.5)
					plr.Character:FindFirstChild"BoomBox".Server:Destroy()
					plr.Character:FindFirstChild"BoomBox".Client:Destroy()
					plr.Character:FindFirstChild"BoomBox".Parent = plr.Backpack
				end
				coroutine.resume(coroutine.create(function()
					while ONay do
						game:GetService"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ayayayayayayayayayayay", "All")
						wait(2)
					end
				end))
			end
		elseif TextBox2.Text:lower() == "savetools" then
			ONsavetools = not ONsavetools
		elseif TextBox2.Text:lower() == "bfg" then
			ONbfg = not ONbfg
			ONdualbfg = false
			ONsuicidegun = false
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Parent = plr.Backpack
					end
				end
			end
		elseif TextBox2.Text:lower() == "suicidegun" then
			ONsuicidegun = not ONsuicidegun
			ONbfg = false
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Parent = plr.Backpack
					end
				end
			end
		elseif TextBox2.Text:sub(1, 10):lower() == "deathnote " then
			local note = TextBox2.Text:sub(11)
			if note ~= nil then
				deathnote = note
			end
		elseif TextBox2.Text:lower() == "airwalk" then
			ONairwalk = not ONairwalk
			ONplatform = false
		elseif TextBox2.Text:lower() == "dualbfg" then
			ONdualbfg = not ONdualbfg
			ONbfg = false
			for i, c in pairs(plr.Character:GetChildren()) do
				for j = 1, #Guns do	
					if c.Name == Guns[j] then
						c.Parent = plr.Backpack
					end
				end
			end
		elseif TextBox2.Text:lower() == "cmds" then
            print([[Commands
            shoot (Player)
            unshoot (Turns off the aimbot)
            pl (ID) (Plays the ID to your boombox)
            autoplay (Toggles autoplay / Plays the last id played using the pl command or audio library command and hides your radio upon spawn)
            respawn (Toggles respawning where you died / Kinda buggy)
            view (Player) (View the player)
            unview (Stop viewing the player)
            sit (Makes you sit)
            spinvis (Toggles spin visualizer)
            radiovis (Toggles radio visualizer)
            sens (Number) (Changes the sensitivity of the radio visualizer)
            gunanims (Toggles glock and uzi animations)
            speed (Number) (Changes your sprint speed)
            sprint (Toggles speed)
            infjump (Toggles infinite jump)
            airwalk (Toggles the airwalk keybind)
            click all (Loop clicks everyone's guns)
            click (Player) (Loop clicks the player's guns)
            unclick (Stops all click commands)
            items (Toggles item esp) Might work idk?
            doorchaos (Toggles loop opening / closing all doors)
            unlockall (Loop unlocks all doors around you) (Must be within ClickDetector range)
            lockall (Loop locks all doors around you) (Must be within ClickDetector range)
            ay (Toggle annoying those posers)
            stompspeech (Toggles stomp speech)
            speech (Text) (Sets your stomp speech)
            suicidegun (Toggles suicide glock)
            deathnote (Text) (Sets your death note)
            clip (Copy the ID to your clipboard)
            mesh (Meshless boombox / Must have it equipped)
            dance (Dance animation)
            undance (Stops the dance animation)
            spin (Spin animation)
            unspin (Stops the spin animation)
            cmds

            Prison exclusive commands
            savetools (Toggles tool saving upon death) (Can be used to dupe Glocks and Shottys)
            bfg (Toggles bfg)
            dualbfg (Toggles dual glock bfg) (Requires at least 2 glocks)

            Chat commands
            /e dab
            /e lay
            /e unlay
            /e sit / sit1
            /e unsit / unsit1
            /e sit2
            /e unsit2
            /e backflip
            /e spit
            /e pushups
            /e unpushups
            /e situps
            /e unsitups
            /e chill
            /e unchill
            /e kick

            Keybinds
            ; - Open the command bar
            E - Hover over a player and press E to select them
            R - Invisible radio (Play the audio then press R)
            C - Suicide
            G- Steal the decal of the victim
            T - Taunt
            Q - Toggle airwalk

            Other Features
            Audio Library
            Infinite stamina
            Infinite Jump
            No Stop (Prevents stomping and shooting from setting your walkspeed to 0)
            Auto unlock door locks
            Sprint speed
            Free animation pack gamepass]])
            end
            Frame.Visible = false
            TextBox2.Visible = false
        end)
    end
end
