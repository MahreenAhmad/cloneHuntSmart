USE [master]
GO
/****** Object:  Database [HuntSmart]    Script Date: 23-Mar-2017 03:50:56 PM ******/
CREATE DATABASE [HuntSmart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HuntSmart', FILENAME = N'C:\Users\saif\Documents\GitHub\cloneHuntSmart\HuntSmart\HuntSmart\App_Data\HuntSmart.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HuntSmart_log', FILENAME = N'C:\Users\saif\Documents\GitHub\cloneHuntSmart\HuntSmart\HuntSmart\App_Data\HuntSmart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HuntSmart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HuntSmart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HuntSmart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HuntSmart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HuntSmart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HuntSmart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HuntSmart] SET ARITHABORT OFF 
GO
ALTER DATABASE [HuntSmart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HuntSmart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HuntSmart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HuntSmart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HuntSmart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HuntSmart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HuntSmart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HuntSmart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HuntSmart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HuntSmart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HuntSmart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HuntSmart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HuntSmart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HuntSmart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HuntSmart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HuntSmart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HuntSmart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HuntSmart] SET RECOVERY FULL 
GO
ALTER DATABASE [HuntSmart] SET  MULTI_USER 
GO
ALTER DATABASE [HuntSmart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HuntSmart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HuntSmart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HuntSmart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HuntSmart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HuntSmart', N'ON'
GO
USE [HuntSmart]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 23-Mar-2017 03:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Comment_Description] [varchar](max) NOT NULL,
	[Comment_Time] [datetime] NOT NULL,
	[Comment_ReviewId] [int] NOT NULL,
	[Comment_UserId] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Comment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Company_Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [varchar](50) NOT NULL,
	[Company_Description] [varchar](max) NOT NULL,
	[Company_Logo] [varchar](max) NULL,
	[Company_CoverPhoto] [varchar](max) NULL,
	[Company_Location] [varchar](50) NOT NULL,
	[Company_Website] [varchar](50) NOT NULL,
	[Company_Contact] [varchar](50) NOT NULL,
	[Company_CRating] [float] NOT NULL,
	[Company_NoOfEmployees] [int] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Education]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Education](
	[Education_Id] [int] IDENTITY(1,1) NOT NULL,
	[Education_UserId] [int] NOT NULL,
	[Education_DegreeName] [varchar](50) NOT NULL,
	[Education_InstituteName] [varchar](50) NOT NULL,
	[Education_StartDate] [date] NOT NULL,
	[Education_EndDate] [date] NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Education_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailVerificationCode]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailVerificationCode](
	[EmailVerifiationCode_Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailVerificationCode_Value] [varchar](50) NOT NULL,
	[EmailVerificationCode_CreationTime] [datetime] NOT NULL,
	[EmailVerificationCode_UserId] [int] NOT NULL,
 CONSTRAINT [PK_EmailVerificationCode] PRIMARY KEY CLUSTERED 
(
	[EmailVerifiationCode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experience](
	[Exp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Exp_CompanyId] [int] NOT NULL,
	[Exp_UserId] [int] NOT NULL,
	[Exp_StartDate] [date] NOT NULL,
	[Exp_EndDate] [date] NOT NULL,
	[Exp_Designation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Experience] PRIMARY KEY CLUSTERED 
(
	[Exp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewCompany]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewCompany](
	[NewCompany_Id] [int] NOT NULL,
	[NewCompany_CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_NewCompany] PRIMARY KEY CLUSTERED 
(
	[NewCompany_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordVerificationCode]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PasswordVerificationCode](
	[PasswordVerificationCode_Id] [int] IDENTITY(1,1) NOT NULL,
	[PasswordVerificationCode_Value] [varchar](50) NOT NULL,
	[PasswordVerificationCode_CreationTime] [datetime] NOT NULL,
	[PasswordVerificationCode_UserId] [int] NOT NULL,
 CONSTRAINT [PK_PasswordVerificationCode] PRIMARY KEY CLUSTERED 
(
	[PasswordVerificationCode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PopularCompany]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularCompany](
	[PopularCompany_Id] [int] IDENTITY(1,1) NOT NULL,
	[PopularCompany_CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_PopularCompany] PRIMARY KEY CLUSTERED 
(
	[PopularCompany_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingQuestion]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RatingQuestion](
	[RatingQuestion_Id] [int] IDENTITY(1,1) NOT NULL,
	[RatingQuestion_Statement] [varchar](max) NOT NULL,
 CONSTRAINT [PK_RatingQuestion] PRIMARY KEY CLUSTERED 
(
	[RatingQuestion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RatingResponse]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingResponse](
	[RatingResponse_Id] [int] IDENTITY(1,1) NOT NULL,
	[RatingResponse_ReviewId] [int] NOT NULL,
	[RatingResponse_RatingQuestionId] [int] NOT NULL,
	[RatingResponse_Result] [float] NOT NULL,
 CONSTRAINT [PK_RatingResponse] PRIMARY KEY CLUSTERED 
(
	[RatingResponse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reply]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reply](
	[Reply_Id] [int] IDENTITY(1,1) NOT NULL,
	[Reply_Description] [varchar](max) NOT NULL,
	[Reply_Time] [datetime] NOT NULL,
	[Reply_CommentId] [int] NOT NULL,
	[Reply_UserId] [int] NOT NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[Reply_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[Review_Id] [int] IDENTITY(1,1) NOT NULL,
	[Review_CompanyId] [int] NOT NULL,
	[Review_UserId] [int] NOT NULL,
	[Review_CRating] [float] NOT NULL,
	[Review_Feedback] [varchar](max) NOT NULL,
	[Review_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_Review_1] PRIMARY KEY CLUSTERED 
(
	[Review_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skill](
	[Skill_Id] [int] IDENTITY(1,1) NOT NULL,
	[Skill_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Skill_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TopCompany]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopCompany](
	[TopCompany_Id] [int] NOT NULL,
	[TopCompany_CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_TopCompany] PRIMARY KEY CLUSTERED 
(
	[TopCompany_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_FirstName] [varchar](50) NOT NULL,
	[User_LastName] [varchar](50) NOT NULL,
	[User_Email] [varchar](50) NOT NULL,
	[User_EmailVerifStatus] [bit] NOT NULL,
	[User_Password] [varchar](50) NOT NULL,
	[User_Description] [varchar](max) NULL,
	[User_ContactNo] [varchar](50) NULL,
	[User_Gender] [smallint] NULL,
	[User_DOB] [datetime] NOT NULL,
	[User_Dp] [varchar](max) NULL,
	[User_CoverPhoto] [varchar](max) NULL,
	[User_AccountCreationDate] [datetime] NOT NULL,
	[User_EmailPrivacyStatus] [bit] NOT NULL,
	[User_ContactNoPrivacyStatus] [bit] NOT NULL,
	[User_DOBPrivacyStatus] [bit] NOT NULL,
	[User_NamePrivacyStatus] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 23-Mar-2017 03:51:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[UserSkill_Id] [int] IDENTITY(1,1) NOT NULL,
	[UserSkill_SkillId] [int] NOT NULL,
	[UserSkill_UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[UserSkill_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Review_Comment] FOREIGN KEY([Comment_ReviewId])
REFERENCES [dbo].[Review] ([Review_Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Review_Comment]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_User_Comment] FOREIGN KEY([Comment_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_User_Comment]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_User_Education] FOREIGN KEY([Education_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_User_Education]
GO
ALTER TABLE [dbo].[EmailVerificationCode]  WITH CHECK ADD  CONSTRAINT [FK_User_EmailVerificationCode] FOREIGN KEY([EmailVerificationCode_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[EmailVerificationCode] CHECK CONSTRAINT [FK_User_EmailVerificationCode]
GO
ALTER TABLE [dbo].[Experience]  WITH CHECK ADD  CONSTRAINT [FK_Experience_Company] FOREIGN KEY([Exp_CompanyId])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[Experience] CHECK CONSTRAINT [FK_Experience_Company]
GO
ALTER TABLE [dbo].[Experience]  WITH CHECK ADD  CONSTRAINT [FK_Experience_User] FOREIGN KEY([Exp_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Experience] CHECK CONSTRAINT [FK_Experience_User]
GO
ALTER TABLE [dbo].[NewCompany]  WITH CHECK ADD  CONSTRAINT [FK_NewCompany_NewCompany] FOREIGN KEY([NewCompany_CompanyId])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[NewCompany] CHECK CONSTRAINT [FK_NewCompany_NewCompany]
GO
ALTER TABLE [dbo].[PasswordVerificationCode]  WITH CHECK ADD  CONSTRAINT [FK_User_PasswordVerificationCode] FOREIGN KEY([PasswordVerificationCode_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[PasswordVerificationCode] CHECK CONSTRAINT [FK_User_PasswordVerificationCode]
GO
ALTER TABLE [dbo].[PopularCompany]  WITH CHECK ADD  CONSTRAINT [FK_Company_PopularCompany] FOREIGN KEY([PopularCompany_CompanyId])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[PopularCompany] CHECK CONSTRAINT [FK_Company_PopularCompany]
GO
ALTER TABLE [dbo].[RatingResponse]  WITH CHECK ADD  CONSTRAINT [FK_RatingQuestion_RatingResponse] FOREIGN KEY([RatingResponse_RatingQuestionId])
REFERENCES [dbo].[RatingQuestion] ([RatingQuestion_Id])
GO
ALTER TABLE [dbo].[RatingResponse] CHECK CONSTRAINT [FK_RatingQuestion_RatingResponse]
GO
ALTER TABLE [dbo].[RatingResponse]  WITH CHECK ADD  CONSTRAINT [FK_Review_RatingResponse] FOREIGN KEY([RatingResponse_ReviewId])
REFERENCES [dbo].[Review] ([Review_Id])
GO
ALTER TABLE [dbo].[RatingResponse] CHECK CONSTRAINT [FK_Review_RatingResponse]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Reply] FOREIGN KEY([Reply_CommentId])
REFERENCES [dbo].[Comment] ([Comment_Id])
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_Comment_Reply]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_User_Reply] FOREIGN KEY([Reply_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_User_Reply]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Company_Review] FOREIGN KEY([Review_CompanyId])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Company_Review]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_User_Review] FOREIGN KEY([Review_UserId])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_User_Review]
GO
ALTER TABLE [dbo].[TopCompany]  WITH CHECK ADD  CONSTRAINT [FK_Company_TopCompany] FOREIGN KEY([TopCompany_CompanyId])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[TopCompany] CHECK CONSTRAINT [FK_Company_TopCompany]
GO
ALTER TABLE [dbo].[UserSkill]  WITH CHECK ADD  CONSTRAINT [FK_UserSkill_Skill] FOREIGN KEY([UserSkill_Id])
REFERENCES [dbo].[Skill] ([Skill_Id])
GO
ALTER TABLE [dbo].[UserSkill] CHECK CONSTRAINT [FK_UserSkill_Skill]
GO
ALTER TABLE [dbo].[UserSkill]  WITH CHECK ADD  CONSTRAINT [FK_UserSkill_User] FOREIGN KEY([UserSkill_Id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[UserSkill] CHECK CONSTRAINT [FK_UserSkill_User]
GO
USE [master]
GO
ALTER DATABASE [HuntSmart] SET  READ_WRITE 
GO
