identification division.
program-id. count-hello.

data division.
working-storage section.

01 counter pic 9(3) value 0.
01 counter-input pic x(3).

procedure division.
       display "Wie oft soll ich hallo sagen?"
       accept counter-input
       if function trim(counter-input) is not numeric 
           display "Ungueltige Eingabe"
           goback
       end-if

       move function trim(counter-input) to counter

       perform until counter = 0
           display "Hello"
           subtract 1 from counter
       end-perform

       display "Fertig"

       goback.
