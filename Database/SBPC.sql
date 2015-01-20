USE [master]
GO
/****** Object:  Database [SBPC]    Script Date: 01/20/2015 09:49:44 ******/
CREATE DATABASE [SBPC] ON  PRIMARY 
( NAME = N'SBPC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SBPC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SBPC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SBPC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SBPC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SBPC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SBPC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SBPC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SBPC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SBPC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SBPC] SET ARITHABORT OFF
GO
ALTER DATABASE [SBPC] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SBPC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SBPC] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SBPC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SBPC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SBPC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SBPC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SBPC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SBPC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SBPC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SBPC] SET  DISABLE_BROKER
GO
ALTER DATABASE [SBPC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SBPC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SBPC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SBPC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SBPC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SBPC] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SBPC] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SBPC] SET  READ_WRITE
GO
ALTER DATABASE [SBPC] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SBPC] SET  MULTI_USER
GO
ALTER DATABASE [SBPC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SBPC] SET DB_CHAINING OFF
GO
USE [SBPC]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Avatar] [nvarchar](150) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Role] [nchar](20) NOT NULL,
	[Manager] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Theme](
	[ThemeID] [int] IDENTITY(1,1) NOT NULL,
	[ThemeName] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Layout] [nvarchar](150) NOT NULL,
	[Colors] [nvarchar](150) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Creator] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[ThemeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[StorageLimit] [int] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Website]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Website](
	[WebsiteID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[ThemeDetail] [nvarchar](150) NOT NULL,
	[BaseTheme] [int] NOT NULL,
	[Owner] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Website] PRIMARY KEY CLUSTERED 
(
	[WebsiteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Page]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[PageName] [nvarchar](50) NOT NULL,
	[Positon] [int] NOT NULL,
	[Layout] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Website] [int] NULL,
	[FatherPage] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[PageName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogue]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogue](
	[CatalogueID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Layout] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](150) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Website] [int] NOT NULL,
 CONSTRAINT [PK_Catalogue] PRIMARY KEY CLUSTERED 
(
	[CatalogueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/20/2015 09:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[SellingPrice] [float] NULL,
	[Layout] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[CatalogueID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_User_User]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([Manager])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
/****** Object:  ForeignKey [FK_Website_Type]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Website]  WITH CHECK ADD  CONSTRAINT [FK_Website_Type] FOREIGN KEY([Type])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Website] CHECK CONSTRAINT [FK_Website_Type]
GO
/****** Object:  ForeignKey [FK_Website_Theme]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Website]  WITH CHECK ADD  CONSTRAINT [FK_Website_Theme] FOREIGN KEY([BaseTheme])
REFERENCES [dbo].[Theme] ([ThemeID])
GO
ALTER TABLE [dbo].[Website] CHECK CONSTRAINT [FK_Website_Theme]
GO
/****** Object:  ForeignKey [FK_Website_User]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Website]  WITH CHECK ADD  CONSTRAINT [FK_Website_User] FOREIGN KEY([Owner])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Website] CHECK CONSTRAINT [FK_Website_User]
GO
/****** Object:  ForeignKey [FK_Page_Page]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Page] FOREIGN KEY([FatherPage])
REFERENCES [dbo].[Page] ([PageName])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_Page]
GO
/****** Object:  ForeignKey [FK_Page_Website]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Website] FOREIGN KEY([Website])
REFERENCES [dbo].[Website] ([WebsiteID])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_Website]
GO
/****** Object:  ForeignKey [FK_Catalogue_Website]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Catalogue]  WITH CHECK ADD  CONSTRAINT [FK_Catalogue_Website] FOREIGN KEY([Website])
REFERENCES [dbo].[Website] ([WebsiteID])
GO
ALTER TABLE [dbo].[Catalogue] CHECK CONSTRAINT [FK_Catalogue_Website]
GO
/****** Object:  ForeignKey [FK_Product_Catalogue]    Script Date: 01/20/2015 09:49:47 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalogue] FOREIGN KEY([CatalogueID])
REFERENCES [dbo].[Catalogue] ([CatalogueID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalogue]
GO
