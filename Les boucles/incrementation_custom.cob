       IDENTIFICATION DIVISION.
       PROGRAM-ID. IncrémentationCustom.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 i PIC 999.

       SCREEN SECTION.
       1 plage-ligne.
           2 LINE i COL 1 VALUE "Ligne numero ".
           2 PIC zz FROM i.

       PROCEDURE DIVISION.
       INITIALIZE i.
       *>On varie i de 1, avec un pas de 1, jusqu'à que i soit égal à 20.
       *>En rajoutant les mots clés TEST AFTER avant VARYING,
       *>On peut rajouter une itération. Ça fait le test de UNTIL à la fin, et pas au début.
       *>Pour être sûr que le test est fait au début, on peut mettre TEST BEFORE.
       PERFORM VARYING i FROM 1 BY 1 UNTIL i > 20 *>On peut commencer i à 5 si on veut.
           DISPLAY plage-ligne
       END-PERFORM.
       STOP RUN.
