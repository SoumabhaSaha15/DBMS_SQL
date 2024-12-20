CREATE TABLE SALES_ORDER_DETAILS_MASTER( 
    ORDERNO VARCHAR2(6) REFERENCES SALES_ORDER_MASTER, 
    PRODUCTNO VARCHAR2(6) REFERENCES PRODUCT_MASTER, 
    QTYORDERED NUMBER(8), 
    QTYDISP NUMBER(8), 
    PRODUCTRATE NUMBER(10, 2), 
    PRIMARY KEY(ORDERNO, PRODUCTNO)
);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19001','P00001',4,4,525);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19001','P07965',2,1,8400);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19001','P07885',2,1,5250);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19002','P00001',10,0,525);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46865','P07868',3,3,3150);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46865','P07885',3,1,5250);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46865','P00001',10,10,525);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46865','P0345',4,4,1050);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19003','P0345',2,2,1050);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19003','P06734',1,1,12000);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46866','P07965',1,0,8400);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O46866','P07975',1,0,1050);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19008','P00001',10,5,525);
INSERT INTO SALES_ORDER_DETAILS_MASTER VALUES ('O19008','P07975',5,3,1050);
COMMIT;