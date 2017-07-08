-- Not Used
local checkHeadbutt = require "MoveActions/checkHeadbutt"
local checkDig = require "MoveActions/checkDig"
local checkRockSmash = require "MoveActions/checkRockSmash"

function verifyAllSet(headbuttCheck, headbutt_move, digCheck, dig_move, rockSmashCheck, rock_smash_move)

	if headbutt_move == true then
		headbuttPokemon = headbutt()
		if headbutPokemon == 0 then
			logout()
		end
	end

	if dig_move == true then
		digPokemon = dig()
		if digPokemon == 0 then
			logout()
		end
	end

	if rock_smash_move == true then
		rockSmashPokemon = rockSmash()
		if rockSmashPokemon == 0 then
			logout()
		end
	end

	return true

end
