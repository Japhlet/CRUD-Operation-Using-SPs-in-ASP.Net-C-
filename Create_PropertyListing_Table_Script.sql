USE [PropertySPDemo]
GO

/****** Object:  Table [dbo].[PropertyListing]    Script Date: 5/7/2021 2:04:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PropertyListing](
	[PropertyID] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](20) NULL,
	[PropertyAddress] [nvarchar](30) NULL,
	[PropertyPrice] [money] NULL,
	[AvailableUnits] [nvarchar](15) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_PropertyListing] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PropertyListing] ADD  CONSTRAINT [DF_PropertyListing_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO

