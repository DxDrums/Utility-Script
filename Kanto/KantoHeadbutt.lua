local pf 				= require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib 				= require "Pathfinder/Lib/lib"
local map = nil

function StartHeadbuttKanto (headbuttPokemon, dig_move, rock_smash_move, pickBerries, counter)

	if getMapName() == "Pallet Town" then
		log("Pallet")

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
			counter[5] = counter[5] + 1
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
			log("Headbutting " .. counter[5] .. "tree on "..getMapName())
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
			counter[5] = counter[5] + 1
			log(headbuttPokemon)
			log(counter[5])
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
			log("Headbutting " .. counter[5] .. "tree on "..getMapName())
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
			counter[5] = counter[5] + 1
			log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
			log("Headbutting " .. counter[5] .. "tree on "..getMapName())
    		pushDialogAnswer(headbuttPokemon)
    		return talkToNpcOnCell(trees[1]["x"], trees[1]["y"])
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2")
		end

	elseif getMapName() == "Route 2" then
		log("Route 2")

		local trees = getActiveHeadbuttTrees()
		
		if isNpcOnCell(36, 125) then
			pushDialogAnswer(headbuttPokemon)
			log("Tree found at 36, 125")			
			log("Headbutting " .. counter[5] .. "tree on "..getMapName())
			return talkToNpcOnCell(36, 125)	--Tree 1
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2 Stop")
		end

	elseif getMapName() == "Route 2 Stop" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian Forest")

	elseif getMapName() == "Viridian Forest" then
		log("Viridian Forest")

		local trees = getActiveHeadbuttTrees()
		
		if not(next(trees) == nil) then
				if isNpcOnCell(trees[1]["x"], trees[1]["y"]) then
				counter[5] = counter[5] + 1
				log("Tree found at " .. trees[1]["x"] .. ", " .. trees[1]["y"])
				log("Headbutting " .. counter[5] .. "tree on "..getMapName())
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

	end
	return true
end