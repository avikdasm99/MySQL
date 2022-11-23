CREATE DATABASE c2268;
USE c2268;
create table Student(
id int primary key auto_increment,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
saddr varchar(50),
squalification varchar(10) not null,
sfees double,
sdob date,
sdept varchar(20)
);
# add new column
alter table Student ADD age int after sdob;
# modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
alter table Student MODIFY sfees double not null;
# drop column
alter table Student DROP COLUMN sdept;
# change column name
alter table Student CHANGE COLUMN age sage int;
# rename table name
alter table Student RENAME TO student_details;
# insert single row
insert into student_details values
(1,'Pallabi',785955229,'pallabi@gmail.com','kolkata','MSC',1000.3,'1900-00-00',30);
# insert multiple rows
insert into student_details values
(2,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA',1000.3,'1988-10-01',27);
insert into student_details values
(3,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE',1000.3,'1988-08-02',29);
insert into student_details values
(4,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech',1000.3,'1997-07-03',23);
insert into student_details values
(5,'PUJA',834772288,'puja@gmail.com','pune','MCA',1000.3,'1998-06-04',25);
insert into student_details values
(6,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE',1000.3,'2000-05-05',29);
insert into student_details values
(7,'AKASH',834992288,'akash@gmail.com','goa','B Tech',1000.3,'1990-04-06',28);
insert into student_details values
(8,'ABHISHEK',834821188,'abhishek@gmail.com','darjeeling','MSc',1000.3,'1988-03-07',26);
insert into student_details values
(9,'BIDISHA',834824488,'bidi@gmail.com','jammu and kashmir','BE',1000.3,'1988-02-08',33);
insert into student_details values
(10,'TIYASA',834800288,'tiyasa@gmail.com','chennai','BSc',1000.3,'1979-12-09',40);