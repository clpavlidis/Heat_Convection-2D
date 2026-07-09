subroutine Grid_Points (IM,JM,x,y,dx,dy)

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

real(kind = 8), dimension(IM,JM) :: x, y

!*********************************************************! Grid Points
        do i = 2, IM
                do j = 2, JM
                        x(i,1) = x((i-1),1) + dx        ! x of bottom line
                        y(i,1) = 0                      ! y of bottom line
                        x(1,j) = 0                      ! x of left boundary
                        y(1,j) = y(1, (j-1)) + dy       ! y of left boundary
                        x(i,j) = x(i-1,j) + dx
                        y(i,j) = y(i,j-1) + dy
                enddo
        enddo

!*********************************************************! Points Printout
        open (unit = 1, file = "../Results/Points.dat")

        do i = 1, IM
                do j = 1, JM
                        write(1,100) x(i,j), y(i,j) 
                enddo
                        write(1,*)
        enddo

        do j = 1, JM
                do i = 1, IM
                        write(1,100) x(i,j), y(i,j) 
                enddo
                        write(1,*)
        enddo

! The reverse loop is for the points visualization as grid

        close (unit = 1)  

!*********************************************************! Formats
100     format (G0.4,4x,G0.4)

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine Grid_Points
