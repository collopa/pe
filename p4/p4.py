def ans():
    maxpal = 0
    for i in range(999, 100, -1):
        for j in range(999, 100, -1):
            if str(i*j) == str(i*j)[::-1] and i*j > maxpal:
                maxpal = i*j
    return maxpal
