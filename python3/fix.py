def fix(f, a):
    if f(a) == a:
        return a
    else:
        return fix(f, f(a))
        # python 版本的不动点，这玩意和 Y 组合子可能有些关系吧。