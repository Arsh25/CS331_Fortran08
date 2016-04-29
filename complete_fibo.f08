! Fortran 2008 Print Fibonacci
! This program prints a user specified number of numbers from the
!     fibonacci sequence, starting at 0. Uses iteration to determine
!     the fibonacci numbers



program fibo
	implicit none
	
	integer(16) :: k

	! Get input from user
	! (A$) format descriptor: A is for character, $ supresses carriage return
	!     Could be replaced by asterisk to let let computer format output
	write (*, '(A$)') "How many fibonacci numbers should be printed? "
	read *, k ! Asterisk indicates default format
	call printfibos(k)
end program fibo

subroutine printfibos(k)
	implicit none

	! Use 128-bit integers
	integer(16), intent(in) :: k ! intent(in) = k cannot be changed in function
	integer(16) :: temp, n
	integer(16) :: fibo0 = 0
	integer(16) :: fibo1 = 1

	if (k == 1) then
		print *, fibo0
	else if (k == 2) then
		print *, fibo0
		print *, fibo1
 	else
		print *, fibo0
		print *, fibo1
		do n=3, k, 1
			temp = fibo1 + fibo0
			fibo0 = fibo1
			fibo1 = temp
			print *, fibo1
		enddo
	end if
end
