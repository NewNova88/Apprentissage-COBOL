       IDENTIFICATION DIVISION.
       PROGRAM-ID. InstructionInitialize.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 99.

       SCREEN SECTION.
       1 pla-ini.
           2 BLANK SCREEN.
           2 LINE 1 COL 1 VALUE 'Pour a : '.
           2 PIC 99 FROM a.

       PROCEDURE DIVISION.
       INITIALIZE a. *>Étrangement, chez moi,
       *>cette ligne n'est pas nécessaire, mais elle est peut-être due à la traduction en C.
       DISPLAY pla-ini.
       STOP RUN.
