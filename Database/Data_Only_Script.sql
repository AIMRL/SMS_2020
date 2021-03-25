USE [master]
GO
/****** Object:  Database [IRA_API]    Script Date: 3/24/2021 10:34:00 PM ******/
CREATE DATABASE [IRA_API]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IRA_API', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IRA_API.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IRA_API_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IRA_API_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IRA_API] SET COMPATIBILITY_LEVEL = 150
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
ALTER DATABASE [IRA_API] SET AUTO_CLOSE ON 
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
ALTER DATABASE [IRA_API] SET  ENABLE_BROKER 
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
ALTER DATABASE [IRA_API] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [IRA_API] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IRA_API] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IRA_API] SET  MULTI_USER 
GO
ALTER DATABASE [IRA_API] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IRA_API] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IRA_API] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IRA_API] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IRA_API] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IRA_API] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IRA_API] SET QUERY_STORE = OFF
GO
USE [IRA_API]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/24/2021 10:34:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcademicCalenders]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicCalenders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[event] [nvarchar](max) NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[session_id] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AcademicCalenders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[class_id] [int] NULL,
	[title] [varchar](200) NOT NULL,
	[announcment] [varchar](max) NOT NULL,
	[read] [bit] NOT NULL,
	[session_id] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NULL,
	[attendance_date] [date] NOT NULL,
	[status] [char](1) NOT NULL,
	[session_id] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_Details]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bank_name] [varchar](max) NOT NULL,
	[bank_branch] [varchar](max) NOT NULL,
	[account_no] [bigint] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Bank_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Charges]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Charges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Subject_Alloc]    Script Date: 3/24/2021 10:34:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [varchar](50) NOT NULL,
	[section] [varchar](50) NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseOutlines]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseOutlines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[subject_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[session_id] [int] NOT NULL,
	[term_id] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[status] [bit] NOT NULL,
	[references] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CourseOutlines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Days]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Days](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Days] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diary]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[diary_date] [date] NOT NULL,
	[diary_title] [varchar](200) NOT NULL,
	[diary_content] [varchar](max) NULL,
	[session_id] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Diary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee_Challan]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee_Challan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[issue_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[bank_id] [int] NOT NULL,
	[instructions] [varchar](max) NULL,
	[is_paid] [bit] NOT NULL,
	[unpaid_charges] [int] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Fee_Challan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade_Types]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade_Types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grade_type] [varchar](100) NOT NULL,
	[grade_type_slug] [varchar](100) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[class_id] [int] NOT NULL,
	[session_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
 CONSTRAINT [PK_Grade_Types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeActivities]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeActivities](
	[id] [uniqueidentifier] NOT NULL,
	[grade_type_id] [int] NOT NULL,
	[grade_title] [nvarchar](max) NOT NULL,
	[grade_date] [date] NOT NULL,
	[total_marks] [int] NOT NULL,
 CONSTRAINT [PK_GradeActivities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[obtained_marks] [int] NOT NULL,
	[remarks] [varchar](max) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[grade_activity_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectureContentFiles]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectureContentFiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[original_name] [nvarchar](max) NOT NULL,
	[logical_name] [nvarchar](max) NOT NULL,
	[extension] [nvarchar](max) NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[size] [int] NOT NULL,
	[path] [nvarchar](max) NOT NULL,
	[course_outline_id] [int] NOT NULL,
 CONSTRAINT [PK_LectureContentFiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent_Login]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cnic] [varchar](20) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[parent_id] [int] NOT NULL,
	[sq_id] [int] NULL,
	[sq_answer] [varchar](50) NULL,
 CONSTRAINT [PK_Parent_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[guid] [uniqueidentifier] NOT NULL,
	[UserId1] [nvarchar](450) NULL,
	[user_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_Questions]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [varchar](150) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Security_Questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[session_year] [varchar](50) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentApplicationFiles]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentApplicationFiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[orignal_name] [nvarchar](max) NOT NULL,
	[logical_name] [nvarchar](max) NOT NULL,
	[extension] [nvarchar](max) NOT NULL,
	[size] [float] NOT NULL,
	[application_id] [int] NOT NULL,
	[content_type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_StudentApplicationFiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentApplications]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentApplications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[student_id] [int] NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[subject] [nvarchar](max) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[start_date] [datetime2](7) NOT NULL,
	[end_date] [datetime2](7) NOT NULL,
	[status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_StudentApplications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[session_id] [int] NOT NULL,
	[enrollment_date] [date] NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[UserId1] [nvarchar](450) NULL,
	[user_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_GradeType_Alloc]    Script Date: 3/24/2021 10:34:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject_code] [varchar](50) NOT NULL,
	[subject_name] [varchar](100) NOT NULL,
	[subject_slug] [varchar](100) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Subject_Alloc]    Script Date: 3/24/2021 10:34:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[guid] [uniqueidentifier] NOT NULL,
	[UserId1] [nvarchar](450) NULL,
	[user_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Terms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTables]    Script Date: 3/24/2021 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTables](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[class_id] [int] NOT NULL,
	[session_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[day_id] [int] NOT NULL,
	[time_slot] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TimeTables] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201206165333_initial Migration', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222103709_days+timetable-models-added', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222104949_days+timetable-updated', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222105317_timetable-updated', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222105737_days-timetable-nullable-false', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222173408_academic-calender-added', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222183557_academic-calender-guid-added', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222184758_guid-added-in-timetable-model', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201224085030_TimeTableAdded', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231171629_termstableAdded', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231185817_termstableAdded', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231193722_termstableadded', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101165518_files_lecture_content_table_created', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101190347_course_outline_added', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101212000_files_course_outline_tableAdded', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101235128_studentApplication-and-StudentApplicationFiles-Added', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102093347_files_course_outline_tableAdded', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210116080626_RemoveExtraColumnFromStudentApplication', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210202190713_RemovePathFromStudentApplicationFile', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210202192211_AddContentTypeInApplicationFileDb', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209121534_identity-added', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209192413_userId-added-in-parent', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209200826_userId-added-in-teacher', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209201542_userId-added-in-student', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210218102315_gradetype-model-updated', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210218105254_gradeactivity-model-added', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210224180411_grade-changes', N'5.0.2')
GO
SET IDENTITY_INSERT [dbo].[AcademicCalenders] ON 

INSERT [dbo].[AcademicCalenders] ([id], [event], [date], [session_id], [guid]) VALUES (1, N'First term Exams', CAST(N'2021-12-08T00:00:00.0000000' AS DateTime2), 1, N'69f505b8-8b10-4185-93c4-401eafc5135d')
INSERT [dbo].[AcademicCalenders] ([id], [event], [date], [session_id], [guid]) VALUES (2, N'Second Term Exams', CAST(N'2021-12-08T00:00:00.0000000' AS DateTime2), 1, N'0161f9f8-a022-451a-9d73-a9e6eb9f5944')
INSERT [dbo].[AcademicCalenders] ([id], [event], [date], [session_id], [guid]) VALUES (3, N'Third Term Exams', CAST(N'2021-08-09T00:00:00.0000000' AS DateTime2), 1, N'1dc4b0ea-72f5-45c0-a8e0-106347a2d3f2')
SET IDENTITY_INSERT [dbo].[AcademicCalenders] OFF
GO
SET IDENTITY_INSERT [dbo].[Announcements] ON 

INSERT [dbo].[Announcements] ([id], [student_id], [class_id], [title], [announcment], [read], [session_id], [guid], [date]) VALUES (1, 1, 1, N'Fee Submission', N'Its your second reminder to kindly submit your fee before the Due Date.   ', 0, 1, N'74531975-986a-4fd6-8d2a-d8a436643b57', CAST(N'2020-12-22T13:48:19.3200000' AS DateTime2))
INSERT [dbo].[Announcements] ([id], [student_id], [class_id], [title], [announcment], [read], [session_id], [guid], [date]) VALUES (2, 1, 2, N'Attendence ', N'Ahmad Ali is absent today.', 1, 1, N'512dc23d-7963-404f-92d7-0b98dadbb981', CAST(N'2020-12-22T13:48:19.3230000' AS DateTime2))
INSERT [dbo].[Announcements] ([id], [student_id], [class_id], [title], [announcment], [read], [session_id], [guid], [date]) VALUES (3, NULL, 1, N'Maths Class Timing Changed', N'Now Your Maths lecture is scheduled from 11:30 AM to 12:20PM .', 1, 1, N'0acf10ab-74ca-4bb8-877f-f420e4819eeb', CAST(N'2020-12-22T13:48:19.3230000' AS DateTime2))
INSERT [dbo].[Announcements] ([id], [student_id], [class_id], [title], [announcment], [read], [session_id], [guid], [date]) VALUES (4, NULL, NULL, N'Winter Vocations', N'Annual winter holidays have been announced for the institue. The institue will remain close from Deceember 25,2020 till january 10,2020. Online Classes will be resumed from January 11,2020. Make your vocations productive. Good Luck. ', 1, 1, N'0a26ed2e-e014-4437-b301-be77f1e20c54', CAST(N'2020-12-22T13:48:19.3230000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Announcements] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'720a5695-83e6-4a02-84ed-dffb017bafa9', N'Teacher', N'TEACHER', N'5fced202-eb18-483c-baa6-17c53a7c19c4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fadcb3a1-86c8-4d9d-ad44-738474a64e58', N'Parent', N'PARENT', N'2d0e7fe8-7158-4d1f-812f-a9566ae73b69')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'250101a3-24a6-496d-bfc5-da9ea0cbd211', N'720a5695-83e6-4a02-84ed-dffb017bafa9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97294e73-bec0-4383-b0b6-9d3a4c55072c', N'fadcb3a1-86c8-4d9d-ad44-738474a64e58')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bfe748c9-de72-4b30-8bc3-bb945a1b8494', N'fadcb3a1-86c8-4d9d-ad44-738474a64e58')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'250101a3-24a6-496d-bfc5-da9ea0cbd211', N'nadeem.abbass', N'NADEEM.ABBASS', N'nadeem@ira.com', N'NADEEM@IRA.COM', 0, N'AQAAAAEAACcQAAAAECjrtbvUYq1wRFLfpg74gHYuoXiw4BxBLYFsbCQrmKp366EMHsDXzrLo7qoKHTp5ag==', N'2CJXIDY54JFNVK3YV7BTVSHJLMKSD4WJ', N'0499c620-b183-44e4-aefc-e668f61d5dd4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97294e73-bec0-4383-b0b6-9d3a4c55072c', N'1234', N'1234', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPLg3KFFytDfyb9MCiymW9YKKKCmYzLSvMZoipciILVVJI0WDIp1O+9lLdrN9svXNQ==', N'BKFBWEA5YKPI7DF7VNDNVAMWEKH3Q3J2', N'c68c4acb-f344-457a-a0fb-006d6b4954ff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bfe748c9-de72-4b30-8bc3-bb945a1b8494', N'4321', N'4321', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEMX/0OVN5LTpfJdhthKL5bTmS3qVvujkM44WnKRR4CImsfvNOkcuGnUecc/nlG9Y5A==', N'ITB7FUVTGD252NJX33DJ75SXGEUBW2PN', N'5a62cc32-e03d-494d-9ccf-c4dc64837b36', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (1, 1, 1, NULL, CAST(N'2020-10-01' AS Date), N'P', 1, N'6ff98c79-84c5-43ba-8ca7-53b01ae57029')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (2, 1, 1, NULL, CAST(N'2020-10-02' AS Date), N'P', 1, N'e244851c-48e9-4f87-9a5e-88d7acc957a6')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (3, 1, 1, NULL, CAST(N'2020-10-03' AS Date), N'A', 1, N'641ca04c-85c0-4f4a-87d3-cb849884603c')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (8, 1, 1, NULL, CAST(N'2020-10-05' AS Date), N'L', 1, N'4be84b31-4003-437f-97dc-d4932e3ff731')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (10, 1, 1, NULL, CAST(N'2020-10-06' AS Date), N'P', 1, N'98278003-59b0-41e5-97e3-363d2f65808d')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (11, 1, 1, NULL, CAST(N'2020-10-07' AS Date), N'P', 1, N'c705bb1d-f7cf-4c37-a51a-827094a63249')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (12, 1, 1, NULL, CAST(N'2020-10-08' AS Date), N'A', 1, N'95f98e21-018c-440e-a82a-8050c5fb2002')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (15, 1, 1, NULL, CAST(N'2020-10-09' AS Date), N'P', 1, N'f85e8c09-d35c-4058-bcc6-6922c140dc7e')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (16, 1, 1, NULL, CAST(N'2020-10-10' AS Date), N'L', 1, N'3bed1351-660c-47b4-9fb7-27848634da55')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (17, 1, 1, NULL, CAST(N'2020-09-11' AS Date), N'P', 1, N'cef4ff95-3e43-431e-afd4-250ebb8c21b4')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (18, 1, 1, NULL, CAST(N'2020-09-12' AS Date), N'P', 1, N'7b076038-7e2a-4999-8a16-27d268089bd4')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (19, 1, 1, NULL, CAST(N'2020-09-14' AS Date), N'A', 1, N'1212694f-9ac6-4432-945c-80ddbc8b4f34')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (20, 1, 1, NULL, CAST(N'2020-09-15' AS Date), N'P', 1, N'897cefd7-4ae1-499c-9e3c-bc4f87960e0f')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (21, 1, 1, NULL, CAST(N'2020-09-16' AS Date), N'L', 1, N'04b8d7f8-e6fd-40f6-b068-1413d3ae4d1b')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (22, 1, 1, NULL, CAST(N'2020-09-17' AS Date), N'P', 1, N'dea5736d-cdde-4e3a-904e-5c7d2cfcd854')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (23, 1, 1, NULL, CAST(N'2020-09-18' AS Date), N'P', 1, N'351a4b8e-c81b-4e28-ba54-9e45278d0770')
INSERT [dbo].[Attendance] ([id], [student_id], [class_id], [subject_id], [attendance_date], [status], [session_id], [guid]) VALUES (24, 1, 1, NULL, CAST(N'2020-09-19' AS Date), N'L', 1, N'2d492668-ab76-400f-b260-32fb88b9e3f7')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Bank_Details] ON 

INSERT [dbo].[Bank_Details] ([id], [bank_name], [bank_branch], [account_no], [guid]) VALUES (1, N'HBL', N'Mall Road', 1234567, N'0a1413e2-2320-4c79-8bda-31c54e81bd38')
SET IDENTITY_INSERT [dbo].[Bank_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Charges] ON 

INSERT [dbo].[Charges] ([id], [amount], [class_id], [guid]) VALUES (1, 1000, 1, N'500040c8-8912-47a8-a620-ce3ed45e1873')
INSERT [dbo].[Charges] ([id], [amount], [class_id], [guid]) VALUES (2, 2000, 2, N'47d0824d-96d9-4784-a48f-8db2ae040766')
SET IDENTITY_INSERT [dbo].[Charges] OFF
GO
SET IDENTITY_INSERT [dbo].[Class_Subject_Alloc] ON 

INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (1, 1, 1)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (2, 1, 2)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (3, 1, 3)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (4, 2, 4)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (5, 2, 5)
INSERT [dbo].[Class_Subject_Alloc] ([id], [class_id], [subject_id]) VALUES (6, 2, 6)
SET IDENTITY_INSERT [dbo].[Class_Subject_Alloc] OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([id], [class_name], [section], [guid]) VALUES (1, N'8th', N'Blue', N'765715a9-c1c9-40b2-a186-5b6b05467825')
INSERT [dbo].[Classes] ([id], [class_name], [section], [guid]) VALUES (2, N'5th', N'Red', N'f102465f-f705-460f-b1f7-eb1199ea9b8f')
SET IDENTITY_INSERT [dbo].[Classes] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseOutlines] ON 

INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (1, N'c9432a15-9c9d-4215-8dd6-19be0eaf2ab6', 1, 1, 1, 1, N'Chapter 01', N'DMAS Rules', CAST(N'2021-01-02T00:00:00.0000000' AS DateTime2), 0, N'https://www.youtube.com/watch?v=B4yJzsPBe9o')
INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (2, N'e6bf4e1d-a47c-48bf-ac7b-ff2fc3595099', 1, 1, 1, 1, N'Chapter 02', N'Multiplication And Division', CAST(N'2021-02-02T00:00:00.0000000' AS DateTime2), 0, N'https://www.youtube.com/watch?v=B4yJzsPBe9o')
INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (3, N'c845c85a-aa9e-411a-8708-d5849f8cdd35', 1, 1, 1, 1, N'Chapter 03', N'Geometry Concepts', CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2), 0, N'https://www.youtube.com/watch?v=B4yJzsPBe9o')
INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (4, N'67c58d7e-0f40-43e6-897f-268e63590ab4', 2, 1, 1, 1, N'Chapter 01', N'Human Rights and Laws', CAST(N'2021-01-02T00:00:00.0000000' AS DateTime2), 0, N'https://www.google.com/search?q=human+rights+in+pakistan&oq=human+rights&aqs=chrome.1.69i57j0j0i433j0j46j0l3.4348j0j7&sourceid=chrome&ie=UTF-8')
INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (5, N'0d1d906b-9bb2-4140-a9e0-48df6e8151ce', 2, 1, 1, 1, N'Chapter 02', N'Ethical Behavior and its Obligations ', CAST(N'2021-02-02T00:00:00.0000000' AS DateTime2), 0, N'www.tutorialspoint.com')
INSERT [dbo].[CourseOutlines] ([id], [guid], [subject_id], [class_id], [session_id], [term_id], [title], [description], [date], [status], [references]) VALUES (7, N'00000000-0000-0000-0000-000000000000', 1, 1, 1, 1, N'Chapter 04', N'Application And Letters', CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2), 0, N'https://www.c-sharpcorner.com/UploadFile/mahesh/insert-item-into-a-C-Sharp-list/#:~:text=Add()%20method%20adds%20an,using%20Add%20method.')
SET IDENTITY_INSERT [dbo].[CourseOutlines] OFF
GO
SET IDENTITY_INSERT [dbo].[Days] ON 

INSERT [dbo].[Days] ([id], [day]) VALUES (1, N'Monday')
INSERT [dbo].[Days] ([id], [day]) VALUES (2, N'Tuesday')
INSERT [dbo].[Days] ([id], [day]) VALUES (3, N'Wednesday')
INSERT [dbo].[Days] ([id], [day]) VALUES (4, N'Thursday')
INSERT [dbo].[Days] ([id], [day]) VALUES (5, N'Friday')
INSERT [dbo].[Days] ([id], [day]) VALUES (6, N'Saturday')
INSERT [dbo].[Days] ([id], [day]) VALUES (7, N'Sunday')
SET IDENTITY_INSERT [dbo].[Days] OFF
GO
SET IDENTITY_INSERT [dbo].[Diary] ON 

INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (1, 1, 1, CAST(N'2020-10-20' AS Date), N'Data Mining Reading', N'Read Chapter 3 and 4 and 5 and 6', 1, N'88e6a8d5-5a4b-45a8-b738-a21dde0986b5')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (2, 1, 1, CAST(N'2020-10-21' AS Date), N'Regular Expression', N'Practice Reglar Expressions', 1, N'2045dce6-e764-482c-a1f2-0baa3168988a')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (3, 1, 1, CAST(N'2020-10-22' AS Date), N'Network Hack', N'Write ways to hack a network.', 1, N'f2f132af-fcd9-460e-b51e-04f068f8938c')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (4, 1, 1, CAST(N'2020-10-12' AS Date), N'Cost Analysis', N'Practice Formulas od cost analysis', 1, N'78c76636-5ef2-407c-a98d-b6c426fb89f6')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (5, 1, 1, CAST(N'2020-09-11' AS Date), N'Requirement Analysis', N'Read processes of Requirement Analysis', 1, N'e75fb688-f0cc-4051-825f-a2b93df8f9f5')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (6, 1, 1, CAST(N'2020-09-15' AS Date), N'Stackholder', N'Stackholder Definitions', 1, N'9980a171-0c7e-4022-a325-877daecc81b9')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (7, 1, 1, CAST(N'2020-09-16' AS Date), N'Good vs Bad Websites', N'Write features and drawbacks and improvements for good and bad websites', 1, N'8d9ad5ff-4cf8-47ef-8471-b761af562c4b')
INSERT [dbo].[Diary] ([id], [class_id], [subject_id], [diary_date], [diary_title], [diary_content], [session_id], [guid]) VALUES (10, 1, 1, CAST(N'2020-09-17' AS Date), N'SQL', N'Read SQL Functions', 1, N'83b44919-40f4-4618-a145-8f916ed3626c')
SET IDENTITY_INSERT [dbo].[Diary] OFF
GO
SET IDENTITY_INSERT [dbo].[Fee_Challan] ON 

INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (1, 1, CAST(N'2020-12-01' AS Date), CAST(N'2020-12-15' AS Date), 1, N'dfhigvndufhbji', 0, 2000, N'52748d86-d776-40bd-8363-1ff553484f6d')
INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (2, 1, CAST(N'2020-12-05' AS Date), CAST(N'2020-12-25' AS Date), 1, N'gfjhfkjfghjkhfgjk', 0, 500, N'822c29fa-849b-4377-ba49-05ab9a3d5535')
INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (3, 1, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-25' AS Date), 1, N'fjkytgkughk.h.p;', 0, 100, N'd48e2d0d-a428-4f25-bb80-a23a9dbcf35d')
INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (5, 1, CAST(N'2020-10-05' AS Date), CAST(N'2020-10-25' AS Date), 1, N'igytfg7867i', 0, 500, N'e1066f49-aae6-44a6-bbd8-71b1696b954a')
INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (6, 2, CAST(N'2020-12-23' AS Date), CAST(N'2021-01-01' AS Date), 1, N'fyhierufhieruULL', 0, 0, N'6c7b0a71-8625-4a0d-9948-eee9917db91a')
INSERT [dbo].[Fee_Challan] ([id], [student_id], [issue_date], [due_date], [bank_id], [instructions], [is_paid], [unpaid_charges], [guid]) VALUES (7, 2, CAST(N'2020-12-23' AS Date), CAST(N'2021-01-30' AS Date), 1, N'hgjmyfmyfjfyuf', 0, 500, N'f7da74a5-e027-4bd9-8710-fd9fb9507467')
SET IDENTITY_INSERT [dbo].[Fee_Challan] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade_Types] ON 

INSERT [dbo].[Grade_Types] ([id], [grade_type], [grade_type_slug], [guid], [class_id], [session_id], [subject_id]) VALUES (1, N'Quiz', N'quiz', N'125eccf3-3b61-4fd9-8798-225fec164259', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Grade_Types] OFF
GO
INSERT [dbo].[GradeActivities] ([id], [grade_type_id], [grade_title], [grade_date], [total_marks]) VALUES (N'765715a9-c1c9-40b2-a186-5b6b05465435', 1, N'Quiz 01', CAST(N'2021-02-24' AS Date), 50)
GO
SET IDENTITY_INSERT [dbo].[Grades] ON 

INSERT [dbo].[Grades] ([id], [student_id], [obtained_marks], [remarks], [guid], [grade_activity_id]) VALUES (3, 1, 45, N'Good', N'829407a4-c872-40bc-b2ed-4f6024b75fd8', N'765715a9-c1c9-40b2-a186-5b6b05465435')
SET IDENTITY_INSERT [dbo].[Grades] OFF
GO
SET IDENTITY_INSERT [dbo].[LectureContentFiles] ON 

INSERT [dbo].[LectureContentFiles] ([id], [guid], [original_name], [logical_name], [extension], [date], [size], [path], [course_outline_id]) VALUES (1, N'99899206-b1a7-475b-9964-87846f0cc19c', N'abc', N'69f505b8-8b10-4185-93c4-401eafc5135dabc', N'.txt', CAST(N'2021-01-02T00:00:00.0000000' AS DateTime2), 20, N'/Documents/abc.txt', 1)
SET IDENTITY_INSERT [dbo].[LectureContentFiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Parents] ON 

INSERT [dbo].[Parents] ([id], [first_name], [last_name], [email], [cnic], [address], [contact_primary], [contact_secondary], [occupation], [job_address], [profile_picture], [guid], [UserId1], [user_id]) VALUES (1, N'Arslan', N'Yousaf', N'arslan77@gmail.com', N'35302-2812955-9', N'Lahore', N'0322787811', NULL, N'Job', N'Lhr', NULL, N'0387cb41-2a49-40ff-8244-6425a061fdc4', NULL, N'97294e73-bec0-4383-b0b6-9d3a4c55072c')
INSERT [dbo].[Parents] ([id], [first_name], [last_name], [email], [cnic], [address], [contact_primary], [contact_secondary], [occupation], [job_address], [profile_picture], [guid], [UserId1], [user_id]) VALUES (2, N'Zeeshan', N'Yousaf', N'arslan78@gmail.com', N'35302-2812955-9', N'Lahore', N'0322787811', NULL, N'Job', N'Lhr', NULL, N'78d9644b-666f-416c-8e80-82152fb652bc', NULL, N'bfe748c9-de72-4b30-8bc3-bb945a1b8494')
SET IDENTITY_INSERT [dbo].[Parents] OFF
GO
SET IDENTITY_INSERT [dbo].[Security_Questions] ON 

INSERT [dbo].[Security_Questions] ([id], [question], [guid]) VALUES (1, N'What is favorite color? ', N'516cc674-c3b9-4afc-b49c-0de774297f18')
SET IDENTITY_INSERT [dbo].[Security_Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Sessions] ON 

INSERT [dbo].[Sessions] ([id], [session_year], [guid]) VALUES (1, N'2019-2020', N'89d9f08c-3d1f-40f0-8a01-0200a150af09')
SET IDENTITY_INSERT [dbo].[Sessions] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentApplicationFiles] ON 

INSERT [dbo].[StudentApplicationFiles] ([id], [guid], [date], [orignal_name], [logical_name], [extension], [size], [application_id], [content_type]) VALUES (1, N'48e7b294-1ee2-40c0-a5b2-b7347ff88d5f', CAST(N'2021-02-10T23:22:16.2832472' AS DateTime2), N'Arslan Yousaf_Resume.pdf', N'cc89c6d0-ec56-49ce-92c1-eb68e8c59755_Arslan-You', N'.pdf', 53996, 1, N'application/pdf')
SET IDENTITY_INSERT [dbo].[StudentApplicationFiles] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentApplications] ON 

INSERT [dbo].[StudentApplications] ([id], [guid], [student_id], [date], [subject], [content], [start_date], [end_date], [status]) VALUES (1, N'e81e6eb2-72a0-42a2-88ea-76b1f3a9acce', 2, CAST(N'2021-02-10T23:22:15.5059781' AS DateTime2), N'Sick Leave', N'<p>ABC</p>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Pending')
SET IDENTITY_INSERT [dbo].[StudentApplications] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture], [session_id], [enrollment_date], [guid], [UserId1], [user_id]) VALUES (1, N'1', N'Ali', N'Ahmad', CAST(N'2020-10-20' AS Date), 1, 1, 1, NULL, 1, CAST(N'2020-10-20' AS Date), N'829407a4-c872-40bc-b2ed-4f6024b75fd8', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture], [session_id], [enrollment_date], [guid], [UserId1], [user_id]) VALUES (2, N'2', N'Waseem', N'Akhroti', CAST(N'2020-10-20' AS Date), 1, 2, 1, NULL, 1, CAST(N'2020-10-20' AS Date), N'84f7214f-ecd4-42d4-8af9-f9d42b5e76ce', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture], [session_id], [enrollment_date], [guid], [UserId1], [user_id]) VALUES (3, N'3', N'Iqrar', N'Ali', CAST(N'2020-10-20' AS Date), 1, 2, 1, NULL, 1, CAST(N'2020-10-20' AS Date), N'533854dd-1490-4651-ae5d-e63e48031712', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Students] ([id], [roll_no], [first_name], [last_name], [dob], [parent_id], [class_id], [is_active], [profile_picture], [session_id], [enrollment_date], [guid], [UserId1], [user_id]) VALUES (4, N'12', N'Arslan', N'Yousaf', CAST(N'2020-10-20' AS Date), 1, 1, 1, NULL, 1, CAST(N'2020-10-20' AS Date), N'bef212da-fd88-4999-ab39-0530fc249956', NULL, N'00000000-0000-0000-0000-000000000000')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (1, N'8th-physics', N'Physics', N'physics', N'8a004bfd-c7f8-4cd0-ab87-759e614ddc49')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (2, N'8th-math', N'Math', N'math', N'c9b88e44-65c1-4949-a7bb-3f32bef782c9')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (3, N'8th-english', N'English', N'english', N'ba850e46-fbef-4df7-86b3-965e5bb8d412')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (4, N'5th-science', N'Science', N'science', N'5d48183d-61e1-4820-a056-128581286820')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (5, N'5th-urdu', N'Urdu', N'urdu', N'4419acfa-4139-4970-9b4d-bd38d6ed7d06')
INSERT [dbo].[Subjects] ([id], [subject_code], [subject_name], [subject_slug], [guid]) VALUES (6, N'5th-social', N'Social Studies', N'social-studies', N'f237281a-00c4-46bb-8a4a-4ecabfff77d2')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Alloc] ON 

INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (7, 3, 2, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (8, 4, 3, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (9, 1, 4, 2)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (10, 3, 5, 2)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (11, 4, 6, 2)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (12, 5, 2, 1)
INSERT [dbo].[Teacher_Subject_Alloc] ([id], [teacher_id], [subject_id], [class_id]) VALUES (13, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Alloc] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture], [guid], [UserId1], [user_id]) VALUES (1, N'Nadeem', N'Abbas', N'13897293', CAST(N'1988-10-10' AS Date), N'nadeem@gmai.com', N'abc', N'09218901', N'08078787', N'Math', CAST(N'2020-09-10' AS Date), 15000, NULL, N'2dc57719-1909-497e-8f56-8818f8d7e1e2', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture], [guid], [UserId1], [user_id]) VALUES (3, N'Shahvez', N'Ali', N'2356622', CAST(N'1990-10-09' AS Date), N'shah@gmail.com', N'bxc', N'3478959739', N'786868', N'Physics', CAST(N'2020-08-20' AS Date), 500000000, NULL, N'7c783310-918b-4a1a-b6cc-9cb42f1ee343', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture], [guid], [UserId1], [user_id]) VALUES (4, N'Shakeel', N'Zafar', N'420', CAST(N'1991-09-23' AS Date), N'shakeel@gmail.com', N'Chand py', N'090078601', N'090078701', N'Computer++', CAST(N'1900-01-01' AS Date), 10, NULL, N'185e2b4b-0b49-4024-a0dc-574fb082e6e0', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Teachers] ([id], [first_name], [last_name], [cnic], [dob], [email], [address], [contact_primary], [contact_secondary], [specialization], [joining_date], [salary], [profile_picture], [guid], [UserId1], [user_id]) VALUES (5, N'Nadeem', N'Abbass', N'12345678901', CAST(N'1980-01-06' AS Date), N'nadeem@ira.com', N'Lahore', N'03164141068', NULL, N'Maths', CAST(N'2019-01-06' AS Date), 30000, NULL, N'05e1adf5-6c3d-4946-bf62-0e89b5fe0181', NULL, N'250101a3-24a6-496d-bfc5-da9ea0cbd211')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[Terms] ON 

INSERT [dbo].[Terms] ([id], [name], [guid]) VALUES (1, N'First term', N'dac70ad8-cae0-492b-b179-262d6f44814b')
INSERT [dbo].[Terms] ([id], [name], [guid]) VALUES (2, N'Second Term', N'90895d17-dbec-4dda-9a5a-584c5d1448ff')
INSERT [dbo].[Terms] ([id], [name], [guid]) VALUES (3, N'Third Term', N'f3d4f0e2-34f5-46f8-beb0-ce788508c2bd')
SET IDENTITY_INSERT [dbo].[Terms] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeTables] ON 

INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (3, N'9a09fa22-f9c4-4db5-85de-4334b6fe4c6d', 1, 1, 1, 1, N'8:00 - 8:30')
INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (4, N'dec6b032-425b-4b31-8031-4181ddc7c200', 1, 1, 2, 1, N'8:30 - 9:00')
INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (5, N'a51c11e6-7246-41cb-a1ee-08f326db2722', 1, 1, 3, 1, N'9:00 - 10:00')
INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (6, N'3df86351-36b1-4c86-9119-dcb3611ec589', 1, 1, 1, 2, N'8:00 - 8:30')
INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (7, N'3986b0ae-f8ec-4083-a5bb-243a91a93a58', 1, 1, 2, 2, N'8:30 - 9:00')
INSERT [dbo].[TimeTables] ([id], [guid], [class_id], [session_id], [subject_id], [day_id], [time_slot]) VALUES (8, N'1b1db4e6-5c7d-4f03-91ef-c6a19ebc9ada', 1, 1, 3, 2, N'9:00 - 10:00')
SET IDENTITY_INSERT [dbo].[TimeTables] OFF
GO
/****** Object:  Index [IX_AcademicCalenders_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AcademicCalenders_session_id] ON [dbo].[AcademicCalenders]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Announcements_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_class_id] ON [dbo].[Announcements]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Announcements_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_session_id] ON [dbo].[Announcements]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Announcements_student_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_student_id] ON [dbo].[Announcements]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendance_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attendance_class_id] ON [dbo].[Attendance]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendance_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attendance_session_id] ON [dbo].[Attendance]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendance_student_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attendance_student_id] ON [dbo].[Attendance]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Charges_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Charges_class_id] ON [dbo].[Charges]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_Subject_Alloc_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_Subject_Alloc_class_id] ON [dbo].[Class_Subject_Alloc]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_Subject_Alloc_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_Subject_Alloc_subject_id] ON [dbo].[Class_Subject_Alloc]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseOutlines_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseOutlines_class_id] ON [dbo].[CourseOutlines]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseOutlines_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseOutlines_session_id] ON [dbo].[CourseOutlines]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseOutlines_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseOutlines_subject_id] ON [dbo].[CourseOutlines]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseOutlines_term_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseOutlines_term_id] ON [dbo].[CourseOutlines]
(
	[term_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Diary_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Diary_class_id] ON [dbo].[Diary]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Diary_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Diary_session_id] ON [dbo].[Diary]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Diary_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Diary_subject_id] ON [dbo].[Diary]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fee_Challan_student_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Fee_Challan_student_id] ON [dbo].[Fee_Challan]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grade_Types_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Grade_Types_class_id] ON [dbo].[Grade_Types]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grade_Types_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Grade_Types_session_id] ON [dbo].[Grade_Types]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grade_Types_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Grade_Types_subject_id] ON [dbo].[Grade_Types]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GradeActivities_grade_type_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_GradeActivities_grade_type_id] ON [dbo].[GradeActivities]
(
	[grade_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grades_grade_activity_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Grades_grade_activity_id] ON [dbo].[Grades]
(
	[grade_activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grades_student_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Grades_student_id] ON [dbo].[Grades]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LectureContentFiles_course_outline_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LectureContentFiles_course_outline_id] ON [dbo].[LectureContentFiles]
(
	[course_outline_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Parent_Login_sq_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parent_Login_sq_id] ON [dbo].[Parent_Login]
(
	[sq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Parents_UserId1]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parents_UserId1] ON [dbo].[Parents]
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentApplications_student_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentApplications_student_id] ON [dbo].[StudentApplications]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Students_class_id] ON [dbo].[Students]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Students_session_id] ON [dbo].[Students]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Students_UserId1]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Students_UserId1] ON [dbo].[Students]
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_GradeType_Alloc_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_GradeType_Alloc_class_id] ON [dbo].[Subject_GradeType_Alloc]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_GradeType_Alloc_grade_type_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_GradeType_Alloc_grade_type_id] ON [dbo].[Subject_GradeType_Alloc]
(
	[grade_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subject_GradeType_Alloc_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subject_GradeType_Alloc_subject_id] ON [dbo].[Subject_GradeType_Alloc]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Teacher_Subject_Alloc_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Teacher_Subject_Alloc_class_id] ON [dbo].[Teacher_Subject_Alloc]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Teacher_Subject_Alloc_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Teacher_Subject_Alloc_subject_id] ON [dbo].[Teacher_Subject_Alloc]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Teacher_Subject_Alloc_teacher_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Teacher_Subject_Alloc_teacher_id] ON [dbo].[Teacher_Subject_Alloc]
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Teachers_UserId1]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Teachers_UserId1] ON [dbo].[Teachers]
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeTables_class_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeTables_class_id] ON [dbo].[TimeTables]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeTables_day_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeTables_day_id] ON [dbo].[TimeTables]
(
	[day_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeTables_session_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeTables_session_id] ON [dbo].[TimeTables]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeTables_subject_id]    Script Date: 3/24/2021 10:34:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeTables_subject_id] ON [dbo].[TimeTables]
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AcademicCalenders] ADD  DEFAULT (N'(newid())') FOR [guid]
GO
ALTER TABLE [dbo].[Announcements] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Announcements] ADD  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Attendance] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Bank_Details] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Charges] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Classes] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[CourseOutlines] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Diary] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Fee_Challan] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Grade_Types] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Grade_Types] ADD  DEFAULT ((0)) FOR [class_id]
GO
ALTER TABLE [dbo].[Grade_Types] ADD  DEFAULT ((0)) FOR [session_id]
GO
ALTER TABLE [dbo].[Grade_Types] ADD  DEFAULT ((0)) FOR [subject_id]
GO
ALTER TABLE [dbo].[GradeActivities] ADD  DEFAULT (N'(newid())') FOR [id]
GO
ALTER TABLE [dbo].[Grades] ADD  DEFAULT ('') FOR [remarks]
GO
ALTER TABLE [dbo].[Grades] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Grades] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [grade_activity_id]
GO
ALTER TABLE [dbo].[LectureContentFiles] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Parents] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Parents] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [user_id]
GO
ALTER TABLE [dbo].[Security_Questions] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Sessions] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[StudentApplicationFiles] ADD  DEFAULT (N'(newid())') FOR [guid]
GO
ALTER TABLE [dbo].[StudentApplicationFiles] ADD  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[StudentApplicationFiles] ADD  DEFAULT (N'') FOR [content_type]
GO
ALTER TABLE [dbo].[StudentApplications] ADD  DEFAULT (N'(newid())') FOR [guid]
GO
ALTER TABLE [dbo].[StudentApplications] ADD  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [user_id]
GO
ALTER TABLE [dbo].[Subjects] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [user_id]
GO
ALTER TABLE [dbo].[Terms] ADD  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[TimeTables] ADD  DEFAULT (N'(newid())') FOR [guid]
GO
ALTER TABLE [dbo].[AcademicCalenders]  WITH CHECK ADD  CONSTRAINT [FK_AcademicCalenders_Sessions_session_id] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AcademicCalenders] CHECK CONSTRAINT [FK_AcademicCalenders_Sessions_session_id]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_Classes]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_Sessions] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_Sessions]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_Students]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Classes]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Sessions] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Sessions]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Students]
GO
ALTER TABLE [dbo].[Charges]  WITH CHECK ADD  CONSTRAINT [FK_Charges_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Charges] CHECK CONSTRAINT [FK_Charges_Classes]
GO
ALTER TABLE [dbo].[Class_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Class_Subject_Alloc] CHECK CONSTRAINT [FK_Class_Subject_Alloc_Classes]
GO
ALTER TABLE [dbo].[Class_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Class_Subject_Alloc] CHECK CONSTRAINT [FK_Class_Subject_Alloc_Subjects]
GO
ALTER TABLE [dbo].[CourseOutlines]  WITH CHECK ADD  CONSTRAINT [FK_CourseOutlines_Classes_class_id] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseOutlines] CHECK CONSTRAINT [FK_CourseOutlines_Classes_class_id]
GO
ALTER TABLE [dbo].[CourseOutlines]  WITH CHECK ADD  CONSTRAINT [FK_CourseOutlines_Sessions_session_id] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseOutlines] CHECK CONSTRAINT [FK_CourseOutlines_Sessions_session_id]
GO
ALTER TABLE [dbo].[CourseOutlines]  WITH CHECK ADD  CONSTRAINT [FK_CourseOutlines_Subjects_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseOutlines] CHECK CONSTRAINT [FK_CourseOutlines_Subjects_subject_id]
GO
ALTER TABLE [dbo].[CourseOutlines]  WITH CHECK ADD  CONSTRAINT [FK_CourseOutlines_Terms_term_id] FOREIGN KEY([term_id])
REFERENCES [dbo].[Terms] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseOutlines] CHECK CONSTRAINT [FK_CourseOutlines_Terms_term_id]
GO
ALTER TABLE [dbo].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Diary] CHECK CONSTRAINT [FK_Diary_Classes]
GO
ALTER TABLE [dbo].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Sessions] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
GO
ALTER TABLE [dbo].[Diary] CHECK CONSTRAINT [FK_Diary_Sessions]
GO
ALTER TABLE [dbo].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Diary] CHECK CONSTRAINT [FK_Diary_Subjects]
GO
ALTER TABLE [dbo].[Fee_Challan]  WITH CHECK ADD  CONSTRAINT [FK_Fee_Challan_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Fee_Challan] CHECK CONSTRAINT [FK_Fee_Challan_Students]
GO
ALTER TABLE [dbo].[Grade_Types]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Types_Classes_class_id] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grade_Types] CHECK CONSTRAINT [FK_Grade_Types_Classes_class_id]
GO
ALTER TABLE [dbo].[Grade_Types]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Types_Sessions_session_id] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grade_Types] CHECK CONSTRAINT [FK_Grade_Types_Sessions_session_id]
GO
ALTER TABLE [dbo].[Grade_Types]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Types_Subjects_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grade_Types] CHECK CONSTRAINT [FK_Grade_Types_Subjects_subject_id]
GO
ALTER TABLE [dbo].[GradeActivities]  WITH CHECK ADD  CONSTRAINT [FK_GradeActivities_Grade_Types_grade_type_id] FOREIGN KEY([grade_type_id])
REFERENCES [dbo].[Grade_Types] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GradeActivities] CHECK CONSTRAINT [FK_GradeActivities_Grade_Types_grade_type_id]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_GradeActivities_grade_activity_id] FOREIGN KEY([grade_activity_id])
REFERENCES [dbo].[GradeActivities] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_GradeActivities_grade_activity_id]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Students]
GO
ALTER TABLE [dbo].[LectureContentFiles]  WITH CHECK ADD  CONSTRAINT [FK_LectureContentFiles_CourseOutlines_course_outline_id] FOREIGN KEY([course_outline_id])
REFERENCES [dbo].[CourseOutlines] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LectureContentFiles] CHECK CONSTRAINT [FK_LectureContentFiles_CourseOutlines_course_outline_id]
GO
ALTER TABLE [dbo].[Parent_Login]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Login_Security_Questions] FOREIGN KEY([sq_id])
REFERENCES [dbo].[Security_Questions] ([id])
GO
ALTER TABLE [dbo].[Parent_Login] CHECK CONSTRAINT [FK_Parent_Login_Security_Questions]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_Parents_AspNetUsers_UserId1] FOREIGN KEY([UserId1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_Parents_AspNetUsers_UserId1]
GO
ALTER TABLE [dbo].[StudentApplications]  WITH CHECK ADD  CONSTRAINT [FK_StudentApplications_Students_student_id] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentApplications] CHECK CONSTRAINT [FK_StudentApplications_Students_student_id]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_AspNetUsers_UserId1] FOREIGN KEY([UserId1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_AspNetUsers_UserId1]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Classes]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Sessions] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Sessions]
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Classes]
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Grade_Types] FOREIGN KEY([grade_type_id])
REFERENCES [dbo].[Grade_Types] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Grade_Types]
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Subject_GradeType_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Subject_GradeType_Alloc] CHECK CONSTRAINT [FK_Subject_GradeType_Alloc_Subjects]
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Classes]
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Subjects]
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Alloc_Teachers] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Teacher_Subject_Alloc] CHECK CONSTRAINT [FK_Teacher_Subject_Alloc_Teachers]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_AspNetUsers_UserId1] FOREIGN KEY([UserId1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_AspNetUsers_UserId1]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Classes_class_id] FOREIGN KEY([class_id])
REFERENCES [dbo].[Classes] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Classes_class_id]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Days_day_id] FOREIGN KEY([day_id])
REFERENCES [dbo].[Days] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Days_day_id]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Sessions_session_id] FOREIGN KEY([session_id])
REFERENCES [dbo].[Sessions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Sessions_session_id]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Subjects_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Subjects_subject_id]
GO
USE [master]
GO
ALTER DATABASE [IRA_API] SET  READ_WRITE 
GO
