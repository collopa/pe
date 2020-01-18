import numpy as np

def is_prime(n):
    if n%2==0:
        return False
    for i in range(3, int(np.sqrt(n))+1, 2):
        if n%i==0:
            return False
    return True


def big_pfactor(N):
    bf = 1
    for n in range(3, int(np.sqrt(N)) + 1, 2):
        if N%n==0 and is_prime(n):
            bf = n
    return bf


def ans():
    return big_pfactor(600851475143)