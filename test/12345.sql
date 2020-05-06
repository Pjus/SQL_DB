-- SQLite
CREATE TABLE ALL_SHOP
(
  R_ID  REAL NOT NULL,
  N_ID  REAL NULL    ,
  S_ID  REAL NULL    ,
  c_ID  REAL NULL    ,
  A_ID  REAL NULL    ,
  T_ID  REAL NULL    ,
  ME_ID REAL NULL    ,
  S1_ID REAL NOT NULL,
  S2_ID REAL NOT NULL,
  D_ID  REAL NOT NULL,
  M_ID  REAL NOT NULL,
CONSTRAINT FK_REGION_TO_ALL_SHOP
    FOREIGN KEY (R_ID)
    REFERENCES REGION (R_ID),

CONSTRAINT FK_SUPPORT_1_TO_ALL_SHOP
    FOREIGN KEY (S1_ID)
    REFERENCES SUPPORT_1 (S1_ID),

CONSTRAINT FK_M_DONA_TO_ALL_SHOP
    FOREIGN KEY (M_ID)
    REFERENCES M_DONA (M_ID),

CONSTRAINT FK_DONATION_TO_ALL_SHOP
    FOREIGN KEY (D_ID)
    REFERENCES DONATION (D_ID),

CONSTRAINT FK_SUPPORT_2_TO_ALL_SHOP
    FOREIGN KEY (S2_ID)
    REFERENCES SUPPORT_2 (S2_ID),

CONSTRAINT FK_TIME_TO_ALL_SHOP
    FOREIGN KEY (T_ID)
    REFERENCES TIME (T_ID),

CONSTRAINT FK_S_NAME_TO_ALL_SHOP
    FOREIGN KEY (S_ID)
    REFERENCES S_NAME (S_ID),

CONSTRAINT FK_s_contact_TO_ALL_SHOP
    FOREIGN KEY (c_ID)
    REFERENCES s_contact (c_ID),

CONSTRAINT FK_OWNER_TO_ALL_SHOP
    FOREIGN KEY (N_ID)
    REFERENCES OWNER (N_ID),

CONSTRAINT FK_ADDRESS_TO_ALL_SHOP
    FOREIGN KEY (A_ID)
    REFERENCES ADDRESS (A_ID),

CONSTRAINT FK_MENU_TO_ALL_SHOP
    FOREIGN KEY (ME_ID)
    REFERENCES MENU (ME_ID)
);


SELECT shop.s_name, region
FROM shop
LEFT OUTER JOIN region
ON region.R_ID = 1;