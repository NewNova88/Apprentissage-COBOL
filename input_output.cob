       IDENTIFICATION DIVISION.
       PROGRAM-ID. InAndOut.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 nom PIC x(25).
       SCREEN SECTION.
       1 o-plg-titre.
           2 BLANK SCREEN.
           2 LINE 1 COL 18 VALUE 'Hey !'.

       1 i-plg-nom.
           2 LINE 2 COL 3 VALUE 'Quel est ton nom ? '.
           2 PIC x(25) TO nom REQUIRED.

       1 o-plg-nom.
           2 BLANK SCREEN.
           2 LINE 1 COL 18 VALUE 'Salut'.
           2 COL 24 PIC x(25) FROM nom.

       PROCEDURE DIVISION.
       DISPLAY o-plg-titre.
       DISPLAY i-plg-nom.
       ACCEPT i-plg-nom.
       DISPLAY o-plg-nom.

       STOP RUN.
