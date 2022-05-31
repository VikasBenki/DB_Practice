/*-----creating the database ---------*/
/* database is created using the 'create database' command----*/
Create DataBase IPL;
use IPL;

/*------Droping or deleting the database-----*/
---to drop or delete the database use 'drop database databasename' command --------
drop database IPL;

/*------Creating the table----*/
---to create a table use 'Create Table TableName' command --------

create table RCB
(
Player_id int identity(1,1) primary key,
Player_Name varchar(255),
dateOfBirth date,
Age int not null,
Role varchar(255),
country varchar(255),
city varchar(255),
)

select * from RCB;
Truncate table RCB;

/* to drop table or delete the table */
---to drop or delete table use 'Drop table TableName' command----
drop table RCB;

/* inserting values into table */
----to insert values use insert command and values to insert into table----

insert into RCB(Player_Name, dateOfBirth, Age, Role, country, city) values
('duPlessis','1984-07-13', 37, 'Batsman', 'south africa', 'Pretoria'),
('DineshKarthik', '1985-06-01', 36, 'WK-Batsman', 'India', 'tamilnadu'),
('ViratKholi', '1988-11-05', 33, 'Batsman', 'India', 'Delhi'),
('glenMaxwell', '1988-10-14', 33, 'Batting Alrounder', 'Australlia', 'victoria'), 
('RajatPatidar', '1993-06-01', 28, 'Batsman', 'India', 'MadyaPradesh'),
('Lomror', '1999-11-16', 22, 'Batting Alrounder', 'India', 'Rajastan'),
('ShahbazAhmed', '1994-12-12', 27, 'Bowling Allrounder', 'India', 'Haryana'),
('Hasaranga', '1997-07-29', 24, 'Bowling Allrounder', 'srilanka', 'Galle'),
('Harshal Patel', '1990-11-23', 31, 'Bowler', 'India', 'Gujarat'),
('Mohammed Siraj', '1994-05-03', 28 , 'Bowler', 'India', 'Hyderabad'),
('Siddarth kaul', '1990-05-19', 32, 'Bowler', 'India', 'Punjab'),
('Josh Hazelwood', '1991-01-08', 31, 'Bowler', 'Australlia', 'SouthWales');

/*----- Altering the table -------*/
---- use alter TableName to allter the table ---

Alter table RCB Add Gender char Not Null Default 'M';

/* --------Querying data from the table using select keyword and where clause -----*/

select * from RCB;
select Player_name, dateOfBirth from RCB;
select distinct country from RCB;
select * from RCB where country = 'india';
select * from RCB where country = 'india' order by  Player_name desc;
select count(*)from RCB where country = 'india' group by city='', order by country desc;
--------string functions--
select '     vikas';
select LTRIM('     vikas')
select REVERSE('vikas')
select 'this is vikas'
select SUBSTRING ('this is vikas', 9,5)
select AVG(Age) as avgage , role from Rcb group by Role having AVG(Age)>30;