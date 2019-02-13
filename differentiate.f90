! differentiate.f90

program differentiate

!
!   reports numerical approximations to the derivative
!   of sin(x) at x=1, using forward and centred difference schemes
!   reports absolute error for different step sizes
!

implicit none
integer, parameter :: DP = SELECTED_REAL_KIND(14)
real (kind=DP) :: h,fd,cd,x,exact
integer :: i

open(1,file="diff_results.dat",status="unknown")

x=1._DP
exact=dcos(x)
do i=1,20
   h=0.5_DP*5_DP**dble(-i)

   fd=(dsin(x+h)-dsin(x))/h
   cd=0.5_DP*(dsin(x+h)-dsin(x-h))/h

   write(1,*)h,dabs(fd-exact),dabs(cd-exact)

enddo
close(1)

end
