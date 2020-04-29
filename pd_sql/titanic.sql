-- SQLite
SELECT * FROM titanic_table
WHERE Survived = 0
ORDER BY Age DESC
LIMIT 15 OFFSET 0;


SELECT * FROM titanic_table
WHERE Survived = 0 AND Sex = 'male'
ORDER BY Age DESC
LIMIT 15 OFFSET 0;


SELECT * FROM titanic_table
WHERE Survived = 0 AND Age > 60
ORDER BY Age DESC
LIMIT 15 OFFSET 0;


SELECT * FROM titanic_table
WHERE Age > 50
AND Pclass < 2
EXCEPT
SELECT * FROM titanic_table
WHERE Age IS NULL
ORDER BY Fare, Age DESC
LIMIT 15 OFFSET 0;

SELECT Sex, count(Sex),  Survived, count(Survived), avg(Age) FROM titanic_table
GROUP BY Sex, Survived;


SELECT Name, Age, 'yes' AS yesorno
FROM titanic_table;


