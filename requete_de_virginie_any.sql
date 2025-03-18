SELECT *
FROM user_aigris
WHERE age > ANY (
SELECT *
FROM user_pas_aigris
WHERE age > 26);