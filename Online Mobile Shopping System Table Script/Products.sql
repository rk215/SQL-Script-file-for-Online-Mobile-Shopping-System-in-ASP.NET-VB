USE [Shopping]
GO

/****** Object:  Table [dbo].[products]    Script Date: 05/22/2017 15:36:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[products](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](40) NULL,
	[ptype] [varchar](40) NULL,
	[brand] [varchar](50) NULL,
	[battery] [varchar](20) NULL,
	[simtype] [varchar](20) NULL,
	[Fcamera] [varchar](20) NULL,
	[Bcamera] [varchar](10) NULL,
	[osversion] [varchar](30) NULL,
	[plat_form] [varchar](8) NULL,
	[modelNo] [varchar](15) NULL,
	[screen] [varchar](30) NULL,
	[network] [varchar](20) NULL,
	[sensor] [varchar](200) NULL,
	[Bflash] [varchar](20) NULL,
	[processor] [varchar](50) NULL,
	[MImage] [varchar](500) NULL,
	[FirstImage] [varchar](500) NULL,
	[SecondImage] [varchar](500) NULL,
	[ThirdImage] [varchar](500) NULL,
	[color] [varchar](15) NULL,
	[Ram] [varchar](15) NULL,
	[Gpu] [varchar](15) NULL,
	[price] [numeric](10, 2) NULL,
	[qty] [int] NULL,
	[operatingFrequency] [varchar](50) NULL,
	[InternalStroge] [varchar](15) NULL,
	[ExpandStorage] [varchar](15) NULL,
	[Dimension] [varchar](50) NULL,
	[warranty] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


