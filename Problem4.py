# -*- coding:utf-8 -*-

# import numpy and matplotlib
import numpy as np
import matplotlib.pyplot as plt


# def the midpoint function
def midpoint(f, a, b, n):
    result = 0
    h = (b-a)/n
    x = np.linspace(a, b, n+1)
    x_mid = (x[:n] + x[1:])/2
    vect_f = np.vectorize(f)
    return vect_f(x_mid).sum() * h


# def f = x^2
def f(x):
    return x**2


# vectorize the function
vect_midpoint = np.vectorize(midpoint)

# plot the midpoint function with respect to variable b when n = 10
X = np.arange(0, 1.01, 0.01)
Y = vect_midpoint(f, 0, X, 10)
Z = abs(X**3/3 - Y)
plt.figure()
plt.plot(X, Y)
plt.plot(X, Z)
legend = np.array(['midpoint plot', 'error'])
plt.legend(legend)
plt.show()

# find the maximum error
print("The maximum error is ", Z.max())
