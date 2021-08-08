#!/usr/bin/env lua

-- This is a comment.
--

a = 45

repeat
	print(a)
	a = a - 1
until(a == 0)

-- zsh:
-- lua ${ThisFile} | wc -l 
-- => 45
