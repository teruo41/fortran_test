program typetrans
  implicit none

  real(8) :: x

  ! **implicit type translation / 暗黙の型変換**
  ! 演算子の右側と左側が違う場合の動作を理解する。
  ! 型が異なる場合、より一般的な型に変換されてから演算または代入される

  write (*,*) 2.0 / 3 ! 2.0_4 / 3.0_4 に変換されてから計算
  write (*,*) 2 / 3.0 ! 2.0_4 / 3.0_4 に変換されてから計算

  write (*,*) 2.0_8 / 3 ! 2.0_8 / 3.0_8 に変換されてから計算
  write (*,*) 2 / 3.0_8 ! 2.0_8 / 3.0_8 に変換されてから計算

  ! 代入の前に計算が行われることに注意する。
  ! 以下の例では、x は 8 バイトだが 4 バイト演算により計算精度が低下する。
  x = 2.0 / 3 ! 4 バイトで計算した結果を 8 バイトに変換して代入。
  write (*,*) "x = 2.0 / 3 => x = ", x
  x = 2.0_8 / 3 ! 8 バイトで計算した結果を代入。
  write (*,*) "x = 2.0_8 / 3 => x = ", x

  ! **explicit type translation / 明示的な型変換**
  ! 以下の組込み関数を用いて明示的な型変換が可能。
  ! ---------------------------------------------------------
  ! | function            | description                     |
  ! ---------------------------------------------------------
  ! | int(x)              | to integer                      |
  ! | int(x, kind=k)      | to integer(k)                   |
  ! | real(x)             | to real                         |
  ! | real(x, kind=k)     | to real(k)                      |
  ! | cmplx(x)            | to complex (real = x, f = 0)    |
  ! | cmplx(x, y)         | to complex (real = x, f = y)    |
  ! | cmplx(x, y, kind=k) | to complex(k) (real = x, f = y) |
  ! ---------------------------------------------------------
  ! `kind=` は省略可能。

  write(*,*) "80.0 / 7 = ", 80.0 / 7
  write(*,*) "int(80.0 / 7 ) = ", int(80.0 / 7)

  stop
end program typetrans
