! This line is treated as comment.
! Good comments help people to understand the program.
! 日本語も入力できるが文字化けしてしまう場合もある。

program bs! Basic Structure of Fortran program
    ! Brank line is ignored.

    ! `write` displays characters to "Standard out."
    ! Characters must be quated by single or double quotes.
    write (*,*) 'Hello World 2 !'

    ! Multiple characters or variables can be listed with `,`.
    write (*,*) "This is ", "also ", "OK"

    ! `&` can be used when one sentence is separated to multiple lines.
    ! **In Fortran, one sentence must be no longer than 132 characters!**
    write (*,*) &
        & 'This is a continuation line'

    ! `stop` quits the program.
    ! Though it is sometimes unnecessary, it's better to put this line.
    stop
end program bs