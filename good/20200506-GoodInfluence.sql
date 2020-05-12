-- -- SQLite
-- DELETE FROM GOOD_STORE;
-- INSERT INTO GOOD_STORE (
-- STORE_ID,
--   STORE_NAME,
--   OWNER     ,
--   TEL       ,
--   ADDRESS   ,
--   PROVINCE_ID,
--   OPR_TIME   ,
--   PERSONELL_ID,
--   PARTICIPATE_ID,
--   MENTYPE_ID    ,
--   DONATION_ID)
-- SELECT `순번`,
--     `상호명`,
--     `진함`,
--     `사업장 연락처`,
--     `사업장 주소(주소, 건물명, 명, 호수 등)`,
--     (SELECT ifnull(max(PROVINCE_ID),514) FROM LOCATION 
--     WHERE `지역` = LOCATION.PROVINCE_NAME),
--     '11:00~21:00', 
--     (SELECT ifnull(max(PERSONELL_ID),19) FROM BENEFIT_PERSONELL 
--     WHERE `제공대상1` = BENEFIT_PERSONELL.AMOUNT_OF_PERSONELL),
--     (SELECT ifnull(max(PARTICIPATE_ID),1) FROM DONATION_GENERAL 
--     WHERE `후원 회원 참여 여부` = DONATION_GENERAL.PATICIPATION),
--     (SELECT ifnull(max(MENTYPE_ID),2) FROM BENEFIT_MENU 
--     WHERE `제공품목(전메뉴 or 일부, 한정 상품 등)` = BENEFIT_MENU.MENU_TYPE),
--     (SELECT ifnull(max(DONATION_ID),2) FROM ROUTINAL_DONATION 
--     WHERE `월 정기 후원` = ROUTINAL_DONATION.DONATION_AMOUNT)
-- FROM `temp_dump_excel_table`;


SELECT `순번`,
    (SELECT ifnull(max(PROVINCE_ID),514) FROM LOCATION 
    WHERE `지역` = LOCATION.PROVINCE_NAME),
    (SELECT ifnull(max(PERSONELL_ID)+1, 22) FROM BENEFIT_PERSONELL 
    WHERE `제공대상1` = BENEFIT_PERSONELL.AMOUNT_OF_PERSONELL),
    (SELECT ifnull(max(DONATION_ID),2) FROM ROUTINAL_DONATION 
    WHERE `월 정기 후원` = ROUTINAL_DONATION.DONATION_AMOUNT)
    FROM `temp_dump_excel_table`;



-- DELETE FROM BENEFIT_PERSONELL;
-- INSERT INTO BENEFIT_PERSONELL(PERSONELL_ID, AMOUNT_OF_PERSONELL)
-- SELECT `순번`, `제공대상1` FROM goodinf_table
-- GROUP BY `제공대상1`;