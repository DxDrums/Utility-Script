name = "main"
author = "AimForNuts"
description = [[Headbutt & Dig & Rock Smash Utility Script]]


local headbutt_move = false
local dig_move = false
local rock_smash_move = false

local pf = require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib = require "Pathfinder/Lib/lib"
local map = nil

local escapeTime = 0
local palletVisited = false

local StartKantoHeadbutt 	= require('Kanto/Headbutt')
local StartKantoDig			= require('Kanto/Dig')
local StartKantoRockSmash  	= require('Kanto/RockSmash')
local BuyBallsIfMissing  	= require('Balls')

--If you want to catch Pokemon that are not registered as caught in your Pokedex, set true.
local catchNotCaught = true

local headbuttPokemon = 0
local digPokemon = 0

--Put in the pokemon you want to catch. Leave "" if none. Example: pokemonToCatch = {"Pokemon 1", "Pokemon 2", "Pokemon 3"}
--If you have a pokemonToRole, don't put them here too, unless you want to catch that pokemon with any ability.
local pokemonToCatch = {"Venipede",
"Drilbur",
"Roggenrola",
"Skarmory",
"Larvitar",
"Chimchar",
"Trevenant",
"Joltik",
"Scyther",
"Gligar",
"Bulbasaur",
"Charmander",
"Squirtle"}
--Set true if you have False Swipe, it will be setted as your lead Pokemon.--
local useFalseSwipe = true
--Set true if you have Leftovers, it will give it to your lead Pokemon.--
local useLeftovers = true
--Must be filled in. Determines what type of ball to use when catching, and what type to buy. Example: typeBall = "Pokeball"
local healPokemon = true
--Must be filled in. Determines what type of ball to use when catching, and what type to buy. Example: typeBall = "Pokeball"
local typeBall = "Pokeball"

-- Start module
function onStart()

	pf.enableDigPath()

	healCounter = 0
	shinyCounter = 0
	catchCounter = 0
	wildCounter = 0

end

function onPause()
	log("***********************************PAUSED************************************")
end

function onResume()
	log("***********************************RESUMED***********************************")
end

function checkFalseSwipe()
	for i = 1, getTeamSize(), 1 do
		if(hasMove(i, "False Swipe")) then
			if(i ~= 1) then
				swapPokemon(i, 1)
			end
			log("Pokemon with False Swipe found")
			return true
		end
	end
	fatal("No Pokemon with False Swipe")
end

function checkHeadButt()
	for i = 1, getTeamSize(), 1 do
		if(hasMove(i, "Headbutt")) then
			headbuttPokemon = i
			log("Pokemon with Headbutt found")
			return true
		end
	end
	fatal("No Pokemon with Headbutt")
end

function TableLength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

function isOnList(List)
	result = false
	if List[1] ~= "" then
		for i=1, TableLength(List), 1 do
			if getOpponentName() == List[i] then
				result = true
			end
		end
	end
	return result
end

function goHeal()
	location = "Player House Pallet"
	if(getMapName() == location)then
		return talkToNpcOnCell(7, 6)
	else
		return moveToMap(location)

	end
end

-- Module to go to the first map to start harvesting from the very beggining
function goToStarterMap()
	map = getMapName()
	location = "Pallet Town"

	if(stringContains(map, "Seafoam")) then -- work around seafom error exit
		pf.moveTo(map, "Route 20_B")
		return false
	elseif(stringContains(map, "Route 20")) then
		moveToMap("Route 19")
		return false
	else
		pf.moveTo(map, location)
		return true
	end
end


function onPathAction()
	escapeTime = 0
	if useLeftovers then
		if leftovers() then
			return true
		end
	end

	if(useFalseSwipe) then
		checkFalseSwipe()
	end

	if(hasItem(typeBall) and getItemQuantity(typeBall) > 30) then
		if(checkHeadButt()) then
			if(goToStarterMap() and palletVisited == false) then
				palletVisited = true
			end
		end
	else
		log("Going to buy " .. typeBall .. ".")
		buyBalls(typeBall)
	end

	if(healPokemon == true and getTeamSize() ~= getUsablePokemonCount() and palletVisited)then
		goHeal()
	end

	if(headbutt_move) then
		log("Loading Headbutt Script...")
		StartHeadbutt(headbuttPokemon)
	elseif(dig_move) then
		log("Loading Dig Script...")
		StartDig()
	elseif(rock_smash_move) then
		log("Loading Rock Smash Script...")
		StartRockSmash()
	end

end

function onBattleAction()
	escapeTime = escapeTime + 1
	log(escapeTime)

	if isWildBattle() and isOpponentShiny() or isOnList(pokemonToCatch) or (catchNotCaught and not isAlreadyCaught()) then
		if(useFalseSwipe) then
			log(getOpponentHealth())
			if(getOpponentHealth() > 1) then
				if useMove("False Swipe") then return end
			else
				if useItem(typeBall) then return end
			end
		else
			if useItem(typeBall) then return end
		end
	elseif(escapeTime < 3) then
		escapeTime = escapeTime + 1
		return run() or sendUsablePokemon() 
	else
		return attack()
	end
end

function getPokemonIdWithItem(ItemName)	
	for i=1, getTeamSize(), 1 do
		if getPokemonHeldItem(i) == ItemName then
			return i
		end
	end
	return 0
end

function getFirstUsablePokemon()
	for i=1, getTeamSize(), 1 do
		if isPokemonUsable(i) then
			return i
		end
	end
	return 0
end

function leftovers()
	ItemName = "Leftovers"
	local PokemonNeedLeftovers = getFirstUsablePokemon()
	local PokemonWithLeftovers = getPokemonIdWithItem(ItemName)

	if getTeamSize() > 0 then
		if PokemonWithLeftovers > 0 then
			if PokemonNeedLeftovers == PokemonWithLeftovers  then
				return false -- now leftovers is on rightpokemon
			else
				takeItemFromPokemon(PokemonWithLeftovers)
				return true
			end
		else

			if hasItem(ItemName) and PokemonNeedLeftovers ~= 0 then
				giveItemToPokemon(ItemName,PokemonNeedLeftovers)
				return true
			else
				return false
			end
		end
	else
		return false
	end
end