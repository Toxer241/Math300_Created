# -*- coding:utf-8 -*-

# import numpy and matplotlib
import numpy as np
import matplotlib.pyplot as plt


# def the function
def problem2_s(N):
    result = np.zeros(N+1)
    for n in range(1, N+1):
        result[n] = result[n-1] + (-1)**(n+1)/n
    return result


# plot the function
x = np.arange(1, 20001, 1)
y = problem2_s(20000)[1:]
plt.figure()
plt.plot(x, y)
plt.show()
