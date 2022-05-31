---------User defined Functions--------------
/*there are two types of user defined functions
1. scalar valued
2. table valued
*/

--scalar valued functions--
/*scalar valued function always returns a scalar value functions */

create function Add_Five(@Num as int)
returns int as
Begin 
Return(@Num+5
)
end

select dbo.Add_Five(1222)

---table valued function------
---table valued function return a table instead of scalar value---

select * from employee

create function select_gender(@gender as varchar(20))
Returns table
as
Return
( select * from employee where  Gender=@gender
)

select * from dbo.select_gender('fmale');
select * from dbo.select_gender('male');