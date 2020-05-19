       IDENTIFICATION DIVISION.
       PROGRAM-ID. FonctionIntrinsèque.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       1 mot PIC A(90).
       1 nombre PIC 9.
       1 racine PIC 9.

       SCREEN SECTION.
       1 plg-aff-titre.
           2 BLANK SCREEN.
           2 LINE 1 COL 10 VALUE 'Utilisation de fonction intrinseque'.

       1 plg-saisie.
           2 LINE 3 COL 1 VALUE 'Tapez un mot en minuscule : '.
           2 PIC A(90) TO mot REQUIRED.
           2 LINE 4 COL 1.
           2 VALUE 'Entrez un nombre entre 0 et 9 : '. *>Un petit test pour la limite de caractères.
           *>Éviter de mettre 2 VALUE à la suite.
           2 PIC z TO nombre REQUIRED.

       1 plg-resultat.
           2 LINE 7 COL 1 VALUE 'Votre mot en majuscule : '.
           2 PIC A(90) FROM mot.
           2 LINE 8 COL 1 VALUE 'La racine carre du nombre est : '.
           2 PIC 9 FROM racine.

       PROCEDURE DIVISION.
       DISPLAY plg-aff-titre plg-saisie.
       ACCEPT plg-saisie.

       MOVE FUNCTION UPPER-CASE (mot) TO mot.
       MOVE FUNCTION SQRT (nombre) TO racine.

       DISPLAY plg-resultat.
       GOBACK.
