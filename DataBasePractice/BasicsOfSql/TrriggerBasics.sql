 alter trigger Tr_Employee_forInsert
 on Employee
 for insert
 As
 Begin

  Declare @Emp_Id int
 select @Emp_Id=Emp_Id from inserted
 insert into AuditTable 
 values('new employee with EmpId = '+ cast(@Emp_Id as varchar(5))+'is added at'+ cast(getdate() as varchar(30)))
 end

 insert into Employee values ('hwlle', 'manager', 'banglore', 1999-02-14, 35000, 'male');
 select * from Employee


Create table AuditTable
(
id int identity,
AuditData varchar(225)
);
drop table AuditTable

 alter trigger tr_Employee_ForDelete 
 On Employee
 For delete
 as
 Begin
 Declare @Emp_Id int
 select @Emp_Id=Emp_Id from deleted
  insert into AuditTable 
 values('the existing employee with EmpId = '+ cast(@Emp_Id as varchar(5))+' is deleted at'+ cast(getdate() as varchar(30)))

 end

 delete from employee where Emp_Id =11
 select * from AuditTable