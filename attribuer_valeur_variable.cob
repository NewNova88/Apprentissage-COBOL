       IDENTIFICATION DIVISION.
       PROGRAM-ID. AttributionDeValeur.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 99.
       77 b PIC 99.
       77 c PIC 99.

       SCREEN SECTION.
       1 pla-res.
           2 BLANK SCREEN.
           2 LINE 1 COL 1 VALUE 'c vaut : '.
           2 PIC 99 FROM c.

       PROCEDURE DIVISION.
       MOVE 37 TO c.
       DISPLAY pla-res.
       STOP RUN.
