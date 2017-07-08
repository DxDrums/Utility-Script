function StartHeadbutt(headbuttPokemon)

	if getMapName() == "Pallet Town" then

		log(headbuttPokemon)
		log(getPokemonById(headbuttPokemon))

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

		log(headbuttPokemon)
		log(getPokemonById(headbuttPokemon))

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
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(14, 28)	--Tree 4
		elseif isNpcOnCell(13, 23) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(13, 23)	--Tree 5
		elseif isNpcOnCell(17, 23) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(17, 23)	--Tree 6
		elseif isNpcOnCell(19, 5) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(19, 5)	--Tree 7
		elseif isNpcOnCell(6, 7) then
			pushDialogAnswer(headbuttPokemon)
			log("---Headbutting 3th tree---")
			return talkToNpcOnCell(6, 7)	--Tree 8
		else
			log("---"..getMapName().." Cleared... Moving to next Map---")
			moveToMap("Route 1 Stop House")
		end

	elseif getMapName() == "Route 1 Stop House" then

		log("---"..getMapName().." Just a link map---")
		moveToMap("Viridian City")
	
	elseif getMapName() == "Viridian City" then

	end
end