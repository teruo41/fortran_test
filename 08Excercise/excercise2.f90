program excercise2
  implicit none

  real(4) :: a
  real(8) :: b
  real(16) :: c, ea, eb

  a = atan(1.0_4) * 4
  b = atan(1.0_8) * 4
  c = atan(1.0_16) * 4 ! これを真値とする

  ea = abs(1.0_16 - real(a, 16) / c)
  eb = abs(1.0_16 - real(b, 16) / c)

  write (*,*) "error in normal precision = ", ea
  write (*,*) "error in double precision = ", eb

  stop
end program excercise2
