       IDENTIFICATION DIVISION.
       PROGRAM-ID. LesBooleans.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 note PIC 99v99.
       88 passable VALUE 10 THRU 11.99.
       88 assez_bien VALUE 12 THRU 13.99.
       88 bien VALUE 14 THRU 16.
       88 parfait VALUE 20.

       SCREEN SECTION.
       01 plage-passable.
           02 LINE 1 COL 10 VALUE 'C''est passable'.
       01 plage-ab.
           02 LINE 1 COL 10 VALUE 'C''est pas mal'.
       01 plage-bien.
           02 LINE 1 COL 10 VALUE 'C''est bien'.
       01 plage-parfait.
           02 LINE 1 COL 10 VALUE 'C''est parfait'.
       01 plage-nul.
           02 LINE 1 COL 10 VALUE 'Pas de mention'.

       PROCEDURE DIVISION.
       MOVE 10.57 TO note.
       IF passable THEN
           DISPLAY plage-passable
       ELSE
           IF assez_bien THEN
               DISPLAY plage-ab
           ELSE
               IF bien THEN
                   DISPLAY plage-bien
               ELSE
                   IF parfait THEN
                       DISPLAY plage-parfait
                   ELSE
                       DISPLAY plage-nul
                   END-IF
               END-IF
           END-IF
       END-IF.
       STOP RUN.
