local trace = setmetatable({}, {
    __index = function(self, args)
        return game.GetService(game, args);
    end
})

local players, runService, replicatedStorage = trace.Players, trace.RunService, trace.ReplicatedStorage;
local host = players.LocalPlayer;

local nameDelay, nameMethod, nameMessage = 0.4, 'Repeat', 'hellokittysouljia';

local Places = {455366377, 15852982099}

function setClan(term)
    local route;

    task.spawn(function()
        if game.PlaceId == Places[1] then
            route = host:WaitForChild'Backpack'
        else
            route = replicatedStorage;
        end
    end)

    route:FindFirstChild'Stank':FireServer('pick',
    {
        Name = '1';
        TextLabel = {Text = term};
    })

end

coroutine.resume(coroutine.create(function()
    while runService.RenderStepped:Wait(nameDelay:number) do
        delay(nameDelay, function(taskWait)
            if typeof(nameDelay) == 'number' and nameMessage then

                if nameMethod == 'Repeat' then
                    (setClan(string.rep('\n', 100 - #nameMessage)..nameMessage), taskWait);

                elseif nameMethod == 'Static' then
                    (setClan(nameMessage), taskWait);

                elseif nameMethod == 'Long' then
                    (setClan(string.rep('\t', 100 - #nameMessage)..nameMessage), taskWait);
                    
                end
            end
        end)
    end 
end))
