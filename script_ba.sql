USE [master]
GO
/****** Object:  Database [BA_App1]    Script Date: 22-Mar-20 4:58:36 PM ******/
CREATE DATABASE [BA_App1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BA_App1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BA_App1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BA_App1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BA_App1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BA_App1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BA_App1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BA_App1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BA_App1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BA_App1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BA_App1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BA_App1] SET ARITHABORT OFF 
GO
ALTER DATABASE [BA_App1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BA_App1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BA_App1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BA_App1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BA_App1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BA_App1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BA_App1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BA_App1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BA_App1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BA_App1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BA_App1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BA_App1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BA_App1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BA_App1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BA_App1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BA_App1] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BA_App1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BA_App1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BA_App1] SET  MULTI_USER 
GO
ALTER DATABASE [BA_App1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BA_App1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BA_App1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BA_App1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BA_App1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BA_App1] SET QUERY_STORE = OFF
GO
USE [BA_App1]
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
USE [BA_App1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22-Mar-20 4:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 22-Mar-20 4:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNumber] [int] NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CustomerSurname] [nvarchar](max) NOT NULL,
	[OrderNumber] [int] NULL,
	[OrderDate] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22-Mar-20 4:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[StoreID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22-Mar-20 4:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 22-Mar-20 4:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200314161659_firsttable', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200316143131_secondadded', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200316151928_secondadded1', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200317210858_tablestore', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200317212103_tableproduct', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200317212345_tableproduct1', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200318220813_createtable', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200319123436_updatetable', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200320145404_updatetab', N'2.1.14-servicing-32113')
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (1, 1, N'pelin', N'ışıldar', 1111, N'2020-03-10 00:00:00.0000000')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (2, 11, N'Pelin', N'Işıldar', 11, N'2020-03-10 00:00:00.0000000')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (5, 111, N'deneme', N'deneme', 5, N'2020-03-20 16:40:43.0822301')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (6, 1111, N'müşteri', N'müşteri', 5, N'2020-03-20 16:42:26.6971434')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (8, 13, N'müşteri1', N'müşteri1', 1, N'13.03.2020')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (9, 14, N'melih', N'güman', 2, N'20-Mar-20 10:10:34 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (10, 1155, N'test', N'user', 2, N'20-Mar-20 10:12:27 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (11, 17, N'test', N'test', 17, N'20-Mar-20 10:18:56 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (12, 18, N'Pelin', N'Işıldar', 11, N'2020-03-10 00:00:00.0000000')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (14, 20, N'müşteri2', N'müşteri2', 2, N'21-Mar-20 1:49:59 AM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (18, 4, N'test1', N'test1', 3, N'21-Mar-20 11:10:08 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (19, 19, N'test2', N'test2', 22, N'21-Mar-20 11:33:52 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (20, 23, N'deneme1', N'deneme1', 2, N'22-Mar-20 11:48:28 AM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (21, 24, N'Pelin', N'Deneme', 223, N'22-Mar-20 3:53:52 PM')
INSERT [dbo].[Customers] ([ID], [CustomerNumber], [CustomerName], [CustomerSurname], [OrderNumber], [OrderDate]) VALUES (22, 123, N'Pelin', N'Test2', 11, N'2020-03-21 00:00:00.0000000')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [Count], [Discount], [TotalPrice], [CustomerID], [ProductID], [StoreID]) VALUES (8, 1, 1, CAST(99.00 AS Decimal(18, 2)), 18, 2, 1)
INSERT [dbo].[Orders] ([ID], [Count], [Discount], [TotalPrice], [CustomerID], [ProductID], [StoreID]) VALUES (9, 1, 1, CAST(99.00 AS Decimal(18, 2)), 19, 3, 4)
INSERT [dbo].[Orders] ([ID], [Count], [Discount], [TotalPrice], [CustomerID], [ProductID], [StoreID]) VALUES (10, 2, 1, CAST(1980.00 AS Decimal(18, 2)), 22, 2, 4)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [ProductName], [Price]) VALUES (1, N'Çelik Rulo', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ID], [ProductName], [Price]) VALUES (2, N'Çelik Levha', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ID], [ProductName], [Price]) VALUES (3, N'Çelik Tavan', CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Stores] ON 

INSERT [dbo].[Stores] ([ID], [StoreName]) VALUES (1, N'İstanbul Bakırköy Depo')
INSERT [dbo].[Stores] ([ID], [StoreName]) VALUES (2, N'İstanbul Maslak Depo')
INSERT [dbo].[Stores] ([ID], [StoreName]) VALUES (3, N'Ankara Depo')
INSERT [dbo].[Stores] ([ID], [StoreName]) VALUES (4, N'Manisa Depo')
SET IDENTITY_INSERT [dbo].[Stores] OFF
/****** Object:  Index [IX_Orders_CustomerID]    Script Date: 22-Mar-20 4:58:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ProductID]    Script Date: 22-Mar-20 4:58:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ProductID] ON [dbo].[Orders]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_StoreID]    Script Date: 22-Mar-20 4:58:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_StoreID] ON [dbo].[Orders]
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Stores_StoreID] FOREIGN KEY([StoreID])
REFERENCES [dbo].[Stores] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Stores_StoreID]
GO
USE [master]
GO
ALTER DATABASE [BA_App1] SET  READ_WRITE 
GO
