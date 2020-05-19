       IDENTIFICATION DIVISION.
       PROGRAM-ID. StructureEvaluate.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 9(15).

       SCREEN SECTION.
       1 plage-saisie.
           2 BLANK SCREEN.
           2 LINE 1 COL 1 VALUE "Entrez un nombre : ".
           2 nombre PIC z(15) TO a REQUIRED.
       1 plage-affichage-res.
           2 LINE 2 COL 1 VALUE "Resultat : ".
           2 PIC z(15) FROM nombre.
       1 plage-entre.
           2 LINE 3 COL 1 VALUE "Le nombre est entre 1 et 10".
       1 plage-sup.
           2 LINE 3 COL 1 VALUE "Le nombre est superieur a 10".

       PROCEDURE DIVISION.
       DISPLAY plage-saisie.
       ACCEPT nombre.
       DISPLAY plage-affichage-res.
       EVALUATE a
       WHEN 1 THRU 10
           DISPLAY plage-entre
       WHEN OTHER
           DISPLAY plage-sup
       END-EVALUATE
       STOP RUN.
