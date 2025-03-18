/*Création/Modification/Suppression/Interet des index
Sauvegarde / Restauration

********Les journaux (logs) de requêtes, erreurs, etc.******

Le journal des requêtes SQL implique l'enregistrement systématique des requêtes SQL exécutées 
dans un système de base de données, permettant une analyse, un dépannage et une optimisation ultérieurs.

Le journal des erreurs SQL Server contient des événements définis par l'utilisateur et certains événements système
 que vous pouvez utiliser pour le dépannage


*******Optimisation des requêtes(EXPLAIN)****
L'optimisation de requête est une opération dans laquelle plusieurs plans d'exécution d'une requête SQL 
sont examinés pour en sélectionner le meilleur. L'estimation de leurs coûts dépend du temps d'exécution 
et du nombre de ressources utilisées pour y parvenir, elle se mesure en entrées-sorties.

Cela se fait grâce à EXPLAIN : Analyse les requêtes en affichant le plan d’exécution d’une requête SQL. 
Cela permet de savoir de quelle manière le Système de Gestion de Base de Données (SGBD) 
va exécuter la requête et s’il va utiliser des index et lesquels.

SQL :
 INTERSECT, EXCEPT
 ANY/SOME, ALL 
 APPLY (CROSS, OUTER) 
 OVER, RANK, ROW_NUMBER
 CASE 
 TRANSACTION*/