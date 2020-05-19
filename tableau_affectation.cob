       IDENTIFICATION DIVISION.
       PROGRAM-ID. TableauAffectation.


       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 n PIC 99.
       77 i PIC 99.

       *>Déclaration d'un tableau à une dimension.
       1 tableau.
           2 entier PIC 99 OCCURS 99.

       SCREEN SECTION.

       1 plage-saisie.
           2 BLANK SCREEN.
           2 LINE 1 COL 30 VALUE 'Valeur de n : '.
           2 saisie PIC 99 TO n REQUIRED.

       1 plage-ligne.
           2 LINE i COL 1 VALUE 'Index '.
           2 PIC 99 FROM i.
           2 VALUE ' : '.
           2 PIC zz FROM entier(i).

       PROCEDURE DIVISION.
       INITIALIZE tableau.

       DISPLAY plage-saisie.
       ACCEPT saisie.

       PERFORM TEST AFTER VARYING i FROM 1 BY 1 UNTIL i = n
           MOVE i TO entier(i)
       END-PERFORM.
       SORT entier DESCENDING.
       PERFORM TEST AFTER VARYING i FROM 1 BY 1 UNTIL i = n
           DISPLAY plage-ligne
       END-PERFORM.
       STOP RUN.
