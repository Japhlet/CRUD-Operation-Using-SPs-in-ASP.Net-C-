-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		##########
-- Create date: 07/05/2021
-- Description:	Add New PropertyListing Record
-- =============================================
CREATE PROCEDURE usp_AddPropertyListing
	-- Add the parameters for the stored procedure here
	@PropertyName nvarchar(20),
	@PropertyAddress nvarchar(30),
	@PropertyPrice money,
	@AvailableUnits nvarchar(15),
	@PropertyID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PropertyListing(PropertyName, PropertyAddress, PropertyPrice, AvailableUnits)

	VALUES(@PropertyName, @PropertyAddress, @PropertyPrice, @AvailableUnits)
	
	SET @PropertyID = SCOPE_IDENTITY()
	
	RETURN @PropertyID
END
GO