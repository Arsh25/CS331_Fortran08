! Fortran 2008 object.f08

module types

	implicit none

	type shape
		integer :: color
		logical :: filled
		integer :: x
		integer :: y
	end type shape

	! Illustrates inheritance
	type, EXTENDS ( shape ) :: rectangle
		integer :: length
		integer :: width
	end type rectangle

end module


program object
	use types
	implicit none

	type(rectangle) :: rect1, rect2

	rect2%length = 5
	rect2%width = 10


	! leading space in output because in old impact printers
	!     first character was often a control code.

	! map file to 900
	open(9001, FILE="hello.txt")

	write(9001, *) "Rectangle 2 width: ", rect2%width
	write(9001, *) "Rectangle 2 length: ", rect2%length

end program object