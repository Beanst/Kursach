USE [master]
GO

/****** Object:  Database [Склад]    Script Date: 13.11.2019 17:10:22 ******/
CREATE DATABASE [Склад]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Склад', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Склад.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Склад_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Склад_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Склад] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Склад].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Склад] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Склад] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Склад] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Склад] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Склад] SET ARITHABORT OFF 
GO

ALTER DATABASE [Склад] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Склад] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Склад] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Склад] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Склад] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Склад] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Склад] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Склад] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Склад] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Склад] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Склад] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Склад] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Склад] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Склад] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Склад] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Склад] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Склад] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Склад] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Склад] SET  MULTI_USER 
GO

ALTER DATABASE [Склад] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Склад] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Склад] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Склад] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Склад] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Склад] SET QUERY_STORE = OFF
GO

USE [Склад]
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

ALTER DATABASE [Склад] SET  READ_WRITE 
GO

