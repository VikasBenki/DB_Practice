use PracticeJoins

-----indexes------
/* indexes are special data structures associated with tables or views that helkp speed up the query 
there are two types of indexes
1.clusterd indexes
2. non clusterd indexes
*/

create index IX_Employee_Salary
on Employee (Salary asc) 

sp_helpindex Employee;
