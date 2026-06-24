identification division.
program-id. age-check.

data division.
working-storage section.
01 age pic 999. 

procedure division.
       display "Bitte Alter des Kunden eingeben".
       accept age.

       if age < 18
           display "Kunde minderjährig: Kinderbeiträge"
       *> Elseif sind hier else -> if und eingerückt. Jedes if und damit auch else if braucht ein end-if
       else 
           if age <= 66
               display "Kunde im Erwerbsalter"
           else
               display "Kunde im Rentenalter."
           end-if
       end-if

goback. 
