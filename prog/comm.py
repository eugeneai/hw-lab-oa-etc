import serial
ser = serial.Serial('/dev/ttyACM0', 9600)


def get_cps(line):
    CPS, val = line.strip().split(":")
    assert CPS == "CPS", "protocol error"
    val = int(val)
    return val


def get_period(line):
    return 1./get_cps(line)


def m1(t):
    c = (3e-9)*t-(3.575e-7)
    return c - 22e-9


def m2(t):
    c = (3.209e-9)*t - (9.980e-15)*t*t + (2.806e-20)*t*t*t - (3.365e-7)
    return c - 22e-9


def m3(t):
    # c = t*2.998e-09
    # c = t*1.306e-09
    # c = t*2.907e-3
    # c = 2.907e-3*t-3.768e-9
    c = 2.9e-3*t-9.919e-8
    return c


while True:
    line = ser.readline().decode('utf-8', errors="ignore")
    # line = ser.readline().decode("ASCII")
    # print(line, end='')
    try:
        t = get_period(line)
        print("Period = {} uS".format(t*1e6))
        # print("linear = {} nF".format(m1(t)*1e9))
        # print("polyno = {} nF".format(m2(t)*1e9))
        print()
        c = m3(t)
        print("linea0 = {} nF {} uF".format(c*1e9, c*1e6))

    except ZeroDivisionError:
        print("Short circuit!")
    except AssertionError:
        print("Protocol error!")
