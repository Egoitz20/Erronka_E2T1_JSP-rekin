/* 1. Datu-basean Santurtzin eraiki berri duten biltegiko informazioa sartu behar duzue (biltegiko kokalekua zehaztu baita ere). */
INSERT INTO KOKALEKU (ID, ID_HERRIALDE, HELBIDEA, POSTAKODEA, UDALERRIA, PROBINTZIA)
VALUES (24, 'SP', 'PAJARES 34', '48980', 'SANTURTZI' , 'BIZKAIA');

INSERT INTO BILTEGI (ID, IZENA, ID_KOKALEKU)
VALUES (10, 'Santurtzi', 24);

/* 2. Printzipioz, Santurtziko biltegian, “Bombay”ko biltegian dauden produktu berdinak egongo dira eta kopuru bera ere bai. */
INSERT INTO INBENTARIO (ID_PRODUKTU, ID_BILTEGI, KOPURUA)
SELECT ID_PRODUKTU, 10 AS ID_BILTEGI, KOPURUA FROM INBENTARIO WHERE ID_BILTEGI = 9;

/* 3. Produktu hauetaz aparte, biltegian “Seagate ST2000DX002” izeneko 150 disko gogor daude. */
INSERT INTO INBENTARIO (ID_PRODUKTU, ID_BILTEGI, KOPURUA) SELECT p.ID, 10, 150
FROM PRODUKTU p WHERE p.IZENA = 'Seagate ST2000DX002';

/* 4. “Singapore”en dagoen kokalekuaren helbidea aldatu (helbidea: 270 Orchard Rd; posta kodea: 238857) */
UPDATE KOKALEKU SET HELBIDEA = '270 Orchard Rd', POSTAKODEA = 238857
WHERE ID = 14;

/* 5. “Video Card” kategoriako produktu guztien salneurria %10a igo. */
UPDATE PRODUKTU p JOIN KATEGORIA k ON p.ID_KATEGORIA = k.ID
SET p.SALNEURRIA = ROUND(p.SALNEURRIA * 1.10, 2) WHERE k.IZENA = 'Video Card';

/* 6. Bezero guztien izen eta abizenak eguneratu letra larriz gordeta gera daitezen. */
UPDATE BEZERO  SET IZENA = UPPER(IZENA), ABIZENA = UPPER(ABIZENA);

/* 7. “Harriet Ferguson” langilearen lanpostua aldatu, bere lanpostu berria “Purchasing Clerk” izango da eta bere nagusi berria “Ella Wallace”. */
UPDATE LANGILE SET ID_NAGUSI = 47 WHERE ID = 97;
UPDATE BULEGARI SET ID_LANPOSTU = 13 WHERE ID = 97;  

/* 8. 102 identifikadorea duen eskariaren eskaera-data aldatu 2016ko abenduaren 10a izan daiten. */
UPDATE ESKARI SET ESKAERA_DATA = '2016-12-10' WHERE ID LIKE 102;

/* 9. 5 identifikadorea duen eskaria eta bere eskari lerroak ezabatu. */
DELETE FROM ESKARI WHERE ID = 5;

/* 10. Produkturik gabeko katerogiak ezabatu */
DELETE FROM KATEGORIA
WHERE NOT EXISTS (
    SELECT 1
    FROM PRODUKTU p
    WHERE p.ID_KATEGORIA = KATEGORIA.ID
);

/* 11. ‘Lucy Crawford’ langilea ezabatu */
DELETE FROM LANGILE WHERE ID = 73;

/* 12. ‘Grace Ellis’ langilea ezabatu */
DELETE FROM LANGILE WHERE ID = 55;