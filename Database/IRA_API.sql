USE [master]
GO
/****** Object:  Database [IRA_API]    Script Date: 10/24/2020 12:20:59 ******/
CREATE DATABASE [IRA_API] ON  PRIMARY 
( NAME = N'IRAAPI', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\IRAAPI.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IRAAPI_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\IRAAPI_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IRA_API] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IRA_API].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IRA_API] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [IRA_API] SET ANSI_NULLS OFF
GO
ALTER DATABASE [IRA_API] SET ANSI_PADDING OFF
GO
ALTER DATABASE [IRA_API] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [IRA_API] SET ARITHABORT OFF
GO
ALTER DATABASE [IRA_API] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [IRA_API] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [IRA_API] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [IRA_API] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [IRA_API] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [IRA_API] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [IRA_API] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [IRA_API] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [IRA_API] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [IRA_API] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [IRA_API] SET  DISABLE_BROKER
GO
ALTER DATABASE [IRA_API] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [IRA_API] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [IRA_API] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [IRA_API] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [IRA_API] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [IRA_API] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [IRA_API] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [IRA_API] SET  READ_WRITE
GO
ALTER DATABASE [IRA_API] SET RECOVERY SIMPLE
GO
ALTER DATABASE [IRA_API] SET  MULTI_USER
GO
ALTER DATABASE [IRA_API] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [IRA_API] SET DB_CHAINING OFF
GO
USE [IRA_API]
GO
/****** Object:  Table [dbo].[Security_Questions]    Script Date: 10/24/2020 12:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Security_Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Security_Questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Security_Questions] ON
INSERT [dbo].[Security_Questions] ([id], [question]) VALUES (1, N'What is favorite color? ')
SET IDENTITY_INSERT [dbo].[Security_Questions] OFF
/****** Object:  Table [dbo].[Parents]    Script Date: 10/24/2020 12:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](75) NOT NULL,
	[last_name] [varchar](75) NOT NULL,
	[email] [varchar](100) NULL,
	[cnic] [varchar](20) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[contact_primary] [varchar](50) NOT NULL,
	[contact_secondary] [varchar](20) NULL,
	[occupation] [varchar](50) NOT NULL,
	[job_address] [varchar](max) NULL,
	[profile_picture] [varchar](100) NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Parents] ON
INSERT [dbo].[Parents] ([id], [first_name], [last_name], [email], [cnic], [address], [contact_primary], [contact_secondary], [occupation], [job_address], [profile_picture]) VALUES (1, N'Ali', N'Raza', N'ali@gmail.com', N'1234', N'abc', N'09880', N'09090', N'busy', N'xyz', NULL)
INSERT [dbo].[Parents] ([id], [first_name], [last_name], [email], [cnic], [address], [contact_primary], [contact_secondary], [occupation], [job_address], [profile_picture]) VALUES (2, N'Ahmad', N'Raza', N'raza@gmail.com', N'6789', N'xzy', N'847298', N'8970', N'job', N'hgf', N'')
INSERT [dbo].[Parents] ([id], [first_name], [last_name], [email], [cnic], [address], [contact_primary], [contact_secondary], [occupation], [job_address], [profile_picture]) VALUES (4, N'Hammad', N'Saqib', N'hammaad@gmail.com', N'6534834', N'Iqbal Town, Lahore', N'03487563', N'0923473766', N'Job', N'GHF', NULL)
SET IDENTITY_INSERT [dbo].[Parents] OFF
/****** Object:  Table [dbo].[Grade_Types]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade_Types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grade_type] [varchar](100) NOT NULL,
	[grade_type_slug] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Grade_Types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Grade_Types] ON
INSERT [dbo].[Grade_Types] ([id], [grade_type], [grade_type_slug]) VALUES (1, N'Quizzes', N'quizzes')
INSERT [dbo].[Grade_Types] ([id], [grade_type], [grade_type_slug]) VALUES (2, N'Assignments', N'assignments')
INSERT [dbo].[Grade_Types] ([id], [grade_type], [grade_type_slug]) VALUES (3, N'Exams', N'exmas')
INSERT [dbo].[Grade_Types] ([id], [grade_type], [grade_type_slug]) VALUES (4, N'Presentations', N'presentations')
SET IDENTITY_INSERT [dbo].[Grade_Types] OFF
/****** Object:  Table [dbo].[Classes]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [varchar](50) NOT NULL,
	[section] [varchar](50) NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([id], [class_name], [section]) VALUES (1, N'8th', N'Blue')
INSERT [dbo].[Classes] ([id], [class_name], [section]) VALUES (2, N'5th', N'Red')
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[Subjects]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject_code] [varchar](50) NOT NULL,
	[subject_name] [varchar](100) NOT NULL,
	[subject_slug] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (1, N'8th-physics', N'Physics', N'physics')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (2, N'8th-math', N'Math', N'math')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (3, N'8th-english', N'English', N'english')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (4, N'5th-science', N'Science', N'science')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (5, N'5th-urdu', N'Urdu', N'urdu')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug]) VALUES (6, N'5th-social', N'Social Studies', N'social-studies')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
/****** Object:  Table [dbo].[Teachers]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teachers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](70) NOT NULL,
	[last_name] [varchar](75) NOT NULL,
	[cnic] [varchar](20) NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](100) NULL,
	[address] [varchar](max) NOT NULL,
	[contact_primary] [varchar](20) NOT NULL,
	[contact_secondary] [varchar](20) NULL,
	[specialization] [varchar](100) NULL,
	[joining_date] [date] NOT NULL,
	[salary] [int] NULL,
	[profile_picture] [varchar](200) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture]) VALUES (1, N'Nadeem', N'Abbas', N'13897293', CAST(0x03140B00 AS Date), N'nadeem@gmai.com', N'abc', N'09218901', N'08078787', N'Math', CAST(0x8D410B00 AS Date), 15000, NULL)
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture]) VALUES (3, N'Shahvez', N'Ali', N'2356622', CAST(0xDC160B00 AS Date), N'shah@gmail.com', N'bxc', N'3478959739', N'786868', N'Physics', CAST(0x78410B00 AS Date), 500000000, NULL)
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture]) VALUES (4, N'Shakeel', N'Zafar', N'420', CAST(0x39180B00 AS Date), N'shakeel@gmail.com', N'Chand py', N'090078601', N'090078701', N'Computer++', CAST(0x5B950A00 AS Date), 10, NULL)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
/****** Object:  Table [dbo].[Teacher_Subject_Alloc]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject_Alloc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
 CONSTRAINT [PK_Teacher_Subject_Alloc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Alloc] ON
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (7, 3, 2, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (8, 4, 3, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (9, 1, 4, 2)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (10, 3, 5, 2)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (11, 4, 6, 2)
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Alloc] OFF
/****** Object:  Table [dbo].[Subject_GradeType_Alloc]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_GradeType_Alloc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[grade_type_id] [int] NOT NULL,
 CONSTRAINT [PK_Subject_GradeType_Alloc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Subject_GradeType_Alloc] ON
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (5, 1, 2, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (6, 1, 2, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (7, 1, 2, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (8, 1, 2, 4)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (9, 1, 3, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (10, 1, 3, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (11, 1, 3, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (12, 1, 3, 4)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (14, 2, 4, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (16, 2, 4, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (17, 2, 4, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (18, 2, 4, 4)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (19, 2, 5, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (20, 2, 5, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (21, 2, 5, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (22, 2, 5, 4)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (23, 2, 6, 1)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (24, 2, 6, 2)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (25, 2, 6, 3)
INSERT [dbo].[Subject_GradeType_Alloc] ([id], [class_id], [subject_id], [grade_type_id]) VALUES (27, 2, 6, 4)
SET IDENTITY_INSERT [dbo].[Subject_GradeType_Alloc] OFF
/****** Object:  Table [dbo].[Students]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roll_no] [varchar](50) NOT NULL,
	[first_name] [varchar](75) NOT NULL,
	[last_name] [varchar](75) NOT NULL,
	[dob] [date] NOT NULL,
	[parent_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
	[profile_picture] [varchar](200) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture]) VALUES (1, N'1', N'Ali', N'Ahmad', CAST(0xB5410B00 AS Date), 1, 1, 1, NULL)
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture]) VALUES (2, N'2', N'Waseem', N'Akhroti', CAST(0xB5410B00 AS Date), 1, 2, 1, NULL)
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture]) VALUES (3, N'3', N'Iqrar', N'Ali', CAST(0xB5410B00 AS Date), 1, 2, 1, NULL)
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture]) VALUES (4, N'12', N'Arslan', N'Yousaf', CAST(0xB5410B00 AS Date), 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  Table [dbo].[Class_Subject_Alloc]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Subject_Alloc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
 CONSTRAINT [PK_Class_Subject_Alloc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class_Subject_Alloc] ON
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (1, 1, 1)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (2, 1, 2)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (3, 1, 3)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (4, 2, 4)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (5, 2, 5)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (6, 2, 6)
SET IDENTITY_INSERT [dbo].[Class_Subject_Alloc] OFF
/****** Object:  Table [dbo].[Diary]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[diary_date] [date] NOT NULL,
	[diary_title] [varchar](200) NOT NULL,
	[diary_content] [varchar](max) NULL,
 CONSTRAINT [PK_Diary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Diary] ON
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (1, 1, 1, CAST(0xB5410B00 AS Date), N'Data Mining Reading', N'Read Chapter 3 and 4 and 5 and 6')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (2, 1, 1, CAST(0xB6410B00 AS Date), N'Regular Expression', N'Practice Reglar Expressions')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (3, 1, 1, CAST(0xB7410B00 AS Date), N'Network Hack', N'Write ways to hack a network.')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (4, 1, 1, CAST(0xAD410B00 AS Date), N'Cost Analysis', N'Practice Formulas od cost analysis')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (5, 1, 1, CAST(0x8E410B00 AS Date), N'Requirement Analysis', N'Read processes of Requirement Analysis')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (6, 1, 1, CAST(0x92410B00 AS Date), N'Stackholder', N'Stackholder Definitions')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content]) VALUES (7, 1, 1, CAST(0x93410B00 AS Date), N'Good vs Bad Websites', N'Write features and drawbacks and improvements for good and bad websites')
SET IDENTITY_INSERT [dbo].[Diary] OFF
/****** Object:  Table [dbo].[Parent_Login]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parent_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cnic] [varchar](20) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[parent_id] [int] NOT NULL,
	[sq_id] [int] NULL,
	[sq_answer] [varchar](50) NULL,
 CONSTRAINT [PK_parentLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Parent_Login] ON
INSERT [dbo].[Parent_Login] ([id], [cnic], [password], [parent_id], [sq_id], [sq_answer]) VALUES (1, N'1234', N'$2a$11$atjVPMkET4j1b6Skhcqaz.LQs0DV26Y9YIXqy2VVllZ215jf/mQNy', 1, 1, N'RED')
SET IDENTITY_INSERT [dbo].[Parent_Login] OFF
/****** Object:  Table [dbo].[Grades]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[grade_date] [date] NOT NULL,
	[total_marks] [int] NOT NULL,
	[obtained_marks] [int] NOT NULL,
	[grade_type_id] [int] NOT NULL,
	[grade_title] [varchar](50) NOT NULL,
	[remarks] [varchar](max) NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Grades] ON
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (3, 1, 1, 1, CAST(0xB5410B00 AS Date), 50, 30, 1, N'DSM', N'Good')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (4, 1, 1, 1, CAST(0xB6410B00 AS Date), 40, 25, 1, N'Secure Servers', N'Improvement Needed')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (5, 1, 1, 1, CAST(0x8D410B00 AS Date), 30, 25, 1, N'Cost Management', N'Well Done')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (6, 1, 1, 2, CAST(0x7C410B00 AS Date), 20, 18, 1, N'Requirement Analysis', N'Very Good')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (7, 1, 1, 2, CAST(0x8F410B00 AS Date), 25, 22, 1, N'Inheritance', N'Good')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (8, 1, 1, 3, CAST(0x50410B00 AS Date), 15, 12, 1, N'Abstract Classes', N'Good Effort')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (9, 1, 1, 3, CAST(0x7B410B00 AS Date), 30, 29, 1, N'Interfaces', N'Well Done')
INSERT [dbo].[Grades] ([id], [student_id], [class_id], [subject_id], [grade_date], [total_marks], [obtained_marks], [grade_type_id], [grade_title], [remarks]) VALUES (10, 1, 1, 3, CAST(0x84410B00 AS Date), 15, 12, 1, N'Operator Overloading', N'Good')
SET IDENTITY_INSERT [dbo].[Grades] OFF
/****** Object:  Table [dbo].[Attendance]    Script Date: 10/24/2020 12:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NULL,
	[attendance_date] [date] NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (1, 1, 1, NULL, CAST(0xA2410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (2, 1, 1, NULL, CAST(0xA3410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (3, 1, 1, NULL, CAST(0xA4410B00 AS Date), N'A')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (8, 1, 1, NULL, CAST(0xA6410B00 AS Date), N'L')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (10, 1, 1, NULL, CAST(0xA7410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (11, 1, 1, NULL, CAST(0xA8410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (12, 1, 1, NULL, CAST(0xA9410B00 AS Date), N'A')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (15, 1, 1, NULL, CAST(0xAA410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (16, 1, 1, NULL, CAST(0xAB410B00 AS Date), N'L')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (17, 1, 1, NULL, CAST(0x8E410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (18, 1, 1, NULL, CAST(0x8F410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (19, 1, 1, NULL, CAST(0x91410B00 AS Date), N'A')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (20, 1, 1, NULL, CAST(0x92410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (21, 1, 1, NULL, CAST(0x93410B00 AS Date), N'L')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (22, 1, 1, NULL, CAST(0x94410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (23, 1, 1, NULL, CAST(0x95410B00 AS Date), N'P')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status]) VALUES (24, 1, 1, NULL, CAST(0x96410B00 AS Date), N'L')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
/****** Object:  ForeignKey [FK_Teacher_Subject_Alloc_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Classes]
GO
/****** Object:  ForeignKey [FK_Teacher_Subject_Alloc_Subjects]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Subjects]
GO
/****** Object:  ForeignKey [FK_Teacher_Subject_Alloc_Teachers]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Teachers] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Teachers]
GO
/****** Object:  ForeignKey [FK_Subject_GradeType_Alloc_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Classes]
GO
/****** Object:  ForeignKey [FK_Subject_GradeType_Alloc_Grade_Types]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Grade_Types] FOREIGN KEY([grade_type_id])
REFERENCES [dbo].[Grade_Types] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Grade_Types]
GO
/****** Object:  ForeignKey [FK_Subject_GradeType_Alloc_Subjects]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Subjects]
GO
/****** Object:  ForeignKey [FK_Students_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Classes]
GO
/****** Object:  ForeignKey [FK_Class_Subject_Alloc_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Class_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Class_Subject_Alloc] CHECK CONSTRAINT [FK_Class_Subject_Alloc_Classes]
GO
/****** Object:  ForeignKey [FK_Class_Subject_Alloc_Subjects]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Class_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Class_Subject_Alloc] CHECK CONSTRAINT [FK_Class_Subject_Alloc_Subjects]
GO
/****** Object:  ForeignKey [FK_Diary_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Diary] CHECK CONSTRAINT [FK_Diary_Classes]
GO
/****** Object:  ForeignKey [FK_Diary_Subjects]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Diary] CHECK CONSTRAINT [FK_Diary_Subjects]
GO
/****** Object:  ForeignKey [FK_Parent_Login_Security_Questions]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Parent_Login]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Login_Security_Questions] FOREIGN KEY([sq_id])
REFERENCES [dbo].[Security_Questions] ([id])
GO
ALTER TABLE [dbo].[Parent_Login] CHECK CONSTRAINT [FK_Parent_Login_Security_Questions]
GO
/****** Object:  ForeignKey [FK_Grades_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Classes]
GO
/****** Object:  ForeignKey [FK_Grades_Grade_Types]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Grade_Types] FOREIGN KEY([grade_type_id])
REFERENCES [dbo].[Grade_Types] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Grade_Types]
GO
/****** Object:  ForeignKey [FK_Grades_Students]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Students]
GO
/****** Object:  ForeignKey [FK_Grades_Subjects]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Subjects]
GO
/****** Object:  ForeignKey [FK_Attendance_Classes]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Classes]
GO
/****** Object:  ForeignKey [FK_Attendance_Students]    Script Date: 10/24/2020 12:21:01 ******/
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Students]
GO
