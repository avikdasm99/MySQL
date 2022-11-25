use c2268;
create table customer1(
cust_id varchar(3) primary key,
Fname varchar(25) not null,
Lname varchar(25),
Area char(2) not null,
Phone bigint(10));
insert into customer1 values
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Ray','MU',5560379),
('A03','Pramada','Jauguste','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','GH',5125274);

create table movie( 
mv_no integer primary key auto_increment,
cust_id varchar(3),
title varchar(20) not null,
star char(2) not null,
price integer(3),
FOREIGN KEY (cust_id) REFERENCES customer1(cust_id));

insert into movie values
(1,'A02','Bloody','JC', 181),
(2,'A04','The Firm','TC', 200),
(3,'A01','Pretty Woman','RG', 151),
(4,'A06','Home Alone','MC', 150),
(5,'A05','The Fugitive','MF', 200),
(6,'A03','Coma','MD', 100),
(7,'A02','Dracula','GO', 150),
(8,'A06','Quick Change','BM', 100),
(9,'A03','Gone with the Wind','CB', 200),
(10,'A05','Carry on Doctor','LP', 100);

# Display the movie titles, whose price is greater than 100 but less than 200.
select title from movie where price>100 and price<200;

# Display the cust_id who have seen movies having stars as either JC or TC or MC
select cust_id from movie where star='JC' or star='TC' or star='MC';

# Display the details of those customers who have an A in their area name.
select * from customer1 where Area like '%A%';

# Display the movie titles, whose price is within 180 and the movie titles are of exactly 
# 6 characters.
select title from movie where price<=180 and length(title)= 6;

# Display the movie name, their original prices and the prices after 10% increment. 
# Give alias name to the incremented price column.
select title,price,price*(110/100) as 'incremented_price' from movie;

# ------------------------------------------------------------------------
