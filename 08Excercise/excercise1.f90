program excercise1
  implicit none

  real(8) :: height, width, area

  write (*,*) "height:"
  read (*,*) height
  write (*,*) "width:"
  read (*,*) width

  area = height * width

  write (*,*) "area = ", area

  stop
end program excercise1
