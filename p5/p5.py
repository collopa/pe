import numpy as np

def answer():
    v = np.arange(1,101)
    return np.sum(v)**2 - np.dot(v,v)
