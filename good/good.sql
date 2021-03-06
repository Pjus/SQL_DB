CREATE TABLE ALL_SHOP
(
  R_ID  REAL NOT NULL,
  ID    REAL NOT NULL,
  S1_ID REAL NOT NULL,
  S2_ID REAL NOT NULL,
  D_ID  REAL NOT NULL,
  M_ID  REAL NOT NULL,
CONSTRAINT FK_REGION_TO_ALL_SHOP
  FOREIGN KEY (R_ID)
  REFERENCES REGION (R_ID),

CONSTRAINT FK_SHOP_TO_ALL_SHOP
  FOREIGN KEY (ID)
  REFERENCES SHOP (ID),

CONSTRAINT FK_SUPPORT_1_TO_ALL_SHOP
  FOREIGN KEY (S1_ID)
  REFERENCES SUPPORT_1 (S1_ID),

CONSTRAINT FK_SUPPORT_2_TO_ALL_SHOP
  FOREIGN KEY (S2_ID)
  REFERENCES SUPPORT_2 (S2_ID),

CONSTRAINT FK_M_DONA_TO_ALL_SHOP
  FOREIGN KEY (M_ID)
  REFERENCES M_DONA (M_ID),

CONSTRAINT FK_DONATION_TO_ALL_SHOP
  FOREIGN KEY (D_ID)
  REFERENCES DONATION (D_ID)
);

CREATE TABLE DONATION
(
  Y_N  TEXT NULL    ,
  D_ID REAL NOT NULL,
  PRIMARY KEY (D_ID)
);

CREATE TABLE M_DONA
(
  MONEY TEXT NULL    ,
  M_ID  REAL NOT NULL,
  PRIMARY KEY (M_ID)
);

CREATE TABLE REGION
(
  R_NAME TEXT NULL    ,
  R_ID   REAL NOT NULL,
  PRIMARY KEY (R_ID)
);

CREATE TABLE SHOP
(
  ID      REAL NOT NULL,
  O_NAME  TEXT NULL    ,
  S_NAME  TEXT NULL    ,
  CONTACT TEXT NULL    ,
  ADDRESS TEXT NULL    ,
  TIME    TEXT NULL    ,
  ITEM    TEXT NULL    ,
  PRIMARY KEY (ID)
);

CREATE TABLE SUPPORT_1
(
  S_1   TEXT NULL    ,
  S1_ID REAL NOT NULL,
  PRIMARY KEY (S1_ID)
);

CREATE TABLE SUPPORT_2
(
  S_2   TEXT NULL    ,
  S2_ID REAL NOT NULL,
  PRIMARY KEY (S2_ID)
);





SELECT * FROM ALL_SHOP;


SELECT S_NAME FROM ALL_SHOP
LEFT OUTER JOIN SHOP
ON ALL_SHOP.ID = SHOP.ID;


DELETE FROM DONATION;
DELETE FROM M_DONA;
DELETE FROM REGION;
DELETE FROM SHOP;
DELETE FROM SUPPORT_1;
DELETE FROM SUPPORT_2;

DELETE FROM ALL_SHOP;


UPDATE SUPPORT_1
SET S_1 = NULL
WHERE S_1 = "0";



SELECT REGION.R_NAME, SHOP.O_NAME, SHOP.S_NAME, SHOP.CONTACT ,SUPPORT_1.S_1, SUPPORT_2.S_2
FROM ALL_SHOP

LEFT OUTER JOIN REGION
ON ALL_SHOP.R_ID = REGION.R_ID

LEFT OUTER JOIN SHOP
ON ALL_SHOP.ID = SHOP.ID

LEFT OUTER JOIN SUPPORT_1
ON ALL_SHOP.S1_ID = SUPPORT_1.S1_ID

LEFT OUTER JOIN SUPPORT_2
ON ALL_SHOP.S2_ID = SUPPORT_2.S2_ID;



SELECT O_NAME FROM SHOP
WHERE O_NAME is NULL;



SELECT REGION.R_NAME, SHOP.O_NAME, SHOP.S_NAME, SHOP.CONTACT
FROM ALL_SHOP

LEFT OUTER JOIN REGION
ON ALL_SHOP.R_ID = REGION.R_ID

LEFT OUTER JOIN SHOP
ON ALL_SHOP.ID = SHOP.ID

LEFT OUTER JOIN SUPPORT_1
ON ALL_SHOP.S1_ID = SUPPORT_1.S1_ID

LEFT OUTER JOIN SUPPORT_2
ON ALL_SHOP.S2_ID = SUPPORT_2.S2_ID

LEFT OUTER JOIN DONATION
ON ALL_SHOP.M_ID = DONATION.D_ID

WHERE ALL_SHOP.M_ID = 1
ORDER BY REGION.R_NAME;
