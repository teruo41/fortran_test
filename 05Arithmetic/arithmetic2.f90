program arithassign
  implicit none

  real(8) :: x, y, z

  read(*,*) x, y

  ! `=` 演算子を用いた代入文は右辺の値を代入する
  ! 右辺には演算を含んで良い。
  z = 0.5_8 * (x + y)

  write(*,*) "x = ", x, ", y = ", y, ", z = ", z

  ! `=` 演算子はその時点での計算結果を代入する。
  ! 代入後に右辺の変数の値を更新しても左辺の変数は更新されない。
  x = 100.0

  write(*,*) "x = ", x, ", y = ", y, ", z = ", z

  stop
end program arithassign
