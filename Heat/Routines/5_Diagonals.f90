subroutine Diagonals(IM,JM,dx,dy,dmain,d1,d2,d3,d4)

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
integer :: i, j, IM, JM

real(kind = 8) :: dx, dy

real(kind = 8), dimension(IM,JM) :: dmain, d1, d2, d3, d4
                                    
!*********************************************************! Ds Coeffs (Internal)
        do i = 2, (IM-1)
                do j = 2, (JM-1)
                        dmain(i,j) = (2/(dx**2)) + (2/(dy**2))
                        d1(i,j) = - 1/(dy**2)
                        d2(i,j) = - 1/(dx**2)
                        d3(i,j) = - 1/(dy**2)
                        d4(i,j) = - 1/(dx**2)
                enddo
        enddo

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine Diagonals
