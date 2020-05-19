       IDENTIFICATION DIVISION.
       PROGRAM-ID. InstructionAdd.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 99.

       SCREEN SECTION.
       1 pla-res.
           2 LINE a COL 1 VALUE 'Valeur de a : '.
           2 PIC 99 FROM a.

       PROCEDURE DIVISION.
       MOVE 1 TO a.
       DISPLAY pla-res.
       ADD 2 TO a.
       DISPLAY pla-res.

       STOP RUN.
