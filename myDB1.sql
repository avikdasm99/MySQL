CREATE database myDB1;
USE myDB1;
create table Fruits(SL int primary key auto_increment, 
fruit_name VARCHAR(10),fruit_Color VARCHAR(20));
alter table Fruits add fruit_price int after fruit_Color;
alter table Fruits rename to Fruits_details;
#delets all rows from the table
truncate table Fruits_details;
#deletes all (Structure and records)
drop table Fruits_details;