function falseSwipe()
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