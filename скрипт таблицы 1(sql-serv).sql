USE [Склад]
GO

/****** Object:  Table [dbo].[Движение товара]    Script Date: 13.11.2019 17:13:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Движение товара](
	[Код операции] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Тип операции] [nchar](10) NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Движение товара] PRIMARY KEY CLUSTERED 
(
	[Код операции] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

