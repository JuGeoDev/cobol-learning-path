identification division.
program-id. calculator-advanced.

data division.
working-storage section.

01 operation pic x.
01 first-number pic 9(4).
01 second-number pic 9(4).
*> s = signed = Vorzeichen, v99 = 2 Nachkommastellen = 2020 = 20,20
01 result pic s9(8)v99.

procedure division.
       display "Welche Operation? (+,-,*,/)"
       accept operation.

       display "Erste Zahl eingeben".
       accept first-number.

       display "Zweite Zahl eingeben".
       accept second-number.

       if operation = "/"
           if second-number = 0
               display "Durch 0 teilen ist nicht erlaubt"
               goback 
           end-if
       end-if

       if operation = "+"
           add first-number to second-number giving result
       else 
           if operation = "-"
               subtract second-number from first-number giving result
           else 
               if operation = "*"
                   multiply first-number by second-number giving result
               else 
                   if operation = "/"
                       divide first-number by second-number giving result
                   else
                       display "Falsche Operation eingegeben"
                       goback 
                    end-if
               end-if
           end-if
       end-if

       display "Ergebnis:" result
       goback. 

