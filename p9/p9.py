def answer():
    for i in range(1,1001):
        x = float(i)
        y = (1000*(x - 500)/(x-1000))
        z = (500000 - 1000*x + x**2)/(1000-x)
        if y == int(y) and z == int(z) and x*y*z >0:
            return int(x*y*z)
