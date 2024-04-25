local sound = script.Sound:Clone()
sound.Parent = workspace

local function TouchSound (Character) 
	print("Character added")
	sound:Play() 
	
	print("sound started")
end

game.Players.PlayerAdded:Connect(function(Player) -- Player being added
	print("Plazer added")
	Player.CharacterAdded:Connect(TouchSound)
end)