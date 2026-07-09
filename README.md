# Heat Convection

This code represents the solution of the steady-state, heat convection equation (temperature laplacian) in a 2D structured computational grid. The boundary conditions used for the current computational grid are Dirichlet, forming a hot upper boundary, while the bottom and lateral boundaries are cold. The iterative algorithm Gauss-Seidel (G-S) was used, in order to obrain the solution of the problem. For the modeled case study, an appropriate code in FORTRAN90 programming language was developed.

## Prerequisites

- Appropriate FORTRAN90 compiler

- Excellent knowledge in Numerical Methods

- Applied knowledge in Partial Differential Equations (PDEs)

- Applied knowledge in Grid Generation Methods (Grid Metrices, etc.)

## Usage

- The numbering of the nodes of the computational grid, follows the string numbering starting from the left side and from bottom to top (i.e. the 1st node of the computational grid, is placed in the bottom left side)

- The parabolic PDE which describes the problem, is modelled using finite differentiation

- IM & JM are the total nodes on the x- & the y-direction correspondingly

- d1,...,d5, are the diagonals of the 5-node stencil (Penta-diagonal matrix formation)

- A total of seven (7) Fortran90 routines were used to computationally model the curent case

- The user can modify all the routines and even use them as baseline to create anything new

- The compilation and execution of the algorithm can be achieved using only the "Allrun" batch file

- Important to read the "Priority" file in Info/ directory, for the proper compilation of the provided routines  

## Compile-Run

Code compilation and execution:

```bash
./Allrun.sh
```

## Contact Data

- Author: Chariton L. Pavlidis (@clpavlidis), aka "Bogdan"
- Contact: clpavlidis@outlook.com
