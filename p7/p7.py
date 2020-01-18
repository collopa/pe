import numpy as np


def is_prime(n):
    if n%2==0:
        return False
    for i in range(3, int(np.sqrt(n))+1, 2):
        if n%i==0:
            return False
    return True


def nthprime(primeN):
    pnum = 2
    p = 3
    while pnum < primeN:
        p += 2 
        if is_prime(p):
            pnum += 1
    return p

def answer():
    return nthprime(10001)


