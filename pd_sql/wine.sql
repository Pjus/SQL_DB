-- SQLite
SELECT
target,
avg(alcohol),
avg(malic_acid),
avg(proline),
avg(proline),
max(ash)

FROM wine_table
GROUP BY target;

CREATE TABLE wine_new
AS 

SELECT
target,
avg(alcohol),
avg(malic_acid),
avg(proline),
avg(proline),
max(ash)

FROM wine_table
GROUP BY target;