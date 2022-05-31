----case statement------
/* case statement helps in multiwa y decision making  
syntax of case statement
case
when condition1 then result1
when condition2 then result2
when condition3 then result3
else result
end;
*/

select 
case 
when 10>20 then '10 is greater than 20'
when 10<20 then '10 is lesser than 20'
else '10 is equal to 20'
end;

select * from Employee

select *, grade =
case
when salary<30000 then 'c'
when salary<50000 then 'B'
else 'A'
end
from Employee
go