       IDENTIFICATION DIVISION.
       PROGRAM-ID. TableauAffectation.


       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 n PIC 99. *>Nombre d'éléments
       77 j PIC 99. *>Index où on veut tester l'existence d'un élément
       77 i PIC 99.

       *>Déclaration d'un tableau à une dimension.
       1 tableau.
           2 entier PIC 99 OCCURS 99 INDEXED BY indice.

       SCREEN SECTION.

       1 plage-saisie.
           2 BLANK SCREEN.
           2 LINE 1 COL 30 VALUE 'Valeur de n : '.
           2 saisie PIC 99 TO n REQUIRED.
           2 LINE 2 COL 30 VALUE 'Indice a trouver : '.
           2 cherche PIC 99 TO j REQUIRED.

       1 plage-ligne.
           2 LINE i COL 1 VALUE 'Index '.
           2 PIC 99 FROM i.
           2 VALUE ' : '.
           2 PIC zz FROM entier(i).

       1 plage-introuvable.
           2 LINE 2 COL 1 VALUE "Element introuvable...".

       1 plage-trouve.
           2 LINE 2 COL 1 VALUE "Element ".
           2 PIC 99 FROM entier(indice).
           2 VALUE " trouve !".

       PROCEDURE DIVISION.
       INITIALIZE tableau.

       DISPLAY plage-saisie.
       ACCEPT saisie.
       ACCEPT cherche.
       SET indice TO 1.
       PERFORM TEST AFTER VARYING i FROM 1 BY 1 UNTIL i = n
           MOVE i TO entier(i)
       END-PERFORM.
       SEARCH entier
           AT END
               DISPLAY plage-introuvable
           WHEN entier(indice) = j
               DISPLAY plage-trouve.
       STOP RUN.
