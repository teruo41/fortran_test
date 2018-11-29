program excercise3
  implicit none

  complex(8) :: z, r1, r2
  real(8) :: x, y

  write (*,*) "input a complex like (1.0, 1.0)"
  read (*,*) z

  x = real(z)
  y = aimag(z)

  r1 = exp(z)
  r2 = exp(x) * cmplx(cos(y),sin(y), 8)

  write (*,*) "e ** z = ", r1
  write (*,*) "(e ** x) * (cos(y) + i * sin(y)) = ", r2

  stop
end program excercise3
