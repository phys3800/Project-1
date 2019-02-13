! integrate.f90

program integrate
!
!     evaluates a certain integral related to Stefan's constant
!     using Guass-Laguerre integration
!     input: 1) file with parameters related to integration
!            2) order of Laguerre polynomial
!     reports numerical value of integral and absoulte relative error
!     (exact value of integral is known analytically)
!

implicit none
      
integer, parameter :: DP=SELECTED_REAL_KIND(14)
real (kind=DP) :: x,w1,w2,exact,sum
integer :: i,n,kdumb

character(32) ::  filename


write(*,*)"File containing zeros and weights"
read(*,*)filename

open(1,file=filename,status='old')

write(*,*)"Number of zeros"
read(*,*)n

sum=0._DP
read(1,*)
do i=1,n
   read(1,*)kdumb,x,w1,w2
   sum= sum + x
enddo

exact=(4._DP*datan(1._DP))**4._DP/15._DP
write(*,'(i4,f17.9,d10.2)')n,sum,dabs(sum-exact)/exact

end
