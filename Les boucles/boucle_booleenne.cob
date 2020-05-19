       IDENTIFICATION DIVISION.
       PROGRAM-ID. BoucleBooléenne.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 i PIC 999.

       SCREEN SECTION.
       1 plage-ligne.
           2 LINE i COL 1 VALUE "Ligne numero ".
           2 PIC zz FROM i.

       PROCEDURE DIVISION.
       MOVE 1 TO i.
       PERFORM UNTIL i > 10
           DISPLAY plage-ligne
           COMPUTE i = i + 1
       END-PERFORM
       STOP RUN.
