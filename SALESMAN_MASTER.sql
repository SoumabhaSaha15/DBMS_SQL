drop table if exists SALESMAN_MASTER;
create table SALESMAN_MASTER (
    SALESMAN_NO varchar2(6),
    SALESMAN_NAME varchar2(20),
    ADDRESS_1 varchar2(30),
    ADDRESS_2 varchar2(30),
    CITY varchar2(20),
    PINCODE number(8),
    STATE varchar2(20),
    SAL_AMT number(8,2),
    TGT_TO_GET number(6,2),
    YTD_SALES number(6,2),
    REMARKS varchar2(60)
);
set linesize 100;
desc SALESMAN_MASTER;
insert into SALESMAN_MASTER values (
    'S00001',
    'Aman',
    'A/14',
    'Worli',
    'Mumbai',
    400002,
    'Maharashtra',
    10000.00,
    5000.00,
    2000.00,
    'Good Salesman'
);
insert into SALESMAN_MASTER values (
    'S00002',
    'Omkar',
    '65',
    'Niriman',
    'Mumbai',
    400001,
    'Maharashtra',
    12000.00,
    6000.00,
    3000.00,
    'Excellent Salesman'
);
insert into SALESMAN_MASTER values (
    'S00003',
    'Raj',
    'P-7',
    'Bandra',
    'Mumbai',
    400032,
    'Maharashtra',
    15000.00,
    7000.00,
    4000.00,
    'Outstanding Salesman'
);
insert into SALESMAN_MASTER values (
    'S00004',
    'Ashish',
    'A/5',
    'Juhu',
    'Mumbai',
    400044,
    'Maharashtra',
    15000.00,
    7000.00,
    4000.00,
    'Nice Salesman'
);
set linesize 400;
select * from SALESMAN_MASTER;
commit;