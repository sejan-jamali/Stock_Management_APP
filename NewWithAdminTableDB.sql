USE [master]
GO
/****** Object:  Database [StockManagementDB]    Script Date: 20-Nov-18 1:36:28 AM ******/
CREATE DATABASE [StockManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StockManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StockManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StockManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StockManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StockManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StockManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StockManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StockManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StockManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StockManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StockManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StockManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StockManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StockManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StockManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StockManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StockManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StockManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StockManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StockManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [StockManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StockManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StockManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StockManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StockManagementDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CompanyId] [int] NULL,
	[CategoryId] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[ReorderLevel] [int] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[Quantity] [int] NULL,
	[Date] [varchar](50) NULL,
	[OutAction] [varchar](50) NULL,
 CONSTRAINT [PK_StockOut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CompanyCategoryView]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompanyCategoryView] AS
SELECT i.Id AS ItemId, c.Name AS CompanyName, i.Name AS ItemName, i.AvailableQuantity AS AvailableQuantity 
FROM Company AS c 
INNER JOIN Item AS i ON i.CompanyId=c.Id 
INNER JOIN Category AS ca ON i.CategoryId=ca.Id

GO
/****** Object:  View [dbo].[StockInView]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StockInView] AS
SELECT i.Id AS ItemId, c.Name AS CompanyName, i.Name AS ItemName, i.AvailableQuantity AS AvailableQuantity 
FROM Company AS c INNER JOIN Item AS i 
ON i.Id=c.Id

GO
/****** Object:  View [dbo].[StockInView2]    Script Date: 20-Nov-18 1:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StockInView2] AS

SELECT        dbo.Company.Id, dbo.Item.Id AS Expr1, dbo.Item.ReorderLevel, dbo.Item.AvailableQuantity
FROM            dbo.Category INNER JOIN
                         dbo.Company ON dbo.Category.Id = dbo.Company.Id INNER JOIN
                         dbo.Item ON dbo.Category.Id = dbo.Item.CategoryId AND dbo.Company.Id = dbo.Item.CompanyId INNER JOIN
                         dbo.StockOut ON dbo.Item.Id = dbo.StockOut.ItemId

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Password]) VALUES (1, N'Admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Electronics')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Plastic')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'RFL')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (2, N'Pran')
SET IDENTITY_INSERT [dbo].[Company] OFF
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Company]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_Item]
GO
USE [master]
GO
ALTER DATABASE [StockManagementDB] SET  READ_WRITE 
GO
