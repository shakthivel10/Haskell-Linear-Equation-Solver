# Linear-Equation-Solver-Haskell

This is a solver for systems of linear equations, implemented in the Functional Programming paradigm using Haskell. The solver is implemented using the Gaussian elimination algorithm, which is also referred to as row reduction. 

The program takes a 2D list, which represents the co-efficients in the system of linear equations as its input. The output is a 1D list which contains the solved values of the variables, in order.

### Examples:              
1. For the following set of equations,

&nbsp;&nbsp;&nbsp;&nbsp;2x+y+z = 15            
&nbsp;&nbsp;&nbsp;&nbsp;x+2y+z = 18               
&nbsp;&nbsp;&nbsp;&nbsp;3x+y+2z = 23              

&nbsp;&nbsp;&nbsp;&nbsp;The input to the function is [[2,1,1,15], [1,2,1,18], [3,1,2,23]]              

&nbsp;&nbsp;&nbsp;&nbsp;The output is a 1D list which represents the values of variables, inorder.                         
```
>solveSystem [[2,1,1,15], [1,2,1,18], [3,1,2,23]] 
[2.0,5.0,6.0]
```
&nbsp;&nbsp;&nbsp;&nbsp;Hence, for the above set of equations x = 2, y = 5 and z = 6                 

2. Similarly, for the following set of equations,              

&nbsp;&nbsp;&nbsp;&nbsp;2w-5x+3.5y+7z = 5          
&nbsp;&nbsp;&nbsp;&nbsp;-2w+5y+12z = -1           
&nbsp;&nbsp;&nbsp;&nbsp;w-2.4x+3y = 7           
&nbsp;&nbsp;&nbsp;&nbsp;5w+2x+3y-3z = -2              

&nbsp;&nbsp;&nbsp;&nbsp;The input to the function is [[2,-5,3.5,7,5], [-2,0,5,12,-1],[1,-2.4,3,0,7],[5,2,3,-3,-2]]                  

```
>solveSystem [[2,-5,3.5,7,5], [-2,0,5,12,-1],[1,-2.4,3,0,7],[5,2,3,-3,-2]]
[-1.0775208140610548,-1.6378353376503239,1.3822386679000924,-0.8388529139685477]
```
&nbsp;&nbsp;&nbsp;&nbsp;For the above set of equations w = -1.0775208140610548, x = -1.6378353376503239,                    
y = 1.3822386679000924 and z = -0.8388529139685477
