local Players, SGui = game:GetService"Players", game:GetService"StarterGui";
local Client, CNew, C3 = Players.LocalPlayer, ColorSequence.new, Color3.fromRGB;
local Commands, Prefix = {}, "/e ";
local BulletColour, TrailTime = CNew(C3(255, 255, 255)), 0.2;
local BulletColourTable = {
    ["black"] = CNew(C3(0, 0, 0));
    ["white"] = CNew(C3(255, 255, 255));
    ["red"] = CNew(C3(255, 0, 0));
    ["green"] = CNew(C3(0, 255, 0));
    ["blue"] = CNew(C3(0, 0, 255));
    ["yellow"] = CNew(C3(255, 255, 0));
    ["pink"] = CNew(C3(255, 20, 147));
    ["purple"] = CNew(C3(128, 0, 128));
}

getgenv().GetInit = function(CName)
    for _, v in next, Commands do
        if table.find(v.Aliases, CName) then
            return v.Function
        end
    end
end
getgenv().RunCommand = function(Cmd)
   Cmd = string.lower(Cmd)
    pcall(function()
        if Cmd:sub(1, #Prefix) == Prefix then
            local args = string.split(Cmd:sub(#Prefix + 1), " ")
            local CmdName = GetInit(table.remove(args, 1))
            if CmdName and args then
                return CmdName(args)
            end
        end
    end)
end

getgenv().Notify = function(title, text, icon, time)
    SGui:SetCore("SendNotification",{
        Title = title;
        Text = text;
        Icon = "rbxassetid://5793181157";
        Duration = time;
    })
end

getgenv().ApplyChanges = function(T)
    if T and T:IsA("Trail") then 
        T.Color = BulletColour
        T.Lifetime = TrailTime
    end 
end
Client.Character.DescendantAdded:Connect(ApplyChanges)
Client.CharacterAdded:Connect(function() 
    Client.Character.DescendantAdded:Connect(ApplyChanges) 
end)


Commands["BulletColour"] = {
    ["Aliases"] = {"bulletcolour", "bc"};
    ["Function"] = function(args)
        if BulletColourTable[tostring(args[1])] then 
            BulletColour = BulletColourTable[tostring(args[1])]
        elseif tonumber(args[1]) then 
            BulletColour = CNew(C3(tonumber(args[1]), tonumber(args[2]), tonumber(args[3])));
        end
    end
}
Commands["BulletTrail"] = {
    ["Aliases"] = {"bullettime", "bt"};
    ["Function"] = function(args)
        if tonumber(args[1]) then 
            TrailTime = tonumber(args[1])
        end
        Notify("zxciaz", "Trail-Time: "..tonumber(args[1]), "", 3)
    end
}
Client.Chatted:Connect(RunCommand)
print([[

The Streets/Prison Bullet Colours - by xaxa/zxciaz/fiviefourteen
----------------------------------------------------------------

Commands (MAKE SURE TO PUT /E BEFORE IT):

[1] /e bulletcolour [bc] <black,white,red,green,yellow,blue,purple,pink>, Sets your Bullet-Colour
[2] /e bullettime [bt] <numberhere>, Sets your Bullet-Trail Lifetime


]])
Notify("zxciaz", "Welcome to TS Bullet Colours V1", "", 3)
wait(1)
Notify("zxciaz", "Press F9 to see Commands", "", 3)
