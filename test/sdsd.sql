-- -- SQLite
-- SELECT*FROM COMPANY
-- WHERE ID IN 
-- (SELECT ID FROM COMPANY
-- WHERE SALARY > 45000);


SELECT AGE FROM COMPANY
WHERE EXISTS
(SELECT AGE FROM COMPANY AS subcom
WHERE COMPANY.ID = subcom.ID AND SALARY > 65000);


UPDATE COMPANY
SET SALARY = SALARY + SALARY * 0.05
WHERE AGE IN
(SELECT AGE FROM OLD_COMPANY
WHERE AGE >= 27);

SELECT time('now', 'localtime');

SELECT date('now');

SELECT datetime('now', 'localtime');
SELECT datetime('now', 'utc');

SELECT strftime('%s','now');


SELECT date('now','start of month','+1 month','-1 day');