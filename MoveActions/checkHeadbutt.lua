function headbutt(headbuttPokemon)
	for i = 1, getTeamSize(), 1 do
		if(hasMove(i, "Headbutt")) then
			headbuttPokemon = i
			log("Pokemon with Headbutt found")
			return i
		end
	end
	fatal("No Pokemon with Headbutt")
	return 0
end