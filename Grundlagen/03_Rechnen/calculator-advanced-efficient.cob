identification division.
program-id. calculator-advanced-efficient.

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

              *> Wenn falscher Operator hier schon Abbruch
       evaluate operation
           when "+"
               continue
           when "-"
               continue
           when "*"
               continue
           when "/"
               continue
           when other 
               display "Unbekannter Operator"
               goback 
       end-evaluate

       display "Erste Zahl eingeben".
       accept first-number.

       display "Zweite Zahl eingeben".
       accept second-number.

       evaluate true 
           when operation = "+"
               add first-number to second-number giving result
           when operation = "-"
               subtract second-number from first-number giving result
           when operation = "*"
               multiply first-number by second-number giving result
           when operation = "/"
               if second-number = 0
                   display "Durch 0 teilen ist nicht erlaubt"
                   goback 
               end-if
               divide first-number by second-number giving result
       end-evaluate

       display "Ergebnis:" result
       goback. 

