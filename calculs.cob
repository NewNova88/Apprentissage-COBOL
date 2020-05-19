       IDENTIFICATION DIVISION.
       PROGRAM-ID. AttributionDeValeur.

       DATA DIVISION. *>Division des données
       WORKING-STORAGE SECTION. *>Section des déclarations de variables
       77 a PIC 99. *>l'ID 77 est une CONVENTION de nommage. On peut utiliser 1 par exemple, mais déconseillé.
       77 b PIC 99.
       77 c PIC 99.

       SCREEN SECTION. *>Section de gestion de l'écran
       1 pla-res.
           2 BLANK SCREEN.
           2 LINE 1 COL 10. *>On se place à la première ligne et au 10ème caractère (10ème colonne).
           2 PIC 99 FROM a. *>On affiche a à l'endroit où on est placé.
           2 COL 12 VALUE ' + '.
           2 PIC 99 FROM b.
           2 COL 18 VALUE ' = '.
           2 PIC 99 FROM c.

       PROCEDURE DIVISION. *>Le code principal
       MOVE 5 TO a. *>On met 5 dans a
       MOVE 15 TO b. *>On met 15 dans b
       COMPUTE c = a + b. *>c = 5+15 soit 20.
       DISPLAY pla-res. *>On affiche le tout une fois calculé.
       STOP RUN. *>Fin du programme.
