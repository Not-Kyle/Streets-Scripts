--citizen blink


getgenv().BlinkKey = "LeftShift" -- Case sensitive due to UserInputService, for example if its "e" make sure its "E";
getgenv().Prefix = "" -- Set this to what you like for chat commands, for example: ".blink";

local Players, Uis, RService = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService";
local Client, CF, Vec3 = Players.LocalPlayer, CFrame.new, Vector3.new;
local Blink, BlinkSpeed, KeyHeld, tableConcatenate = false, 2, false, table.concat;


local Commands, ScriptLoaded, LoadingTime = {}, true, tick();
getgenv().Loaded = true
getgenv().GetInit = function(CName)
    for _, v in next, Commands do 
        if table.find(v.Aliases, CName) then 
            return v.Function 
        end 
    end
end

getgenv().RunCommand = function(Cmd)
    pcall(function()
        if string.sub(string.lower(Cmd), 1, #Prefix) == Prefix then
            local args = string.split(string.sub(string.lower(Cmd), #Prefix + 1), " ")
            local CmdName = GetInit(table.remove(args, 1))
            if CmdName and args then
                return CmdName(args)
            end
        end
    end)
end

getgenv().Notify = function(title, text, icon, time)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = title;
        Text = text;
        Icon = "";
        Duration = tonumber(time);
    }) 
end

Commands["Blink"] = {
    ["Aliases"] = {"blink", "b"};
    ["Description"] = "Turns Blinking Abilities off and on [Toggle]";
    ["Function"] = function()
        Blink = not Blink 
        Notify("Citizen", "Blink -  "..tostring(Blink), "", 3)
    end
}
Commands["BlinkSpeed"] = {
    ["Aliases"] = {"blinkspeed", "bspeed", "bs"};
    ["Description"] = "Sets BlinkSpeed [Number]";
    ["Function"] = function(args)
        if tonumber(args[1]) then 
            BlinkSpeed = tonumber(args[1])
        else 
            return Notify("Citizen", "Type a number", "", 3)
        end
        Notify("Citizen", "BlinkSpeed -  "..tonumber(BlinkSpeed), "", 3)
    end
}

local function InputBeganEvent(Key)
    if not Uis:GetFocusedTextBox() then 
        if Key.KeyCode == Enum.KeyCode[BlinkKey] then 
            KeyHeld = true 
            while KeyHeld == true and Blink == true and Client and Client.Character and Client.Character:FindFirstChild"Humanoid" and RService.Heartbeat:Wait() do 
                local ClientPF, H = Client.Character:FindFirstChild"HumanoidRootPart" or Client.Character:FindFirstChild"Torso", Client.Character.Humanoid
                ClientPF.CFrame = ClientPF.CFrame + Vec3(
                    H.MoveDirection.X * BlinkSpeed, H.MoveDirection.Y * BlinkSpeed, H.MoveDirection.Z * BlinkSpeed
                )
            end
        end
    end
end
local function InputEndedEvent(Key)
    if not Uis:GetFocusedTextBox() then 
        if Key.KeyCode == Enum.KeyCode[BlinkKey] then 
            KeyHeld = false 
        end
    end
end
local function PrintCommands()
    local String, TotalCommands = "", 0;
    for _, v in next, Commands do 
        if v.Aliases and v.Description then 
            TotalCommands = TotalCommands + 1;
            String = ""..String.."["..tableConcatenate(v.Aliases, ", ").."] - "..v.Description.."\n";
        end
    end
    
end
Uis.InputBegan:Connect(InputBeganEvent)
Uis.InputEnded:Connect(InputEndedEvent)

Client.Chatted:Connect(RunCommand)
