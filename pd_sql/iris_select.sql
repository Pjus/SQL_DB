-- SQLite
SELECT*FROM iris_table
WHERE iris_table.petal_length > 2;

SELECT*FROM iris_table
WHERE iris_table.petal_length > 2
AND iris_table.sepal_length > 2;


SELECT target_name, avg(sepal_length_cm), avg(sepal_width_cm), avg(petal_length_cm), avg(petal_width_cm)
FROM iris_table
GROUP BY target
HAVING avg(sepal_length_cm) > 6
ORDER BY target_name;


SELECT sepal_width_cm || sepal_length_cm AS summary FROM iris_table;


CREATE TABLE iris_avg
AS 
SELECT target, avg(sepal_length_cm), avg(sepal_width_cm), avg(petal_length_cm), avg(petal_width_cm)
FROM iris_table
GROUP BY target;


SELECT DISTINCT target_name, sepal_length_cm
FROM iris_table;

