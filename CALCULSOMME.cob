       *>Ce programme n'est pas le programme principal.
       *>Il s'agit d'une fonction externe, qui sera appelée par le
       *>programme principal.
       *>Il faut compiler en premier ce fichier, sinon ça marchera pas.
       *>LE NOM DU FICHIER EST IMPORTANT !
       *>Il doit être en majuscule et doit être le même que celui de la
       *>fonction !


       *>On met la fonction dans le répertoire par défaut (ici code/bin)
       *>Ça se traduira par un fichier CALCULSOMME.so
       $SET REPOSITORY "update on"
       *>L'ID de la fonction, très important car pour l'appeler on
       *>va en avoir besoin.
       FUNCTION-ID. CALCULSOMME.

       *>Division des données
       DATA DIVISION.
       *>Section des liens : là où on va mettre tous les paramètres
       *>ainsi que la variable de retour.
       LINKAGE SECTION.
       1 param1 PIC 99.
       1 param2 PIC 99.
       *>Comme param1 et 2 sont des nombre allant de 0 à 99, le nombre
       *>résultat pourra dépasser 100, donc il nous faut un nombre
       *>entre 0 et 999 comme retour de fonction.
       1 paramRes PIC 999.

       *>Division des procédures avec des options :
       *>USING permet de définir les paramètres d'entrées, ici
       *>param1 et 2 déclarés dans LINKAGE SECTION.
       *>RETURNING (pas GIVING) donnera la variable que la fonction
       *>va retourner, ici paramRes.
       PROCEDURE DIVISION USING param1 param2 RETURNING paramRes.
       *>La somme des deux entiers entrés en paramètres est stockée
       *>dans la variable paramRes, qui sera retournée.
       COMPUTE paramRes = param1 + param2.
       *>Fin de la fonction.
       END FUNCTION CALCULSOMME.
