subroutine BCs(IM,JM,T,T_old)

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

real(kind = 8), dimension(IM,JM) :: T, T_old

!*********************************************************! BCs (Dirichlet)
        do i = 1, IM
                T(i,1) = 100    ! Bottom boundary - cold
                T(i,JM) = 500   ! Top boundary - hot 
                T_old(i,1) = 100
                T_old(i,JM) = 500 
        enddo
        
        do j = 1, JM
                T(1,j) = 100    ! Left boundary - cold
                T(IM,j) = 100   ! Right boundary - cold
                T_old(1,j) = 100
                T_old(IM,j) = 100 
        enddo

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine BCs
