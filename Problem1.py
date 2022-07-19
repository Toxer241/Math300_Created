# -*- coding:utf-8 -*-

# import scipy and numpy
from scipy import linalg
import numpy as np

# def the equation
A = np.array([
    [1, 2],
    [3, 4]
])
b = np.array([5, 6])

# solve the equation
x = linalg.solve(A, b)
print("The solution is x = ", x, "\n")
