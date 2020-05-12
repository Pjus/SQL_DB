-- 강의 강연 조직 구조
WITH RECURSIVE TEMP AS(
    SELECT NAME, PARENT_ORGANIZATION_SEQ AS PARENT, ORGANIZATION_SEQ FROM ORGANIZATION
    WHERE NAME = '강의/강연 신'
    UNION
    SELECT ORGANIZATION.NAME, ORGANIZATION.PARENT_ORGANIZATION_SEQ, ORGANIZATION.ORGANIZATION_SEQ
    FROM TEMP
    INNER JOIN ORGANIZATION
    ON TEMP.ORGANIZATION_SEQ = ORGANIZATION.PARENT_ORGANIZATION_SEQ

)
SELECT NAME,
    CASE
    WHEN PARENT IS NOT NULL
    THEN (SELECT NAME FROM TEMP WHERE PARENT IS NULL)
    END AS PARENT
FROM TEMP;