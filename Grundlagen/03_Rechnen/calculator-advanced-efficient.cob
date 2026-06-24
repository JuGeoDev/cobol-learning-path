identification division.
program-id. calculator-advanced-efficient.

data division.
working-storage section.

01 operation pic x.

01 first-number-input pic x(4).
01 second-number-input pic x(4).

01 first-number pic 9(4).
01 second-number pic 9(4).
*> s = signed = Vorzeichen, v99 = 2 Nachkommastellen = 2020 = 20,20
01 result pic s9(8)v99.

procedure division.
*> Operator einlesen und checken
       display "Welche Operation? (+,-,*,/)"
       accept operation

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

*> Rechenwerte einlesen und checken

       display "Erste Zahl eingeben"
       accept first-number-input
       *> Da die Nummern mit 4 Zeichen alloziert werden, wird mit Leehrzeichen aufgefüllt -> Nicht rein numerisch -> Trim
       if function trim(first-number-input) is not numeric
           display "Ungueltige Eingabe"
           goback 
       end-if
       move function trim(first-number-input) to first-number 

       display "Zweite Zahl eingeben"
       accept second-number-input
       if function trim(second-number-input) is not numeric
           display "Ungueltige Eingabe"
           goback 
       end-if
       move function trim(second-number-input) to second-number
*> Division durch 0 abfangen
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

