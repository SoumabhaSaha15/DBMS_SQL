--3).Retrieving records from a table.
SELECT NAME 
    FROM CLIENT_MASTER;

SELECT  * 
    FROM CLIENT_MASTER;

SELECT NAME,CITY,STATE
    FROM CLIENT_MASTER;
    
SELECT DESCRIPTION
    FROM PRODUCT_MASTER;

SELECT *
    FROM CLIENT_MASTER WHERE CITY = 'Mumbai';

SELECT *
    FROM SMAN_MASTER WHERE SAL_AMT=3000;

--new query

SELECT NAME
    FROM CLIENT_MASTER WHERE NAME LIKE '_a';
SELECT NAME
    FROM CLIENT_MASTER WHERE CITY LIKE 'M%';
SELECT NAME
    FROM CLIENT_MASTER WHERE BALDUE > 10000;
SELECT NAME
    FROM CLIENT_MASTER WHERE CITY IN('Bangalore','Mangalore');
SELECT * 
    FROM CLIENT_MASTER WHERE CLIENTNO IN('C00001','C00002');
SELECT * 
    FROM PRODUCT_MASTER WHERE SELL_PRICE BETWEEN 501 AND 750;




--4).Update records in table.
UPDATE CLIENT_MASTER 
    SET CITY = 'Bangalore' WHERE CLIENTNO = 'C00005';

UPDATE CLIENT_MASTER
    SET BALDUE = 1000 WHERE CLIENTNO = 'C00001';

UPDATE PRODUCT_MASTER
    SET SELL_PRICE = 950.00 WHERE DESCRIPTION = 'Trousers';

UPDATE SALESMAN_MASTER
    SET CITY = 'Pune';

--5).Deleting records
DELETE FROM SALESMAN_MASTER
    WHERE SAL_AMT=3500;

DELETE FROM PRODUCT_MASTER
    WHERE QTY_ON_HAND = 100;

DELETE FROM CLIENT_MASTER
    WHERE STATE = 'Tamil Nadu';

--6).Alter table structure
ALTER TABLE CLIENT_MASTER
    ADD TELEPHONE NUMBER(10);

ALTER TABLE PRODUCT_MASTER
    MODIFY SELL_PRICE NUMBER(10,2);

--8).Rename a table
ALTER TABLE SALESMAN_MASTER RENAME TO SMAN_MAST;




