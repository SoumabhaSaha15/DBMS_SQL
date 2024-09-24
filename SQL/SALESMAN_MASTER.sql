-- DROP TABLE SALESMAN_MASTER;

create table SALESMAN_MASTER (
    SALESMAN_NO varchar2(6) PRIMARY KEY,
    SALESMAN_NAME varchar2(20) NOT NULL,
    ADDRESS_1 varchar2(30) NOT NULL,
    ADDRESS_2 varchar2(30),
    CITY varchar2(20),
    PINCODE number(8),
    STATE varchar2(20),
    SAL_AMT number(8,2) NOT NULL,
    TGT_TO_GET number(6,2) NOT NULL,
    YTD_SALES number(6,2) NOT NULL,
    REMARKS varchar2(60),
    check ( SALESMAN_NO LIKE 'S%'),
    check ( SAL_AMT <> 0),
    check ( TGT_TO_GET <> 0)
);
DESC SALESMAN_MASTER;
INSERT INTO SALESMAN_MASTER values ( 'S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 10000.00, 5000.00, 2000.00, 'Good Salesman' );
INSERT INTO SALESMAN_MASTER values ( 'S00002', 'Omkar', '65', 'Niriman', 'Mumbai', 400001, 'Maharashtra', 12000.00, 6000.00, 3000.00, 'Excellent Salesman' );
INSERT INTO SALESMAN_MASTER values ( 'S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 15000.00, 7000.00, 4000.00, 'Outstanding Salesman' );
INSERT INTO SALESMAN_MASTER values ( 'S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 15000.00, 7000.00, 4000.00, 'Nice Salesman' );

-- SET linesize 400;

SELECT  *
FROM SALESMAN_MASTER;
COMMIT;