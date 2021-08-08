#!/usr/bin/env lua

function f(x) 
	return x * 2
end

for i = 1, f(20) do 
	print(i)
end
