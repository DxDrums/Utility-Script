local pf = require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib = require "Pathfinder/Lib/lib"
local map = nil

function buyBalls(typeBall, amountToBuy, ballsIventory)

	local map = getMapName()

	if(map == "Viridian Pokemart" and not isShopOpen()) then
		talkToNpcOnCell(3, 5)
		return true
		elseif (map == "Viridian Pokemart" and  isShopOpen()) then
			amount = amountToBuy - ballsIventory
			buyItem(typeBall, amount)
			return false
		else
			log("Still out of the pokemart")
			pf.moveTo(map, "Viridian Pokemart")
			return true
	end
end