-- SQLite
SELECT target,
count(*) AS COUNT ,
avg(mean_radius),
avg(mean_texture),
avg(mean_perimeter),
avg(mean_concavity)

FROM cancel_table
GROUP BY target


CREATE TABLE cancer
AS 
SELECT 
target,
count(*) AS COUNT ,
avg(mean_radius),
avg(mean_texture),
avg(mean_perimeter),
avg(mean_concavity)

FROM cancel_table
GROUP BY target