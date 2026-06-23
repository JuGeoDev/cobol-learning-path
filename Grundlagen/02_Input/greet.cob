identification division.
program-id. greet.
*> Welche Daten existieren? -> Sobald man Variablen hat anstatt ausschließlich Konstanten
data division.
*> Working-storage ist Teilmenge von data!
working-storage section.
*> pic = schneid das ab, wenn User mehr als 30 Zeichen eingibt -> KEIN Error
*> Zahlen = Hierarchiebene = Basically Ordnerstruktur -> gut für Cluster -> Man kann über obere Ebende den GESAMTEN Block direkt schieben
*> Namenskonvention: klein und mit Bindestrich
*> Pic = Picture = BEABSICHTIGTES Datenformat -> x = ein BELIEBIGES Zeichen, x(30) = 30 beliebige Zeichen
*> ABER bei falscher Eingabe kommt kein Fehler. Wenn man damit später arbeitet Krise, aber den Speicher juckt das nicht
01 user-name pic x(30).

procedure division.
       display "Wie heisst du?"
       *> accept = Standard Input, ansonsten in environment division definiert (gibts hier nicht, ist optional)
       accept user-name
       display "Hallo" user-name
       goback. 
