function dig()
	for i = 1, getTeamSize(), 1 do
		if(hasMove(i, "Dig")) then
			digPokemon = i
			log("Pokemon with Dig found")
			return i
		end
	end
	fatal("No Pokemon with Dig")
	return 0
end