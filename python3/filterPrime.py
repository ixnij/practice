#!/usr/bin/env python3

num : int = input("PROMPT> ")
if num < 2:
    print("Not.")
else:
    m = True
    for i in range(2, num):
        if num % i == 0:
            m = False
            break
    if m:
        print("It is.")
    else:
        print("Not.")
