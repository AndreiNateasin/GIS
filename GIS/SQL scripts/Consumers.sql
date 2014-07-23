
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



