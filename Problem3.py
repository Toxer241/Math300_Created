# -*- coding:utf-8 -*-

# import numpy and matplotlib
import numpy as np
import matplotlib.pyplot as plt


# def the function
def problem3_s(x, N):
    result = 0
    for n in range(1, N+1):
        result = result + x**n/n
    return result


# vectorize the function
vect_problem3_s = np.vectorize(problem3_s)

# plot the function for x in [-1,1] and N = 10000
X = np.arange(-1, 1.01, 0.01)
Y = vect_problem3_s(X, 10000)
plt.figure()
plt.plot(X, Y)
plt.show()
