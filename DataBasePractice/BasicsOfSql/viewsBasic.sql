use PracticeJoins;
-----views--
----views is a virtual table based on the result of an sql statement---
 create view female_employees as
 select * from Employee
 where Gender ='fmale';

 select * from female_employees

 drop view female_employees;