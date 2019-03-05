import math


def f(r1, r2, r3, c1, c2, msg=''):
    b = r2/(r2+r3)
    bb = (1+b)/(1-b)
    bbl = math.log(bb)
    fr = 1/(2*r1*(c1+c2)*bbl)
    print("{} f(r={},r2={},r3={},c1={}, c2={})={} KГц".
          format(msg, r1, r2, r3, c1, c2, fr/1e3))
    return fr


def testMy():
    r1 = 768
    # r2 = 12e3
    r2 = 11e3
    r3 = 100e3
    # c1 = 22e-9
    c1 = 0
    f(r1, r2, r3, c1, 1000e-6, "My")
    f(r1, r2, r3, c1, 100e-6, "My")
    f(r1, r2, r3, c1, 10e-6, "My")
    f(r1, r2, r3, c1, 1e-6, "My")
    f(r1, r2, r3, c1, 0.1e-6, "My")


def main():
    testMy()


main()
