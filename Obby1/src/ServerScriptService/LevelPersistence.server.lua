--services
local Players = game:GetService("Players")
local DataStorageService = game:GetService("DataStoreService")
local LevelStore = DataStorageService:GetDataStore("Level")

--Level's
local Teams = game:GetService("Teams")
local white = Teams.White
local blue = Teams.Blue
local green= Teams.Green
local yellow = Teams.Yellow
local orange = Teams.Orange
local red = Teams.Red
local black = Teams.Black

--Varial userId
_G.userId = 0

local function AddPlayer(player)
	
	_G.userId = player.UserId
	
	
	
	--check the level
	local Level = LevelStore:GetAsync(_G.userId)
	
	--set level
	if Level == "white" or Level == nil  then
		player.Team = white
	elseif (Level == "blue" ) then
		player.Team = blue
	elseif (Level == "green" ) then
		player.Team = green	
	elseif (Level == "yellow" ) then
		player.Team = yellow
	elseif (Level == "orange" ) then
		player.Team = orange
	elseif (Level == "red" ) then
		player.Team = red	
	elseif (Level == "black" ) then
		player.Team = black
	end
	
	-- load the player

	player.CharacterAdded:Wait()
	player:LoadCharacter()
	
end

--conect event to funcition
Players.PlayerAdded:Connect(AddPlayer)

--function called by level change
function playerAdded(level)
	
	
	
	if level.Name == "White" then	
		LevelStore:SetAsync(_G.userId,"white")	
	elseif (level.Name == "Blue") then
		LevelStore:SetAsync(_G.userId,"blue")	
	elseif (level.Name == "Green") then
		LevelStore:SetAsync(_G.userId,"green")	
	elseif (level.Name == "Yellow") then
		LevelStore:SetAsync(_G.userId,"yellow")	
	elseif (level.Name == "Orange") then
		LevelStore:SetAsync(_G.userId,"orange")	
	elseif (level.Name == "Red") then
		LevelStore:SetAsync(_G.userId,"red")	
	elseif (level.Name == "Black") then
		LevelStore:SetAsync(_G.userId,"black")
	end	
end

--test
Players.PlayerAdded:Connect(playerAdded)


--funçoes disparadas nas mudanças de times
white.PlayerAdded:Connect (function(player)
	playerAdded(white)
end)
blue.PlayerAdded:Connect (function(player)
	playerAdded(blue)
end)
green.PlayerAdded:Connect (function(player)
	playerAdded(green)
end)
yellow.PlayerAdded:Connect (function(player)
	playerAdded(yellow)
end)
orange.PlayerAdded:Connect (function(player)
	playerAdded(orange)
end)
red.PlayerAdded:Connect (function(player)
	playerAdded(red)
end)
black.PlayerAdded:Connect (function(player)
	playerAdded(black)
end)






