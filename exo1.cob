       IDENTIFICATION DIVISION.
       PROGRAM-ID. PetitExo.

       DATA DIVISION. *>Division des déclarations de variables
       WORKING-STORAGE SECTION.
       77 a PIC 9(15). *>Nombre allant jusque 15 chiffres.
       77 b PIC 9(15).
       77 c PIC 9(15).

       SCREEN SECTION.
       1 plage-saisie.
           2 BLANK SCREEN. *>On efface l'écran.
           2 LINE 1 COL 1 VALUE "Entrez une premiere valeur : ".
           2 firstnb PIC z(15) TO a REQUIRED. *>Utilisation d'étiquette, et l'entrée est obligatoire.
           2 LINE 2 COL 1 VALUE "Entrez une seconde valeur : ".
           2 secondnb PIC z(15) TO b REQUIRED.

       1 plage-affichage. *>Affichage du résultat.
           2 LINE 4 COL 1 VALUE "Resultat : ".
           2 PIC z(15) FROM c.

       PROCEDURE DIVISION.
       DISPLAY plage-saisie. *>On affiche la saisie
       *>On accepte les valeurs (avec les étiquettes pour plus de compréhension).
       ACCEPT firstnb.
       ACCEPT secondnb.
       *>On fait le produit des deux nombres et on le met dans c.
       COMPUTE c = a * b.
       *>On affiche le résultat.
       DISPLAY plage-affichage.
       STOP RUN. *>Fin du programme.
