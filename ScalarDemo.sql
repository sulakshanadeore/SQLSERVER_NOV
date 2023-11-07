-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
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
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION fn_CalculateTotalInvoiceAmt
(
	-- Add the parameters for the function here
	@p_orderno int
)
RETURNS numeric(18,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @amt numeric(18,2)

	-- Add the T-SQL statements to compute the return value here
	 select @amt=sum(quantity*unitprice) from [Order Details]
where orderid=@p_orderno

	-- Return the result of the function
	RETURN @amt

END
GO




	 

