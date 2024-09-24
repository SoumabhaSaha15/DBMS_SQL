DROP TABLE PRODUCT_MASTER;
CREATE TABLE PRODUCT_MASTER (
    PRODUCT_NO varchar2(6),
    DESCRIPTION varchar2(15),
    PROFIT_PERCENT number(4, 2),
    UNIT_MEASURE varchar2(10),
    QTY_ON_HAND number(8),
    REORDER_LVL number(8),
    SELL_PRICE number(8, 2),
    COST_PRICE number(8, 2)
);
DESC PRODUCT_MASTER;
INSERT INTO PRODUCT_MASTER values ('P00001', 'T-shirts', 5, 'Piece', 200, 50, 350, 250);
INSERT INTO PRODUCT_MASTER values ('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350);
INSERT INTO PRODUCT_MASTER values ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450);
INSERT INTO PRODUCT_MASTER values ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500);
INSERT INTO PRODUCT_MASTER values ('P07868', 'Trousers', 5, 'Piece', 150, 50, 850, 550);
INSERT INTO PRODUCT_MASTER values ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450);
INSERT INTO PRODUCT_MASTER values ('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250);
INSERT INTO PRODUCT_MASTER values ('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175);
INSERT INTO PRODUCT_MASTER values ('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300); 
COMMIT;

SET linesize 400;

SELECT *
FROM PRODUCT_MASTER;
create  table PRODUCT_MASTER (
    PRODUCT_NO varchar2(6) primary key,
    DESCRIPTION varchar2(15) NOT NULL,
    PROFIT_PERCENT number(4,2) NOT NULL,
    UNIT_MEASURE varchar2(10) NOT NULL,
    QTY_ON_HAND number(8) NOT NULL,
    REORDER_LVL number(8) NOT NULL,
    SELL_PRICE number(8,2) NOT NULL,
    COST_PRICE number(8,2) NOT NULL,
    check(PRODUCT_NO like 'P%'),
    check(SELL_PRICE <> 0),
    check(COST_PRICE <> 0)
);
