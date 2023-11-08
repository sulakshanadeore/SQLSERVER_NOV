CREATE TRIGGER trigafterUpdateInEmpTestTable
   ON  emp_test
   for Update
AS 
declare @empid int;
declare @enameOld varchar(20);
declare @enameNew varchar(20);
declare @operation varchar(50);
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	select @empid=i.empid from inserted i;
	select @enameOld=d.ename from deleted d;
		select @enameNew=i.ename from inserted i;
set @operation='Updated';
insert into emp_UpdateHistory values(@empid,@enameOld,@enameNew,@operation,getdate())
print 'Transaction Update Recorded'
END
GO