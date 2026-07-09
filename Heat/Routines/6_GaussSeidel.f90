subroutine GaussSeidel(IM,JM,kmax,tot_it,iter,last_iter,tol,w,norm,rms,dmain,d1,d2,d3,d4,T,T_old,Res)

        implicit none

!*********************************************************! Vars Def
! Author:       Chariton L. Pavlidis
! Company:      MM Group Consulting Engineers
! Department:   Mechanical & Electrical Engineering
! Email:        clpavlidis@outlook.com
! Tel:          (+30) 28210 51522
! Ext:          405
!*********************************************************!

!*********************************************************! Vars Def
integer :: i, j, IM, JM, kmax, iter, last_iter, tot_it

real(kind = 8) :: tol, w, norm, rms

real(kind = 8), dimension(IM,JM) :: dmain, d1, d2, d3, d4, &
                                    T, T_old, Res

!*********************************************************! Units Opening
        open(unit = 2, file = "../Results/Norm.dat")

!*********************************************************! Convergence
        do while ((rms > tol).and.(iter < tot_it))
        
                iter = iter + 1
                T_old = T
                
!*********************************************************! Gauss-Seidel (w Relax)
                        do i = 2, (IM-1)
                                do j = 2, (JM-1)
                                        T(i,j) = ((1-w)*T_old(i,j)) + &
                                                 ((w/dmain(i,j)) * &
                                                 (-(d1(i,j)*T_old(i,j+1)) - &       
                                                 (d2(i,j)*T_old(i+1,j)) - &       
                                                 (d3(i,j)*T(i,j-1)) - &       
                                                 (d4(i,j)*T(i-1,j))))
                                enddo
                        enddo

!*********************************************************! Residual
                        do i = 2, (IM-1)
                                do j = 2, (JM-1)
                                        Res(i,j) = - &
                                                   ((dmain(i,j)*T(i,j)) + &
                                                   (d1(i,j)*T(i,j+1)) + &
                                                   (d2(i,j)*T(i+1,j)) + &
                                                   (d3(i,j)*T(i,j-1)) + &
                                                   (d4(i,j)*T(i-1,j)))
                                enddo
                        enddo

!*********************************************************! Norms & Printouts
                        norm = norm2(Res)
                        rms = norm/(sqrt(real(kmax)))

                        write(2,200) iter, norm

                        print 300, "Iteration: ", iter, "Residual Norm: ", norm

        enddo

!*********************************************************! Units Closing
        close(unit = 2)

!*********************************************************! Formats
200     format (I0,4x,E9.3)
300     format (A11,x,I0,4x,A15,x,E9.3)

!*********************************************************!
!*********************************************************!
!*********************************************************!
!*********************************************************!

end subroutine GaussSeidel
