USE [master]
GO
/****** Object:  Database [CodeTitans]    Script Date: 3/28/2019 6:22:58 PM ******/
CREATE DATABASE [CodeTitans]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CodeTitans', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016ENT\MSSQL\DATA\CodeTitans.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CodeTitans_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016ENT\MSSQL\DATA\CodeTitans_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CodeTitans] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CodeTitans].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CodeTitans] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CodeTitans] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CodeTitans] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CodeTitans] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CodeTitans] SET ARITHABORT OFF 
GO
ALTER DATABASE [CodeTitans] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CodeTitans] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CodeTitans] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CodeTitans] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CodeTitans] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CodeTitans] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CodeTitans] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CodeTitans] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CodeTitans] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CodeTitans] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CodeTitans] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CodeTitans] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CodeTitans] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CodeTitans] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CodeTitans] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CodeTitans] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CodeTitans] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CodeTitans] SET RECOVERY FULL 
GO
ALTER DATABASE [CodeTitans] SET  MULTI_USER 
GO
ALTER DATABASE [CodeTitans] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CodeTitans] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CodeTitans] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CodeTitans] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CodeTitans] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CodeTitans', N'ON'
GO
ALTER DATABASE [CodeTitans] SET QUERY_STORE = OFF
GO
USE [CodeTitans]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CodeTitans]
GO
/****** Object:  Table [dbo].[Complaint_Category]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint_Category](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Complaint_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[Complaint_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Category_ID] [int] NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Date] [date] NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [PK_Complaints1] PRIMARY KEY CLUSTERED 
(
	[Complaint_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Emergency]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emergency](
	[User_ID] [int] NULL,
	[Help_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Emergency1] PRIMARY KEY CLUSTERED 
(
	[Help_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[User_ID] [int] NULL,
	[Feedback_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](max) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Feedback_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Notification_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Location] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Notification1] PRIMARY KEY CLUSTERED 
(
	[Notification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Email ID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ID_Proof] [varchar](100) NULL,
	[Contact] [varchar](13) NULL,
	[Roles] [int] NOT NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehicle_Registration]    Script Date: 3/28/2019 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Registration](
	[Vehicle_ID] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [varchar](50) NULL,
	[Date_of_Registration] [date] NULL,
	[Registration_Number] [varchar](20) NULL,
	[Model] [varchar](50) NULL,
	[Remarks] [varchar](10) NULL,
	[Vehicle_Type] [varchar](10) NULL,
 CONSTRAINT [PK_Vehicle_Registration] PRIMARY KEY CLUSTERED 
(
	[Vehicle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Complaint_Category] ON 

INSERT [dbo].[Complaint_Category] ([Category_ID], [Category_Name]) VALUES (1, N'Accident')
SET IDENTITY_INSERT [dbo].[Complaint_Category] OFF
SET IDENTITY_INSERT [dbo].[Complaints] ON 

INSERT [dbo].[Complaints] ([Complaint_ID], [User_ID], [Category_ID], [Title], [Description], [Date], [Status]) VALUES (1, 1, 1, N'sgdjabhjbdb', N'bkjbfjbjkbfjkdbbfkj', CAST(N'2019-03-28' AS Date), N'In_Process')
SET IDENTITY_INSERT [dbo].[Complaints] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([User_ID], [Feedback_ID], [Description], [date]) VALUES (1, 1, N'afssafsafafsafsadsa', CAST(N'2019-03-28' AS Date))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_id], [First Name], [Last Name], [Address], [Email ID], [Password], [ID_Proof], [Contact], [Roles], [Status]) VALUES (1, N'Taha', N'Qutbuddin', N'hijaz apart', N'taha@aptech.net', N'taha', N'asdhjkhjkjbjkbkj', N'28313213131', 1, N'Verified')
INSERT [dbo].[Users] ([User_id], [First Name], [Last Name], [Address], [Email ID], [Password], [ID_Proof], [Contact], [Roles], [Status]) VALUES (2, N'izhan', N'khatri', N'karachi', N'izhan@aptech.net', N'izhan', N'42301-009678', N'976598-0', 0, N'Verified')
INSERT [dbo].[Users] ([User_id], [First Name], [Last Name], [Address], [Email ID], [Password], [ID_Proof], [Contact], [Roles], [Status]) VALUES (3, N'Ahmed', N'Shaki', N'rasbbas', N'ahmed@aptech.net', N'ahmed', N'asbdjk', N'4434231', 0, N'Unverified')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Complaint_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Complaint_Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Complaint_Category]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Users]
GO
ALTER TABLE [dbo].[Emergency]  WITH CHECK ADD  CONSTRAINT [FK_Emergency_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Emergency] CHECK CONSTRAINT [FK_Emergency_Users]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Users]
GO
USE [master]
GO
ALTER DATABASE [CodeTitans] SET  READ_WRITE 
GO
