identification division.
program-id. age-check.

data division.
working-storage section.
01 age pic 999. 

procedure division.
       display "Bitte Alter eingeben".
       accept age.

       if age >= 18
           display "Entry granted"
       else
           display "Minor detected. Entry denied."
       end-if

goback. 
