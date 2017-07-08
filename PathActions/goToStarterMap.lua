local pf = require "Pathfinder/MoveToApp" -- requesting table with methods
local Lib = require "Pathfinder/Lib/lib"
local map = nil

function goToPalletTown()
	local map = getMapName()
	local location = "Pallet Town"

	if(stringContains(map, "Seafoam")) then -- work around seafom error exit
		pf.moveTo(map, "Route 20_B")
		return false
	elseif(stringContains(map, "Route 20")) then
		moveToMap("Route 19")
		return false
	elseif(stringContains(map, "Pallet Town")) then
		return true
	else
		pf.moveTo(map, location)
		return false
	end
end