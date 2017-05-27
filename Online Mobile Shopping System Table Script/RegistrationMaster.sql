USE [Shopping]
GO

/****** Object:  Table [dbo].[RegistrationMaster]    Script Date: 05/22/2017 15:36:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RegistrationMaster](
	[registerId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[firstname] [varchar](20) NULL,
	[lastname] [varchar](30) NULL,
	[phoneNumber] [numeric](10, 0) NULL,
	[addres] [varchar](50) NULL,
	[creditOrdebit] [numeric](16, 0) NULL,
	[city] [varchar](40) NULL,
	[stat] [varchar](40) NULL,
	[zipcode] [numeric](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[registerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[RegistrationMaster]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[LoginMaster] ([username])
GO


