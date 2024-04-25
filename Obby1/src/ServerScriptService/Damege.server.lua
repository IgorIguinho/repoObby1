
--Function to kill a player in any level

local function KillPlayer(part)
	local humano = part.Parent:FindFirstChild("Humanoid")
	if humano  then
		humano.Health = 0

	end

end


--Level yellow
for i,v in pairs(game.Workspace.LevelYellow:GetDescendants()) do
	if v.Name == "DamegeYellow" then
		v.Touched:Connect(KillPlayer)
	end
end

--Level red
for i,v in pairs(game.Workspace.LevelRed:GetDescendants()) do
	if v.Name == "DamegeRed" then
		v.Touched:Connect(KillPlayer)
	end
end


--Function to damege a player in any level
local function Dameged(part)
	local humano = part.Parent:FindFirstChild("Humanoid")
	if humano  then
		humano.Health = humano.Health - 5
		
	end
	
end

--Level green
for i,v in pairs(game.Workspace.LevelGreen:GetDescendants()) do
	if v.Name == "DamegeGreen" then
		v.Touched:Connect(Dameged)
	end
end


--Level blued
for i,v in pairs(game.Workspace.LevelBlue:GetDescendants()) do
	if v.Name == "DamegeBlue" then
		v.Touched:Connect(Dameged)
	end
	
end