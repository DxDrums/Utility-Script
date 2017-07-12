local pf 				= require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib 				= require "Pathfinder/Lib/lib"
local map = nil

function StartHeadbuttKanto (headbuttPokemon, dig_move, rock_smash_move, pickBerries)

	if getMapName() == "Pallet Town" then
		log("Pallet")

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 1")
		end


	elseif getMapName() == "Route 1" then
		log("Route 1")

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 1 Stop House")
		end

	elseif getMapName() == "Route 1 Stop House" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian City")

	elseif getMapName() == "Viridian City" then
		log("Viridian City")

		local trees = getActiveHeadbuttTrees()

		if not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2")
		end

	elseif getMapName() == "Route 2" then

		local trees = getActiveHeadbuttTrees()
		
		if isNpcOnCell(36, 125) then
			pushDialogAnswer(headbuttPokemon)
			log("Tree found at 36, 125")			
			return talkToNpcOnCell(36, 125)	--Tree 1
		elseif getPlayerY() > 50 then
			log("---"..getMapName().." 1st Part Cleared... Moving to next Map---")
			moveToMap("Route 2 Stop")
		elseif not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
			log(headbuttPokemon)
   			pushDialogAnswer(headbuttPokemon)
   			return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
    	else
			log("---"..getMapName().." 2nd Part Cleared... Moving to next Map---")
			moveToMap("Pewter City")
		end

	elseif getMapName() == "Route 2 Stop" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian Forest")

	elseif getMapName() == "Viridian Forest" then
		log("Viridian Forest")

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			if isNpcOnCell(trees[1]["x"], trees[1]["y"]) then
				log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    			pushDialogAnswer(headbuttPokemon)
    			return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
    		end
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2 Stop2")
		end

	elseif getMapName() == "Route 2 Stop2" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Route 2")

	elseif getMapName() == "Pewter City" then

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 3")
		end

	elseif getMapName() == "Route 3" then

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Mt. Moon 1F")
		end

	elseif getMapName() == "Mt. Moon 1F" then

		log("Dig Not Support Yet")
		log("---"..getMapName().." You are on a Cave...Nothing to do here...Moving to next Map---")
		moveToCell(21,20)

	elseif getMapName() == "Mt. Moon B1F" then

		log("Dig Not Support Yet")
		log("---"..getMapName().." You are on a Cave...Nothing to do here...Moving to next Map---")
		moveToMap("Mt. Moon B2F")

	end

	return true

end