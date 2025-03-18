CREATE TABLE utilisateur1 (id_utilisateur1 INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT);

CREATE TABLE utilisateur2 (id_utilisateur2 INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT);

INSERT INTO utilisateur1 (id_utilisateur1,
    nom,
    prenom,
    age) 
    VALUES (1, 'Guillet', 'Vincent', 26),(2, 'Gay', 'Virginie', 34),(3, 'Petit', 'Martin', 26);


INSERT INTO utilisateur2(id_utilisateur2,
    nom,
    prenom,
    age) 
    VALUES (1, 'Aled', 'Alice', 29),(2, 'Lapin', 'Garen', 60),(3, 'Petit', 'Martin', 26);

SELECT * FROM utilisateur1
INTERSECT
SELECT * FROM utilisateur2;