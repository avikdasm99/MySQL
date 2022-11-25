use c2268;
create table CUSTOMER(Cust_id varchar(5),
Fname varchar(15),Lname varchar(15),Area char(2), Phone bigint(10),
DOB date,Payment numeric(6));
insert into CUSTOMER values
('A01','Ivan','Ross','SA',6125467,'86-01-15',800.50),
('A02','Vandana','Ray','MU',5560379,'87-12-20',1000.75),
('A03','Pramada','Jauguste','DA',4560389,'67-07-25',500.00),
('A04','Basu','Navindi','BA',6125401,'56-02-29',860.00),
('A05','Ravi','Shridhar','NA',null,'89-02-15',500.50),
('A06','Rukmini','Aiyer','GH',5125274,'87-07-23',1500.50);
select * from CUSTOMER;

# Insert a row
INSERT INTO CUSTOMER (Cust_id, Fname, Lname, Area,Phone, DOB, Payment)
VALUES ('A07','Avik','Das','GH',5125274,'87-07-23',1500.50);

# Display the data in the table
select * from CUSTOMER;

# Update the phone numbers of customer A02 and A04.
update CUSTOMER set Phone=123456 where Cust_id='A04';
update CUSTOMER set Phone=125456 where Cust_id='A02';

# Update the date of birth of customer A03 and A05
update CUSTOMER set DOB='87-01-23' where Cust_id='A03';
update CUSTOMER set DOB='87-06-23' where Cust_id='A05';

# Display the data in the table
select * from CUSTOMER;

# Delete 2 rows from the table for customers A01 and A05.
DELETE FROM CUSTOMER WHERE Cust_id='A01';
DELETE FROM CUSTOMER WHERE Cust_id='A05';

# Delete all the rows from the table.
TRUNCATE TABLE CUSTOMER;  

# Insert 5 records according to your own wish.
insert into CUSTOMER values
('A01','Ivan','Ross','SA',6125467,'86-01-15',800.50),
('A02','Vandana','Ray','MU',5560379,'87-12-20',1000.75),
('A03','Pramada','Jauguste','DA',4560389,'67-07-25',500.00),
('A04','Basu','Navindi','BA',6125401,'56-02-29',860.00),
('A05','Ravi','Shridhar','NA',null,'89-02-15',500.50);

# Update one record based on any criteria according to your own wish
update CUSTOMER set Fname='AVIK' where Cust_id='A01';

# Delete any 1 record from the table based on particular criteria.
DELETE FROM CUSTOMER WHERE Lname='Jauguste';