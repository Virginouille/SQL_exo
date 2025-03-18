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


/*INTERSECT
SELECT * FROM `table1`
INTERSECT
SELECT * FROM `table2`
La commande SQL INTERSECT permet d’obtenir l’intersection des résultats de 2 requêtes. Cette commande permet donc de récupérer les enregistrements communs à 2 requêtes. Cela peut s’avérer utile lorsqu’il faut trouver s’il y a des données similaires sur 2 tables distinctes.
pour l’utiliser convenablement il faut que les 2 requêtes retourne le même nombre de colonnes, avec les mêmes types et dans le même ordre.
*/

CREATE TABLE utilisateur1;

CREATE TABLE utilisateur2;

INSERT INTO utilisateur1 (id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT,) 
    VALUES (1, 'Guillet', 'Vincent', 26),(2, 'Gay', 'Virginie', 34),(3, 'Petit', 'Martin', 26);


INSERT INTO utilisateur2(id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT,) 
    VALUES (1, 'Aled', 'Alice', 29),(2, 'Lapin', 'Garen', 60),(3, 'Oskour', 'Jeanne', 96);

SELECT * FROM utilisateur1
INTERSECT
SELECT * FROM utilisateur2;

/*Except
Dans le langage SQL la commande EXCEPT s’utilise entre 2 instructions pour récupérer les enregistrements de la première instruction sans inclure les résultats de la seconde requête. Si un même enregistrement devait être présent dans les résultats des 2 syntaxes, ils ne seront pas présent dans le résultat final.

A savoir : cette commande s’appelle différemment selon les Systèmes de Gestion de Base de Données (SGBD) :

EXCEPT : PostgreSQL
MINUS : MySQL et Oracle
*/
CREATE TABLE user_aigris;

CREATE TABLE user_pas_aigris;

INSERT INTO user_aigris (id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT,) 
    VALUES (1, 'Aled', 'Alice', 29),(2, 'Lapin', 'Garen', 60),(3, 'Petit', 'Martin', 26),(4, 'Guillet', 'Vincent', 26),(5, 'Gay', 'Virginie', 34),(6, 'Oskour', 'Jeanne', 96);


INSERT INTO user_pas_aigris(id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT,) 
    VALUES (2, 'Lapin', 'Garen', 60),(4, 'Guillet', 'Vincent', 26),(5, 'Gay', 'Virginie', 34);

SELECT * FROM user_aigris
EXCEPT
SELECT * FROM user_pas_aigris;