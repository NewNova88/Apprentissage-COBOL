       *>Ce programme est le programme qui va appeler la fonction
       *>externe CALCULSOMME. Ce fichier est à compiler en deuxième.

       *>Division d'identification.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UtilisationFonctionCustom.

       *>Division d'environnement
       ENVIRONMENT DIVISION.
       *>Section de configuration :
       *>C'est ici qu'on va définir des fonctions externes pour les
       *>appeler.
       CONFIGURATION SECTION.
       *>Le dossier est celui par défaut (dossier courant de l'exécutable).
       REPOSITORY.
           *>On appelle la fonction externe custom CALCULSOMME.
           FUNCTION CALCULSOMME.

       *>Division des données
       DATA DIVISION.
       *>Section de l'espace de stockage (pour les variables)
       WORKING-STORAGE SECTION.
       *>On déclare trois entiers du même type que les paramètres
       *>de la fonction externe custom.
       1 entier1 PIC 99.
       1 entier2 PIC 99.
       1 res PIC 999.

       *>Section de l'écran (pour l'affichage).
       SCREEN SECTION.
       1 plage-aff-titre.
           2 BLANK SCREEN.
           2 LINE 1 COL 20 VALUE 'Somme de deux entiers'.

       1 plage-saisie.
           2 LINE 4 COL 1 VALUE 'Entrez le premier nombre : '.
           2 PIC zz TO entier1 REQUIRED.
           2 LINE 5 COL 1 VALUE 'Entrez le second nombre : '.
           2 PIC zz TO entier2 REQUIRED.

       1 plage-resultat.
           2 LINE 8 COL 1 VALUE 'La somme des deux nombres vaut : '.
           2 PIC 999 FROM res.

       *>Division des procédure
       PROCEDURE DIVISION.
       *>Bien que pas forcément nécessaire, on initialise nos
       *>variables.
       INITIALIZE entier1 entier2 res.
       *>On affiche le titre et la saisie.
       DISPLAY plage-aff-titre plage-saisie.
       *>On accepte les entrées de la plage de saisie.
       ACCEPT plage-saisie.

       *>On met le résultat de la fonction CALCULSOMME avec nos
       *>paramètres entrés au clavier dans la variable res.
       *>Équivalent à COMPUTE res = FUNCTION CALCULSOMME(entier1, entier2).
       MOVE FUNCTION CALCULSOMME(entier1, entier2) TO res.
       *>On affiche le résultat de la fonction.
       DISPLAY plage-resultat.
       *>Fin du programme
       STOP RUN.
