create trigger AllOperations
on emp_test  after insert,update,delete
as
DECLARE @empid AS INT;
       DECLARE @ename AS VARCHAR (20);
       DECLARE @sal AS DECIMAL (10, 2);
       DECLARE @operation AS VARCHAR (50);
	   DECLARE @enameOld AS VARCHAR (20);
       DECLARE @enameNew AS VARCHAR (20);
  BEGIN
  IF EXISTS (SELECT 0 FROM inserted)
		BEGIN
   IF EXISTS (SELECT 0 FROM deleted)
	BEGIN 
      SELECT @operation = 'UPDATE'
	  	SELECT @empid = i.empid
           FROM   inserted AS i;
           SELECT @enameOld = d.ename
           FROM   deleted AS d;
           SELECT @enameNew = i.ename
           FROM   inserted AS i;
           SET @operation = 'Updated';
           INSERT  INTO emp_UpdateHistory(empid,enameOld,enameNew,OperationPerformed,OpearationDate)
           VALUES (@empid, @enameOld, @enameNew, @operation, getdate());
           PRINT 'Transaction Update Recorded';
		end;
	

   ELSE
 BEGIN

      SELECT @operation = 'INSERT'
begin	
           SET NOCOUNT ON;
           SELECT @empid = empid
           FROM   inserted AS i;
           SELECT @ename = ename
           FROM   inserted AS i;
           SELECT @sal = sal
           FROM   inserted AS i;
           SET @operation = 'Inserted';
           INSERT  INTO emp_history(empid,ename,sal,OperationPerformed,OpearationDate)
           VALUES (@empid, @ename, @sal, @operation, getdate());
           PRINT 'Transaction Recorded';
		   end;
END  


BEGIN
   SELECT @operation = 'DELETE'
   	
		   SELECT @empid = empid
           FROM   deleted AS i;
           SELECT @ename = ename
           FROM   deleted AS i;
           SELECT @sal = sal
           FROM   deleted AS i;
           SET @operation = 'Deleted';
           INSERT  INTO emp_history(empid,ename,sal,OperationPerformed,OpearationDate)
           VALUES (@empid, @ename, @sal, @operation, getdate());
		
	END;	
END 
PRINT @Operation
END;
