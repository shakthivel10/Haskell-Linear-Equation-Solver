# Linear-Equation-Solver-Haskell

This is a program to solve a system of linear equations, implemented in the Functional Programming paradigm using Haskell. The program is implemented using the Gaussian elimination algorithm, which is also referred to as row reduction. 

The program takes the co-efficients of the system of linear equations as a 2D list.

Example:
For the following set of equations,

2x+y+z = 15
x+2y+z = 18
3x+y+2z = 23

The input to the function is [[2,1,1,15],[1,2,1,18],[3,1,2,23]]

The output is a 1D list which represents the values of variables, inorder.

>solveSystem [[1,1,1,6],[1,2,1,8],[1,2,3,14]]
[2.0,5.0,6.0]

Hence, for the above set of equations, x = 2, y = 5 and z = 6.