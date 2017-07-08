local pf 				= require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib 				= require "Pathfinder/Lib/lib"
local map = nil

function StartHeadbuttKanto (headbuttPokemon, dig_move, rock_smash_move)

	if getMapName() == "Pallet Town" then

  		if isNpcOnCell(28, 22) then
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(28, 22)	--Tree 1
		elseif isNpcOnCell(27, 16) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2nd tree---")
			return talkToNpcOnCell(27, 16)	--Tree 2
		elseif isNpcOnCell(20, 7) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3rd tree---")
			return talkToNpcOnCell(20, 7)	--Tree 3
		elseif isNpcOnCell(8, 5) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 4th tree---")
			return talkToNpcOnCell(8, 5)	--Tree 4
		elseif isNpcOnCell(4, 7) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 5th tree---")
			return talkToNpcOnCell(4, 7)	--Tree 5
		elseif isNpcOnCell(3, 17) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 6th tree---")
			return talkToNpcOnCell(3, 17)	--Tree 6
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 1")
		end

	elseif getMapName() == "Route 1" then

		if isNpcOnCell(28, 43) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(28, 43)	--Tree 1
		elseif isNpcOnCell(9, 37) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(9, 37)	--Tree 2 
		elseif isNpcOnCell(17, 35) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(17, 35)	--Tree 3
		elseif isNpcOnCell(14, 28) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 4th tree---")
			return talkToNpcOnCell(14, 28)	--Tree 4
		elseif isNpcOnCell(13, 23) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 5th tree---")
			return talkToNpcOnCell(13, 23)	--Tree 5
		elseif isNpcOnCell(17, 23) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 6th tree---")
			return talkToNpcOnCell(17, 23)	--Tree 6
		elseif isNpcOnCell(19, 5) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 7th tree---")
			return talkToNpcOnCell(19, 5)	--Tree 7
		elseif isNpcOnCell(6, 7) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 8th tree---")
			return talkToNpcOnCell(6, 7)	--Tree 8
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 1 Stop House")
		end

	elseif getMapName() == "Route 1 Stop House" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian City")

	elseif getMapName() == "Viridian City" then

		if isNpcOnCell(43, 56) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(43, 56)	--Tree 1
		elseif isNpcOnCell(65, 47) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(65, 47)	--Tree 2
		elseif isNpcOnCell(27, 57) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(27, 57)	--Tree 3
		elseif isNpcOnCell(25, 58) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(25, 58)	--Tree 3
		elseif isNpcOnCell(24, 47) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(24, 47)	--Tree 4
		elseif isNpcOnCell(42, 34) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(42, 34)	--Tree 5
		elseif isNpcOnCell(44, 33) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(44, 33)	--Tree 6
		elseif isNpcOnCell(34, 34) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(34, 34)	--Tree 7
		elseif isNpcOnCell(56, 27) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(56, 27)	--Tree 8
		elseif isNpcOnCell(43, 15) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(43, 15)	--Tree 9
		elseif isNpcOnCell(33, 13) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 2th tree---")
			return talkToNpcOnCell(33, 13)	--Tree 10
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2")
		end

	elseif getMapName() == "Route 2" then

		if isNpcOnCell(36, 125) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(36, 125)	--Tree 1
		elseif isNpcOnCell(12,16) then
				pushDialogAnswer(butter)
			log("---Headbutting 2nd tree---")
				return talkToNpcOnCell(12,16)	--Tree 2
		elseif isNpcOnCell(10,9) then
				pushDialogAnswer(butter)
			log("---Headbutting 3rd tree---")
				return talkToNpcOnCell(10,9)	--Tree 3
		elseif isNpcOnCell(14,9) then
				pushDialogAnswer(butter)
			log("---Headbutting 4th tree---")
				return talkToNpcOnCell(14,9)	--Tree 4
		elseif isNpcOnCell(16,9) then
				pushDialogAnswer(butter)
			log("---Headbutting 5th tree---")
				return talkToNpcOnCell(16,9)	--Tree 5
		elseif isNpcOnCell(19,9) then
				pushDialogAnswer(butter)
			log("---Headbutting 6th tree---")
				return talkToNpcOnCell(19,9)	--Tree 6
		elseif isNpcOnCell(21,9) then
				pushDialogAnswer(butter)
			log("---Headbutting 7th tree---")
				return talkToNpcOnCell(21,9)	--Tree 7
		elseif isNpcOnCell(39,54) then
				pushDialogAnswer(butter)
			log("---Headbutting Last tree---")
				return talkToNpcOnCell(39,54)	--Tree 8
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
				return moveToMap("Route 2 Stop") or moveToMap("Pewter City")
		end

	elseif getMapName() == "Route 2 Stop" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian Forest")

	elseif getMapName() == "Viridian Forest" then

		if isNpcOnCell(10,63) then
			pushDialogAnswer(butter)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(10,63)	--Tree 1
		elseif isNpcOnCell(14,61) then
			pushDialogAnswer(butter)
			log("---Headbutting 2nd tree---")
			return talkToNpcOnCell(14,61)	--Tree 2
		elseif isNpcOnCell(15,61) then
			pushDialogAnswer(butter)
			log("---Headbutting 3rd tree---")
			return talkToNpcOnCell(15,61)	--Tree 3
		elseif isNpcOnCell(30,62) then
			pushDialogAnswer(butter)
			log("---Headbutting 4th tree---")
			return talkToNpcOnCell(30,62)	--Tree 4
		elseif isNpcOnCell(35,62) then
			pushDialogAnswer(butter)
			log("---Headbutting 5th tree---")
			return talkToNpcOnCell(35,62)	--Tree 5
		elseif isNpcOnCell(12,43) then
			pushDialogAnswer(butter)
			log("---Headbutting 6th tree---")
			return talkToNpcOnCell(12,43)	--Tree 6
		elseif isNpcOnCell(24,42) then
			pushDialogAnswer(butter)
			log("---Headbutting 7th tree---")
			return talkToNpcOnCell(24,42)	--Tree 7
		elseif isNpcOnCell(27,42) then
			pushDialogAnswer(butter)
			log("----Headbutting 8th tree---")
			return talkToNpcOnCell(27,42)	--Tree 8
		elseif isNpcOnCell(35,41) then
			pushDialogAnswer(butter)
			log("---Headbutting 9th tree---")
			return talkToNpcOnCell(35,41)	--Tree 9
		elseif isNpcOnCell(39,40) then
			pushDialogAnswer(butter)
			log("---Headbutting 10th tree---")
			return talkToNpcOnCell(39,40)	--Tree 10
		elseif isNpcOnCell(58,59) then
			pushDialogAnswer(butter)
			log("---Headbutting 11th tree---")
			return talkToNpcOnCell(58,59)	--Tree 11
		elseif isNpcOnCell(50,35) then
			pushDialogAnswer(butter)
			log("---Headbutting 12th tree---")
			return talkToNpcOnCell(50,35)	--Tree 12
		elseif isNpcOnCell(51,18) then
			pushDialogAnswer(butter)
			log("---Headbutting 13rd tree---")
			return talkToNpcOnCell(51,18)	--Tree 13
		elseif isNpcOnCell(46,18) then
			pushDialogAnswer(butter)
			log("---Headbutting 14th tree---")
			return talkToNpcOnCell(46,18)	--Tree 14
		elseif isNpcOnCell(39,8) then
			pushDialogAnswer(butter)
			log("---Headbutting 15th tree---")
			return talkToNpcOnCell(39,8)	--Tree 15
		elseif isNpcOnCell(46,7) then
			pushDialogAnswer(butter)
			log("---Headbutting 16th tree---")
			return talkToNpcOnCell(46,7)	--Tree 16
		elseif isNpcOnCell(49,7) then
			pushDialogAnswer(butter)
			log("---Headbutting 17th tree---")
			return talkToNpcOnCell(49,7)	--Tree 17
		elseif isNpcOnCell(52,8) then
			pushDialogAnswer(butter)
			log("----Headbutting 18th tree---")
			return talkToNpcOnCell(52,8)	--Tree 18
		elseif isNpcOnCell(22,8) then
			pushDialogAnswer(butter)
			log("---Headbutting 19th tree---")
			return talkToNpcOnCell(22,8)	--Tree 19
		elseif isNpcOnCell(20,8) then
			pushDialogAnswer(butter)
			log("---Headbutting 20th tree---")
			return talkToNpcOnCell(20,8)	--Tree 20
		elseif isNpcOnCell(17,8) then
			pushDialogAnswer(butter)
			log("---Headbutting 21th tree---")
			return talkToNpcOnCell(17,8)	--Tree 21
		elseif isNpcOnCell(27,28) then
			pushDialogAnswer(butter)
			log("---Headbutting 22th tree---")
			return talkToNpcOnCell(27,28)	--Tree 22
		elseif isNpcOnCell(32,32) then
			pushDialogAnswer(butter)
			log("---Headbutting Last tree---")
			return talkToNpcOnCell(32,32)	--Tree 23
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 2 Stop2")
		end

	elseif getMapName() == "Route 2 Stop2" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Route 2")

	elseif getMapName() == "Pewter City" then

		if isNpcOnCell(5,7) then
			pushDialogAnswer(butter)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(5,7)	--Tree 1
		elseif isNpcOnCell(8,7) then
			pushDialogAnswer(butter)
			log("---Headbutting 2nd tree---")
			return talkToNpcOnCell(8,7)	--Tree 2
		elseif isNpcOnCell(11,7) then
			pushDialogAnswer(butter)
			log("---Headbutting 3rd tree---")
			return talkToNpcOnCell(11,7)	--Tree 3
		elseif isNpcOnCell(16,17) then
			pushDialogAnswer(butter)
			log("---Headbutting 4th tree---")
			return talkToNpcOnCell(16,17)	--Tree 4
		elseif isNpcOnCell(19,17) then
			pushDialogAnswer(butter)
			log("---Headbutting 5th tree---")
			return talkToNpcOnCell(19,17)	--Tree 5
		elseif isNpcOnCell(21,6) then
			pushDialogAnswer(butter)
			log("---Headbutting Last tree---")
			return talkToNpcOnCell(21,6)	--Tree 6
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 3")
		end
	
	elseif getMapName() == "Route 3" then
	
		if isNpcOnCell(19,21) then
			pushDialogAnswer(butter)
			log("---Headbutting 1st tree---")
			return talkToNpcOnCell(19,21)	--Tree 1
		elseif isNpcOnCell(29,22) then
			pushDialogAnswer(butter)
			log("---Headbutting 2nd tree---")
			return talkToNpcOnCell(29,22)	--Tree 2
		elseif isNpcOnCell(46,21) then
			pushDialogAnswer(butter)
			log("---Headbutting 3rd tree---")
			return talkToNpcOnCell(46,21)	--Tree 3
		elseif isNpcOnCell(49,18) then
			pushDialogAnswer(butter)
			log("---Headbutting 4th tree---")
			return talkToNpcOnCell(49,18)	--Tree 4
		elseif isNpcOnCell(83,37) then
			pushDialogAnswer(butter)
			log("---Headbutting Last tree---")
			return talkToNpcOnCell(83,37)	--Tree 5
		elseif()
			log("---"..getMapName().." Cleared... Moving to next Map---")
			pf.moveTo(getMapName() , "Route 4")
		end

		elseif getMapName() == "Route 4" then
			fatal("Done test! Please report at PROSHINE FORUM THREAD! Thank you!")
		end
	end
	return true
end