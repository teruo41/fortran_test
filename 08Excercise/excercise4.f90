program excercise4
  implicit none

  real(8) :: x, a, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, b, c

  write (*,*) "input a real like 1.0"
  read (*,*) x

  a = sin(x)

  b = x
  a1 = b 
  c = 3.0_8

  b = b * x * x / c / (c - 1.0_8)
  a2 = x - b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a3 = a2 + b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a4 = a3 - b 
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a5 = a4 + b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a6 = a5 - b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a7 = a6 + b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a8 = a7 - b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a9 = a8 - b
  c = c + 2.0_8

  b = b * x * x / c / (c - 1.0_8)
  a10 = a9 + b
  c = c + 2.0_8

  write (*,*) "sin(x) = ", a
  write (*,*) "a1 = ", a1, "error = ", abs(a - a1)
  write (*,*) "a2 = ", a2, "error = ", abs(a - a2) 
  write (*,*) "a3 = ", a3, "error = ", abs(a - a3)
  write (*,*) "a4 = ", a4, "error = ", abs(a - a4)
  write (*,*) "a5 = ", a5, "error = ", abs(a - a5)
  write (*,*) "a6 = ", a5, "error = ", abs(a - a6)
  write (*,*) "a7 = ", a5, "error = ", abs(a - a7)
  write (*,*) "a8 = ", a5, "error = ", abs(a - a8)
  write (*,*) "a9 = ", a5, "error = ", abs(a - a9)
  write (*,*) "a10 = ", a5, "error = ", abs(a - a10)

  stop
end program excercise4
