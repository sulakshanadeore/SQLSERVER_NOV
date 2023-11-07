--What are Set Operators?
--They are  special type of operators which are used to combine the result of two queries
--Set Operators
--1) Union---combine the rows of both the queries but the eliminate the duplicate rows.
--2) Union all---combine the rows of both the queries but there will no elimination of the duplicate rows.
--3)Intersect --- only common rows from both the queries will be the output.
--4) Minus/except-----the rows are combined, the rows which are the output of first query which donot 
exists in the second query will be the output.



--Rules for working with set operators:
--1) The number and the datatype  of columns must be same.
--2) If the data types are not same they should be compatible

--select employeeid,firstname from employees
--select productid,productname from products


--int--> numeric,small int
--varchar--->char,nchar,nvarchar 
--Support nvarchar/nchar--->character set of multiple languages 
--bit
--image--varbinary


use oldHR
go

select * from dept
select * from emp

select job from emp
where deptno=10
--MANAGER
--PRESIDENT

select job from emp
where deptno=20
--CLERK
--MANAGER
--ANALYST

Intersect----> manager
Union---->clerk,manager,president,analyst
union all--->clerk,manager,manager,president,analyst
minus---->president
	--full outer join
	select job from emp
where deptno=10
union
	select job from emp
where deptno=20

--full outer join
select job from emp
where deptno=10
union all
	select job from emp
where deptno=20

---inner join
select job from emp
where deptno=10
intersect
select job from emp
where deptno=20

select job from emp
where deptno=20
except
	select job from emp
where deptno=10

---Note: This is students and exammarks table example
--select rollno from students
--except 
--select rollno from examMarks

















