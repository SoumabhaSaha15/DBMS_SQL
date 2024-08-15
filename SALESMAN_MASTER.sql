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
desc SALESMAN_MASTER;