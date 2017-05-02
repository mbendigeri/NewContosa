USE [master]
GO
/****** Object:  Database [NewContosoUniversity1]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE DATABASE [NewContosoUniversity1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewContosoUniversity1', FILENAME = N'C:\Users\SBendige\NewContosoUniversity1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewContosoUniversity1_log', FILENAME = N'C:\Users\SBendige\NewContosoUniversity1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NewContosoUniversity1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewContosoUniversity1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewContosoUniversity1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NewContosoUniversity1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewContosoUniversity1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewContosoUniversity1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NewContosoUniversity1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewContosoUniversity1] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NewContosoUniversity1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewContosoUniversity1] SET  MULTI_USER 
GO
ALTER DATABASE [NewContosoUniversity1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewContosoUniversity1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewContosoUniversity1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewContosoUniversity1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewContosoUniversity1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewContosoUniversity1] SET QUERY_STORE = OFF
GO
USE [NewContosoUniversity1]
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
USE [NewContosoUniversity1]
GO
/****** Object:  Table [dbo].[WCCommunicationChannelType]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCommunicationChannelType](
	[CommunicationChannelTypeID] [int] NOT NULL,
	[CommunicationChannelTypeDesc] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCCommunicationChannelType] PRIMARY KEY CLUSTERED 
(
	[CommunicationChannelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCContactDetails]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCContactDetails](
	[ContactID] [int] NOT NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[CustomerID] [int] NULL,
	[Email] [nvarchar](max) NULL,
	[EmergencyPhone] [bit] NOT NULL,
	[LinkedInURL] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneType] [nvarchar](max) NULL,
	[PrimaryPhone] [bit] NOT NULL,
	[RelationShip] [nvarchar](max) NULL,
	[StaffID] [int] NULL,
	[WebsiteURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_WCContactDetails] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCCourseDetails]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCourseDetails](
	[CourseDetailID] [int] NOT NULL,
	[CourseChapter] [nvarchar](max) NULL,
	[CourseChapterDescription] [nvarchar](max) NULL,
	[CourseID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCCourseDetails] PRIMARY KEY CLUSTERED 
(
	[CourseDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCCourseMaster]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCourseMaster](
	[CourseID] [int] NOT NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[CourseTitle] [nvarchar](max) NULL,
	[CourseTypeID] [int] NOT NULL,
	[Duration] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCCourseMaster] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCCourseSchedule]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCourseSchedule](
	[CourseScheduleID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[CourseScheduleName] [nvarchar](max) NULL,
	[EndDateTime] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[StartDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCCourseSchedule] PRIMARY KEY CLUSTERED 
(
	[CourseScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCCourseType]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCourseType](
	[CourseTypeID] [int] NOT NULL,
	[CourseTypeDesc] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCCourseType] PRIMARY KEY CLUSTERED 
(
	[CourseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCCustomerDetails]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCCustomerDetails](
	[CustomerID] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[Building] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[DoorNo] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LandMark] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Locality] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[OccupationID] [int] NOT NULL,
	[Organisation] [nvarchar](max) NULL,
	[Pincode] [nvarchar](max) NULL,
	[Street1] [nvarchar](max) NULL,
	[Street2] [nvarchar](max) NULL,
 CONSTRAINT [PK_WCCustomerDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCFaceToFaceMeeting]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCFaceToFaceMeeting](
	[FaceToFaceMeetingID] [int] NOT NULL,
	[AllotedTimeInMinutes] [int] NOT NULL,
	[CompletedTimeInMinutes] [int] NOT NULL,
	[FaceToFaceMeetingDateTime] [datetime2](7) NOT NULL,
	[InteractionID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[courseID] [int] NOT NULL,
	[staffID] [int] NOT NULL,
 CONSTRAINT [PK_WCFaceToFaceMeeting] PRIMARY KEY CLUSTERED 
(
	[FaceToFaceMeetingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCHolidayCalendar]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCHolidayCalendar](
	[HolidayID] [int] NOT NULL,
	[HolidayEndDateTime] [datetime2](7) NOT NULL,
	[HolidayReason] [nvarchar](max) NULL,
	[HolidayStartDateTime] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCHolidayCalendar] PRIMARY KEY CLUSTERED 
(
	[HolidayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCInteractions]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCInteractions](
	[InteractionID] [int] NOT NULL,
	[CallBackEndDate] [datetime2](7) NULL,
	[CallBackEndTime] [datetime2](7) NULL,
	[CallBackStartDate] [datetime2](7) NULL,
	[CallBackStartTime] [datetime2](7) NULL,
	[CommunicationChannelTypeID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Discussion] [nvarchar](max) NULL,
	[FaceToFaceMeetingID] [int] NULL,
	[InteractDateTime] [datetime2](7) NOT NULL,
	[InteractiontypeID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCInteractions] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCInteractionType]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCInteractionType](
	[InteractionTypeID] [int] NOT NULL,
	[InteractionTypeDesc] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCInteractionType] PRIMARY KEY CLUSTERED 
(
	[InteractionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCInterestedCourses]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCInterestedCourses](
	[InteractionID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[CourseScheduleID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[WCInteractionInteractionID] [int] NULL,
 CONSTRAINT [PK_WCInterestedCourses] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC,
	[CourseID] ASC,
	[CourseScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCRoleMaster]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCRoleMaster](
	[RoleID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[RoleDescription] [nvarchar](max) NULL,
	[WCStaffDetailsStaffID] [int] NULL,
 CONSTRAINT [PK_WCRoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCStaffDetails]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCStaffDetails](
	[StaffID] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[Building] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[DoorNo] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LandMark] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Locality] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[Pincode] [nvarchar](max) NULL,
	[Street1] [nvarchar](max) NULL,
	[Street2] [nvarchar](max) NULL,
 CONSTRAINT [PK_WCStaffDetails] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCStaffRole]    Script Date: 5/2/2017 12:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCStaffRole](
	[StaffID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WCStaffRole] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_WCContactDetails_CustomerID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCContactDetails_CustomerID] ON [dbo].[WCContactDetails]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCContactDetails_StaffID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCContactDetails_StaffID] ON [dbo].[WCContactDetails]
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCCourseDetails_CourseID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCCourseDetails_CourseID] ON [dbo].[WCCourseDetails]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCCourseMaster_CourseTypeID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCCourseMaster_CourseTypeID] ON [dbo].[WCCourseMaster]
(
	[CourseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCCourseSchedule_CourseID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCCourseSchedule_CourseID] ON [dbo].[WCCourseSchedule]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFaceToFaceMeeting_courseID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFaceToFaceMeeting_courseID] ON [dbo].[WCFaceToFaceMeeting]
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFaceToFaceMeeting_InteractionID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFaceToFaceMeeting_InteractionID] ON [dbo].[WCFaceToFaceMeeting]
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFaceToFaceMeeting_staffID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFaceToFaceMeeting_staffID] ON [dbo].[WCFaceToFaceMeeting]
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInteractions_CommunicationChannelTypeID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInteractions_CommunicationChannelTypeID] ON [dbo].[WCInteractions]
(
	[CommunicationChannelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInteractions_ContactID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInteractions_ContactID] ON [dbo].[WCInteractions]
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInteractions_InteractiontypeID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInteractions_InteractiontypeID] ON [dbo].[WCInteractions]
(
	[InteractiontypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInterestedCourses_CourseID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInterestedCourses_CourseID] ON [dbo].[WCInterestedCourses]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInterestedCourses_CourseScheduleID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInterestedCourses_CourseScheduleID] ON [dbo].[WCInterestedCourses]
(
	[CourseScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInterestedCourses_InteractionID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInterestedCourses_InteractionID] ON [dbo].[WCInterestedCourses]
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCInterestedCourses_WCInteractionInteractionID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCInterestedCourses_WCInteractionInteractionID] ON [dbo].[WCInterestedCourses]
(
	[WCInteractionInteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCRoleMaster_WCStaffDetailsStaffID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCRoleMaster_WCStaffDetailsStaffID] ON [dbo].[WCRoleMaster]
(
	[WCStaffDetailsStaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCStaffRole_RoleID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCStaffRole_RoleID] ON [dbo].[WCStaffRole]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCStaffRole_StaffID]    Script Date: 5/2/2017 12:14:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCStaffRole_StaffID] ON [dbo].[WCStaffRole]
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WCContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_WCContactDetails_WCCustomerDetails_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[WCCustomerDetails] ([CustomerID])
GO
ALTER TABLE [dbo].[WCContactDetails] CHECK CONSTRAINT [FK_WCContactDetails_WCCustomerDetails_CustomerID]
GO
ALTER TABLE [dbo].[WCContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_WCContactDetails_WCStaffDetails_StaffID] FOREIGN KEY([StaffID])
REFERENCES [dbo].[WCStaffDetails] ([StaffID])
GO
ALTER TABLE [dbo].[WCContactDetails] CHECK CONSTRAINT [FK_WCContactDetails_WCStaffDetails_StaffID]
GO
ALTER TABLE [dbo].[WCCourseDetails]  WITH CHECK ADD  CONSTRAINT [FK_WCCourseDetails_WCCourseMaster_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[WCCourseMaster] ([CourseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCCourseDetails] CHECK CONSTRAINT [FK_WCCourseDetails_WCCourseMaster_CourseID]
GO
ALTER TABLE [dbo].[WCCourseMaster]  WITH CHECK ADD  CONSTRAINT [FK_WCCourseMaster_WCCourseType_CourseTypeID] FOREIGN KEY([CourseTypeID])
REFERENCES [dbo].[WCCourseType] ([CourseTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCCourseMaster] CHECK CONSTRAINT [FK_WCCourseMaster_WCCourseType_CourseTypeID]
GO
ALTER TABLE [dbo].[WCCourseSchedule]  WITH CHECK ADD  CONSTRAINT [FK_WCCourseSchedule_WCCourseMaster_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[WCCourseMaster] ([CourseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCCourseSchedule] CHECK CONSTRAINT [FK_WCCourseSchedule_WCCourseMaster_CourseID]
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting]  WITH CHECK ADD  CONSTRAINT [FK_WCFaceToFaceMeeting_WCCourseMaster_courseID] FOREIGN KEY([courseID])
REFERENCES [dbo].[WCCourseMaster] ([CourseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting] CHECK CONSTRAINT [FK_WCFaceToFaceMeeting_WCCourseMaster_courseID]
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting]  WITH CHECK ADD  CONSTRAINT [FK_WCFaceToFaceMeeting_WCInteractions_InteractionID] FOREIGN KEY([InteractionID])
REFERENCES [dbo].[WCInteractions] ([InteractionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting] CHECK CONSTRAINT [FK_WCFaceToFaceMeeting_WCInteractions_InteractionID]
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting]  WITH CHECK ADD  CONSTRAINT [FK_WCFaceToFaceMeeting_WCStaffDetails_staffID] FOREIGN KEY([staffID])
REFERENCES [dbo].[WCStaffDetails] ([StaffID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCFaceToFaceMeeting] CHECK CONSTRAINT [FK_WCFaceToFaceMeeting_WCStaffDetails_staffID]
GO
ALTER TABLE [dbo].[WCInteractions]  WITH CHECK ADD  CONSTRAINT [FK_WCInteractions_WCCommunicationChannelType_CommunicationChannelTypeID] FOREIGN KEY([CommunicationChannelTypeID])
REFERENCES [dbo].[WCCommunicationChannelType] ([CommunicationChannelTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCInteractions] CHECK CONSTRAINT [FK_WCInteractions_WCCommunicationChannelType_CommunicationChannelTypeID]
GO
ALTER TABLE [dbo].[WCInteractions]  WITH CHECK ADD  CONSTRAINT [FK_WCInteractions_WCContactDetails_ContactID] FOREIGN KEY([ContactID])
REFERENCES [dbo].[WCContactDetails] ([ContactID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCInteractions] CHECK CONSTRAINT [FK_WCInteractions_WCContactDetails_ContactID]
GO
ALTER TABLE [dbo].[WCInteractions]  WITH CHECK ADD  CONSTRAINT [FK_WCInteractions_WCInteractionType_InteractiontypeID] FOREIGN KEY([InteractiontypeID])
REFERENCES [dbo].[WCInteractionType] ([InteractionTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCInteractions] CHECK CONSTRAINT [FK_WCInteractions_WCInteractionType_InteractiontypeID]
GO
ALTER TABLE [dbo].[WCInterestedCourses]  WITH CHECK ADD  CONSTRAINT [FK_WCInterestedCourses_WCCourseMaster_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[WCCourseMaster] ([CourseID])
GO
ALTER TABLE [dbo].[WCInterestedCourses] CHECK CONSTRAINT [FK_WCInterestedCourses_WCCourseMaster_CourseID]
GO
ALTER TABLE [dbo].[WCInterestedCourses]  WITH CHECK ADD  CONSTRAINT [FK_WCInterestedCourses_WCCourseSchedule_CourseScheduleID] FOREIGN KEY([CourseScheduleID])
REFERENCES [dbo].[WCCourseSchedule] ([CourseScheduleID])
GO
ALTER TABLE [dbo].[WCInterestedCourses] CHECK CONSTRAINT [FK_WCInterestedCourses_WCCourseSchedule_CourseScheduleID]
GO
ALTER TABLE [dbo].[WCInterestedCourses]  WITH CHECK ADD  CONSTRAINT [FK_WCInterestedCourses_WCInteractions_InteractionID] FOREIGN KEY([InteractionID])
REFERENCES [dbo].[WCInteractions] ([InteractionID])
GO
ALTER TABLE [dbo].[WCInterestedCourses] CHECK CONSTRAINT [FK_WCInterestedCourses_WCInteractions_InteractionID]
GO
ALTER TABLE [dbo].[WCInterestedCourses]  WITH CHECK ADD  CONSTRAINT [FK_WCInterestedCourses_WCInteractions_WCInteractionInteractionID] FOREIGN KEY([WCInteractionInteractionID])
REFERENCES [dbo].[WCInteractions] ([InteractionID])
GO
ALTER TABLE [dbo].[WCInterestedCourses] CHECK CONSTRAINT [FK_WCInterestedCourses_WCInteractions_WCInteractionInteractionID]
GO
ALTER TABLE [dbo].[WCStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_WCStaffRole_WCRoleMaster_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[WCRoleMaster] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCStaffRole] CHECK CONSTRAINT [FK_WCStaffRole_WCRoleMaster_RoleID]
GO
ALTER TABLE [dbo].[WCStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_WCStaffRole_WCStaffDetails_StaffID] FOREIGN KEY([StaffID])
REFERENCES [dbo].[WCStaffDetails] ([StaffID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCStaffRole] CHECK CONSTRAINT [FK_WCStaffRole_WCStaffDetails_StaffID]
GO
USE [master]
GO
ALTER DATABASE [NewContosoUniversity1] SET  READ_WRITE 
GO
