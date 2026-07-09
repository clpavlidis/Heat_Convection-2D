subroutine Vars_Init(IM,JM,iter,norm,rms,x,y,dmain,d1,d2,d3,d4,T,T_old,Res)

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
integer :: i, j, IM, JM, iter

real(kind = 8) :: norm, rms

real(kind = 8), dimension(IM,JM) :: x, y, &
                                    dmain, d1, d2, d3, d4, &
                                    T, T_old, Res

!*********************************************************! Vars Init
        do i = 1, IM
		do j = 1, JM
                        x(i,j) = 0
                        y(i,j) = 0
                	dmain(i,j) = 0  
                	d1(i,j) = 0
                	d2(i,j) = 0
                	d3(i,j) = 0
                	d4(i,j) = 0
                	T(i,j) = 0
                	T_old(i,j) = 0
                	Res(i,j) = 0
		enddo
        enddo

        iter = 0
        norm = 1
        rms = 1

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine Vars_Init
