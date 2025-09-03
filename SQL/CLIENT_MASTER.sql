DROP TABLE CLIENT_MASTER;

CREATE TABLE CLIENT_MASTER ( 
    CLIENTNO varchar2(6), 
    NAME varchar2(20), 
    ADDRESS1 varchar2(30), 
    ADDRESS2 varchar2(30), 
    CITY varchar2(15), 
    PINCODE number(8), 
    STATE varchar2(15), 
    BALDUE number(10, 2) 
);

DESC CLIENT_MASTER;
INSERT INTO CLIENT_MASTER values( 'C00001', 'Ivan Bayross', '90 Chhatrapati Shivaji Road', 'Unit 6A LBS Marg', 'Mumbai', '400054', 'Maharashtra', 15000 );
INSERT INTO CLIENT_MASTER values( 'C00002', 'Mamta Mazumder', 'Nungambakkam High Road 41', 'Apartment 5', 'Madras', '780001', 'Tamil Nadu', 0 );
INSERT INTO CLIENT_MASTER values( 'C00003', 'Chhaya Banker', 'Flat 5 Kharghar', '12 Chhatrapati Shivaji Road', 'Mumbai', '400057', 'Maharashtra', 5000 );
INSERT INTO CLIENT_MASTER values( 'C00004', 'Ashwini Joshi', '3B Brigade Road', 'Flat 2', 'Bangalore', '560001', 'Karnataka', 0 );
INSERT INTO CLIENT_MASTER values( 'C00005', 'Hansel Colaco', '56 Wadala', 'Flat 5 CST Road', 'Mumbai', '400060', 'Maharashtra', 2000 );
INSERT INTO CLIENT_MASTER values( 'C00006', 'Deepak Sharma', '4C Bannerghatta Road', 'Flat 1', 'Bangalore', '560050', 'Karnataka', 0 );

SELECT  * FROM CLIENT_MASTER;
COMMIT;

CREATE TABLE CLIENT_MASTER (
    CLIENTNO varchar2(6) PRIMARY KEY, 
    NAME varchar2(20) NOT NULL, 
    ADDRESS1 varchar2(30), 
    ADDRESS2 varchar2(30), 
    CITY varchar2(15), 
    PINCODE number(8), 
    STATES varchar2(15), 
    BALDUE number(10, 2),
    CHECK(CLIENTNO LIKE 'C%')
);
ALTER TABLE CLIENT_MASTER RENAME COLUMN STATES TO STATE;