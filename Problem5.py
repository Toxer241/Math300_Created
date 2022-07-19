# -*- coding:utf-8 -*-

# import sympy and numpy
import sympy as sp

# calculate the derivative
x = sp.symbols('x')
y = x**3 - sp.cos((sp.pi*x)**2)/(2*x**2 + 1) + 11*x**2/3 - 1
print("f\'(x) = ", sp.diff(y, x))
