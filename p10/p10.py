import numpy as np

def is_prime(n):
    if n%2==0:
        return False
    for i in range(3, int(np.sqrt(n))+1, 2):
        if n%i==0:
            return False
    return True

def answer():
    ptot = 2 
    for i in range(3, 2000000):
        if is_prime(i):
            ptot += i 

    return ptot  