program Heat

        implicit none

!*********************************************************! Personal Data
! Author:       Chariton L. Pavlidis
! Company:      MM Group Consulting Engineers
! Department:   Mechanical & Electrical Engineering
! Email:        clpavlidis@outlook.com
! Tel:          (+30) 28210 51522
! Ext:          405
!*********************************************************!

!*********************************************************! Vars Def
integer, parameter :: IM = 50, JM = 50, kmax = IM*JM, &
                      tot_it = 2000

integer :: i, j, iter, last_iter

real(kind = 8), parameter :: Lx = 1, Ly = 1, &
                             dx = Lx/(IM-1), dy = Ly/(JM-1), &
                             tol = 1e-6, w = 1.8

real(kind = 8) :: norm, rms

real(kind = 8), dimension(IM,JM) :: x, y, &
                                    dmain, d1, d2, d3, d4, &
                                    T, T_old, Res

!*********************************************************! Vars Init Subroutine
        call Vars_Init(IM,JM,iter,norm,rms,x,y,dmain,d1,d2,d3,d4,T,T_old,Res)

!*********************************************************! Results Directory
        call system('mkdir ../Results')

!*********************************************************! Grid Points Subroutine
        call Grid_Points (IM,JM,x,y,dx,dy)

!*********************************************************! BCs Subroutine
        call BCs(IM,JM,T,T_old)

!*********************************************************! Diagonals Subroutine
        call Diagonals(IM,JM,dx,dy,dmain,d1,d2,d3,d4)
        
!*********************************************************! G-S Subroutine
        call GaussSeidel(IM,JM,kmax,tot_it,iter,last_iter,tol,w,norm,rms,dmain,d1,d2,d3,d4,T,T_old,Res)

!*********************************************************! Contour Subroutine
        call Contour(IM,JM,x,y,T)

!*********************************************************!
        print*, ("")
        print*, "End of code!"
        print*, ("")

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end program Heat
