USE [master]
GO
/****** Object:  Database [Import-Export]    Script Date: 06.12.2019 15:30:54 ******/
CREATE DATABASE [Import-Export]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Склад', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Склад.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Склад_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Склад_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Import-Export] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Import-Export].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Import-Export] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Import-Export] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Import-Export] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Import-Export] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Import-Export] SET ARITHABORT OFF 
GO
ALTER DATABASE [Import-Export] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Import-Export] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Import-Export] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Import-Export] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Import-Export] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Import-Export] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Import-Export] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Import-Export] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Import-Export] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Import-Export] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Import-Export] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Import-Export] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Import-Export] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Import-Export] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Import-Export] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Import-Export] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Import-Export] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Import-Export] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Import-Export] SET  MULTI_USER 
GO
ALTER DATABASE [Import-Export] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Import-Export] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Import-Export] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Import-Export] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Import-Export] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Import-Export] SET QUERY_STORE = OFF
GO
USE [Import-Export]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Import-Export]
GO
/****** Object:  Table [dbo].[Buyers]    Script Date: 06.12.2019 15:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyers](
	[Код покупателя] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Название фирмы] [nchar](20) NOT NULL,
	[Адрес] [nchar](100) NOT NULL,
	[Телефон] [nchar](20) NOT NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Покупатели] PRIMARY KEY CLUSTERED 
(
	[Код покупателя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export]    Script Date: 06.12.2019 15:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export](
	[Код операции экспорта] [int] IDENTITY(1,1) NOT NULL,
	[Тип операции] [nchar](10) NULL,
	[Дата получения] [date] NOT NULL,
	[ID-пользователя] [int] NOT NULL,
	[Код товара] [numeric](18, 0) NOT NULL,
	[Код Покупателя] [numeric](18, 0) NOT NULL,
	[Номер накладной] [nchar](20) NOT NULL,
	[Количество товара] [int] NOT NULL,
	[Цена] [money] NOT NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Расход] PRIMARY KEY CLUSTERED 
(
	[Код операции экспорта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 06.12.2019 15:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Код операции импорта] [int] IDENTITY(1,1) NOT NULL,
	[Тип операции] [nchar](10) NULL,
	[Дата] [date] NOT NULL,
	[ID-пользователя] [int] NOT NULL,
	[Код товара] [numeric](18, 0) NOT NULL,
	[Код поставщика] [numeric](18, 0) NOT NULL,
	[Номер накладной] [nchar](20) NOT NULL,
	[Количество товара] [int] NOT NULL,
	[Цена] [money] NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Приход] PRIMARY KEY CLUSTERED 
(
	[Код операции импорта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06.12.2019 15:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Код товара] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Название товара] [nchar](20) NOT NULL,
	[Ед. измерения] [nchar](20) NOT NULL,
	[Цена за ед.] [money] NOT NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Справочник товаров] PRIMARY KEY CLUSTERED 
(
	[Код товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 06.12.2019 15:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Код поставщика] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Название фирмы] [nchar](20) NOT NULL,
	[Адрес] [nchar](100) NOT NULL,
	[Телефон] [numeric](18, 0) NULL,
	[Примечание] [nchar](50) NULL,
 CONSTRAINT [PK_Поставщики] PRIMARY KEY CLUSTERED 
(
	[Код поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.12.2019 15:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID-пользователя] [int] IDENTITY(1,1) NOT NULL,
	[Логин] [nchar](10) NOT NULL,
	[Пароль] [nchar](10) NOT NULL,
	[ФИО] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID-пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Export] ADD  CONSTRAINT [DF_Export_Тип операции]  DEFAULT (N'Экспорт') FOR [Тип операции]
GO
ALTER TABLE [dbo].[Import] ADD  CONSTRAINT [DF_Import_Тип операции]  DEFAULT (N'Импорт') FOR [Тип операции]
GO
ALTER TABLE [dbo].[Export]  WITH CHECK ADD  CONSTRAINT [FK_Export_Users] FOREIGN KEY([ID-пользователя])
REFERENCES [dbo].[Users] ([ID-пользователя])
GO
ALTER TABLE [dbo].[Export] CHECK CONSTRAINT [FK_Export_Users]
GO
ALTER TABLE [dbo].[Export]  WITH CHECK ADD  CONSTRAINT [FK_Экспорт_Покупатели] FOREIGN KEY([Код Покупателя])
REFERENCES [dbo].[Buyers] ([Код покупателя])
GO
ALTER TABLE [dbo].[Export] CHECK CONSTRAINT [FK_Экспорт_Покупатели]
GO
ALTER TABLE [dbo].[Export]  WITH CHECK ADD  CONSTRAINT [FK_Экспорт_Товары] FOREIGN KEY([Код товара])
REFERENCES [dbo].[Products] ([Код товара])
GO
ALTER TABLE [dbo].[Export] CHECK CONSTRAINT [FK_Экспорт_Товары]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Users] FOREIGN KEY([ID-пользователя])
REFERENCES [dbo].[Users] ([ID-пользователя])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Users]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Импорт_Поставщики] FOREIGN KEY([Код поставщика])
REFERENCES [dbo].[Suppliers] ([Код поставщика])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Импорт_Поставщики]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Импорт_Товары] FOREIGN KEY([Код товара])
REFERENCES [dbo].[Products] ([Код товара])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Импорт_Товары]
GO
USE [master]
GO
ALTER DATABASE [Import-Export] SET  READ_WRITE 
GO
