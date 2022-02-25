#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os

def fdr(start: str) -> str:
    try:
        pwd = os.path.abspath(start) 
        for i in os.listdir(start):
            i = os.path.join(start, i)
            if os.path.isdir(i):
                fdr(i)
            print(i)
    except Exception as ecp:
        print("Error")
        raise ecp

if __name__ == "__main__":
    fdr("/")
else:
    fdr("/")
