USE [FanicaCG]
GO
/****** Object:  Table [dbo].[AcquisitionPrices]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcquisitionPrices](
	[IDAcquisitionPrice] [int] IDENTITY(1,1) NOT NULL,
	[IDNetworkOperator] [int] NOT NULL,
	[ActiveEnergyPrice] [decimal](10, 2) NOT NULL,
	[ReactiveMTEnergyPrice] [decimal](10, 2) NOT NULL,
	[ReactiveJTEnergyPrice] [decimal](10, 2) NOT NULL,
	[TL] [decimal](10, 2) NOT NULL,
	[SS] [decimal](10, 2) NOT NULL,
	[OPCOM] [decimal](10, 2) NOT NULL,
	[IT] [decimal](10, 2) NOT NULL,
	[MT] [decimal](10, 2) NOT NULL,
	[JT] [decimal](10, 2) NOT NULL,
	[BalancingCost] [decimal](10, 2) NOT NULL,
	[ProviderProfit] [decimal](10, 2) NOT NULL,
	[CogenerationContribution] [decimal](10, 2) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AcquisitionPrices] PRIMARY KEY CLUSTERED 
(
	[IDAcquisitionPrice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assets]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[IDAsset] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[IDAsset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consumers]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consumers](
	[IDConsumer] [int] IDENTITY(1,1) NOT NULL,
	[ConsumerName] [nvarchar](100) NOT NULL,
	[IDConsumerType] [int] NOT NULL,
	[IDCostCenter] [int] NOT NULL,
	[IDNetworkOperator] [int] NOT NULL,
	[IDDistrict] [int] NOT NULL,
	[IDAsset] [int] NOT NULL,
	[IDFieldCluster] [int] NULL,
	[ConsumptionPlaceName] [nvarchar](100) NOT NULL,
	[ConsumptionPlaceAddress] [nvarchar](255) NULL,
	[IDElectricStation] [int] NULL,
	[MeasurePointName] [nvarchar](1000) NOT NULL,
	[VMSCode] [nvarchar](25) NULL,
	[ComputingSign] [int] NOT NULL,
	[IDVoltageLevelMeasurePoint] [int] NULL,
	[IDVoltageLevelSettlementPoint] [int] NULL,
	[RecordedEnergyCorrection] [decimal](10, 2) NOT NULL,
	[ElectricMeterSerial] [nvarchar](100) NULL,
	[ElectricMeterConstant] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[Image] [varbinary](max) NULL,
 CONSTRAINT [PK_Consumers] PRIMARY KEY CLUSTERED 
(
	[IDConsumer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConsumerTypes]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumerTypes](
	[IDConsumerType] [int] IDENTITY(1,1) NOT NULL,
	[ConsumerTypeName] [nvarchar](100) NOT NULL,
	[MapType] [nvarchar](100) NULL,
 CONSTRAINT [PK_ConsumerTypes] PRIMARY KEY CLUSTERED 
(
	[IDConsumerType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsumerTypesToReports]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumerTypesToReports](
	[IDConsumerTypeToReport] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumerType] [int] NOT NULL,
	[IDReport] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_ConsumerTypesToReports] PRIMARY KEY CLUSTERED 
(
	[IDConsumerTypeToReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsumptionDetails]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumptionDetails](
	[IDConsumptionDetail] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumption] [int] NOT NULL,
	[ElectricCurrent] [decimal](10, 2) NOT NULL,
	[Voltage] [decimal](10, 2) NOT NULL,
	[Power] [decimal](10, 2) NOT NULL,
	[PowerFactor] [decimal](10, 2) NOT NULL,
	[CurrentUnbalance] [decimal](10, 2) NOT NULL,
	[VoltageUnbalance] [decimal](10, 2) NOT NULL,
	[Frequency] [decimal](10, 2) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_ConsumptionDetails] PRIMARY KEY CLUSTERED 
(
	[IDConsumptionDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consumptions]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumptions](
	[IDConsumption] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumer] [int] NOT NULL,
	[ActiveEnergyMeterStartIndex] [decimal](10, 3) NULL,
	[ActiveEnergyMeterEndIndex] [decimal](10, 3) NULL,
	[ActiveEnergyConsumption] [decimal](10, 3) NOT NULL,
	[InductiveEnergyMeterStartIndex] [decimal](10, 3) NULL,
	[InductiveEnergyMeterEndIndex] [decimal](10, 3) NULL,
	[InductiveEnergyConsumption] [decimal](10, 3) NOT NULL,
	[CapacitiveEnergyMeterStartIndex] [decimal](10, 3) NULL,
	[CapacitiveEnergyMeterEndIndex] [decimal](10, 3) NULL,
	[CapacitiveEnergyConsumption] [decimal](10, 3) NOT NULL,
	[UseActiveEnergyCorrection] [bit] NOT NULL,
	[UseInductiveEnergyCorrection] [bit] NOT NULL,
	[UseCapacitiveEnergyCorrection] [bit] NOT NULL,
	[ConsumptionDate] [datetime] NOT NULL,
	[CreatedOn] [date] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_Consumptions] PRIMARY KEY CLUSTERED 
(
	[IDConsumption] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CostCenters]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCenters](
	[IDCostCenter] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[IDParentCostCenter] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_CostCenters] PRIMARY KEY CLUSTERED 
(
	[IDCostCenter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[IDDistrict] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[IDDistrict] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricStations]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricStations](
	[IDElectricStation] [int] IDENTITY(1,1) NOT NULL,
	[ElectricStationName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ElectricStations] PRIMARY KEY CLUSTERED 
(
	[IDElectricStation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldClusters]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldClusters](
	[IDFieldCluster] [int] IDENTITY(1,1) NOT NULL,
	[FieldClusterName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FieldClusters] PRIMARY KEY CLUSTERED 
(
	[IDFieldCluster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportFiles]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportFiles](
	[IDImportFile] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[ContentType] [nvarchar](50) NOT NULL,
	[FileContent] [varbinary](max) NOT NULL,
	[UploadStartTime] [datetime] NOT NULL,
	[UploadEndTime] [datetime] NULL,
	[FileSize] [int] NOT NULL,
	[FileExtension] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ImportFiles] PRIMARY KEY CLUSTERED 
(
	[IDImportFile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Imports]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imports](
	[IDImport] [int] IDENTITY(1,1) NOT NULL,
	[IDImportType] [int] NOT NULL,
	[IDOriginalFile] [int] NOT NULL,
	[IDAnnotatedFile] [int] NULL,
	[IDMonth] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_Imports] PRIMARY KEY CLUSTERED 
(
	[IDImport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTypes]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTypes](
	[IDImportType] [int] IDENTITY(1,1) NOT NULL,
	[ImportTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ImportTypes] PRIMARY KEY CLUSTERED 
(
	[IDImportType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[IDLocation] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumer] [int] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[ElectricalLineDiagramX] [int] NULL,
	[ElectricalLineDiagramY] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[IDLocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IDMenu] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](100) NOT NULL,
	[IDParentMenu] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[IDMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuToRoles]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuToRoles](
	[IDMenuToRole] [int] IDENTITY(1,1) NOT NULL,
	[IDMenu] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
	[ReadPermission] [bit] NOT NULL,
	[CreatePermission] [bit] NOT NULL,
	[EditPermission] [bit] NOT NULL,
	[DeletePermission] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MenuToRoles] PRIMARY KEY CLUSTERED 
(
	[IDMenuToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Months]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Months](
	[IDMonth] [int] IDENTITY(1,1) NOT NULL,
	[MonthCode] [nvarchar](50) NOT NULL,
	[MonthName] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [date] NOT NULL,
	[MonthInt] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Months] PRIMARY KEY CLUSTERED 
(
	[IDMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetworkOperators]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkOperators](
	[IDNetworkOperator] [int] IDENTITY(1,1) NOT NULL,
	[NetworkOperatorName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_NetworkOperators] PRIMARY KEY CLUSTERED 
(
	[IDNetworkOperator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationRules]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationRules](
	[IDNotificationRule] [int] IDENTITY(1,1) NOT NULL,
	[RuleDescription] [nvarchar](100) NOT NULL,
	[SPToExecute] [nvarchar](max) NOT NULL,
	[NotificationSubject] [nvarchar](255) NOT NULL,
	[NotificationBody] [nvarchar](max) NOT NULL,
	[ValidityDays] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[IDNotificationRule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[IDNotification] [int] IDENTITY(1,1) NOT NULL,
	[IDNotificationRule] [int] NULL,
	[NotificationSubject] [nvarchar](255) NOT NULL,
	[NotificationBody] [nvarchar](max) NOT NULL,
	[NotificationStartDate] [datetime] NOT NULL,
	[NotificationEndDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications1] PRIMARY KEY CLUSTERED 
(
	[IDNotification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationsToUsers]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationsToUsers](
	[IDNotificationToUser] [int] IDENTITY(1,1) NOT NULL,
	[IDNotification] [int] NOT NULL,
	[IDUser] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[DateRead] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_NotificationsToUsers] PRIMARY KEY CLUSTERED 
(
	[IDNotificationToUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reports]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[IDReport] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [nvarchar](255) NOT NULL,
	[UIReportName] [nvarchar](255) NOT NULL,
	[ReportGroup] [nvarchar](50) NULL,
	[ReportGroupOrderNo] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[IDReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReportsToRoles]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsToRoles](
	[IDReportToRole] [int] IDENTITY(1,1) NOT NULL,
	[IDReport] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ReportsToRoles] PRIMARY KEY CLUSTERED 
(
	[IDReportToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersToRoles]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersToRoles](
	[IDUserToRole] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UsersToRoles] PRIMARY KEY CLUSTERED 
(
	[IDUserToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoltageLevels]    Script Date: 7/22/2014 6:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoltageLevels](
	[IDVoltageLevel] [int] IDENTITY(1,1) NOT NULL,
	[VoltageLevelName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VoltageLevels] PRIMARY KEY CLUSTERED 
(
	[IDVoltageLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AcquisitionPrices] ADD  CONSTRAINT [DF_AcquisitionPrices_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_RecordedEnergyCorrection]  DEFAULT ((0)) FOR [RecordedEnergyCorrection]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_ElectricMeterConstant]  DEFAULT ((0)) FOR [ElectricMeterConstant]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ConsumerTypesToReports] ADD  CONSTRAINT [DF_ConsumerTypesToReports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Consumptions] ADD  CONSTRAINT [DF_Consumptions_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CostCenters] ADD  CONSTRAINT [DF_CostCenters_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Imports] ADD  CONSTRAINT [DF_Imports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Locations] ADD  CONSTRAINT [DF_Locations_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_Read]  DEFAULT ((1)) FOR [ReadPermission]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_CreatePermission]  DEFAULT ((1)) FOR [CreatePermission]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_Edit]  DEFAULT ((1)) FOR [EditPermission]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_Delete]  DEFAULT ((1)) FOR [DeletePermission]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications1_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[NotificationsToUsers] ADD  CONSTRAINT [DF_NotificationsToUsers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ReportsToRoles] ADD  CONSTRAINT [DF_ReportsToRoles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ReportsToRoles] ADD  CONSTRAINT [DF_ReportsToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[UsersToRoles] ADD  CONSTRAINT [DF_UsersToRoles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UsersToRoles] ADD  CONSTRAINT [DF_UsersToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[AcquisitionPrices]  WITH CHECK ADD  CONSTRAINT [FK_AcquisitionPrices_NetworkOperators] FOREIGN KEY([IDNetworkOperator])
REFERENCES [dbo].[NetworkOperators] ([IDNetworkOperator])
GO
ALTER TABLE [dbo].[AcquisitionPrices] CHECK CONSTRAINT [FK_AcquisitionPrices_NetworkOperators]
GO
ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_Users]
GO
ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_Users1]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_Assets] FOREIGN KEY([IDAsset])
REFERENCES [dbo].[Assets] ([IDAsset])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_Assets]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_ConsumerTypes] FOREIGN KEY([IDConsumerType])
REFERENCES [dbo].[ConsumerTypes] ([IDConsumerType])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_ConsumerTypes]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_CostCenters] FOREIGN KEY([IDCostCenter])
REFERENCES [dbo].[CostCenters] ([IDCostCenter])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_CostCenters]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_Districts] FOREIGN KEY([IDDistrict])
REFERENCES [dbo].[Districts] ([IDDistrict])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_Districts]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_ElectricStations] FOREIGN KEY([IDElectricStation])
REFERENCES [dbo].[ElectricStations] ([IDElectricStation])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_ElectricStations]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_FieldClusters] FOREIGN KEY([IDFieldCluster])
REFERENCES [dbo].[FieldClusters] ([IDFieldCluster])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_FieldClusters]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_NetworkOperators] FOREIGN KEY([IDNetworkOperator])
REFERENCES [dbo].[NetworkOperators] ([IDNetworkOperator])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_NetworkOperators]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_VoltageLevels] FOREIGN KEY([IDVoltageLevelMeasurePoint])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_VoltageLevels]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_VoltageLevels1] FOREIGN KEY([IDVoltageLevelSettlementPoint])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_VoltageLevels1]
GO
ALTER TABLE [dbo].[ConsumerTypesToReports]  WITH CHECK ADD  CONSTRAINT [FK_ConsumerTypesToReports_ConsumerTypes] FOREIGN KEY([IDConsumerType])
REFERENCES [dbo].[ConsumerTypes] ([IDConsumerType])
GO
ALTER TABLE [dbo].[ConsumerTypesToReports] CHECK CONSTRAINT [FK_ConsumerTypesToReports_ConsumerTypes]
GO
ALTER TABLE [dbo].[ConsumerTypesToReports]  WITH CHECK ADD  CONSTRAINT [FK_ConsumerTypesToReports_Reports] FOREIGN KEY([IDReport])
REFERENCES [dbo].[Reports] ([IDReport])
GO
ALTER TABLE [dbo].[ConsumerTypesToReports] CHECK CONSTRAINT [FK_ConsumerTypesToReports_Reports]
GO
ALTER TABLE [dbo].[ConsumerTypesToReports]  WITH CHECK ADD  CONSTRAINT [FK_ConsumerTypesToReports_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ConsumerTypesToReports] CHECK CONSTRAINT [FK_ConsumerTypesToReports_Users]
GO
ALTER TABLE [dbo].[ConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConsumptionDetails_Consumptions] FOREIGN KEY([IDConsumption])
REFERENCES [dbo].[Consumptions] ([IDConsumption])
GO
ALTER TABLE [dbo].[ConsumptionDetails] CHECK CONSTRAINT [FK_ConsumptionDetails_Consumptions]
GO
ALTER TABLE [dbo].[ConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConsumptionDetails_Users] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ConsumptionDetails] CHECK CONSTRAINT [FK_ConsumptionDetails_Users]
GO
ALTER TABLE [dbo].[ConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConsumptionDetails_Users1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ConsumptionDetails] CHECK CONSTRAINT [FK_ConsumptionDetails_Users1]
GO
ALTER TABLE [dbo].[Consumptions]  WITH CHECK ADD  CONSTRAINT [FK_Consumptions_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO
ALTER TABLE [dbo].[Consumptions] CHECK CONSTRAINT [FK_Consumptions_Consumers]
GO
ALTER TABLE [dbo].[Consumptions]  WITH CHECK ADD  CONSTRAINT [FK_Consumptions_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Consumptions] CHECK CONSTRAINT [FK_Consumptions_Users]
GO
ALTER TABLE [dbo].[CostCenters]  WITH CHECK ADD  CONSTRAINT [FK_CostCenters_CostCenters] FOREIGN KEY([IDParentCostCenter])
REFERENCES [dbo].[CostCenters] ([IDCostCenter])
GO
ALTER TABLE [dbo].[CostCenters] CHECK CONSTRAINT [FK_CostCenters_CostCenters]
GO
ALTER TABLE [dbo].[CostCenters]  WITH CHECK ADD  CONSTRAINT [FK_CostCenters_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[CostCenters] CHECK CONSTRAINT [FK_CostCenters_Users]
GO
ALTER TABLE [dbo].[CostCenters]  WITH CHECK ADD  CONSTRAINT [FK_CostCenters_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[CostCenters] CHECK CONSTRAINT [FK_CostCenters_Users1]
GO
ALTER TABLE [dbo].[Imports]  WITH CHECK ADD  CONSTRAINT [FK_Imports_ImportFiles] FOREIGN KEY([IDOriginalFile])
REFERENCES [dbo].[ImportFiles] ([IDImportFile])
GO
ALTER TABLE [dbo].[Imports] CHECK CONSTRAINT [FK_Imports_ImportFiles]
GO
ALTER TABLE [dbo].[Imports]  WITH CHECK ADD  CONSTRAINT [FK_Imports_ImportFiles1] FOREIGN KEY([IDAnnotatedFile])
REFERENCES [dbo].[ImportFiles] ([IDImportFile])
GO
ALTER TABLE [dbo].[Imports] CHECK CONSTRAINT [FK_Imports_ImportFiles1]
GO
ALTER TABLE [dbo].[Imports]  WITH CHECK ADD  CONSTRAINT [FK_Imports_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Imports] CHECK CONSTRAINT [FK_Imports_Users]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Consumers]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Users]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Users1]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_ParentMenu] FOREIGN KEY([IDParentMenu])
REFERENCES [dbo].[Menu] ([IDMenu])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_ParentMenu]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Users]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Users1]
GO
ALTER TABLE [dbo].[MenuToRoles]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRoles_Menu] FOREIGN KEY([IDMenu])
REFERENCES [dbo].[Menu] ([IDMenu])
GO
ALTER TABLE [dbo].[MenuToRoles] CHECK CONSTRAINT [FK_MenuToRoles_Menu]
GO
ALTER TABLE [dbo].[MenuToRoles]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRoles_Roles] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Roles] ([IDRole])
GO
ALTER TABLE [dbo].[MenuToRoles] CHECK CONSTRAINT [FK_MenuToRoles_Roles]
GO
ALTER TABLE [dbo].[MenuToRoles]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRoles_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[MenuToRoles] CHECK CONSTRAINT [FK_MenuToRoles_Users]
GO
ALTER TABLE [dbo].[MenuToRoles]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRoles_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[MenuToRoles] CHECK CONSTRAINT [FK_MenuToRoles_Users1]
GO
ALTER TABLE [dbo].[NotificationRules]  WITH CHECK ADD  CONSTRAINT [FK_NotificationRules_NotificationRules] FOREIGN KEY([IDNotificationRule])
REFERENCES [dbo].[NotificationRules] ([IDNotificationRule])
GO
ALTER TABLE [dbo].[NotificationRules] CHECK CONSTRAINT [FK_NotificationRules_NotificationRules]
GO
ALTER TABLE [dbo].[NotificationRules]  WITH CHECK ADD  CONSTRAINT [FK_NotificationRules_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[NotificationRules] CHECK CONSTRAINT [FK_NotificationRules_Users]
GO
ALTER TABLE [dbo].[NotificationRules]  WITH CHECK ADD  CONSTRAINT [FK_NotificationRules_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[NotificationRules] CHECK CONSTRAINT [FK_NotificationRules_Users1]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_NotificationRules] FOREIGN KEY([IDNotificationRule])
REFERENCES [dbo].[NotificationRules] ([IDNotificationRule])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_NotificationRules]
GO
ALTER TABLE [dbo].[NotificationsToUsers]  WITH CHECK ADD  CONSTRAINT [FK_NotificationsToUsers_NotificationsToUsers] FOREIGN KEY([IDNotification])
REFERENCES [dbo].[Notifications] ([IDNotification])
GO
ALTER TABLE [dbo].[NotificationsToUsers] CHECK CONSTRAINT [FK_NotificationsToUsers_NotificationsToUsers]
GO
ALTER TABLE [dbo].[NotificationsToUsers]  WITH CHECK ADD  CONSTRAINT [FK_NotificationsToUsers_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[NotificationsToUsers] CHECK CONSTRAINT [FK_NotificationsToUsers_Users]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Users]
GO
ALTER TABLE [dbo].[ReportsToRoles]  WITH CHECK ADD  CONSTRAINT [FK_ReportsToRoles_Reports] FOREIGN KEY([IDReport])
REFERENCES [dbo].[Reports] ([IDReport])
GO
ALTER TABLE [dbo].[ReportsToRoles] CHECK CONSTRAINT [FK_ReportsToRoles_Reports]
GO
ALTER TABLE [dbo].[ReportsToRoles]  WITH CHECK ADD  CONSTRAINT [FK_ReportsToRoles_Roles] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Roles] ([IDRole])
GO
ALTER TABLE [dbo].[ReportsToRoles] CHECK CONSTRAINT [FK_ReportsToRoles_Roles]
GO
ALTER TABLE [dbo].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_CreatedByUser] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_CreatedByUser]
GO
ALTER TABLE [dbo].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_Roles] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Roles] ([IDRole])
GO
ALTER TABLE [dbo].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_Roles]
GO
ALTER TABLE [dbo].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_Users]
GO
