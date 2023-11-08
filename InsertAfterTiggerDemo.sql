-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER trigafterInsertInEmpTestTable
   ON  emp_test
   AFTER INSERT
AS 
declare @empid int;
declare @ename varchar(20);
declare @sal decimal(10,2);
declare @operation varchar(50);

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	select @empid=empid from inserted i;
		select @ename=ename from inserted i;
		select @sal=sal from inserted i;

set @operation='Inserted';
insert into emp_history values(@empid,@ename,@sal,@operation,getdate())
print 'Transaction Recorded'
END
GO
