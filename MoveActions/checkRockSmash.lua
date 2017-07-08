function rockSmash()
	for i = 1, getTeamSize(), 1 do
		if(hasMove(i, "Rock Smash")) then
			rockSmashPokemon = i
			log("Pokemon with Rock Smash found")
			return i
		end
	end
	fatal("No Pokemon with Rock Smash")
	return 0
end