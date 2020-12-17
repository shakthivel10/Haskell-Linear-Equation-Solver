# Linear-Equation-Solver-Haskell

This is a program to solve a system of linear equations, implemented in the Functional Programming Paradigm using Haskell. The algorithm used is Gaussian elimination, which is also known as row reduction.

The input is a 2D list, consisting of co-efficients.

Example:
For the following set of equations,
x+y+z = 6
x+2y+z = 8
x+2y+3z = 14

The input to the function is [[1,1,1,6],[1,2,1,8],[1,2,3,14]]
The output is a 2D list which represents the values of variables inorder.

>solveSystem [[1,1,1,6],[1,2,1,8],[1,2,3,14]]
[1.0,2.0,3.0]

