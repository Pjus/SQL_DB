PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE lecture_INFORMATION(
ID REAL NULL,
name TEXT null,
Hobby TEXT NULL,
Grade REAL Null,
Auth TEXT NULL);
INSERT INTO lecture_INFORMATION VALUES(1.0,'john','football','A','Y');
INSERT INTO lecture_INFORMATION VALUES(2.0,'jun','basketball','b','N');
COMMIT;
