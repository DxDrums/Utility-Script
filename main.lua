name = "main"
author = "AimForNuts"
description = [[Headbutt & Dig & Rock Smash Utility Script]]

local pf 				= require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib 				= require "Pathfinder/Lib/lib"
local map = nil

-- Include from Kanto Folder
local KantoHeadbutt 	= require('Kanto/KantoHeadbutt')
local KantoDig			= require('Kanto/KantoDig')
local KantoRockSmash  	= require('Kanto/KantoRockSmash')

-- Include from PathActions Folder
local goToStarterMap 	= require "PathActions/goToStarterMap"
local goToPCAndBuy 		= require "PathActions/goToPCAndBuy"

-- Inlcude from Move Actions Folder
local checkFalseSwipe 	= require "MoveActions/checkFalseSwipe"
local setupMoves 		= require "MoveActions/setupMoves" -- this was an experiment. Will leave it here for the moment
local checkHeadbutt 	= require "MoveActions/checkHeadbutt"
local checkDig 			= require "MoveActions/checkDig"
local checkRockSmash 	= require "MoveActions/checkRockSmash"

-- Include from Item Actions Folder
local checkLeftovers 	= require "ItemActions/checkLeftovers"

local catchNotCaught = true

--Put in the pokemon you want to catch. Leave "" if none. Example: pokemonToCatch = {"Pokemon 1", "Pokemon 2", "Pokemon 3"}
--If you have a pokemonToRole, don't put them here too, unless you want to catch that pokemon with any ability.
local pokemonToCatch = {
"Venipede",
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
"Squirtle"
}

function onStart()

	pf.enableDigPath()

	healCounter = 0
	shinyCounter = 0
	catchCounter = 0
	wildCounter = 0
	headbuttCounter = 0
	digCounter = 0
	rockSmashCounter = 0
	berrieCounter = 0

	-- Set variable to check how many times you've escaped(NO POINT IN CHANGING THIS)
	escapeTime = 0

	-- Initiates both Headbutt and Dig Variables to define which Pokemon to use(NO POINT IN CHANGING THIS)
	headbuttPokemon = 0
	digPokemon = 0
	rockSmashPokemon = 0

	-- Set true if you have False Swipe, it will be setted as your lead Pokemon
	useFalseSwipe = true
	falseSwipeCheck = false -- don't change this value

	-- Set true if you want the bot to pick Berries (NOT SUPPORTED YET)
	pickBerries = false

	-- Set true if you want the bot to headbutt trees
	headbutt_move = true
	headbuttCheck = false -- don't change this value
	headbuttInProgress = true -- don't change this value

	-- Set true if you want the bot to dig holes (NOT SUPPORTED YET)
	dig_move = false
	digCheck = false -- don't change this value
	digFinish = false -- don't change this value

	-- Set true if you want the bot to rock smash stones (NOT SUPPORTED YET)
	rock_smash_move = false
	rockSmashCheck = false -- don't change this value
	rockSmashFinish = false -- don't change this value

	allChecked = false -- don't change this value

	-- Set true if you have Leftovers, it will give it to your lead Pokemon
	useLeftovers = true
	leftoversCheck = false -- don't change this value

	-- Set Variable to buy "typeBalls" - Set to TRUE if you want to buy. For now it only accepts Pokeball and for
	-- me it's not a priority to make it buy other types. It's only here for future work
	buyBall = false
	typeBalls = "Pokeball"
	amountOfBallsToBuy = 150
	-- Set Variable to check if you are at the start(Change this to false if you don't want to go to the first map)
	palletVisited = false

	-- Defines if all tasks are done and then logs out
	theEndVariable = false

	log("**********************************STARTING***********************************")

end

function onPause()
	log("***********************************PAUSED************************************")
	log("healCounter: "..healCounter)
	log("shinyCounter: "..shinyCounter)
	log("catchCounter: "..catchCounter)
	log("wildCounter: "..wildCounter)

end

function onResume()
	log("***********************************RESUMED***********************************")
end

function theEnd()

	theEndVariable = true
	log("*****  / ! \\ Everything done / ! \\ *****")

end

function onPathAction()
	escapeTime = 0

--	moveToCell(14,118)

	if headbutt_move == false and dig_move == false and rock_smash_move == false then
		fatal("*****  / ! \\ You don't have any action selected / ! \\ *****")
		return
	end

	if allChecked == true then

		log(headbuttPokemon)

	end

	if headbutt_move == true then

		if palletVisited == true and headbuttCheck == true and allChecked == true and headbuttInProgress == true then

		headbuttInProgress = StartHeadbuttKanto(5)

		end
		
	else

		headbuttInProgress = false

	end
	
	-- Goes to Pallet Town to start the
	if buyBall == true and allChecked == true then
		if palletVisited == false then
			palletVisited = goToPalletTown()
		end
	end
	
	-- Buy pokebolls before starting
	if buyBall == true and leftoversCheck == true then
		local ballsInIventory = getItemQuantity(typeBalls)
		buyBall = buyBalls(typeBalls, amountOfBallsToBuy, ballsInIventory)
	end

	if allChecked == true and leftoversCheck == false then
		leftoversCheck = leftovers()
	end
	
	-- Verify headbutt, dig and rock smash set up
	if allChecked == false and falseSwipeCheck == true then
	
		if headbutt_move == true and headbuttPokemon == 0 then
			headbuttPokemon = headbutt()
			if headbutPokemon == 0 then
				logout()
			end
			headbuttCheck = true
		end

		if dig_move == true and digPokemon == 0 then
			digPokemon = dig()
			if digPokemon == 0 then
				logout()
			end
			digCheck = true
		end

		if rock_smash_move == true and rockSmashPokemon == 0 then
			rockSmashPokemon = rockSmash()
			log(rockSmashPokemon)
			if rockSmashPokemon == 0 then
				logout()
			end
			rockSmashCheck = true
		end

		allChecked = true
	end
	
	-- Verify false swipe set up
	if useFalseSwipe == true and falseSwipeCheck == false then
		falseSwipeCheck = falseSwipe()
	else
		falseSwipeCheck = true
	end

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

function onBattleAction()
	escapeTime = escapeTime + 1
	log("Times Escaped: "..escapeTime)

	if isWildBattle() and isOpponentShiny() or isOnList(pokemonToCatch) or (catchNotCaught and not isAlreadyCaught()) then
		if(useFalseSwipe) then
			log(getOpponentHealth())
			if(getOpponentHealth() > 1) then
				if useMove("False Swipe") then return end
			else
				if useItem(typeBalls) then return end
			end
		else
			if useItem(typeBall) then return end
		end
	elseif(escapeTime < 3) then
		escapeTime = escapeTime + 1
		log("Going to flee")
		return run() or sendUsablePokemon() 
	else
		return attack()
	end
end