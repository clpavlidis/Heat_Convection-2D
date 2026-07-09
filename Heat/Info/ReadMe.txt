Windows Compilation & Run
-------------------------

(1) gfortran .\1_Heat.f90 .\2_Vars_Init.f90 .\3_Grid_Points.f90 .\4_BCs.f90 .\5_Diagonals.f90 .\6_GaussSeidel.f90 .\7_Contour.f90 -o .\Heat.exe
(2) .\Heat.exe

Linux Compilation & Run
-------------------------

(1) gfortran 1_Heat.f90 2_Vars_Init.f90 3_Grid_Points.f90 4_BCs.f90 5_Diagonals.f90 6_GaussSeidel.f90 7_Contour.f90 -o ./Heat.sh
(2) chmod +x ./Heat.sh
(3) ./Heat.sh


or

Linux Compilation & Run
-------------------------

(1 chmod +x ./AllRun.sh
(2 ./AllRun.sh