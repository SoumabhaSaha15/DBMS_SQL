drop table PRODUCT_MASTER;
create  table PRODUCT_MASTER (
    PRODUCT_NO varchar2(6),
    DESCRIPTION varchar2(15),
    PROFIT_PERCENT number(4,2),
    UNIT_MEASURE varchar2(10),
    QTY_ON_HAND number(8),
    REORDER_LVL number(8),
    SELL_PRICE number(8,2),
    COST_PRICE number(8,2)
);
set linesize 50;
desc PRODUCT_MASTER;
insert into PRODUCT_MASTER values ('P00001','T-shirts',5,'Piece',200,50,350,250);
insert into PRODUCT_MASTER values ('P0345','Shirts',6,'Piece',150,50,500,350);
insert into PRODUCT_MASTER values ('P06734','Cotton Jeans',5,'Piece',100,20,600,450);
insert into PRODUCT_MASTER values ('P07865','Jeans',5,'Piece',100,20,750,500);
insert into PRODUCT_MASTER values ('P07868','Trousers',5,'Piece',150,50,850,550);
insert into PRODUCT_MASTER values ('P07885','Pull Overs',2.5,'Piece',80,30,700,450);
insert into PRODUCT_MASTER values ('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into PRODUCT_MASTER values ('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into PRODUCT_MASTER values ('P08865','Skirts',5,'Piece',75,30,450,300);
commit;
set linesize 400;
select * from PRODUCT_MASTER;