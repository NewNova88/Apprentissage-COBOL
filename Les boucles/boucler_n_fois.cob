       IDENTIFICATION DIVISION.
       PROGRAM-ID. BouclerNFois.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 x PIC 999.

       SCREEN SECTION.
       1 plage-x.
           2 LINE 1 COL 1 VALUE "Valeur de x : ".
           2 PIC 999 FROM x.

       PROCEDURE DIVISION.
       INITIALIZE x.
       PERFORM 5 TIMES *>On peut comparer cette ligne à un for(int i=0; i<4; i++) en C.
           COMPUTE x = x + 5
       END-PERFORM
       DISPLAY plage-x.
       STOP RUN.
