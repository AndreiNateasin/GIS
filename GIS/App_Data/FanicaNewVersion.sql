

/****** Object:  Table [dbo].[Assets]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[Capacitors]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Capacitors](
	[IDCapacitor] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IDCapacitorType] [int] NOT NULL,
	[IDPowerTransformer] [int] NOT NULL,
	[IDMapElementType] [int] NULL,
	[InstalledPower] [int] NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [int] NOT NULL,
 CONSTRAINT [PK_Capacitors] PRIMARY KEY CLUSTERED 
(
	[IDCapacitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapacitorTypes]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapacitorTypes](
	[IDCapacitorType] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_CapacitorTypes] PRIMARY KEY CLUSTERED 
(
	[IDCapacitorType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consumers]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consumers](
	[IDConsumer] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[UWI] [nvarchar](50) NULL,
	[InternalOrder] [nvarchar](50) NULL,
	[IDMapElementType] [int] NOT NULL,
	[IDCostCenter] [int] NOT NULL,
	[IDDistrict] [int] NOT NULL,
	[IDFieldCluster] [int] NULL,
	[IDElectricStation] [int] NULL,
	[IDPowerTransformer] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[InstalledPower] [int] NULL,
	[NormalOperation] [int] NULL,
	[VMSCode] [nvarchar](25) NULL,
	[NominalVoltage] [int] NULL,
	[IDDataSource] [int] NULL,
	[ComputingSign] [int] NOT NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Consumers] PRIMARY KEY CLUSTERED 
(
	[IDConsumer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consumption]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumption](
	[IDConsumption] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumer] [int] NOT NULL,
	[ConsumptionDate] [datetime] NOT NULL,
	[ActiveEnergyIndex] [int] NOT NULL,
	[InductiveEnergyIndex] [int] NULL,
	[CapacitiveEnergyIndex] [int] NULL,
	[ActiveEnergyCorrection] [int] NULL,
	[InductiveEnergyCorrection] [int] NULL,
	[CapacitiveEnergyCorrection] [int] NULL,
	[Voltage] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Consumptions] PRIMARY KEY CLUSTERED 
(
	[IDConsumption] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsumptionDetails]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[CostCenters]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[DataSources]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSources](
	[IDDataSource] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_DataSources] PRIMARY KEY CLUSTERED 
(
	[IDDataSource] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[IDDistrict] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nchar](10) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[IDDistrict] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalTariffs]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalTariffs](
	[IDElectricalTariff] [int] IDENTITY(1,1) NOT NULL,
	[IDNetworkOperator] [int] NOT NULL,
	[ActiveEnergyPrice] [decimal](10, 2) NOT NULL,
	[ReactiveMediumVoltageEnergyPrice] [decimal](10, 2) NOT NULL,
	[ReactiveLowVoltageEnergyPrice] [decimal](10, 2) NOT NULL,
	[Transport] [decimal](10, 2) NOT NULL,
	[SystemServices] [decimal](10, 2) NOT NULL,
	[OPCOM] [decimal](10, 2) NOT NULL,
	[HighVoltageDistribution] [decimal](10, 2) NOT NULL,
	[MediumVoltageDistribution] [decimal](10, 2) NOT NULL,
	[LowVoltageDistribution] [decimal](10, 2) NOT NULL,
	[BalancingCost] [decimal](10, 2) NOT NULL,
	[ProviderProfit] [decimal](10, 2) NOT NULL,
	[CogenerationContribution] [decimal](10, 2) NOT NULL,
	[ValidityStartDate] [datetime] NOT NULL,
	[ValidityEndDate] [datetime] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AcquisitionPrices] PRIMARY KEY CLUSTERED 
(
	[IDElectricalTariff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalThresholds]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalThresholds](
	[IDElectricalThreshold] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MinimumValue] [decimal](10, 2) NULL,
	[MaximumValue] [decimal](10, 2) NULL,
	[SuccessiveOccurrences] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Electrical Thresholds] PRIMARY KEY CLUSTERED 
(
	[IDElectricalThreshold] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricLines]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricLines](
	[IDElectricLine] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IDVoltageLevel] [int] NOT NULL,
	[IDAsset] [int] NOT NULL,
	[IDDistrict] [int] NULL,
	[IDMapElementType] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ElectricLines] PRIMARY KEY CLUSTERED 
(
	[IDElectricLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricStations]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricStations](
	[IDElectricStation] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ElectricStations] PRIMARY KEY CLUSTERED 
(
	[IDElectricStation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnergyInput]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnergyInput](
	[IDEnergyInput] [int] IDENTITY(1,1) NOT NULL,
	[IDFiscalMeter] [int] NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[ActiveEnergyIndex] [int] NULL,
	[InductiveEnergyIndex] [int] NULL,
	[CapacitiveEnergyIndex] [int] NULL,
	[ActiveEnergyCorrection] [int] NULL,
	[InductiveEnergyCorrection] [int] NULL,
	[CapacitiveEnergyCorrection] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_EnergyInput] PRIMARY KEY CLUSTERED 
(
	[IDEnergyInput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldClusters]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldClusters](
	[IDFieldCluster] [int] IDENTITY(1,1) NOT NULL,
	[FieldClusterName] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_FieldClusters] PRIMARY KEY CLUSTERED 
(
	[IDFieldCluster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FiscalMeters]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FiscalMeters](
	[IDFiscalMeter] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Serial] [nvarchar](50) NOT NULL,
	[Constant] [int] NULL,
	[IDAsset] [int] NOT NULL,
	[IDDistrict] [int] NULL,
	[IDVoltageLevel] [int] NULL,
	[IDNetworkOperator] [int] NULL,
	[IDElectricLine] [int] NULL,
	[IDMapElementType] [int] NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_FiscalMeters] PRIMARY KEY CLUSTERED 
(
	[IDFiscalMeter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GPSCoordinates]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GPSCoordinates](
	[IDGPSCoordinate] [int] IDENTITY(1,1) NOT NULL,
	[IDElectricLine] [int] NOT NULL,
	[Longitude] [varchar](50) NOT NULL,
	[Latitude] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[IDGPSCoordinate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportFiles]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[Imports]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[ImportTypes]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[MapElementLinks]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapElementLinks](
	[IDMapElementLink] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReferenceIndex] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MapElementLinks] PRIMARY KEY CLUSTERED 
(
	[IDMapElementLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MapElementsToMapElementLinks]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapElementsToMapElementLinks](
	[IDMapElementToMapElementLink] [int] NOT NULL,
	[IDMapElement] [int] NOT NULL,
	[IDMapElementLink] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [date] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MapElementsToMapElementLinks] PRIMARY KEY CLUSTERED 
(
	[IDMapElementToMapElementLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MapElementTypes]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MapElementTypes](
	[IDMapElementType] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](100) NOT NULL,
	[TypeImage] [varbinary](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ConsumerTypes] PRIMARY KEY CLUSTERED 
(
	[IDMapElementType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IDMenu] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
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
/****** Object:  Table [dbo].[MenuToRoles]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[Months]    Script Date: 8/14/2014 5:29:07 PM ******/
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
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Months] PRIMARY KEY CLUSTERED 
(
	[IDMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetworkOperators]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkOperators](
	[IDNetworkOperator] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_NetworkOperators] PRIMARY KEY CLUSTERED 
(
	[IDNetworkOperator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationRules]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[Notifications]    Script Date: 8/14/2014 5:29:07 PM ******/
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
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications1] PRIMARY KEY CLUSTERED 
(
	[IDNotification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationsToUsers]    Script Date: 8/14/2014 5:29:07 PM ******/
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
/****** Object:  Table [dbo].[PowerTransformers]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PowerTransformers](
	[IDPowerTransformer] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IDAsset] [int] NULL,
	[IDDistrict] [int] NULL,
	[IDElectricLine] [int] NOT NULL,
	[IDVoltageLevelMeasurePoint] [int] NULL,
	[IDVoltageLevelSettlementPoint] [int] NULL,
	[IDMapElementType] [int] NULL,
	[NoLoadLosses] [int] NOT NULL,
	[CreepLosses] [int] NOT NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_PowerTransformers] PRIMARY KEY CLUSTERED 
(
	[IDPowerTransformer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PowerTransformersToElectricLines]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerTransformersToElectricLines](
	[IDPowerTransformersToElectricLines] [int] IDENTITY(1,1) NOT NULL,
	[IDPowerTransformer] [int] NOT NULL,
	[IDElectricLine] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_PowerTransformersToElectricLines] PRIMARY KEY CLUSTERED 
(
	[IDPowerTransformersToElectricLines] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reports]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[IDReport] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UIReportName] [nvarchar](255) NOT NULL,
	[ReportGroup] [nvarchar](50) NULL,
	[ReportGroupOrderNo] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[IDReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReportsToRoles]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsToRoles](
	[IDReportToRole] [int] IDENTITY(1,1) NOT NULL,
	[IDReport] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ReportsToRoles] PRIMARY KEY CLUSTERED 
(
	[IDReportToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/14/2014 5:29:07 PM ******/
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
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersToRoles]    Script Date: 8/14/2014 5:29:07 PM ******/
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
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UsersToRoles] PRIMARY KEY CLUSTERED 
(
	[IDUserToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoltageLevels]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoltageLevels](
	[IDVoltageLevel] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_VoltageLevels] PRIMARY KEY CLUSTERED 
(
	[IDVoltageLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WellProduction]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WellProduction](
	[IDWellProduction] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumer] [int] NOT NULL,
	[ProductionDate] [datetime] NOT NULL,
	[RunningHours] [int] NULL,
	[GrossProduction] [decimal](10, 2) NOT NULL,
	[WaterCut] [decimal](10, 2) NOT NULL,
	[NetOil] [decimal](10, 2) NOT NULL,
	[GasProduction] [decimal](10, 2) NOT NULL,
	[Water] [decimal](10, 2) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_WellProduction] PRIMARY KEY CLUSTERED 
(
	[IDWellProduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[MapElectricLines]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MapElectricLines]
AS

	SELECT 
		el.Name,
		Latitude, 
		Longitude,
		met.TypeName
	FROM ElectricLines el
	INNER JOIN MapElementTypes met ON el.IDMapElementType = met.IDMapElementType
	INNER JOIN GPSCoordinates c ON c.IDElectricLine = el.IDElectricLine
GO
/****** Object:  View [dbo].[MapElements]    Script Date: 8/14/2014 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MapElements]
AS
	SELECT 
		Name,
		Latitude, 
		Longitude,
		Image, 
		met.TypeName,
		met.TypeImage
	FROM Consumers c 
	INNER JOIN MapElementTypes met ON c.IDMapElementType = met.IDMapElementType

	UNION 

	SELECT 
		Name,
		Latitude, 
		Longitude,
		Image, 
		met.TypeName,
		met.TypeImage
	FROM PowerTransformers pt 
	INNER JOIN MapElementTypes met ON pt.IDMapElementType = met.IDMapElementType

	UNION 

	SELECT 
		Name,
		Latitude, 
		Longitude,
		Image, 
		met.TypeName,
		met.TypeImage
	FROM Capacitors c 
	INNER JOIN MapElementTypes met ON c.IDMapElementType = met.IDMapElementType

	UNION 

	SELECT 
		Name,
		Latitude, 
		Longitude,
		Image, 
		met.TypeName,
		met.TypeImage
	FROM FiscalMeters fm 
	INNER JOIN MapElementTypes met ON fm.IDMapElementType = met.IDMapElementType

GO
ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Capacitors] ADD  CONSTRAINT [DF_Capacitors_IDMapElementType]  DEFAULT ((4)) FOR [IDMapElementType]
GO
ALTER TABLE [dbo].[Capacitors] ADD  CONSTRAINT [DF_Capacitors_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Capacitors] ADD  CONSTRAINT [DF_Capacitors_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Capacitors] ADD  CONSTRAINT [DF_Capacitors_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[CapacitorTypes] ADD  CONSTRAINT [DF_CapacitorTypes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CapacitorTypes] ADD  CONSTRAINT [DF_CapacitorTypes_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[CapacitorTypes] ADD  CONSTRAINT [DF_CapacitorTypes_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Consumers] ADD  CONSTRAINT [DF_Consumers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Consumption] ADD  CONSTRAINT [DF_Consumptions_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Consumption] ADD  CONSTRAINT [DF_Consumptions_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[CostCenters] ADD  CONSTRAINT [DF_CostCenters_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CostCenters] ADD  CONSTRAINT [DF_CostCenters_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[DataSources] ADD  CONSTRAINT [DF_DataSources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[DataSources] ADD  CONSTRAINT [DF_DataSources_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[DataSources] ADD  CONSTRAINT [DF_DataSources_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Districts] ADD  CONSTRAINT [DF_Districts_CreatedOn_1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Districts] ADD  CONSTRAINT [DF_Districts_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Districts] ADD  CONSTRAINT [DF_Districts_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ElectricalTariffs] ADD  CONSTRAINT [DF_AcquisitionPrices_Active]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ElectricalTariffs] ADD  CONSTRAINT [DF_ElectricalTariffs_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ElectricalTariffs] ADD  CONSTRAINT [DF_ElectricalTariffs_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ElectricalThresholds] ADD  CONSTRAINT [DF_Electrical Thresholds_SuccessiveOccurrences]  DEFAULT ((1)) FOR [SuccessiveOccurrences]
GO
ALTER TABLE [dbo].[ElectricalThresholds] ADD  CONSTRAINT [DF_Electrical Thresholds_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ElectricalThresholds] ADD  CONSTRAINT [DF_Electrical Thresholds_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ElectricalThresholds] ADD  CONSTRAINT [DF_ElectricalThresholds_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ElectricLines] ADD  CONSTRAINT [DF_ElectricLines_IDMapElementType]  DEFAULT ((1)) FOR [IDMapElementType]
GO
ALTER TABLE [dbo].[ElectricLines] ADD  CONSTRAINT [DF_ElectricLines_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ElectricLines] ADD  CONSTRAINT [DF_ElectricLines_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ElectricLines] ADD  CONSTRAINT [DF_ElectricLines_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ElectricStations] ADD  CONSTRAINT [DF_ElectricStations_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ElectricStations] ADD  CONSTRAINT [DF_ElectricStations_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ElectricStations] ADD  CONSTRAINT [DF_ElectricStations_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[EnergyInput] ADD  CONSTRAINT [DF_EnergyInput_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EnergyInput] ADD  CONSTRAINT [DF_EnergyInput_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[FieldClusters] ADD  CONSTRAINT [DF_FieldClusters_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FieldClusters] ADD  CONSTRAINT [DF_FieldClusters_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[FieldClusters] ADD  CONSTRAINT [DF_FieldClusters_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[FiscalMeters] ADD  CONSTRAINT [DF_FiscalMeters_IDMapElementType]  DEFAULT ((3)) FOR [IDMapElementType]
GO
ALTER TABLE [dbo].[FiscalMeters] ADD  CONSTRAINT [DF_FiscalMeters_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FiscalMeters] ADD  CONSTRAINT [DF_FiscalMeters_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[FiscalMeters] ADD  CONSTRAINT [DF_FiscalMeters_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[GPSCoordinates] ADD  CONSTRAINT [DF_GPSCoordinates_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GPSCoordinates] ADD  CONSTRAINT [DF_GPSCoordinates_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[GPSCoordinates] ADD  CONSTRAINT [DF_Locations_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Imports] ADD  CONSTRAINT [DF_Imports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MapElementLinks] ADD  CONSTRAINT [DF_MapElementLinks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MapElementLinks] ADD  CONSTRAINT [DF_MapElementLinks_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[MapElementLinks] ADD  CONSTRAINT [DF_MapElementLinks_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[MapElementsToMapElementLinks] ADD  CONSTRAINT [DF_MapElementsToMapElementLinks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MapElementsToMapElementLinks] ADD  CONSTRAINT [DF_MapElementsToMapElementLinks_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[MapElementsToMapElementLinks] ADD  CONSTRAINT [DF_MapElementsToMapElementLinks_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[MapElementTypes] ADD  CONSTRAINT [DF_ConsumerTypes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MapElementTypes] ADD  CONSTRAINT [DF_ConsumerTypes_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[MapElementTypes] ADD  CONSTRAINT [DF_ConsumerTypes_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
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
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[MenuToRoles] ADD  CONSTRAINT [DF_MenuToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Months] ADD  CONSTRAINT [DF_Months_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Months] ADD  CONSTRAINT [DF_Months_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Months] ADD  CONSTRAINT [DF_Months_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[NetworkOperators] ADD  CONSTRAINT [DF_NetworkOperators_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NetworkOperators] ADD  CONSTRAINT [DF_NetworkOperators_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[NetworkOperators] ADD  CONSTRAINT [DF_NetworkOperators_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[NotificationRules] ADD  CONSTRAINT [DF_NotificationRules_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NotificationRules] ADD  CONSTRAINT [DF_NotificationRules_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[NotificationRules] ADD  CONSTRAINT [DF_NotificationRules_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications1_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[NotificationsToUsers] ADD  CONSTRAINT [DF_NotificationsToUsers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NotificationsToUsers] ADD  CONSTRAINT [DF_NotificationsToUsers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PowerTransformers] ADD  CONSTRAINT [DF_PowerTransformers_IDMapElementType]  DEFAULT ((2)) FOR [IDMapElementType]
GO
ALTER TABLE [dbo].[PowerTransformers] ADD  CONSTRAINT [DF_PowerTransformers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[PowerTransformers] ADD  CONSTRAINT [DF_PowerTransformers_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[PowerTransformers] ADD  CONSTRAINT [DF_PowerTransformers_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[PowerTransformers] ADD  CONSTRAINT [DF_PowerTransformers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PowerTransformersToElectricLines] ADD  CONSTRAINT [DF_PowerTransformersToElectricLines_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[PowerTransformersToElectricLines] ADD  CONSTRAINT [DF_PowerTransformersToElectricLines_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[PowerTransformersToElectricLines] ADD  CONSTRAINT [DF_PowerTransformersToElectricLines_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ReportsToRoles] ADD  CONSTRAINT [DF_ReportsToRoles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ReportsToRoles] ADD  CONSTRAINT [DF_ReportsToRoles_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ReportsToRoles] ADD  CONSTRAINT [DF_ReportsToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[UsersToRoles] ADD  CONSTRAINT [DF_UsersToRoles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UsersToRoles] ADD  CONSTRAINT [DF_UsersToRoles_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[VoltageLevels] ADD  CONSTRAINT [DF_VoltageLevels_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[VoltageLevels] ADD  CONSTRAINT [DF_VoltageLevels_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[VoltageLevels] ADD  CONSTRAINT [DF_VoltageLevels_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[WellProduction] ADD  CONSTRAINT [DF_WellProduction_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[WellProduction] ADD  CONSTRAINT [DF_WellProduction_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
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
ALTER TABLE [dbo].[Capacitors]  WITH CHECK ADD  CONSTRAINT [FK_Capacitors_CapacitorTypes] FOREIGN KEY([IDCapacitorType])
REFERENCES [dbo].[CapacitorTypes] ([IDCapacitorType])
GO
ALTER TABLE [dbo].[Capacitors] CHECK CONSTRAINT [FK_Capacitors_CapacitorTypes]
GO
ALTER TABLE [dbo].[Capacitors]  WITH CHECK ADD  CONSTRAINT [FK_Capacitors_MapElementTypes] FOREIGN KEY([IDMapElementType])
REFERENCES [dbo].[MapElementTypes] ([IDMapElementType])
GO
ALTER TABLE [dbo].[Capacitors] CHECK CONSTRAINT [FK_Capacitors_MapElementTypes]
GO
ALTER TABLE [dbo].[Capacitors]  WITH CHECK ADD  CONSTRAINT [FK_Capacitors_PowerTransformers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Capacitors] CHECK CONSTRAINT [FK_Capacitors_PowerTransformers]
GO
ALTER TABLE [dbo].[Capacitors]  WITH CHECK ADD  CONSTRAINT [FK_Capacitors_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Capacitors] CHECK CONSTRAINT [FK_Capacitors_Users]
GO
ALTER TABLE [dbo].[Capacitors]  WITH CHECK ADD  CONSTRAINT [FK_Capacitors_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Capacitors] CHECK CONSTRAINT [FK_Capacitors_Users1]
GO
ALTER TABLE [dbo].[CapacitorTypes]  WITH CHECK ADD  CONSTRAINT [FK_CapacitorTypes_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[CapacitorTypes] CHECK CONSTRAINT [FK_CapacitorTypes_Users]
GO
ALTER TABLE [dbo].[CapacitorTypes]  WITH CHECK ADD  CONSTRAINT [FK_CapacitorTypes_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[CapacitorTypes] CHECK CONSTRAINT [FK_CapacitorTypes_Users1]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_Consumers]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_ConsumerTypes] FOREIGN KEY([IDMapElementType])
REFERENCES [dbo].[MapElementTypes] ([IDMapElementType])
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
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_MapElementTypes] FOREIGN KEY([IDMapElementType])
REFERENCES [dbo].[MapElementTypes] ([IDMapElementType])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_MapElementTypes]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_Users]
GO
ALTER TABLE [dbo].[Consumers]  WITH CHECK ADD  CONSTRAINT [FK_Consumers_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Consumers] CHECK CONSTRAINT [FK_Consumers_Users1]
GO
ALTER TABLE [dbo].[Consumption]  WITH CHECK ADD  CONSTRAINT [FK_Consumption_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO
ALTER TABLE [dbo].[Consumption] CHECK CONSTRAINT [FK_Consumption_Consumers]
GO
ALTER TABLE [dbo].[ConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConsumptionDetails_Consumptions] FOREIGN KEY([IDConsumption])
REFERENCES [dbo].[Consumption] ([IDConsumption])
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
ALTER TABLE [dbo].[ElectricalTariffs]  WITH CHECK ADD  CONSTRAINT [FK_AcquisitionPrices_NetworkOperators] FOREIGN KEY([IDNetworkOperator])
REFERENCES [dbo].[NetworkOperators] ([IDNetworkOperator])
GO
ALTER TABLE [dbo].[ElectricalTariffs] CHECK CONSTRAINT [FK_AcquisitionPrices_NetworkOperators]
GO
ALTER TABLE [dbo].[ElectricalThresholds]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalThresholds_ElectricalThresholds] FOREIGN KEY([IDElectricalThreshold])
REFERENCES [dbo].[ElectricalThresholds] ([IDElectricalThreshold])
GO
ALTER TABLE [dbo].[ElectricalThresholds] CHECK CONSTRAINT [FK_ElectricalThresholds_ElectricalThresholds]
GO
ALTER TABLE [dbo].[ElectricLines]  WITH CHECK ADD  CONSTRAINT [FK_ElectricLines_Assets] FOREIGN KEY([IDAsset])
REFERENCES [dbo].[Assets] ([IDAsset])
GO
ALTER TABLE [dbo].[ElectricLines] CHECK CONSTRAINT [FK_ElectricLines_Assets]
GO
ALTER TABLE [dbo].[ElectricLines]  WITH CHECK ADD  CONSTRAINT [FK_ElectricLines_Districts] FOREIGN KEY([IDDistrict])
REFERENCES [dbo].[Districts] ([IDDistrict])
GO
ALTER TABLE [dbo].[ElectricLines] CHECK CONSTRAINT [FK_ElectricLines_Districts]
GO
ALTER TABLE [dbo].[ElectricLines]  WITH CHECK ADD  CONSTRAINT [FK_ElectricLines_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ElectricLines] CHECK CONSTRAINT [FK_ElectricLines_Users]
GO
ALTER TABLE [dbo].[ElectricLines]  WITH CHECK ADD  CONSTRAINT [FK_ElectricLines_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[ElectricLines] CHECK CONSTRAINT [FK_ElectricLines_Users1]
GO
ALTER TABLE [dbo].[ElectricLines]  WITH CHECK ADD  CONSTRAINT [FK_ElectricLines_VoltageLevels] FOREIGN KEY([IDVoltageLevel])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[ElectricLines] CHECK CONSTRAINT [FK_ElectricLines_VoltageLevels]
GO
ALTER TABLE [dbo].[EnergyInput]  WITH CHECK ADD  CONSTRAINT [FK_EnergyInput_FiscalMeters] FOREIGN KEY([IDFiscalMeter])
REFERENCES [dbo].[FiscalMeters] ([IDFiscalMeter])
GO
ALTER TABLE [dbo].[EnergyInput] CHECK CONSTRAINT [FK_EnergyInput_FiscalMeters]
GO
ALTER TABLE [dbo].[EnergyInput]  WITH CHECK ADD  CONSTRAINT [FK_EnergyInput_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[EnergyInput] CHECK CONSTRAINT [FK_EnergyInput_Users]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_Assets] FOREIGN KEY([IDAsset])
REFERENCES [dbo].[Assets] ([IDAsset])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_Assets]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_Districts] FOREIGN KEY([IDDistrict])
REFERENCES [dbo].[Districts] ([IDDistrict])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_Districts]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_ElectricLines] FOREIGN KEY([IDElectricLine])
REFERENCES [dbo].[ElectricLines] ([IDElectricLine])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_ElectricLines]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_MapElementTypes] FOREIGN KEY([IDMapElementType])
REFERENCES [dbo].[MapElementTypes] ([IDMapElementType])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_MapElementTypes]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_NetworkOperators] FOREIGN KEY([IDNetworkOperator])
REFERENCES [dbo].[NetworkOperators] ([IDNetworkOperator])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_NetworkOperators]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_Users]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_Users1]
GO
ALTER TABLE [dbo].[FiscalMeters]  WITH CHECK ADD  CONSTRAINT [FK_FiscalMeters_VoltageLevels] FOREIGN KEY([IDVoltageLevel])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[FiscalMeters] CHECK CONSTRAINT [FK_FiscalMeters_VoltageLevels]
GO
ALTER TABLE [dbo].[GPSCoordinates]  WITH CHECK ADD  CONSTRAINT [FK_GPSCoordinates_ElectricLine] FOREIGN KEY([IDElectricLine])
REFERENCES [dbo].[ElectricLines] ([IDElectricLine])
GO
ALTER TABLE [dbo].[GPSCoordinates] CHECK CONSTRAINT [FK_GPSCoordinates_ElectricLine]
GO
ALTER TABLE [dbo].[GPSCoordinates]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[GPSCoordinates] CHECK CONSTRAINT [FK_Locations_Users]
GO
ALTER TABLE [dbo].[GPSCoordinates]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[GPSCoordinates] CHECK CONSTRAINT [FK_Locations_Users1]
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
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_Assets] FOREIGN KEY([IDAsset])
REFERENCES [dbo].[Assets] ([IDAsset])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_Assets]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_Districts] FOREIGN KEY([IDDistrict])
REFERENCES [dbo].[Districts] ([IDDistrict])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_Districts]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_ElectricLines] FOREIGN KEY([IDElectricLine])
REFERENCES [dbo].[ElectricLines] ([IDElectricLine])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_ElectricLines]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_MapElementTypes] FOREIGN KEY([IDMapElementType])
REFERENCES [dbo].[MapElementTypes] ([IDMapElementType])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_MapElementTypes]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_Users] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_Users]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_Users1]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_VoltageLevels] FOREIGN KEY([IDVoltageLevelMeasurePoint])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_VoltageLevels]
GO
ALTER TABLE [dbo].[PowerTransformers]  WITH CHECK ADD  CONSTRAINT [FK_PowerTransformers_VoltageLevels1] FOREIGN KEY([IDVoltageLevelSettlementPoint])
REFERENCES [dbo].[VoltageLevels] ([IDVoltageLevel])
GO
ALTER TABLE [dbo].[PowerTransformers] CHECK CONSTRAINT [FK_PowerTransformers_VoltageLevels1]
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
ALTER TABLE [dbo].[WellProduction]  WITH CHECK ADD  CONSTRAINT [FK_WellProduction_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO
ALTER TABLE [dbo].[WellProduction] CHECK CONSTRAINT [FK_WellProduction_Consumers]
GO
ALTER TABLE [dbo].[WellProduction]  WITH CHECK ADD  CONSTRAINT [FK_WellProduction_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[WellProduction] CHECK CONSTRAINT [FK_WellProduction_Users1]
GO
