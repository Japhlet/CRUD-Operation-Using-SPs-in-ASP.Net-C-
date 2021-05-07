USE [PropertySPDemo]
GO

/****** Object:  StoredProcedure [dbo].[usp_ListProperties]    Script Date: 5/7/2021 2:58:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		################
-- Create date: 07/05/2021
-- Description:	Retrieve PropertyListing Records
-- =============================================
CREATE PROCEDURE [dbo].[usp_ListProperties]
	-- Add the parameters for the stored procedure here
	@PropertyID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Read statements for procedure here
	if(@PropertyID != 0) 
		BEGIN 
			SELECT * FROM PropertyListing WHERE PropertyID = @PropertyID
		END
	else
		BEGIN
			SELECT * FROM PropertyListing
		END
END
GO