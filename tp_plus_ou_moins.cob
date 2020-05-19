       IDENTIFICATION DIVISION.
       PROGRAM-ID. TpPlusOuMoins.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 nb PIC 999.
       77 seed PIC 9(8) VALUE 0.
       77 nbAleatoire PIC 999.
       77 nbCoup PIC 999.

       SCREEN SECTION.

       1 plage-saisie.
           2 LINE 1 COL 1 VALUE "Entrez un nombre entre 1 et 100 : ".
           2 saisie PIC z(3) TO nb REQUIRED.

       1 plage-moins.
           2 LINE 2 COL 1 VALUE 'C''est moins !'.

       1 plage-plus.
           2 LINE 2 COL 1 VALUE 'C''est plus ! '.

       1 plage-gagne.
           2 LINE 2 COL 1 VALUE 'Vous avez reussi !'.

       1 plage-nbCoups.
           2 LINE 3 COL 1 VALUE 'Nombre de coups : '.
           2 PIC 999 FROM nbCoup.
       1 plage-parfait.
           2 LINE 4 COL 1 VALUE 'PERFECT !'.

       PROCEDURE DIVISION.
       INITIALIZE nb.
       *>Création d'un nombre aléatoire entre 1 et 100
       MOVE FUNCTION CURRENT-DATE(9:8) TO seed.
       COMPUTE nbAleatoire = FUNCTION RANDOM (seed) * 100 + 1.

       PERFORM UNTIL nb = nbAleatoire
           DISPLAY plage-saisie
           ACCEPT saisie
           IF nb < nbAleatoire THEN
               DISPLAY plage-plus
               COMPUTE nbCoup = nbCoup + 1
               DISPLAY plage-nbCoups
           ELSE
               DISPLAY plage-moins
               COMPUTE nbCoup = nbCoup + 1
               DISPLAY plage-nbCoups
           END-IF
       END-PERFORM.
       COMPUTE nbCoup = nbCoup + 1.
       DISPLAY plage-gagne.
       DISPLAY plage-nbCoups.
       IF nbCoup = 1 THEN
           DISPLAY plage-parfait
       END-IF
       STOP RUN.
