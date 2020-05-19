       IDENTIFICATION DIVISION.
       PROGRAM-ID. ExempleEtiquette.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 9(15).

       SCREEN SECTION.
       1 pls-exemple.
           2 BLANK SCREEN.
           2 LINE 1 COL 10 VALUE 'Saisir une valeur : '.
           2 saisie PIC z(15) TO a REQUIRED. *>Création d'une étiquette. Permet un code plus compréhensible.

       1 pla-exemple.
           2 BLANK SCREEN.
           2 LINE 1 COL 10 VALUE 'Resultat : '.
           2 COL 30 PIC z(15) FROM saisie.

       PROCEDURE DIVISION.
       DISPLAY pls-exemple.
       ACCEPT saisie.
       DISPLAY pla-exemple.
       STOP RUN.
