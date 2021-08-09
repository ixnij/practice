#!/usr/bin/env lua

function is_even(x) 
	if ( x % 2 == 0) then
		return true
	else
		return false
	end
end

local numbe = 200;

if (is_even(numbe)) then
	print("It's even.")
end
