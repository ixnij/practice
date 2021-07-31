#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def binary_search(a, l, r, t):
    while l != r:
        mid = (l + r) / 2
        if a[mid] >= t:
            r = mid
        else:
            l = mid + 1
    return l

