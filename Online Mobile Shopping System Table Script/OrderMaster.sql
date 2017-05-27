USE [Shopping]
GO

/****** Object:  Table [dbo].[OrderMaster]    Script Date: 05/22/2017 15:36:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OrderMaster](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[registerId] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
	[shippingAddress] [varchar](200) NULL,
	[emailId] [varchar](80) NOT NULL,
	[orderdate] [date] NULL,
	[ProductImage] [varchar](100) NULL,
	[Username] [varchar](60) NULL,
	[paymentMode] [varchar](20) NULL,
	[productName] [varchar](50) NULL,
	[status] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[emailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[OrderMaster]  WITH CHECK ADD FOREIGN KEY([registerId])
REFERENCES [dbo].[RegistrationMaster] ([registerId])
GO

ALTER TABLE [dbo].[OrderMaster]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[products] ([pid])
GO


