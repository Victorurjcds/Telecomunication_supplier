SELECT * FROM ono;      -- created table ok.

SELECT * FROM ono
WHERE COLUMNA1 BETWEEN 2 AND 8;

CREATE TABLE house     -- create a table to populate
(colno NUMBER(3),
id_client VARCHAR2(26),
callno VARCHAR2(26),
date_ VARCHAR2(26),
callty VARCHAR2(26),
destiny VARCHAR2(128),
tax VARCHAR2(26),
sec VARCHAR2(26),
costs VARCHAR2(26));

SELECT * FROM ono a
WHERE a.columna1 BETWEEN 2 AND 8; -- my new table.

INSERT INTO house 
(SELECT COLUMNA1,COLUMNA2,COLUMNA4,COLUMNA5,COLUMNA6,COLUMNA7,COLUMNA8,COLUMNA9,COLUMNA10 FROM ono
WHERE ono.COLUMNA1 BETWEEN 2 AND 8); 

SELECT * FROM house; -- new table was created.
COMMIT;
--------------------------------------------------------------------------------

UPDATE house h
SET h.id_client = 'id_1';

SELECT * FROM house;
COMMIT;

UPDATE house h
SET h.date_=EXTRACT(DAY FROM CAST(DATE_ AS TIMESTAMP));

UPDATE house h
SET h.date_= TO_CHAR(TO_DATE(date_,'MM/DD/YY HH24:MI'), 'DD/MM');

SELECT * FROM house;
COMMIT;

--------------------------------------------------------------------------------
-- CREATE phone table:
CREATE TABLE mobile     -- create a table to populate
(colno NUMBER(3),
id_client VARCHAR2(26),
callno VARCHAR2(26),
date_ VARCHAR2(26),
callty VARCHAR2(26),
destiny VARCHAR2(128),
tax VARCHAR2(26),
sec VARCHAR2(26),
costs VARCHAR2(26));

SELECT * FROM ono a
WHERE a.columna1 BETWEEN 11 AND 53; -- my new table.

INSERT INTO mobile 
(SELECT COLUMNA1,COLUMNA2,COLUMNA4,COLUMNA5,COLUMNA6,COLUMNA7,COLUMNA8,COLUMNA9,COLUMNA10 FROM ono
WHERE ono.COLUMNA1 BETWEEN 10 AND 53); 

SELECT * FROM mobile;
COMMIT;
--------------------------------------------------------------------------------

UPDATE mobile m
SET m.id_client = 'id_1';

SELECT * FROM mobile;
COMMIT;

UPDATE mobile m
SET m.date_= TO_CHAR(TO_DATE(date_,'MM/DD/YY HH24:MI'), 'DD/MM');
SELECT * FROM mobile;
COMMIT;
--------------------------------------------------------------------------------



