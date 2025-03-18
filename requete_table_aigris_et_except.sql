CREATE TABLE user_aigris(id_aigris INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT);

CREATE TABLE user_pas_aigris(id_pas_aigris INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age INT);

INSERT INTO user_aigris (id_aigris,
    nom,
    prenom,
    age)
    VALUES (1, 'Aled', 'Alice', 29),(2, 'Lapin', 'Garen', 60),(3, 'Petit', 'Martin', 26),(4, 'Guillet', 'Vincent', 26),(5, 'Gay', 'Virginie', 34),(6, 'Oskour', 'Jeanne', 96);


INSERT INTO user_pas_aigris(id_pas_aigris,
    nom,
    prenom,
    age )
    VALUES (2, 'Lapin', 'Garen', 60),(4, 'Guillet', 'Vincent', 26),(5, 'Gay', 'Virginie', 34);

SELECT * FROM user_aigris
EXCEPT
SELECT * FROM user_pas_aigris;