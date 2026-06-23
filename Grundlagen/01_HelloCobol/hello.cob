identification division.
*> Das was hier steht ist sogesehen der .exe Name. Man ruft mit ./hello auf
program-id. hello.
*> Ab hier ist das tatsächliche Executable
procedure division.
*> display = standard Output, ansonsten in environment division definiert (gibts hier nicht, ist optional)
       display "Hello world!".
       goback. 
*> Cobol will am Ende eine Leerzeile for whatever reason
       