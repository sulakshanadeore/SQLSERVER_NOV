--:Views:
--Views are virtual tables, they donot hold any data with themselves but fetch the data from the table.
--They are used for security purpose to have encapsulation over the table from the users to show only limited data to the users with particular access levels.

select * from emp

--role with number of users in that role

--security(5)---ename,deptno(read only permission---->read only view)
		      --select/view
--accounts(2)---ename,empno,sal,comm----> (update)(read/write permission----> Simple View)
					--Updating
--hr(4)---empno,ename,job,mgr,hiredate,deptno--->(I/U/D/View data)(read/write permission----> Simple View)
    ---Insert/Update/Delete

Types:
1) Simple/Updateable
2)Readonly
3) Complex views