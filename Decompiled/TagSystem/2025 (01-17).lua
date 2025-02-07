local v0 = {};
local v1 = require(game.ReplicatedStorage.FastWait);
local v2 = {};
local _ = {};
local v4 = tick();
local v5 = 0;
local v6 = false;
local v7 = {};
local v8 = false;
pcall(function() --[[ Line: 11 ]]
    if game.CoreGui.Name == "52" then
        game.Players.LocalPlayer:Kick("stop injecting bro.");
        game.Workspace:ClearAllChildren();
        while true do

        end;
    end;
    game.Players.LocalPlayer:Kick("stop injecting bro.");
    game.Workspace:ClearAllChildren();
    while true do

    end;
end);
if game.Players.LocalPlayer ~= nil then
    v6 = true;
    v8 = false;
    game.ReplicatedStorage.Remotes.TagReplicate.OnClientEvent:Connect(function(v9, v10) --[[ Line: 27 ]]
        -- upvalues: v2 (ref), v7 (ref)
        if v9 == "new" then
            local v11 = {};
            local _ = tick();
            for _, v14 in pairs(v10) do
                for _, v16 in pairs(v14) do
                    if v16 ~= nil and v16.m ~= nil then
                        if v11[v16.m] == nil and v16 ~= nil and v16.m ~= nil then
                            v11[v16.m] = {};
                        end;
                        v11[v16.m][v16.t] = v16;
                    end;
                end;
            end;
            v2 = v11;
            v7 = {};
        end;
    end);
else
    if _G.ServerItems == nil then
        _G.ServerItems = {};
        coroutine.wrap(function() --[[ Line: 50 ]]
            -- upvalues: v2 (ref)
            while true do
                wait(60);
                for v17, _ in pairs(v2) do
                    if v17 == nil or v17.Parent == nil then
                        v2[v17] = nil;
                    end;
                end;
            end;
        end)();
    end;
    v2 = _G.ServerItems;
    v6 = false;
    v8 = true;
end;
v0.printitems = function() --[[ Line: 69 ]]
    -- upvalues: v2 (ref)
    for _, v20 in pairs(v2) do
        if v20 ~= nil then

        end;
    end;
end;
v0.add = function(v21, v22, v23, v24) --[[ Line: 75 ]]
    -- upvalues: v6 (ref), v4 (ref), v5 (ref), v2 (ref), v8 (ref), v7 (ref), v1 (copy)
    if v6 then
        return;
    else
        if v23 == nil then
            v23 = true;
        end;
        if v4 == tick() then
            v5 = v5 + 1;
        else
            v5 = 0;
        end;
        v4 = tick();
        local v25 = tick() .. v21.Name .. v22 .. v5;
        local v26 = {
            m = v21, 
            n = v22, 
            v = v23, 
            t = v25
        };
        local v27 = {
            v25, 
            v21
        };
        if v2[v21] == nil then
            v2[v21] = {};
        end;
        v2[v21][v25] = v26;
        if v8 then
            v7 = {};
            if v21 ~= nil and v21.Parent == game.Workspace.Live and game.Players:FindFirstChild(v21.Name) then
                local l_FirstChild_0 = game.Players:FindFirstChild(v21.Name);
                local v29 = {
                    [v21] = v2[v21]
                };
                game.ReplicatedStorage.Remotes.TagReplicate:FireClient(l_FirstChild_0, "new", v29);
            end;
        end;
        if v24 then
            coroutine.wrap(function() --[[ Line: 105 ]]
                -- upvalues: v1 (ref), v24 (copy), v2 (ref), v21 (copy), v25 (copy), v7 (ref), v8 (ref)
                v1(v24);
                if v2[v21] then
                    v2[v21][v25] = nil;
                    local v30 = false;
                    for _, _ in pairs(v2[v21]) do
                        v30 = true;
                        break;
                    end;
                    if v30 == false then
                        v2[v21] = nil;
                    end;
                end;
                v7 = {};
                if v8 and v21 ~= nil and v21.Parent == game.Workspace.Live and game.Players:FindFirstChild(v21.Name) then
                    local l_FirstChild_1 = game.Players:FindFirstChild(v21.Name);
                    local v34 = {
                        [v21] = v2[v21]
                    };
                    game.ReplicatedStorage.Remotes.TagReplicate:FireClient(l_FirstChild_1, "new", v34);
                end;
            end)();
        end;
        return v27;
    end;
end;
v0.debris = function(v35, v36) --[[ Line: 131 ]]
    -- upvalues: v2 (ref), v7 (ref), v8 (ref)
    local v37 = v35[1];
    local v38 = v35[2];
    if v2[v38] and v2[v38][v37] then
        coroutine.wrap(function() --[[ Line: 135 ]]
            -- upvalues: v36 (copy), v2 (ref), v38 (copy), v37 (copy), v7 (ref), v8 (ref)
            wait(v36);
            if v2[v38] then
                v2[v38][v37] = nil;
                local v39 = false;
                for _, _ in pairs(v2[v38]) do
                    v39 = true;
                    break;
                end;
                if v39 == false then
                    v2[v38] = nil;
                end;
            end;
            v7 = {};
            if v8 and v38 ~= nil and v38.Parent == game.Workspace.Live and game.Players:FindFirstChild(v38.Name) then
                local l_FirstChild_2 = game.Players:FindFirstChild(v38.Name);
                local v43 = {
                    [v38] = v2[v38]
                };
                game.ReplicatedStorage.Remotes.TagReplicate:FireClient(l_FirstChild_2, "new", v43);
            end;
        end)();
    end;
end;
v0.read = function(v44, v45) --[[ Line: 162 ]]
    -- upvalues: v2 (ref)
    local v46 = false;
    local v47 = nil;
    if v45 == nil then
        local v48 = v44[1];
        local v49 = v44[2];
        if v2[v49] and v2[v49][v48] then
            v46 = true;
            v47 = v2[v49][v48].v;
        end;
    elseif v2[v44] then
        for _, v51 in pairs(v2[v44]) do
            if v51.m == v44 and v51.n == v45 then
                v46 = true;
                v47 = v51.v;
                break;
            end;
        end;
    end;
    if v46 then
        return v47;
    else
        return;
    end;
end;
local function v59(v52, v53) --[[ Line: 191 ]] --[[ Name: has ]]
    -- upvalues: v7 (ref), v2 (ref)
    if v52 == nil or v53 == nil then
        return;
    else
        if v7[v52] ~= nil then
            if v7[v52][v53] == false then
                return false;
            elseif v7[v52][v53] ~= nil then
                return true, v7[v52][v53];
            end;
        end;
        local v54 = false;
        local v55 = nil;
        local v56 = nil;
        if v2[v52] then
            for v57, v58 in pairs(v2[v52]) do
                if v58.m == v52 and v58.n == v53 then
                    v54 = true;
                    v55 = {
                        v57, 
                        v52
                    };
                    v56 = v58.v;
                    if v7[v52] == nil then
                        v7[v52] = {};
                    end;
                    v7[v52][v53] = v55;
                    break;
                end;
            end;
        end;
        if v54 then
            return v54, v55;
        elseif v54 == false then
            if v7[v52] == nil then
                v7[v52] = {};
            end;
            v7[v52][v53] = false;
            return false;
        else
            return;
        end;
    end;
end;
v0.has = function(v60, v61) --[[ Line: 233 ]]
    -- upvalues: v59 (copy)
    local v62, v63 = v59(v60, v61);
    return v62, v63;
end;
v0.readout = function(_, _) --[[ Line: 238 ]]

end;
v0.destroy = function(v66, v67) --[[ Line: 244 ]]
    -- upvalues: v2 (ref), v7 (ref), v8 (ref), v59 (copy)
    if v66 == nil then
        return;
    elseif v67 == nil then
        local v68 = v66[1];
        local v69 = v66[2];
        if v2[v69] and v2[v69][v68] and v2[v69] then
            v2[v69][v68] = nil;
            local v70 = false;
            for _, _ in pairs(v2[v69]) do
                v70 = true;
                break;
            end;
            if v70 == false then
                v2[v69] = nil;
            end;
            v7 = {};
            if v8 and v69 ~= nil and v69.Parent == game.Workspace.Live and game.Players:FindFirstChild(v69.Name) then
                local l_FirstChild_3 = game.Players:FindFirstChild(v69.Name);
                local v74 = {
                    [v69] = v2[v69]
                };
                game.ReplicatedStorage.Remotes.TagReplicate:FireClient(l_FirstChild_3, "new", v74);
            end;
        end;
        return true;
    else
        local v75, v76 = v59(v66, v67);
        if v75 then
            local v77 = v76[1];
            local v78 = v76[2];
            if v2[v78] and v2[v78][v77] and v2[v78] then
                v2[v78][v77] = nil;
                local v79 = false;
                for _, _ in pairs(v2[v78]) do
                    v79 = true;
                    break;
                end;
                if v79 == false then
                    v2[v78] = nil;
                end;
                v7 = {};
                if v8 and v78 ~= nil and v78.Parent == game.Workspace.Live and game.Players:FindFirstChild(v78.Name) then
                    local l_FirstChild_4 = game.Players:FindFirstChild(v78.Name);
                    local v83 = {
                        [v78] = v2[v78]
                    };
                    game.ReplicatedStorage.Remotes.TagReplicate:FireClient(l_FirstChild_4, "new", v83);
                end;
            end;
        end;
        return false;
    end;
end;
v0.changevalue = function(_, _, _) --[[ Line: 313 ]]

end;
v0.changeparent = function(_, _, _) --[[ Line: 360 ]]

end;
return v0;
