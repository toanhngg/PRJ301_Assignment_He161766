USE [master]
GO
/****** Object:  Database [PRJ301_FALL2022_Assignment]    Script Date: 04/01/2023 11:09:49 PM ******/
CREATE DATABASE [PRJ301_FALL2022_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_FALL2022_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_FALL2022_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_FALL2022_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_FALL2022_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_FALL2022_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_FALL2022_Assignment', N'ON'
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ301_FALL2022_Assignment]
GO
/****** Object:  User [nguyentoanh]    Script Date: 04/01/2023 11:09:49 PM ******/
CREATE USER [nguyentoanh] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attandance]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attandance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attandance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attanded] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdname] [varchar](150) NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 04/01/2023 11:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[nameSlot] [varchar](150) NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mra', N'123', N'MrA')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mrb', N'mrb', N'Mr B')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mrc', N'mrc', N'ggg')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mrd', N'mrd', N'mrd')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'nta', N'1234', N'Nguyen To Anh')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'Superman')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'xxx', N'00', N'XXXXX')
GO
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 1, 1, N'csx', CAST(N'2022-11-08T00:18:05.240' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 2, 1, N'ok', CAST(N'2022-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 4, 0, N'', CAST(N'2022-11-08T00:18:05.240' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 5, 0, N' ', CAST(N'2022-11-08T00:18:05.260' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 7, 1, N'ew', CAST(N'2022-11-08T00:18:05.260' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 9, 1, N'', CAST(N'2022-11-08T00:18:05.260' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 16, 0, N'', CAST(N'2022-11-08T00:18:05.260' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 1, 0, N'', CAST(N'2022-11-07T21:05:12.293' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 4, 1, N'', CAST(N'2022-11-07T21:05:12.293' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 5, 0, N'', CAST(N'2022-11-07T21:05:12.293' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 7, 0, N'', CAST(N'2022-11-07T21:05:12.293' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 9, 0, N'', CAST(N'2022-11-07T21:05:12.293' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 16, 1, N'', CAST(N'2022-11-07T21:05:12.297' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 1, 0, N'', CAST(N'2022-11-08T23:37:50.803' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 4, 0, N'', CAST(N'2022-11-08T23:37:50.803' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 5, 0, N'', CAST(N'2022-11-08T23:37:50.807' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 7, 1, N'', CAST(N'2022-11-08T23:37:50.807' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 9, 0, N'', CAST(N'2022-11-08T23:37:50.807' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 16, 0, N'', CAST(N'2022-11-08T23:37:50.807' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 1, 1, N'ss2', CAST(N'2022-11-08T00:16:23.603' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 4, 0, N'', CAST(N'2022-11-08T00:16:23.603' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 5, 1, N'', CAST(N'2022-11-08T00:16:23.603' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 7, 1, N'', CAST(N'2022-11-08T00:16:23.607' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 9, 1, N'', CAST(N'2022-11-08T00:16:23.607' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 16, 1, N'', CAST(N'2022-11-08T00:16:23.607' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 6, 1, N'ok', CAST(N'2022-10-27T02:06:01.417' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 8, 1, N'', CAST(N'2022-10-27T02:06:01.417' AS DateTime))
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'View Timetable Student', N'/student/timetable1')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'View Timetable Lecture', N'/lecture/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Check Attandace', N'/lecture/check')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'Report Attendance', N'/lecture/report')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'View Lecture ', N'/view/admin')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'SE1645', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'AI1607', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'IOT1634', 1, 2, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'SE1604', 2, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'SE1502', 3, 1, N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lname], [username]) VALUES (1, N'Sonnt5', N'sonnt')
INSERT [dbo].[Lecturer] ([lid], [lname], [username]) VALUES (2, N'TrungDT', N'mrc')
INSERT [dbo].[Lecturer] ([lid], [lname], [username]) VALUES (3, N'NganNTT', N'mrd')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Student')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Lecture')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'Admin')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'nta')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'xxx')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'mrc')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'mrd')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'mra')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'mrb')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 3)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 4)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 4)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 5)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE-C203')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE-C304')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'DE-C201')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'DE-C202')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (5, N'BE-C203')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (1, 1, 1, CAST(N'2022-10-10' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (2, 1, 1, CAST(N'2022-10-12' AS Date), 1, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (3, 1, 1, CAST(N'2022-10-14' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (4, 1, 1, CAST(N'2022-10-17' AS Date), 1, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (5, 1, 1, CAST(N'2022-10-19' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (6, 2, 1, CAST(N'2022-10-10' AS Date), 2, 1, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (7, 2, 1, CAST(N'2022-10-12' AS Date), 2, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (8, 2, 1, CAST(N'2022-10-14' AS Date), 2, 3, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (9, 2, 1, CAST(N'2022-10-17' AS Date), 2, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (10, 2, 1, CAST(N'2022-10-19' AS Date), 2, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (11, 3, 2, CAST(N'2022-10-10' AS Date), 1, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (12, 3, 2, CAST(N'2022-10-12' AS Date), 1, 2, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (13, 3, 2, CAST(N'2022-10-14' AS Date), 1, 3, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (14, 3, 2, CAST(N'2022-10-17' AS Date), 1, 4, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (15, 3, 2, CAST(N'2022-10-19' AS Date), 1, 5, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (16, 4, 1, CAST(N'2022-10-10' AS Date), 3, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (17, 4, 1, CAST(N'2022-10-12' AS Date), 3, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (18, 4, 1, CAST(N'2022-10-14' AS Date), 3, 3, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (19, 4, 1, CAST(N'2022-10-17' AS Date), 3, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (20, 4, 1, CAST(N'2022-10-19' AS Date), 3, 5, 1, 0)
GO
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (1, N'Nguyen To Anh', N'nta')
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (2, N'Tran Dinh Luc', N'tdl')
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (3, N'Pham Cong Chi', N'pcc')
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (4, N'Pham Xuan Nam', N'pxn')
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (5, N'Chu Huu Thanh', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (6, N'Le Tran Tien Dong', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (7, N'Nguyen Thi Hai Nhi', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (8, N'Nguyen Dinh Truong', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (9, N'Vu Xuan Truong', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (10, N'Ta Van Bach', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (11, N'Le Ngoc Tuan Minh', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (12, N'Vu Van Hoang', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (13, N'Nguyen Ngoc Duc', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (14, N'Vu Duc Phong', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (15, N'Nguyen Truong Huy', NULL)
INSERT [dbo].[Student] ([stdid], [stdname], [username]) VALUES (16, N'Ta Van Chinh', NULL)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (9, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (10, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (11, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (12, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (13, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (14, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (15, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (16, 1)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'PRO192')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'DBI202')
GO
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (1, N'7:30 - 9:00', N'Slot1')
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (2, N'9:10 - 10:40', N'Slot2')
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (3, N'10:50 - 12:20', N'Slot3')
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (4, N'12:50 - 14:20', N'Slot4')
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (5, N'14:30 - 16:00', N'Slot5')
INSERT [dbo].[TimeSlot] ([tid], [description], [nameSlot]) VALUES (6, N'16:10 - 17:40', N'Slot6')
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Session1] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Session1]
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Student1] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Student1]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_FALL2022_Assignment] SET  READ_WRITE 
GO
