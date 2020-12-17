# Linear-Equation-Solver-Haskell

This is a program to solve a system of linear equations, implemented in the Functional Programming paradigm using Haskell. The program is implemented using the Gaussian elimination algorithm, which is also referred to as row reduction. 

The program takes the co-efficients of the system of linear equations as a 2D list.

Examples:
For the following set of equations,

2x+y+z = 15
x+2y+z = 18
3x+y+2z = 23

The input to the function is [[2,1,1,15], [1,2,1,18], [3,1,2,23]]

The output is a 1D list which represents the values of variables, inorder.
```
>solveSystem [[1,1,1,6], [1,2,1,8], [1,2,3,14]]
[2.0,5.0,6.0]
```
For the above set of equations x = 2, y = 5 and z = 6

For the following set of equations,

2w-5x+3.5y+7z = 5
-2w+5y+12z = -1
w-2.4x+3y = 7
5w+2x+3y-3z = -2

The input to the function is [[2,-5,3.5,7,5], [-2,0,5,12,-1],[1,-2.4,3,0,7],[5,2,3,-3,-2]]

```
>solveSystem [[2,-5,3.5,7,5], [-2,0,5,12,-1],[1,-2.4,3,0,7],[5,2,3,-3,-2]]
[-1.0775208140610548,-1.6378353376503239,1.3822386679000924,-0.8388529139685477]
```
For the above set of equations w = -1.0775208140610548, x = -1.6378353376503239, y = 1.3822386679000924 and z = -0.8388529139685477