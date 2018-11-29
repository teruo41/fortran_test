program rstdin
  implicit none

  integer :: x

  read (*,*) x
  write (*,*) "You typed : ", x

  stop
end program rstdin
