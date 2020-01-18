import numpy as np


def fib(n):
    if n==1:
        return 1
    elif n == 2: 
        return 2
    else:
        return fib(n-1) + fib(n-2)

def fastFib(n):
    old, new = 1, 1
    if n == 1:
        return 1
    for i in range(n-1):
        old, new = new, old + new
    return new

def evenList(numL):
    numL = np.array(numL)
    return 1 - numL%2

def ans():
    fibL = []
    n = 1
    while fib(n) < 4*10**6:
        fibL += [fib(n)]
        n += 1
    fibL = np.array(fibL)
    ev_fibL = evenList(fibL)
    answer = np.dot(fibL, ev_fibL)
    return answer 

def fast_ans():
    fibL = []
    n = 1
    while fastFib(n) < 4*10**6:
        fibL += [fastFib(n)]
        n += 1
    fibL = np.array(fibL)
    ev_fibL = evenList(fibL)
    answer = np.dot(fibL, ev_fibL)
    return answer 