if not getgenv().CoryuFreeze then
	getgenv().CoryuFreeze = true
	getgenv().Players = game:GetService'Players'
	getgenv().Host = Players.LocalPlayer
	getgenv().UserInput = game:GetService'UserInputService'
	getgenv().RunService = game:GetService'RunService'
	getgenv().StarterGui = game:GetService'StarterGui'

	local Settings = {
		['Booleans'] = {
			Freeze = false;
		};
		['Hotkeys'] = {
			Toggle = 'O';
		};
	}

	local function AddNotification(Title, Text)
		StarterGui:SetCore('SendNotification', {Title = Title; Text = Text})
	end

	RunService.Stepped:Connect(function()
		if Host and Host.Character then
			if Host.Character:FindFirstChild'Torso' then
				if Settings['Booleans'].Freeze then
					task.wait(math.random(0.1,2))
					Host.Character:FindFirstChild'Torso'.Anchored = true
					task.wait(math.random(0.1,2))
					Host.Character:FindFirstChild'Torso'.Anchored = false
				elseif not Settings['Booleans'].Freeze then
					Host.Character:FindFirstChild'Torso'.Anchored = false
				end
			elseif Host.Character:FindFirstChild'UpperTorso' then
				if Settings['Booleans'].Freeze then
					task.wait(math.random(0.1,2))
					Host.Character:FindFirstChild'UpperTorso'.Anchored = true
					task.wait(math.random(0.1,2))
					Host.Character:FindFirstChild'UpperTorso'.Anchored = false
				elseif not Settings['Booleans'].Freeze then
					Host.Character:FindFirstChild'UpperTorso'.Anchored = false
				end
			end
		end
	end)

	UserInput.InputBegan:Connect(function(Array)
		if Array.KeyCode == Enum.KeyCode[Settings['Hotkeys'].Toggle] then
			Settings['Booleans'].Freeze = not Settings['Booleans'].Freeze
			AddNotification('Coryu Freeze', 'Freeze is now '..tostring(Settings['Booleans'].Freeze))
		end
	end)

	AddNotification('Coryu Freeze', 'Press O to turn freeze off and on!')
end
