-- SQLite
CREATE TABLE MENBER
(
  ID       REAL NOT NULL,
  NAME     TEXT NULL    ,
  AGE      REAL NULL    ,
  SEX      TEXT NULL    ,
  POSITION TEXT NULL    
);

CREATE TABLE VERIFICATION
(
  ID     REAL NULL    ,
  VERIFI TEXT NULL    
);

INSERT INTO MENBER (ID, NAME, AGE, SEX, POSITION)
VALUES
(10, '고상훈', 18, '남성', '행동대원'),
(20, '아사코', 15, '여성', '행동대장'),
(30, '김열정', 17, '남성', '저격수'),
(40, '이윤화', 16, '여성', '적군 전략분석'),
(50, '이루다', 16, '여성', '자금조달');

SELECT*FROM MENBER;

INSERT INTO VERIFICATION (ID, VERIFI)
VALUES
(10, '불순분자'),
(20, '정상'),
(30, '자유민주주의'),
(40, '정상'),
(50, '정직');


SELECT*FROM VERIFICATION;
