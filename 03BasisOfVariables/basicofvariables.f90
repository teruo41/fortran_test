program bov1
    ! This forbids implecit typing since not reccomended (soon after `program`).
    ! `program` のすぐ後に次のように書くと暗黙の型指定を禁止する。
    implicit none

    ! All variables must be annotated at the first of the program.
    ! 全ての変数はプログラムの初めに型宣言する必要がある。

    ! **Data type / データ型**
    ! Variables have types.
    ! データには型がある。
    ! ---------------------------------
    ! | type      | usage             |
    ! ---------------------------------
    ! | integer   | precise           |
    ! | real      | approximate       |
    ! | complex   | approximate       |
    ! | character |                   |
    ! | logical   | .true. or .false. |
    ! ---------------------------------

    integer :: n ! Annotation of an integer variable / 整数型の宣言
    real :: x ! Annotation of a complex variable / 実数型の宣言

    n = 10 ! Assinment (integer) / 代入（整数型）
    x = 3.14 ! Assignmen (complex) / 代入（実数型）

    stop
end program bov1
