create table CLIENT_MASTER (
  CLIENTNO varchar2(6),
  NAME varchar2(20),
  ADDRESS1 varchar2(30),
  ADDRESS2 varchar2(30),
  CITY varchar2(15),
  PINCODE number(8),
  STATUS varchar2(15),
  BALDUE number(10,2)
);
insert into CLIENT_MASTER values(
  'C00001',
  'Ivan Bayross',
  '90 Chhatrapati Shivaji Road',
  'Unit 6A LBS Marg',
  'Mumbai',
  '400054',
  'Maharashtra',
  15000
);
insert into CLIENT_MASTER values(
  'C00002',
  'Mamta Mazumder',
  'Nungambakkam High Road 41',
  'Apartment 5',
  'Madras',
  '780001',
  'Tamil Nadu',
  0
);
insert into CLIENT_MASTER values(
  'C00003',
  'Chhaya Banker',
  'Flat 5 Kharghar',
  '12 Chhatrapati Shivaji Road',
  'Mumbai',
  '400057',
  'Maharashtra',
  5000
);
insert into CLIENT_MASTER values(
  'C00004',
  'Ashwini Joshi',
  '3B Brigade Road',
  'Flat 2',
  'Bangalore',
  '560001',
  'Karnataka',
  0
);
insert into CLIENT_MASTER values(
  'C00005',
  'Hansel Colaco',
  '56 Wadala',
  'Flat 5 CST Road',
  'Mumbai',
  '400060',
  'Maharashtra',
  2000
);
insert into CLIENT_MASTER values(
  'C00006',
  'Deepak Sharma',
  '4C Bannerghatta Road',
  'Flat 1',
  'Bangalore',
  '560050',
  'Karnataka',
  0
);
commit;
set linesize 100;
desc CLIENT_MASTER;
set linesize 400;
select * from CLIENT_MASTER;