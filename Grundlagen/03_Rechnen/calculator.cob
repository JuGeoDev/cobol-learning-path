identification division.
program-id. calculator.

data division.
working-storage section.

01 operation pic x 1.
01 first-number pic 9(3).
01 second-number pic 9(3).
01 result pic 9(4).

procedure division.
       display "Erste Zahl eingeben".
       accept first-number.
       display "Zweite Zahl eingeben".
       accept second-number.

       add first-number to second-number giving result.

       display "Ergebnis:" result.

       goback. 

