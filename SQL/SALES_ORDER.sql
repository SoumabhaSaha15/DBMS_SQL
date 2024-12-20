CREATE TABLE SALES_ORDER_MASTER(   
    ORDERNO varchar2(6) PRIMARY KEY,
    CLIENTNO varchar2(6) REFERENCES CLIENT_MASTER,
    ORDERDATE date not null, 
    DELYADDR varchar2(25), 
    SALESMANNO varchar2(6) REFERENCES SALESMAN_MASTER,
    DELYTYPE char(1) default 'F',
    BILLYN char(1),
    DELYDATE date,
    ORDERSTATUS varchar2(10),
    CHECK(ORDERNO LIKE 'O%'),
    CHECK(DELYTYPE IN ('P', 'F')),
    CHECK (ORDERSTATUS IN ('In Process', 'Fullfilled', 'Back Order', 'Cancelled')), 
    CHECK(DELYDATE > ORDERDATE)
);

INSERT INTO SALES_ORDER_MASTER VALUES ('O19001','C00001','20-JULY-02','SDP','S00001','F','N','12-JUNE-04','In Process');
INSERT INTO SALES_ORDER_MASTER VALUES ('O19002','C00002','27-JUNE-03','HWH','S00002','P','N','25-JUNE-04','Cancelled');
INSERT INTO SALES_ORDER_MASTER VALUES ('O46865','C00003','20-FEB-02','KGP','S00003','F','Y','18-FEB-04','Fullfilled');
INSERT INTO SALES_ORDER_MASTER VALUES ('O19003','C00001','07-APR-02','BZN','S00001','F','Y','03-APR-04','Fullfilled');
INSERT INTO SALES_ORDER_MASTER VALUES ('O46866','C00004','22-MAY-02','ABKA','S00002','P','N','20-MAY-04','Cancelled');
INSERT INTO SALES_ORDER_MASTER VALUES ('O19008','C00005','26-JULY-02','SDH','S00004','F','N','24-MAY-04','In Process');
COMMIT;
DROP TABLE SALES_ORDER_MASTER;