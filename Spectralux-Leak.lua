local Commands, Prefix = {}, "/"
Notify = function(title, text, icon, time)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = title;
		Text = text;
		Icon = "";
		Duration = time;
	}) 
end
local ScreenGui = Instance.new("ScreenGui")
local Cmdbar = Instance.new("TextBox")
local UIGradient = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = ScreenGui
Cmdbar.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
Cmdbar.Position = UDim2.new(0.00034586, 0, 0.4156107, 0)
Cmdbar.Size = UDim2.new(1, 0, 0.053000, 0)
Cmdbar.Visible = false
Cmdbar.Font = Enum.Font.ArialBold
Cmdbar.Text = ""
Cmdbar.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar.TextSize = 17.000

UIGradient.Parent = Cmdbar

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
		--Cmdbar:TweenSize(UDim2.new(0, 0, 0, 20), "Out", "Quad", 0.1, true)
		wait()
		Cmdbar.Visible = false
		game:GetService("Players"):Chat(Prefix..Cmdbar.Text)
	end
end)
Uis.InputEnded:Connect(function(Key)
	if Key.KeyCode.Name == "LeftAlt" then
		Cmdbar.Visible = false
	end
end)

-- [[ Local ]] -- 
local Players = game:GetService("Players")
local RService = game:GetService("RunService")
local VUser = game:GetService("VirtualUser")
local SGui = game:GetService("StarterGui")
local TPService = game:GetService("TeleportService")
local Client = Players.LocalPlayer
local Mouse = Players.LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local CF = CFrame.new
local INew = Instance.new
local Vec3 = Vector3.new
local Vec2 = Vector2.new
local UD2 = UDim2.new
local UD =  UDim.new
-- [[ Settings ]] -- 
local Noclip = true -- Quick Execute
local Blink = false
local Esp = false 
local Flying = false
local Aimbot = true
local Viewing = false
local Camlock = false
local AimbotTarget = nil
local ViewTarget = nil
local CamlockTarget = nil
local EspTarget = nil
local Flyspeed = 5
local Aimvelocity = 5
local Blinkspeed = 4
local AimPart = "Torso"
local CamPart = "Torso"
local AFK = false
local AFKMessage = "AFK !"
local TriggerBot = false
local TriggerBotStarted = false
local TriggerBotUser = nil
local Feloop = false

-- [[ Functions ]] --
for _,a in pairs(game.Workspace:GetDescendants()) do
	if a:IsA("Seat") then
		a.Disabled = true
	end
end

function SearchPlayers(Name)
	local Inserted = {}
	for _,player in pairs(game:GetService("Players"):GetPlayers()) do 
		if (string.sub(string.lower(player.Name),1,string.len(Name))) == string.lower(Name) or (string.sub(string.lower(player.DisplayName),1,string.len(Name))) == string.lower(Name) then
			table.insert(Inserted, player);
			return player
		end
	end
end

function GetInit(CName)
	for _,v in next, Commands do 
		if v.Name == CName or table.find(v.Aliases, CName) then 
			return v.Function 
		end 
	end
end

function RunCommand(Cmd)
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

local AimPartTable = {
	["torso"] = "Torso";
	["head"] = "Head";
}
local KeysTable = {
	["W"] = false;["A"] = false;
	["S"] = false;["D"] = false;
	["LeftControl"] = false;["LeftShift"] = false;
}

function ChatSpy()
	local ChatSpyFrame = Client.PlayerGui.Chat.Frame
	ChatSpyFrame.ChatChannelParentFrame.Visible = true
	ChatSpyFrame.ChatBarParentFrame.Position = ChatSpyFrame.ChatChannelParentFrame.Position + UD2(UD(), ChatSpyFrame.ChatChannelParentFrame.Size.Y)
end
ChatSpy()

function ConfirmCallbacks()
	wait()
	SGui:SetCore("ResetButtonCallback", true)
end
ConfirmCallbacks()

function ResetCharacter()
	if Client and Client.Character and Client.Character:FindFirstChild("Humanoid") then 
		Client.Character.Humanoid:ChangeState(15)
	end
end

function EspPlayer(Dude)
	local bgui = Instance.new("BillboardGui", Dude.Character.Head)
	local tlabel = Instance.new("TextLabel", bgui)

	bgui.Name = "ESP"
	bgui.Adornee = nil
	bgui.AlwaysOnTop = true
	bgui.ExtentsOffset = Vector3.new(0, 3, 0)
	bgui.Size = UDim2.new(0, 5, 0, 5)
	bgui.ResetOnSpawn = true

	tlabel.Name = "espTarget"
	tlabel.BackgroundColor3 = Color3.new(0, 0, 255)
	tlabel.BackgroundTransparency = 1
	tlabel.BorderSizePixel = 0
	tlabel.Position = UDim2.new(0, 0, 0, -30)
	tlabel.Size = UDim2.new(1, 0, 7, 0)
	tlabel.Visible = true
	tlabel.ZIndex = 10
	tlabel.Font = "ArialBold"
	tlabel.FontSize = "Size18"
	RService.RenderStepped:Connect(function()
		if Dude and Dude.Character and Dude.Character:FindFirstChildOfClass("Humanoid") then 
			tlabel.Text = Dude.Name.." ["..math.floor(Dude.Character.Humanoid.Health).."/"..math.floor(Dude.Character.Humanoid.MaxHealth).."]".." ["..math.floor(Dude:DistanceFromCharacter(Client.Character.Head.Position)).."]"
		end
	end)
	tlabel.TextColor = BrickColor.new("Red") 
	tlabel.TextStrokeTransparency = 0.5
end

function togglefly()
	Flying = not Flying
	Notify("Notification", "Flying: "..tostring(Flying), "", 3)
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
			togglefly()
		end
		if Key.KeyCode == Enum.KeyCode.X then 
			Noclip = not Noclip 
			Notify("Notification", "Noclip: "..tostring(Noclip), "", 3)
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

local Player = game:GetService"Players".LocalPlayer
local uis = game:GetService"UserInputService"
local offset = CFrame.new(0, -3.5, 0)
local ONairwalk = false

function doAirwalk()
	local air = Instance.new("Part", workspace)
	air.Anchored = true
	air.Size = Vector3.new(4, 1, 4)
	air.Transparency = 1

	while ONairwalk do
		air.CFrame = Player.Character.HumanoidRootPart.CFrame * offset
		wait()
	end
	air:Destroy()
end

uis.InputBegan:Connect(function(i, chat)
	if chat then return end
	if i.KeyCode == Enum.KeyCode.B then
		ONairwalk = not ONairwalk
		if ONairwalk then
			doAirwalk()
		end
	elseif i.KeyCode == Enum.KeyCode.LeftControl then
		offset = CFrame.new(0, -4, 0)
	end
end)

uis.InputEnded:Connect(function(i, chat)
	if chat then return end
	if i.KeyCode == Enum.KeyCode.LeftControl then
		offset = CFrame.new(0, -3.5, 0)
	end
end)

local Player = game:GetService"Players".LocalPlayer
local uis = game:GetService"UserInputService"
local offset = CFrame.new(0, -3.5, 0)
local ONairwalk = false

function doAirwalk()
	local air = Instance.new("Part", workspace)
	air.Anchored = true
	air.Size = Vector3.new(4, 1, 4)
	air.Transparency = 1

	while ONairwalk do
		air.CFrame = Player.Character.HumanoidRootPart.CFrame * offset
		wait()
	end
	air:Destroy()
end

uis.InputBegan:Connect(function(i, chat)
	if chat then return end
	if i.KeyCode == Enum.KeyCode.B then
		ONairwalk = not ONairwalk
		if ONairwalk then
			doAirwalk()
		end
	elseif i.KeyCode == Enum.KeyCode.LeftControl then
		offset = CFrame.new(0, -4, 0)
	end
end)

uis.InputEnded:Connect(function(i, chat)
	if chat then return end
	if i.KeyCode == Enum.KeyCode.LeftControl then
		offset = CFrame.new(0, -3.5, 0)
	end
end)

-- [[ Bypass ]] --
local rm = getrawmetatable(game) or debug.getrawmetatable(game) or getmetatable(game)
if setreadonly then setreadonly(rm, false) else make_writeable(rm, true) end
local caller, cscript = checkcaller or is_protosmasher_caller, getcallingscript or get_calling_script;
local rindex, nindex, ncall, closure = rm.__index, rm.__newindex, rm.__namecall, newcclosure or read_me;

rm.__newindex = closure(function(self, Meme, Val)
	if caller() then return nindex(self, Meme, Val) end 
	if game.PlaceId ~= (455366377) then 
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
	if game.PlaceId ~= (455366377) then
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
	if game.PlaceId == (455366377) then
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

-- 
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
Commands["Feloop User"] = {
	["Aliases"] = {"fe","feloop"};
	["Function"] = function(Args)
		local Target = nil
		if Args[1] then 
			Target = SearchPlayers(Args[1])
		end
		Notify("Notification", "Feloop Target: "..tostring(Target), "", 3)
		if Target ~= nil then
			game.Players.PlayerAdded:Connect(function(plr)
				if plr.Name == Target.Name then
					Target = plr
				end
			end)

			Feloop = true
			game:GetService("RunService").Heartbeat:Connect(function()
				if Target ~= nil and Feloop == true then
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name ~= "Punch" and v.Name ~= "Knife" and v.Name ~= "BoomBox" then
							v:Destroy()
						end
					end
					game.Players.LocalPlayer.Character.Humanoid.Name = 1
					local l = game.Players.LocalPlayer.Character["1"]:Clone()
					l.Parent = game.Players.LocalPlayer.Character
					l.Name = "Humanoid"
					game.Players.LocalPlayer.Character["1"]:Destroy()
					game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character.Animate.Disabled = true
					game.Players.LocalPlayer.Character.Animate.Disabled = false
					game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
					if Player.Character:FindFirstChild("Right Leg") then
						Player.Character:FindFirstChild("Right Leg"):Destroy()
					end
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						v.Parent = game.Players.LocalPlayer.Character
					end
					if game.Players.LocalPlayer.Character and Target.Character.Torso then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.Torso.CFrame
					end
				end
			end)
		end
	end
}
Commands["UnFeloop"] = {
	["Aliases"] = {"unfe", "unfeloop"};
	["Function"] = function()
		Feloop = not Feloop
		if Feloop == true then
			Notify("Notification", "Feloop: "..tostring(Feloop), "", 3)
		else
			Notify("Notification", "Feloop: Already Disabled", "", 3)
		end
	end
}
Commands["Remote User"] = {
	["Aliases"] = {"rg","remoteglock"};
	["Function"] = function(Args)
		local Target = nil
		if Args[1] then 
			Target = SearchPlayers(Args[1])
		end
		if Target ~= nil then
			Client.Character["Right Arm"]["RightGrip"]:Destroy()
			local Tool = Client.Character:FindFirstChildOfClass("Tool");Shooting = true
			while Shooting == true and TriggerBotUser and TriggerBotUser.Character and TriggerBotUser.Character:FindFirstChild(AimPart) do 
				repeat RService.Heartbeat:Wait()
					ShootPlayer(TriggerBotUser);Tool.Handle.CFrame = CF(TriggerBotUser.Character[AimPart].Position)
				until TriggerBotUser.Character:FindFirstChild("KO") or TriggerBotUser.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool or Shooting == false
			end 
			if TriggerBotUser.Character:FindFirstChild("KO") or TriggerBotUser.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool then 
				TriggerBotUser = nil;Shooting = false;UnEquipTool(Tool)
			end 
		end
	end
}
Commands["Trigger User"] = {
	["Aliases"] = {"trigger"};
	["Function"] = function(Args)
		if Args[1] then 
			TriggerBotUser = SearchPlayers(Args[1])
		end
		Notify("Notification", "Triggerbot Target: "..tostring(TriggerBotUser), "", 3)
		if TriggerBotUser ~= nil and TriggerBotUser.Torso ~= nil then
			TriggerBotStarted = true
			Player.Character.Humanoid:UnequipTools()
			wait(.1)
			for i,v in pairs(Player.Backpack:GetChildren()) do
				if v:IsA("Tool") and v:FindFirstChild("Fire") then
					v.Parent = Player.Character
					repeat
						v.Fire:FireServer(TriggerBotUser[AimPart].CFrame + TriggerBotUser[AimPart].Velocity/Aimvelocity)
						i = i + 1
						local incline = math.rad(0)
						Player.Character.HumanoidRootPart.CFrame = TriggerBotUser.Torso.CFrame * CFrame.fromEulerAnglesXYZ(incline, i * 20, 0) * CFrame.new(0, 0, 10)
						game:GetService("RunService").Heartbeat:wait()
					until TriggerBotStarted == false or TriggerBotUser:FindFirstChild("KO") or TriggerBotUser.Humanoid.Health == 0 or Player.Character.Humanoid.Health == 0 or Player.Character:FindFirstChild("KO")
					if TriggerBotUser.Humanoid.Health > 0 and TriggerBotUser:FindFirstChild("KO") then
						Player.Character.Humanoid:UnequipTools()
						Player.Backpack.Punch.Parent = Player.Character
						repeat
							Player.Character.HumanoidRootPart.CFrame = TriggerBotUser.Torso.CFrame * CFrame.new(0,1.5,0)
							Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
							Player.Backpack.ServerTraits.Finish:FireServer(Player.Character.Punch)
							game:GetService("RunService").Heartbeat:wait()
						until TriggerBotStarted == false or TriggerBotUser.Humanoid.Health == 0
						if TriggerBotUser.Humanoid.Health > 0 and TriggerBotUser:FindFirstChild("KO") then
							for i = 1,20,1 do
								local Gun = Player.Character:FindFirstChildWhichIsA("Tool")
								if Gun:FindFirstChild("Fire") then
									Player.Character.Humanoid:UnequipTools()
								else
									Player.Character.HumanoidRootPart.CFrame = TriggerBotUser.Torso.CFrame * CFrame.new(0,1.5,0)
									Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
									TriggerBotStarted = false                               
								end                         
								wait()
							end
						end
					end
				end
			end
		end
	end
}
Commands["Trigger Bot"] = {
	["Aliases"] = {"tb", "triggerbot"};
	["Function"] = function()
		TriggerBot = not TriggerBot
		if TriggerBotStarted == false then
			TriggerBot = true
			TriggerBotStarted = true
			Notify("Notification", "Triggerbot: "..tostring(TriggerBotStarted), "", 3)
		else
			Notify("Notification", "Already Enabled", "", 3)
		end
	end
}
Commands["UnTrigger Bot"] = {
	["Aliases"] = {"untb", "untriggerbot"};
	["Function"] = function()
		TriggerBot = not TriggerBot
		if TriggerBotStarted == true then
			TriggerBot = false
			TriggerBotStarted = false
			Notify("Notification", "Triggerbot: "..tostring(TriggerBotStarted), "", 3)
		else
			Notify("Notification", "Already Disabled", "", 3)
		end
	end
}
Commands["Pawel"] = {
	["Aliases"] = {"pawel"};
	["Function"] = function()
		local lPlayer = game:GetService("Players").LocalPlayer
		local Glock = lPlayer.Backpack:FindFirstChild("Glock")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://889968874"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Glock.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Glock.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Shotty = lPlayer.Backpack:FindFirstChild("Shotty")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://889968874"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Shotty.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Shotty.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local uzi = lPlayer.Backpack:FindFirstChild("Uzi")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://889968874"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		uzi.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		uzi.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Sw = lPlayer.Backpack:FindFirstChild("Sawed Off")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://889968874"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Sw.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Sw.Unequipped:connect(function()
			HUM:Stop()
		end)
	end
}
Commands["Anime"] = {
	["Aliases"] = {"anime"};
	["Function"] = function()
		local lPlayer = game:GetService("Players").LocalPlayer
		local Glock = lPlayer.Backpack:FindFirstChild("Glock")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://465400764"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Glock.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Glock.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Shotty = lPlayer.Backpack:FindFirstChild("Shotty")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://465400764"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Shotty.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Shotty.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local uzi = lPlayer.Backpack:FindFirstChild("Uzi")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://465400764"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		uzi.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		uzi.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Sw = lPlayer.Backpack:FindFirstChild("Sawed Off")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://465400764"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Sw.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Sw.Unequipped:connect(function()
			HUM:Stop()
		end)
	end
}
Commands["Sensei"] = {
	["Aliases"] = {"sensei"};
	["Function"] = function()
		local lPlayer = game:GetService("Players").LocalPlayer
		local Glock = lPlayer.Backpack:FindFirstChild("Glock")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://259363289"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Glock.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Glock.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Shotty = lPlayer.Backpack:FindFirstChild("Shotty")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://259363289"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Shotty.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Shotty.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local uzi = lPlayer.Backpack:FindFirstChild("Uzi")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://259363289"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		uzi.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		uzi.Unequipped:connect(function()
			HUM:Stop()
		end)
		local lPlayer = game:GetService("Players").LocalPlayer
		local Sw = lPlayer.Backpack:FindFirstChild("Sawed Off")
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://259363289"
		local Player = game:GetService('Players').LocalPlayer
		local HUM = Player.Character.Humanoid:LoadAnimation(Animation)
		Sw.Equipped:connect(function()
			wait()
			HUM:Play()
			HUM:AdjustSpeed(0.0)
		end)
		Sw.Unequipped:connect(function()
			HUM:Stop()
		end)
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
			Notify("Notification", "Flyspeed: "..tonumber(Flyspeed), "", 3)
		end
	end
}
Commands["Toggles Fly"] = {
	["Aliases"] = {"fly", "togglefly"};
	["Function"] = function(Args)
		togglefly()
	end
}
Commands["Toggles Airwalk"] = {
	["Aliases"] = {"airwalk", "air"};
	["Function"] = function(Args)
		ONairwalk = not ONairwalk
		if ONairwalk then
			doAirwalk()
		end
	end
}
Commands["Sets your Chat Command Prefix"] = {
	["Aliases"] = {"prefix", "pfix"};
	["Function"] = function(Args)
		if Args[1] then 
			Prefix = Args[1]
		end
		Notify("Notification", "Prefix: "..tostring(Prefix), "", 3)
	end
}
Commands["Sets your FieldOfView"] = {
	["Aliases"] = {"fieldofview", "fov"};
	["Function"] = function(Args)
		if Args[1] then 
			Camera.FieldOfView = tonumber(Args[1])
		end
		Notify("Notification", "FieldOfView: "..tonumber(Args[1]), "", 3)
	end
}
Commands["Toggles Blink"] = {
	["Aliases"] = {"blink", "blinkspd"};
	["Function"] = function(Args)
		Blink = not Blink 
		Notify("Notification", "Blink: "..tostring(Blink), "", 3)
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
		Notify("Notification", "Esp Target: "..tostring(EspTarget), "", 3)
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
		Notify("Notification", "Camlock Target: "..tostring(CamlockTarget), "", 3)
	end
}
Commands["UnCamlocks Camlocked Target"] = {
	["Aliases"] = {"uncamlock", "uncam", "uncl", "uncml"};
	["Function"] = function()
		CamlockTarget = nil;Camlock = false 
		Notify("Notification", "Camlock: "..tostring(Camlock), "", 3)
	end
}
Commands["Sets Aimbot Target"] = {
	["Aliases"] = {"aim", "s", "aimbot", "shoot"};
	["Function"] = function(Args)
		if Args[1] then 
			AimbotTarget = SearchPlayers(Args[1]);Aimbot = true
		end
		Notify("Notification", "Aimbot Target: "..tostring(AimbotTarget), "", 3)
	end
}
Commands["UnAimbots Aimbotted Target"] = {
	["Aliases"] = {"unaim", "uns", "unaimbot", "unshoot"};
	["Function"] = function()
		AimbotTarget = nil;Aimbot = false
		Notify("Notification", "Aimbot: "..tostring(Aimbot), "", 3)
	end
}
Commands["View a Player"] = {
	["Aliases"] = {"view"};
	["Function"] = function(Args)
		if Args[1] then 
			ViewTarget = SearchPlayers(Args[1]);Viewing = true 
		end
		Notify("Notification", "View Target: "..tostring(ViewTarget), "", 3)
	end
}
Commands["UnView Viewed Target"] = {
	["Aliases"] = {"unview"};
	["Function"] = function()
		ViewTarget = nil;Viewing = false
		Camera.CameraSubject = Client.Character
		Notify("Notification", "Viewing: "..tostring(Viewing), "", 3)
	end
}
Commands["Sets Aimvelocity"] = {
	["Aliases"] = {"aimvelocity"};
	["Function"] = function(Args)
		if Args[1] then 
			Aimvelocity = tonumber(Args[1])
		end
		Notify("Notification", "Aimvelocity: "..tonumber(Args[1]), "", 3)
	end
}
Commands["Toggles Noclip"] = {
	["Aliases"] = {"noclip", "nc", "nclip"};
	["Function"] = function()
		Noclip = not Noclip 
		Notify("Notification", "Noclip: "..tostring(Noclip), "", 3)
	end
}
Commands["Sets Blinkspeed"] = {
	["Aliases"] = {"bs", "blinkspeed"};
	["Function"] = function(Args)
		if Args[1] then 
			Blinkspeed = tonumber(Args[1])
		end
		Notify("Notification", "Blinkspeed: "..tonumber(Args[1]), "", 3)
	end
}
Commands["Sets Aimbot Part"] = {
	["Aliases"] = {"aimpart"};
	["Function"] = function(Args)
		AimPart = Args[1]
		if AimPartTable[Args[1]] then 
			AimPart = AimPartTable[Args[1]] 
		end
		Notify("Notification", "AimPart: "..tostring(AimPart), "", 3)
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

for _,x in pairs(Player.Character:GetChildren()) do
	x.ChildAdded:Connect(function(found)
		if found.Name == "creator" then
			local targetName = workspace:FindFirstChild(found.Value.Name)
			if targetName.Torso ~= nil then
				if TriggerBot == true and TriggerBotStarted == false then
					TriggerBotStarted = true
					Player.Character.Humanoid:UnequipTools()
					wait(.1)
					for i,v in pairs(Player.Backpack:GetChildren()) do
						if v:IsA("Tool") and v:FindFirstChild("Fire") then
							v.Parent = Player.Character
							repeat
								v.Fire:FireServer(targetName[AimPart].CFrame + targetName[AimPart].Velocity/Aimvelocity)
								i = i + 1
								local incline = math.rad(0)
								Player.Character.HumanoidRootPart.CFrame = targetName.Torso.CFrame * CFrame.fromEulerAnglesXYZ(incline, i * 20, 0) * CFrame.new(0, 0, 10)
								game:GetService("RunService").Heartbeat:wait()
							until TriggerBotStarted == false or targetName:FindFirstChild("KO") or targetName.Humanoid.Health == 0 or Player.Character.Humanoid.Health == 0 or Player.Character:FindFirstChild("KO")
							if targetName.Humanoid.Health > 0 and targetName:FindFirstChild("KO") then
								Player.Character.Humanoid:UnequipTools()
								Player.Backpack.Punch.Parent = Player.Character
								repeat
									Player.Character.HumanoidRootPart.CFrame = targetName.Torso.CFrame * CFrame.new(0,1.5,0)
									Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
									Player.Backpack.ServerTraits.Finish:FireServer(Player.Character.Punch)
									game:GetService("RunService").Heartbeat:wait()
								until TriggerBotUser == false or targetName.Humanoid.Health == 0
								if targetName.Humanoid.Health > 0 and targetName:FindFirstChild("KO") then
									for i = 1,20,1 do
										local Gun = Player.Character:FindFirstChildWhichIsA("Tool")
										if Gun:FindFirstChild("Fire") then
											Player.Character.Humanoid:UnequipTools()
										else
											Player.Character.HumanoidRootPart.CFrame = targetName.Torso.CFrame * CFrame.new(0,1.5,0)
											Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
											TriggerBotStarted = false                               
										end                         
										wait()
									end
								end
							end
						end
					end
				end
			end
		end
	end)
end

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

Spectralux Commands
=======
-------
Toggles = Turns On and Off
Alt = Other names for the Command
/ = prefix
-------

Keybinds:

F - Toggles Fly 
X - Toggles Noclip
N - Respawn on death (toggle)
E - loopshoot player (hold mouse on player)
Q - Remote glock/shotgun (works better with glock and you have to hold your mouse at player)
B - Toggles Airwalk (Space to go up and CTRL to go down
; - Toggles Command Bar
=======

(Names can be Shortened/Not-Capitalized)  (Displaynames can also be used)
Commands:

[1]: afk, Toggles Anti-Afk (Alt: brb)
[2]: flyspeed <number here>, Sets your FlySpeed (Alt: fs)
[3]: fly, Toggles Fly (Alt: togglefly)
[4]: prefix <letter or whatever here>, Sets your Chat Command Prefix (Alt: pfix)
[5]: fieldofview <number here>, Sets your FieldOfView (Alt: fov, f)
[6]: blink, Toggles Blink (Alt: blinkspd)
[7]: esp <name here>, Sets ESP Target 
[8]: unesp <name here>, UnEsp's ESP'd Target 
[9]: rejoin, Rejoins the Current Game 
[10]: r, Resets your Character (Alt: reset, re, res)
[11]: camlock <name here>, Sets Camlock Target (Alt: cam, cl, cml)
[12]: uncamlock, UnCamlocks Camlocked Target (Alt: uncam, uncl, uncml)
[13]: aimbot <name here>, Sets Aimbot Target (Alt: s, aim, shoot) (Press LeftClick/Mouse1 to Aimbot them)
[14]: unaimbot, UnAimbots Aimbot Target (Alt: uns, unaim, unshoot)
[15]: view <name here>, Sets View Target 
[16]: unview, UnViews Viewed Target 
[17]: aimvelocity <number here>, Sets Aimvelocity 
[18]: noclip, Toggles Noclip 
[19]: blinkspeed <number here>, Sets Blinkspeed (Alt: bs)
[20]: aimpart <torso or head>, Sets the Part in which Aimbot shoots at
[22]: triggerbot, Triggerbot Retards By LynxZizzle (Alt: tb)
[23]: airwalk, Airwalk Obviously
[24]: trigger, triggerbot users
[24]: feloop, feloop users (Alt: fe)
[24]: remoteglock, feloop users (Alt: rg)
[25]: Pawel, toggles pawel animation
[26]: Sensei, toggles sensei animation
[27]: Anime, turns on weird ass animation 
]])

Client.Chatted:Connect(RunCommand)
Notify("Spectralux Loaded [Leak]", "Leaked by aimxcc#1300", "" , 3)
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local HealthInfo = Instance.new("TextLabel")
local WalkSpeedtxt = Instance.new("TextLabel")
local WsInfo = Instance.new("TextLabel")
local Healthtxt = Instance.new("TextLabel")
local StanInfo = Instance.new("TextLabel")
local StanTxt = Instance.new("TextLabel")
local ToolsInfo = Instance.new("TextLabel")
local Toolstxt = Instance.new("TextLabel")
local lp = game:GetService("Players").LocalPlayer
local p = game:GetService("Players")
local hum = lp.Character.Humanoid
local info = true or false
info = true
local m = lp:GetMouse()
ScreenGui.Parent = game.CoreGui
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
TextLabel.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TextLabel.Position = UDim2.new(0, 0, 0.537848592, 0)
TextLabel.Size = UDim2.new(0, 160, 0, 12)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Player Info"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
Frame.Parent = TextLabel
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.40000000596046
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 160, 0, 100)
HealthInfo.Name = "HealthInfo"
HealthInfo.Parent = Frame
HealthInfo.BackgroundColor3 = Color3.new(1, 1, 1)
HealthInfo.BackgroundTransparency = 1
HealthInfo.Position = UDim2.new(-0.000946760178, 0, 0.0700000077, 0)
HealthInfo.Size = UDim2.new(0, 47, 0, 21)
HealthInfo.Font = Enum.Font.Code
HealthInfo.Text = "Health:"
HealthInfo.TextColor3 = Color3.new(1, 1, 1)
HealthInfo.TextSize = 14
WalkSpeedtxt.Name = "WalkSpeedtxt"
WalkSpeedtxt.Parent = Frame
WalkSpeedtxt.BackgroundColor3 = Color3.new(1, 1, 1)
WalkSpeedtxt.BackgroundTransparency = 1
WalkSpeedtxt.Position = UDim2.new(0.455303222, 0, 0.279999971, 0)
WalkSpeedtxt.Size = UDim2.new(0, 30, 0, 21)
WalkSpeedtxt.Font = Enum.Font.Code
WalkSpeedtxt.Text = ""
WalkSpeedtxt.TextColor3 = Color3.new(255, 0, 0)
WalkSpeedtxt.TextSize = 14
WsInfo.Name = "WsInfo"
WsInfo.Parent = Frame
WsInfo.BackgroundColor3 = Color3.new(1, 1, 1)
WsInfo.BackgroundTransparency = 1
WsInfo.Position = UDim2.new(0.0740532428, 0, 0.279999971, 0)
WsInfo.Size = UDim2.new(0, 47, 0, 21)
WsInfo.Font = Enum.Font.Code
WsInfo.Text = "WalkSpeed:"
WsInfo.TextColor3 = Color3.new(1, 1, 1)
WsInfo.TextSize = 14
Healthtxt.Name = "Healthtxt"
Healthtxt.Parent = Frame
Healthtxt.BackgroundColor3 = Color3.new(1, 1, 1)
Healthtxt.BackgroundTransparency = 1
Healthtxt.Position = UDim2.new(0.505303204, 0, 0.0700000003, 0)
Healthtxt.Size = UDim2.new(0, 40, 0, 21)
Healthtxt.Font = Enum.Font.Code
Healthtxt.Text = ""
Healthtxt.TextColor3 = Color3.new(255, 0, 0)
Healthtxt.TextSize = 12
StanInfo.Name = "StanInfo"
StanInfo.Parent = Frame
StanInfo.BackgroundColor3 = Color3.new(1, 1, 1)
StanInfo.BackgroundTransparency = 1
StanInfo.Position = UDim2.new(-0.000946760178, 0, 0.49000001, 0)
StanInfo.Size = UDim2.new(0, 59, 0, 21)
StanInfo.Font = Enum.Font.Code
StanInfo.Text = "Stamina:"
StanInfo.TextColor3 = Color3.new(1, 1, 1)
StanInfo.TextSize = 14
StanTxt.Name = "StanTxt"
StanTxt.Parent = Frame
StanTxt.BackgroundColor3 = Color3.new(1, 1, 1)
StanTxt.BackgroundTransparency = 1
StanTxt.Position = UDim2.new(0.62405324, 0, 0.48999995, 0)
StanTxt.Size = UDim2.new(0, 30, 0, 21)
StanTxt.Font = Enum.Font.Code
StanTxt.Text = ""
StanTxt.TextColor3 = Color3.new(255, 0, 0)
StanTxt.TextSize = 14
ToolsInfo.Name = "ToolsInfo"
ToolsInfo.Parent = Frame
ToolsInfo.BackgroundColor3 = Color3.new(1, 1, 1)
ToolsInfo.BackgroundTransparency = 1
ToolsInfo.Position = UDim2.new(-0.0134467632, 0, 0.699999988, 0)
ToolsInfo.Size = UDim2.new(0, 103,0, 21)
ToolsInfo.Font = Enum.Font.Code
ToolsInfo.Text = "Equipped Tool:"
ToolsInfo.TextColor3 = Color3.new(1, 1, 1)
ToolsInfo.TextSize = 14
Toolstxt.Name = "Toolstxt"
Toolstxt.Parent = Frame
Toolstxt.BackgroundColor3 = Color3.new(1, 1, 1)
Toolstxt.BackgroundTransparency = 1
Toolstxt.Position = UDim2.new(0.687, 0,0.7, 0)
Toolstxt.Size = UDim2.new(0, 30, 0, 21)
Toolstxt.Font = Enum.Font.Code
Toolstxt.Text = ""
Toolstxt.TextColor3 = Color3.new(255, 0, 0)
Toolstxt.TextSize = 14
if info == true and not info == false then
	m.Button1Down:connect(function()
		if m.Target or m.Target.Parent then
			local Player = p:GetPlayerFromCharacter(m.Target.Parent)
			local name = Player.Name
			if Player ~= nil then
				local tools = Player.Backpack
				TextLabel.Text = "Info("..name..")"
				repeat
					wait()
					if TextLabel.Text == "Info("..name..")" then
						TextLabel.Text = "Info("..name..")"
					else
						Player = nil
					end
					Healthtxt.Text = Player.Character.Humanoid.Health
					WalkSpeedtxt.Text = Player.Character.Humanoid.WalkSpeed
					StanTxt.Text = Player.Backpack.ServerTraits.Stann.Value
					for _,x in pairs(Player.Character:GetChildren()) do
						if x:IsA("Tool") then
							Toolstxt.Text = x.Name
						else
							Toolstxt.Text = ""
						end
					end
				until info == false 
			end
		end
	end)
end
-- end of that script lol

-- zoom inf 
game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
-- end of zoom inf



-- walkshoot 
if game.PlaceId == 4669040 or 455366377 then
	local mt = getrawmetatable(game)
	local backup
	backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
		if key == "WalkSpeed" and value < 16 then
			value = 16
		end
		return backup(self, key, value)
	end))
end
--end of walkshoot



-- Remoteglock
local Players, RService, Uis = game:GetService("Players"), game:GetService("RunService"), game:GetService("UserInputService")
local Client, Mouse, CF, Vec3 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), CFrame.new, Vector3.new;
local AV, AimPart, Val, Target, Shooting = 10, "Torso", nil, nil, false

UnEquipTool = function(T)
	if Client and Client.Character and Client.Character:FindFirstChild("Humanoid") then 
		Client.Character.Humanoid:UnequipTools(T)
	end
end
ShootPlayer = function(Player)
	Shooting = true
	local Tool = Client.Character:FindFirstChildWhichIsA("Tool")
	if Player and Player.Character and Player.Character:FindFirstChild(AimPart) and not Player.Character:FindFirstChild("ForceField") and Shooting == true then 
		Tool.Fire:FireServer(CF(Player.Character[AimPart].Position) + Player.Character[AimPart].Velocity/AV) -- If You Ever Use Rot Velocity Get Ready To Ride A Fucking RollerCoster Retard
	end
end

Uis.InputBegan:Connect(function(Key)
	if not (Uis:GetFocusedTextBox()) then
		if Key.KeyCode == Enum.KeyCode.Q and Mouse.Target.Parent:FindFirstChild("Humanoid") and Client.Character["Right Arm"]:FindFirstChild("RightGrip") then 
			Target = Players:GetPlayerFromCharacter(Mouse.Target.Parent)
			Client.Character["Right Arm"]["RightGrip"]:Destroy()
			local Tool = Client.Character:FindFirstChildOfClass("Tool");Shooting = true
			while Shooting == true and Target and Target.Character and Target.Character:FindFirstChild(AimPart) do 
				repeat RService.Heartbeat:Wait()
					ShootPlayer(Target);Tool.Handle.CFrame = CF(Target.Character[AimPart].Position)
				until Target.Character:FindFirstChild("KO") or Target.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool or Shooting == false
			end 
			if Target.Character:FindFirstChild("KO") or Target.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool then 
				Target = nil;Shooting = false;UnEquipTool(Tool)
			end 
		end
	end
end)

local LocalPlayer = game.Players.LocalPlayer
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
local GuiService = game:GetService("GuiService")
local CurrentCamera = game.Workspace.CurrentCamera
local RenderStepped = game:GetService("RunService").RenderStepped
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded.Wait(LocalPlayer.CharacterAdded)

function getClosestPlayerToCursor()
	local ClosestPlayer = nil
	local ShortestDistance = math.huge
	for i,plr in pairs(game.Players:GetPlayers()) do
		if plr ~= LocalPlayer and plr ~= nil and plr.Character ~= nil and plr.Character:WaitForChild("HumanoidRootPart",math.huge) ~= nil then
			local PartPos, OnScreen = CurrentCamera.WorldToViewportPoint(CurrentCamera, plr.Character:WaitForChild("HumanoidRootPart",math.huge).Position) -- PrimaryPart
			local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude  
			if (Magnitude < (60 * 10 - 8)) and (Magnitude < ShortestDistance) then
				ClosestPlayer = plr
				ShortestDistance = Magnitude
			end
		end
	end
	AimbotTarget = (ClosestPlayer)
	return (ClosestPlayer)
end

local Mouse = game.Players.LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
	local inputType = input.UserInputType
	if inputType == Enum.UserInputType.MouseButton2 then
		if LocalPlayer.Character:FindFirstChildOfClass("Tool") then
			local AimbotTarget = getClosestPlayerToCursor()
			Notify("Notification", "Target: "..tostring(AimbotTarget), "", 3)
		end
	end
end)

-- NetBypass
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then 
		game:GetService("RunService").Heartbeat:Connect(function()
			v.Velocity = Vector3.new(-30,0,0)
		end)
	end
end

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
	if KeyPressed == "r" then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end)

--respawn on death

local stationaryrespawn = false
local needsrespawning = false
local haspos = false
local pos = CFrame.new()

local Respawning = Instance.new("ScreenGui")
local RespawningButton = Instance.new("TextButton")

Respawning.Name = "Respawning"
Respawning.Parent = game.CoreGui



RespawningButton.Name = "RespawningButton"
RespawningButton.Parent = Respawning
RespawningButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
RespawningButton.BackgroundTransparency = 0.30000001192093
RespawningButton.BorderSizePixel = 0
RespawningButton.Position = UDim2.new(0.0391057241, 0, 0.826617789, 0)
RespawningButton.Size = UDim2.new(0, 83, 0, 34)
RespawningButton.Font = Enum.Font.SourceSans
RespawningButton.Text = "Not Returning"
RespawningButton.TextColor3 = Color3.new(1, 1, 1)
RespawningButton.TextSize = 20
RespawningButton.TextScaled = true
RespawningButton.Draggable = true




function StatRespawn(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.N and gameProcessedEvent == false then        
		stationaryrespawn = not stationaryrespawn
	end
end






game:GetService("UserInputService").InputBegan:connect(StatRespawn)



game:GetService('RunService').Stepped:connect(function()


	if stationaryrespawn == true and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
		if haspos == false then
			pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			haspos = true
		end

		needsrespawning = true
	end


	if needsrespawning == true then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	end


	if stationaryrespawn == true then 
		RespawningButton.Text = "Returning"
	else
		RespawningButton.Text = "Not Returning"
	end


end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
	wait(0.6)
	needsrespawning = false
	haspos = false
end)

local Players, RService, Uis = game:GetService("Players"), game:GetService("RunService"), game:GetService("UserInputService")
local Client, Mouse, CF, Vec3 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), CFrame.new, Vector3.new;
local AV, AimPart, Val, Target, Shooting = 10, "Torso", nil, nil, false

UnEquipTool = function(T)
    if Client and Client.Character and Client.Character:FindFirstChild("Humanoid") then 
        Client.Character.Humanoid:UnequipTools(T)
    end
end
ShootPlayer = function(Player)
    Shooting = true
    local Tool = Client.Character:FindFirstChildWhichIsA("Tool")
    if Player and Player.Character and Player.Character:FindFirstChild(AimPart) and not Player.Character:FindFirstChild("ForceField") and Shooting == true then 
        Tool.Fire:FireServer(CF(Player.Character[AimPart].Position) + Player.Character[AimPart].Velocity/AV) -- If You Ever Use Rot Velocity Get Ready To Ride A Fucking RollerCoster Retard
    end
end

Uis.InputBegan:Connect(function(Key)
    if not (Uis:GetFocusedTextBox()) then
        if Key.KeyCode == Enum.KeyCode.E and Mouse.Target.Parent:FindFirstChild("Humanoid") and Client.Character["Right Arm"]:FindFirstChild("RightGrip") then 
            Target = Players:GetPlayerFromCharacter(Mouse.Target.Parent)
            local Tool = Client.Character:FindFirstChildOfClass("Tool");Shooting = true
            while Shooting == true and Target and Target.Character and Target.Character:FindFirstChild(AimPart) do 
                repeat RService.Heartbeat:Wait()
                    ShootPlayer(Target);Tool.Handle.CFrame = CF(Target.Character[AimPart].Position)
                until Target.Character:FindFirstChild("KO") or Target.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool or Shooting == false
            end 
            if Target.Character:FindFirstChild("KO") or Target.Character.Humanoid.Health == 0 or Client.Character:FindFirstChild("KO") or Client.Character.Humanoid.Health == 0 or not Tool then 
                Target = nil;Shooting = false;UnEquipTool(Tool)
            end 
        end
    end
end)

local ScreenGui = Instance.new"ScreenGui"
local MainFrame = Instance.new"Frame"
local Frame = Instance.new"Frame"
local TextLabel = Instance.new"TextLabel"
local TextButton = Instance.new"TextButton"
local TextButton2 = Instance.new"TextButton"
local TextBox = Instance.new"TextBox"
local TextBox2 = Instance.new"TextBox"

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

end
