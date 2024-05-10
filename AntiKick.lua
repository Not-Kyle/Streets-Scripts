--Creds (https://github.com/Direnta/RBLXAntiKick)
if getrawmetatable then
	function formatargs(getArgs,v)
		if #getArgs == 0 then 
			return "" 
		end
		
		local collectArgs = {}
		for k,v in next,getArgs do
			local argument = ""
			if type(v) == "string" then
				argument = "\""..v.."\""
			elseif type(v) == "table" then
				argument = "{" .. formatargs(v,true) .. "}"
			else
				argument = tostring(v)
			end
			if v and type(k) ~= "number" then
				table.insert(collectArgs,k.."="..argument)
			else
				table.insert(collectArgs,argument)
			end
		end
		return table.concat(collectArgs, ", ")
	end
	
	kicknum = 0
	local game_meta = getrawmetatable(game)
	local game_namecall = game_meta.__namecall
	local game_index = game_meta.__index
	local w = (setreadonly or fullaccess or make_writeable)
	pcall(w, game_meta, false)
	game_meta.__namecall = function(out, ...)
		local args = {...}
		local Method = args[#args]
		args[#args] = nil
		
		if Method == "Kick" and out == LP then
			kicknum = kicknum + 1
			warn("Blocked client-kick attempt "..kicknum)
			return
		end
		
		if antiremotes then
			if Method == "FireServer" or Method == "InvokeServer" then
				if out.Name ~= "CharacterSoundEvent" and out.Name ~= "SayMessageRequest" and out.Name ~= "AddCharacterLoadedEvent" and out.Name ~= "RemoveCharacterEvent" and out.Name ~= "DefaultServerSoundEvent" and out.Parent ~= "DefaultChatSystemChatEvents" then
					warn("Blocked remote: "..out.Name.." // Method: "..Method)
					return
				end
			end
		else
			if Method == "FireServer" or Method == "InvokeServer" then
				for i,noremote in pairs(blockedremotes) do
					if out.Name == noremote and out.Name ~= "SayMessageRequest" then
						warn("Blocked remote: "..out.Name.." // Method: "..Method)
						return
					end
				end
			end
		end
		
		if spyingremotes then
			if Method == "FireServer" or Method == "InvokeServer" then
				if out.Name ~= "CharacterSoundEvent" and out.Name ~= "AddCharacterLoadedEvent" and out.Name ~= "RemoveCharacterEvent" and out.Name ~= "DefaultServerSoundEvent" and out.Name ~= "SayMessageRequest" then
					local arguments = {}
					for i = 1,#args do
						arguments[i] = args[i]
					end
					local getScript = getfenv(2).script
					if getScript == nil then
						getScript = "??? (Not Found) ???"
					end
					warn("<> <> <> A "..out.ClassName.." has been fired! How to fire:\ngame."..out:GetFullName()..":"..Method.."("..formatargs(arguments)..")\n\nFired from script: ".. tostring(getScript:GetFullName()))
				end
			end
		end
		
		return game_namecall(out, ...)
	end
end
