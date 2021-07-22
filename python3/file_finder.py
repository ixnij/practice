#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys # To get the shell command arguments.
import getopt

def fdr(start, kw):
    try:
        pwd = os.path.abspath(start) 
        for i in os.listdir(start):
            i = os.path.join(start, i)
            if os.path.isdir(i):
                fdr(i, kw)
            elif os.path.split(i)[1] == kw:
                print(i)
    except Exception as ecp:
        print("Error")
        raise ecp

def main(argv):
    startDir = "."
    keyword = "README.md"
    try:
        opts, args = getopt.getopt(argv, "s:t:", ["start=", "target="])

    except:
        print("Error")

    for opt, arg in opts:
        if opt in ["-s", "--start"]:
            startDir = arg
        elif opt in ["-t", "--target"]:
            keyword = arg
    fdr(startDir, keyword)        

if __name__ == "__main__":
    main(sys.argv[1:])
