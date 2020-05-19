       IDENTIFICATION DIVISION.
       PROGRAM-ID. StructureIfElse.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 val PIC 999.

       SCREEN SECTION.
       1 plage-titre.
           2 BLANK SCREEN.
           2 LINE 2 COL 25 VALUE "Superieur ou inferieur".

       1 plage-sup.
           2 LINE 6 COL 10 VALUE "val est superieure ou egale a 100".

       1 plage-inf.
           2 LINE 6 COL 10 VALUE "val est inferieure a 100".

       PROCEDURE DIVISION.
       MOVE 150 TO val.
       DISPLAY plage-titre.

       evaluation.
       IF val < 100 THEN
           DISPLAY plage-inf
       ELSE
           DISPLAY plage-sup
       END-IF.
       PERFORM evaluation.
       STOP RUN.
