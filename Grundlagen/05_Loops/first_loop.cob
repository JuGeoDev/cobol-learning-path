identification division.
program-id. count-hello.

data division.
working-storage section.

01 counter pic 9(1).

procedure division.
       display "Wie oft soll ich hallo sagen?".
       accept counter.

    perform until counter = 0
        display "Hello"
        subtract 1 from counter
    end-perform

    display "Fertig"

    goback.
    