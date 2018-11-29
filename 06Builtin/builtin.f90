program bf
  implicit none

  ! プログラミングにおける関数は数学の関数とは少し異なる。
  ! 入力を受け取り何らかの値を返す機能 (function) を関数と呼ぶ。
  ! 標準で使える関数を組込み関数と呼ぶ。
  ! 入力値のことを引数（ひきすう）と呼ぶ。
  ! 関数が出力する値を返り値（かえりち）と呼ぶ。

  real(8) :: x, y

  read(*,*) x

  ! ここでは `sin()` を使う。
  y = sin(x)

  write(*,*) y

  stop
end program bf
