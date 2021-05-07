================================================
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
-- Author:		#############################
-- Create date: 07/05/2021
-- Description:	Delete existing record by id
-- =============================================
CREATE PROCEDURE usp_DeletePropertyListing 
	-- Add the parameters for the stored procedure here
	@PropertyID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Delete statements for procedure here
	DELETE FROM PropertyListing WHERE PropertyID = @PropertyID
	RETURN
END
GO
