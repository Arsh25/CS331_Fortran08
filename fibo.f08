! Fortran 2008 Print Fibonacci
! This program prints a user specified number of numbers from the
!     fibonacci sequence, starting at 0. Uses iteration to determine
!     the fibonacci numbers

program print_fibos
	implicit none
	! Use 128-bit integers
	integer(16) :: x, k, n
	integer(16) :: fibo0 = 0
	integer(16) :: fibo1 = 1

	! Get input from user
	write (*, '(A$)') "How many fibonacci numbers should be printed? "
	read *, k

	if (k == 1) then
		print *, fibo0
	else if (k == 2) then
		print *, fibo0
		print *, fibo1
 	else
		print *, fibo0
		print *, fibo1
		do n=3, k, 1
			x = fibo1 + fibo0
			fibo0 = fibo1
			fibo1 = x
			print *, fibo1
		enddo
	end if
end