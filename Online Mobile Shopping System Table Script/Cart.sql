USE [Shopping]
GO

/****** Object:  Table [dbo].[cart]    Script Date: 05/22/2017 15:35:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[cart](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[pname] [varchar](40) NULL,
	[MImage] [varchar](100) NULL,
	[price] [numeric](10, 2) NULL,
	[qty] [int] NULL,
	[registerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([registerId])
REFERENCES [dbo].[RegistrationMaster] ([registerId])
GO


