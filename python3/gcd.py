#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def get_gcd(a: int, b: int) -> int:
    if a % b == 0:
        return b
    else:
        return get_gcd(b, a % b)

