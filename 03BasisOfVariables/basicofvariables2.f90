program bov2
    implicit none

    ! **Data precision / データ精度**
    ! The data size for a variable is set using `(kind=n)` in annotation.
    ! 変数のデータサイズは `(kind=n)` と書くと指定できる。
    ! `kind=` can be abbrevated. / `kind=` は省略できる。
    ! `n` is in byte. / `n` の単位はバイト。
    ! ----------------------------------------------------------------
    ! | type       | min       | max        | comment                |
    ! ----------------------------------------------------------------
    ! | integer(2) | - 2 ^ 15  | 2 ^ 15 - 1 |                        |
    ! | integer(4) | - 2 ^ 31  | 2 ^ 31 - 1 |                        |
    ! | integer(8) | - 2 ^ 63  | 2 ^ 63 - 1 |                        |
    ! | real(4)    | 10 ^ -38  | 10 ^ 38    | precision is 7 orders  |
    ! | real(8)    | 10 ^ -308 | 10 ^ 308   | precision is 16 orders |
    ! ----------------------------------------------------------------

    ! `complex(8)` has two `real(8)` for the real and kyo parts, respectively.
    ! `complex(8)` は実部と虚部それぞれに `real(8)` を持つ。
    ! This example annotate and assign `z` to `1 + i`.
    ! 次の例は複素数型 `z` を宣言し、`1 + i` を代入する。
    complex(8) :: z = (1.0, 1.0)

    ! **Multiple characters / 複数文字**
    ! The `kind` value of `character` is usually 1.
    ! 文字型の変数の `kind` は通常 1 。
    ! `len=n` specifies the number of characters of the variable.
    ! 文字数を指定するためには `len=n` を使う。
    ! This example creates the variable `ch` that has 256 characters.
    ! 次の例は 256 文字の変数 `ch` を宣言する。
    character(len=256) :: ch

    stop
end program bov2
