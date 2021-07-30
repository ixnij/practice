#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

def get_gcd(a, b):
    if a % b == 0:
        return b
    else:
        return get_gcd(b, a % b)

