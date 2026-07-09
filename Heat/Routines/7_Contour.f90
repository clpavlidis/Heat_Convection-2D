subroutine Contour(IM,JM,x,y,T)

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

real(kind = 8), dimension(IM,JM) :: x, y, &
                                    dmain, d1, d2, d3, d4, &
                                    T
                                    
!*********************************************************! Contour Printout
        open (unit = 3, file = "../Results/Contour.dat")

        do i = 1, IM
                do j = 1, JM
                        write(3,400) x(i,j), y(i,j), T(i,j)
                enddo
                        write(3,*)
        enddo

        close (unit = 3)

!*********************************************************! Formats
400     format (G0.4,4x,G0.4,4x,G0.6)


!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine Contour
