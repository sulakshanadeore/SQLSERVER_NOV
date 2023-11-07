-- ================================================
-- Template generated from Template Explorer using:
-- Create Multi-Statement Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
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
CREATE FUNCTION fn_ShowProductListBycategoryID
(
	-- Add the parameters for the function here
	@categoryid int
)
RETURNS @CategoryWiseData TABLE 
(
	-- Add the column definitions for the TABLE variable here
	Pid int,
	Pname varchar(70)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	Insert into @CategoryWiseData 
	select ProductID,ProductName from Products where CategoryID=@categoryid


	RETURN 
	
END
GO