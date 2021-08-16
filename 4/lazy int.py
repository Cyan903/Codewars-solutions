# https://www.codewars.com/kata/59b7b43b4f98a81b2d00000a

import inspect as pc

class LazyInit(type):
    def __new__(m, cname, ss, dicts):
        dicts["__init__"] = dec(dicts["__init__"])
        return type.__new__(m, cname, ss, dicts)

def dec(n):
    def wr(*args):
        nms, v = pc.getargspec(n)[0], [x for x in args[1:]]
        [args[0].__setattr__(i, v.pop(0)) for i in nms[1:]]
    return wr