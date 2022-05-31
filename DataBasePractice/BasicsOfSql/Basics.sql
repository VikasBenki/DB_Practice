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
select Player_Name, dateOfBirth from RCB;
select distinct country from RCB;
select * from RCB where country = 'india';
select * from RCB where country = 'india' order by  Age desc;
select city, count (*) as number from RCB where country='india' group by city order by city desc;
select city, count (*) as numbers from RCB where country ='india' group by city having count(*)>0 order by city;

/* ----------- sorting of data from table using selct keyword and order by clause --- */
select * from RCB order by Role desc;
select * from RCB order by LEN(Player_Name) desc;
select * from RCB order by 2, 3;

/* ----------Limiting the rows using offset and Limit command ----- */

select * from RCB order by 1 OFFSET 3 rows;
select * from RCB order by 1 offset 2 rows fetch next 5 rows only;
select top 50 percent * from RCB order by 2;
select top 5 * from RCB;
select top 5 * from RCB order by 1 desc;
select top 5 with ties * from RCB order by 1 desc;

/* ---------- filetering of data from table Using operators-----*/
---distinct----
select distinct Age, Player_Name, Player_id from RCB;
select distinct city, Player_Name from RCB order by 2 desc;

---Where-----
select * from RCB where country ='India'and Role = 'Bowler' order by Player_Name;
select * from RCB where Age>28 and Role = 'Bowler' order by Player_Name;
select * from RCB where Age>28 and Role = 'Bowler'or Role = 'Batsman' order by Player_Name;
select * from RCB where Age in(28) and Role = 'Bowler'or Role = 'Batsman' order by Player_Name;
select * from RCB where Age not in(32) and Role ='batsman' or role = 'Batting Allrounder';
select * from RCB where Player_id Between 3 and 11;
select * from RCB where Player_Name like 'h%'; -----string starts with h ----
select * from RCB where Player_Name like '%a'; --- means string ends with a---
select * from RCB where Player_Name like 'R%r'; --- means string starts with R and ends with r---
select * from RCB where Player_Name like '_a%'; --- means string where second letter will be a---
select * from RCB where Player_Name like '[i]%'; --- means string starting letter will be from that character set---
select * from RCB where Player_Name like '[s-v]%'; --- means string starting letter will b from that range of character set---
select * from RCB where Player_Name like '[^s-v]%'; --- means string starting letter will not be in that range---
select * from RCB where Player_Name not like '[^s-v]%'; --- means string starting letter will  be in that range---


