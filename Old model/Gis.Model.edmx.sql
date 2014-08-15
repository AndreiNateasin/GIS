
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/14/2014 11:56:59
-- Generated from EDMX file: C:\Users\User\Documents\GitHub\GIS\GIS\Models\Gis.Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GIS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AcquisitionPrices_NetworkOperators]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AcquisitionPrices] DROP CONSTRAINT [FK_AcquisitionPrices_NetworkOperators];
GO
IF OBJECT_ID(N'[dbo].[FK_Assets_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets] DROP CONSTRAINT [FK_Assets_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Assets_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets] DROP CONSTRAINT [FK_Assets_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_Assets]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_Assets];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_ConsumerTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_ConsumerTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_CostCenters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_CostCenters];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_ElectricStations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_ElectricStations];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_FieldClusters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_FieldClusters];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_NetworkOperators]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_NetworkOperators];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_VoltageLevels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_VoltageLevels];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_VoltageLevels1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_VoltageLevels1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumptions_Consumers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumptions] DROP CONSTRAINT [FK_Consumptions_Consumers];
GO
IF OBJECT_ID(N'[dbo].[FK_Locations_Consumers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Consumers];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumerTypesToReports_ConsumerTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumerTypesToReports] DROP CONSTRAINT [FK_ConsumerTypesToReports_ConsumerTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumerTypesToReports_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumerTypesToReports] DROP CONSTRAINT [FK_ConsumerTypesToReports_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumerTypesToReports_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumerTypesToReports] DROP CONSTRAINT [FK_ConsumerTypesToReports_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumptionDetails_Consumptions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumptionDetails] DROP CONSTRAINT [FK_ConsumptionDetails_Consumptions];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumptionDetails_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumptionDetails] DROP CONSTRAINT [FK_ConsumptionDetails_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumptionDetails_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumptionDetails] DROP CONSTRAINT [FK_ConsumptionDetails_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumptions_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumptions] DROP CONSTRAINT [FK_Consumptions_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CostCenters_CostCenters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_CostCenters];
GO
IF OBJECT_ID(N'[dbo].[FK_CostCenters_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CostCenters_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Imports_ImportFiles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Imports] DROP CONSTRAINT [FK_Imports_ImportFiles];
GO
IF OBJECT_ID(N'[dbo].[FK_Imports_ImportFiles1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Imports] DROP CONSTRAINT [FK_Imports_ImportFiles1];
GO
IF OBJECT_ID(N'[dbo].[FK_Imports_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Imports] DROP CONSTRAINT [FK_Imports_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Locations_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Locations_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_ParentMenu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menus] DROP CONSTRAINT [FK_Menu_ParentMenu];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menus] DROP CONSTRAINT [FK_Menu_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menus] DROP CONSTRAINT [FK_Menu_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuToRoles_Menu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuToRoles] DROP CONSTRAINT [FK_MenuToRoles_Menu];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuToRoles_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuToRoles] DROP CONSTRAINT [FK_MenuToRoles_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuToRoles_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuToRoles] DROP CONSTRAINT [FK_MenuToRoles_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuToRoles_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuToRoles] DROP CONSTRAINT [FK_MenuToRoles_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationRules_NotificationRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationRules] DROP CONSTRAINT [FK_NotificationRules_NotificationRules];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationRules_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationRules] DROP CONSTRAINT [FK_NotificationRules_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationRules_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationRules] DROP CONSTRAINT [FK_NotificationRules_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Notifications_NotificationRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_Notifications_NotificationRules];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationsToUsers_NotificationsToUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationsToUsers] DROP CONSTRAINT [FK_NotificationsToUsers_NotificationsToUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationsToUsers_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotificationsToUsers] DROP CONSTRAINT [FK_NotificationsToUsers_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Reports_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_Reports_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportsToRoles_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReportsToRoles] DROP CONSTRAINT [FK_ReportsToRoles_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportsToRoles_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReportsToRoles] DROP CONSTRAINT [FK_ReportsToRoles_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersToRoles_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersToRoles] DROP CONSTRAINT [FK_UsersToRoles_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersToRoles_CreatedByUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersToRoles] DROP CONSTRAINT [FK_UsersToRoles_CreatedByUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersToRoles_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersToRoles] DROP CONSTRAINT [FK_UsersToRoles_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumerTypeConsumerTypeInfoLink]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumerTypeInfoLinks] DROP CONSTRAINT [FK_ConsumerTypeConsumerTypeInfoLink];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumerInfoLinkConsumerTypeInfoLink]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumerTypeInfoLinks] DROP CONSTRAINT [FK_ConsumerInfoLinkConsumerTypeInfoLink];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AcquisitionPrices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AcquisitionPrices];
GO
IF OBJECT_ID(N'[dbo].[Assets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets];
GO
IF OBJECT_ID(N'[dbo].[Consumers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consumers];
GO
IF OBJECT_ID(N'[dbo].[ConsumerTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumerTypes];
GO
IF OBJECT_ID(N'[dbo].[ConsumerTypesToReports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumerTypesToReports];
GO
IF OBJECT_ID(N'[dbo].[ConsumptionDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumptionDetails];
GO
IF OBJECT_ID(N'[dbo].[Consumptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consumptions];
GO
IF OBJECT_ID(N'[dbo].[CostCenters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CostCenters];
GO
IF OBJECT_ID(N'[dbo].[Districts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Districts];
GO
IF OBJECT_ID(N'[dbo].[ElectricStations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElectricStations];
GO
IF OBJECT_ID(N'[dbo].[FieldClusters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FieldClusters];
GO
IF OBJECT_ID(N'[dbo].[ImportFiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImportFiles];
GO
IF OBJECT_ID(N'[dbo].[Imports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Imports];
GO
IF OBJECT_ID(N'[dbo].[ImportTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImportTypes];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menus];
GO
IF OBJECT_ID(N'[dbo].[MenuToRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuToRoles];
GO
IF OBJECT_ID(N'[dbo].[Months]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Months];
GO
IF OBJECT_ID(N'[dbo].[NetworkOperators]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NetworkOperators];
GO
IF OBJECT_ID(N'[dbo].[NotificationRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotificationRules];
GO
IF OBJECT_ID(N'[dbo].[Notifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notifications];
GO
IF OBJECT_ID(N'[dbo].[NotificationsToUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotificationsToUsers];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[ReportsToRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportsToRoles];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[UsersToRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersToRoles];
GO
IF OBJECT_ID(N'[dbo].[VoltageLevels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VoltageLevels];
GO
IF OBJECT_ID(N'[dbo].[ConsumerInfoLinks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumerInfoLinks];
GO
IF OBJECT_ID(N'[dbo].[ConsumerTypeInfoLinks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumerTypeInfoLinks];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AcquisitionPrices'
CREATE TABLE [dbo].[AcquisitionPrices] (
    [IDAcquisitionPrice] int IDENTITY(1,1) NOT NULL,
    [IDNetworkOperator] int  NOT NULL,
    [ActiveEnergyPrice] decimal(10,2)  NOT NULL,
    [ReactiveMTEnergyPrice] decimal(10,2)  NOT NULL,
    [ReactiveJTEnergyPrice] decimal(10,2)  NOT NULL,
    [TL] decimal(10,2)  NOT NULL,
    [SS] decimal(10,2)  NOT NULL,
    [OPCOM] decimal(10,2)  NOT NULL,
    [IT] decimal(10,2)  NOT NULL,
    [MT] decimal(10,2)  NOT NULL,
    [JT] decimal(10,2)  NOT NULL,
    [BalancingCost] decimal(10,2)  NOT NULL,
    [ProviderProfit] decimal(10,2)  NOT NULL,
    [CogenerationContribution] decimal(10,2)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Assets'
CREATE TABLE [dbo].[Assets] (
    [IDAsset] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Consumers'
CREATE TABLE [dbo].[Consumers] (
    [IDConsumer] int IDENTITY(1,1) NOT NULL,
    [ConsumerName] nvarchar(100)  NOT NULL,
    [IDConsumerType] int  NOT NULL,
    [IDCostCenter] int  NOT NULL,
    [IDNetworkOperator] int  NOT NULL,
    [IDDistrict] int  NOT NULL,
    [IDAsset] int  NOT NULL,
    [IDFieldCluster] int  NULL,
    [ConsumptionPlaceName] nvarchar(100)  NOT NULL,
    [ConsumptionPlaceAddress] nvarchar(255)  NULL,
    [IDElectricStation] int  NULL,
    [MeasurePointName] nvarchar(1000)  NOT NULL,
    [VMSCode] nvarchar(25)  NULL,
    [ComputingSign] int  NOT NULL,
    [IDVoltageLevelMeasurePoint] int  NULL,
    [IDVoltageLevelSettlementPoint] int  NULL,
    [RecordedEnergyCorrection] decimal(10,2)  NOT NULL,
    [ElectricMeterSerial] nvarchar(100)  NULL,
    [ElectricMeterConstant] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] datetime  NULL,
    [Active] bit  NOT NULL,
    [Image] varbinary(max)  NULL,
    [Capacity] int  NOT NULL
);
GO

-- Creating table 'ConsumerTypes'
CREATE TABLE [dbo].[ConsumerTypes] (
    [IDConsumerType] int IDENTITY(1,1) NOT NULL,
    [ConsumerTypeName] nvarchar(100)  NOT NULL,
    [MapType] nvarchar(100)  NULL,
    [Image] varbinary(max)  NULL
);
GO

-- Creating table 'ConsumerTypesToReports'
CREATE TABLE [dbo].[ConsumerTypesToReports] (
    [IDConsumerTypeToReport] int IDENTITY(1,1) NOT NULL,
    [IDConsumerType] int  NOT NULL,
    [IDReport] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL
);
GO

-- Creating table 'ConsumptionDetails'
CREATE TABLE [dbo].[ConsumptionDetails] (
    [IDConsumptionDetail] int IDENTITY(1,1) NOT NULL,
    [IDConsumption] int  NOT NULL,
    [ElectricCurrent] decimal(10,2)  NOT NULL,
    [Voltage] decimal(10,2)  NOT NULL,
    [Power] decimal(10,2)  NOT NULL,
    [PowerFactor] decimal(10,2)  NOT NULL,
    [CurrentUnbalance] decimal(10,2)  NOT NULL,
    [VoltageUnbalance] decimal(10,2)  NOT NULL,
    [Frequency] decimal(10,2)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL
);
GO

-- Creating table 'Consumptions'
CREATE TABLE [dbo].[Consumptions] (
    [IDConsumption] int IDENTITY(1,1) NOT NULL,
    [IDConsumer] int  NOT NULL,
    [ActiveEnergyMeterStartIndex] decimal(10,3)  NULL,
    [ActiveEnergyMeterEndIndex] decimal(10,3)  NULL,
    [ActiveEnergyConsumption] decimal(10,3)  NOT NULL,
    [InductiveEnergyMeterStartIndex] decimal(10,3)  NULL,
    [InductiveEnergyMeterEndIndex] decimal(10,3)  NULL,
    [InductiveEnergyConsumption] decimal(10,3)  NOT NULL,
    [CapacitiveEnergyMeterStartIndex] decimal(10,3)  NULL,
    [CapacitiveEnergyMeterEndIndex] decimal(10,3)  NULL,
    [CapacitiveEnergyConsumption] decimal(10,3)  NOT NULL,
    [UseActiveEnergyCorrection] bit  NOT NULL,
    [UseInductiveEnergyCorrection] bit  NOT NULL,
    [UseCapacitiveEnergyCorrection] bit  NOT NULL,
    [ConsumptionDate] datetime  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL
);
GO

-- Creating table 'CostCenters'
CREATE TABLE [dbo].[CostCenters] (
    [IDCostCenter] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [ShortName] nvarchar(50)  NOT NULL,
    [Code] nvarchar(50)  NOT NULL,
    [IDParentCostCenter] int  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL
);
GO

-- Creating table 'Districts'
CREATE TABLE [dbo].[Districts] (
    [IDDistrict] int IDENTITY(1,1) NOT NULL,
    [DistrictName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'ElectricStations'
CREATE TABLE [dbo].[ElectricStations] (
    [IDElectricStation] int IDENTITY(1,1) NOT NULL,
    [ElectricStationName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'FieldClusters'
CREATE TABLE [dbo].[FieldClusters] (
    [IDFieldCluster] int IDENTITY(1,1) NOT NULL,
    [FieldClusterName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'ImportFiles'
CREATE TABLE [dbo].[ImportFiles] (
    [IDImportFile] int IDENTITY(1,1) NOT NULL,
    [FileName] nvarchar(255)  NOT NULL,
    [ContentType] nvarchar(50)  NOT NULL,
    [FileContent] varbinary(max)  NOT NULL,
    [UploadStartTime] datetime  NOT NULL,
    [UploadEndTime] datetime  NULL,
    [FileSize] int  NOT NULL,
    [FileExtension] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Imports'
CREATE TABLE [dbo].[Imports] (
    [IDImport] int IDENTITY(1,1) NOT NULL,
    [IDImportType] int  NOT NULL,
    [IDOriginalFile] int  NOT NULL,
    [IDAnnotatedFile] int  NULL,
    [IDMonth] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL
);
GO

-- Creating table 'ImportTypes'
CREATE TABLE [dbo].[ImportTypes] (
    [IDImportType] int IDENTITY(1,1) NOT NULL,
    [ImportTypeName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [IDLocation] int IDENTITY(1,1) NOT NULL,
    [IDConsumer] int  NOT NULL,
    [Longitude] nvarchar(max)  NOT NULL,
    [Latitude] nvarchar(max)  NOT NULL,
    [ElectricalLineDiagramX] int  NULL,
    [ElectricalLineDiagramY] int  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Menus'
CREATE TABLE [dbo].[Menus] (
    [IDMenu] int IDENTITY(1,1) NOT NULL,
    [MenuName] nvarchar(100)  NOT NULL,
    [IDParentMenu] int  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'MenuToRoles'
CREATE TABLE [dbo].[MenuToRoles] (
    [IDMenuToRole] int IDENTITY(1,1) NOT NULL,
    [IDMenu] int  NOT NULL,
    [IDRole] int  NOT NULL,
    [ReadPermission] bit  NOT NULL,
    [CreatePermission] bit  NOT NULL,
    [EditPermission] bit  NOT NULL,
    [DeletePermission] bit  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Months'
CREATE TABLE [dbo].[Months] (
    [IDMonth] int IDENTITY(1,1) NOT NULL,
    [MonthCode] nvarchar(50)  NOT NULL,
    [MonthName] nvarchar(50)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [MonthInt] int  NOT NULL,
    [Year] int  NOT NULL
);
GO

-- Creating table 'NetworkOperators'
CREATE TABLE [dbo].[NetworkOperators] (
    [IDNetworkOperator] int IDENTITY(1,1) NOT NULL,
    [NetworkOperatorName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'NotificationRules'
CREATE TABLE [dbo].[NotificationRules] (
    [IDNotificationRule] int IDENTITY(1,1) NOT NULL,
    [RuleDescription] nvarchar(100)  NOT NULL,
    [SPToExecute] nvarchar(max)  NOT NULL,
    [NotificationSubject] nvarchar(255)  NOT NULL,
    [NotificationBody] nvarchar(max)  NOT NULL,
    [ValidityDays] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Notifications'
CREATE TABLE [dbo].[Notifications] (
    [IDNotification] int IDENTITY(1,1) NOT NULL,
    [IDNotificationRule] int  NULL,
    [NotificationSubject] nvarchar(255)  NOT NULL,
    [NotificationBody] nvarchar(max)  NOT NULL,
    [NotificationStartDate] datetime  NOT NULL,
    [NotificationEndDate] datetime  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'NotificationsToUsers'
CREATE TABLE [dbo].[NotificationsToUsers] (
    [IDNotificationToUser] int IDENTITY(1,1) NOT NULL,
    [IDNotification] int  NOT NULL,
    [IDUser] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [DateRead] datetime  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [IDReport] int IDENTITY(1,1) NOT NULL,
    [ReportName] nvarchar(255)  NOT NULL,
    [UIReportName] nvarchar(255)  NOT NULL,
    [ReportGroup] nvarchar(50)  NULL,
    [ReportGroupOrderNo] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ReportsToRoles'
CREATE TABLE [dbo].[ReportsToRoles] (
    [IDReportToRole] int IDENTITY(1,1) NOT NULL,
    [IDReport] int  NOT NULL,
    [IDRole] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [IDRole] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(50)  NOT NULL,
    [Description] nvarchar(50)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [IDUser] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [FirstName] nvarchar(100)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NULL,
    [IPAddress] nvarchar(50)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'UsersToRoles'
CREATE TABLE [dbo].[UsersToRoles] (
    [IDUserToRole] int IDENTITY(1,1) NOT NULL,
    [IDUser] int  NOT NULL,
    [IDRole] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'VoltageLevels'
CREATE TABLE [dbo].[VoltageLevels] (
    [IDVoltageLevel] int IDENTITY(1,1) NOT NULL,
    [VoltageLevelName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'ConsumerInfoLinks'
CREATE TABLE [dbo].[ConsumerInfoLinks] (
    [IDConsumerInfoLink] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [ReferenceIndex] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ConsumerTypeInfoLinks'
CREATE TABLE [dbo].[ConsumerTypeInfoLinks] (
    [IDConsumerType] int  NOT NULL,
    [IDConsumerInfoLink] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDAcquisitionPrice] in table 'AcquisitionPrices'
ALTER TABLE [dbo].[AcquisitionPrices]
ADD CONSTRAINT [PK_AcquisitionPrices]
    PRIMARY KEY CLUSTERED ([IDAcquisitionPrice] ASC);
GO

-- Creating primary key on [IDAsset] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [PK_Assets]
    PRIMARY KEY CLUSTERED ([IDAsset] ASC);
GO

-- Creating primary key on [IDConsumer] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [PK_Consumers]
    PRIMARY KEY CLUSTERED ([IDConsumer] ASC);
GO

-- Creating primary key on [IDConsumerType] in table 'ConsumerTypes'
ALTER TABLE [dbo].[ConsumerTypes]
ADD CONSTRAINT [PK_ConsumerTypes]
    PRIMARY KEY CLUSTERED ([IDConsumerType] ASC);
GO

-- Creating primary key on [IDConsumerTypeToReport] in table 'ConsumerTypesToReports'
ALTER TABLE [dbo].[ConsumerTypesToReports]
ADD CONSTRAINT [PK_ConsumerTypesToReports]
    PRIMARY KEY CLUSTERED ([IDConsumerTypeToReport] ASC);
GO

-- Creating primary key on [IDConsumptionDetail] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [PK_ConsumptionDetails]
    PRIMARY KEY CLUSTERED ([IDConsumptionDetail] ASC);
GO

-- Creating primary key on [IDConsumption] in table 'Consumptions'
ALTER TABLE [dbo].[Consumptions]
ADD CONSTRAINT [PK_Consumptions]
    PRIMARY KEY CLUSTERED ([IDConsumption] ASC);
GO

-- Creating primary key on [IDCostCenter] in table 'CostCenters'
ALTER TABLE [dbo].[CostCenters]
ADD CONSTRAINT [PK_CostCenters]
    PRIMARY KEY CLUSTERED ([IDCostCenter] ASC);
GO

-- Creating primary key on [IDDistrict] in table 'Districts'
ALTER TABLE [dbo].[Districts]
ADD CONSTRAINT [PK_Districts]
    PRIMARY KEY CLUSTERED ([IDDistrict] ASC);
GO

-- Creating primary key on [IDElectricStation] in table 'ElectricStations'
ALTER TABLE [dbo].[ElectricStations]
ADD CONSTRAINT [PK_ElectricStations]
    PRIMARY KEY CLUSTERED ([IDElectricStation] ASC);
GO

-- Creating primary key on [IDFieldCluster] in table 'FieldClusters'
ALTER TABLE [dbo].[FieldClusters]
ADD CONSTRAINT [PK_FieldClusters]
    PRIMARY KEY CLUSTERED ([IDFieldCluster] ASC);
GO

-- Creating primary key on [IDImportFile] in table 'ImportFiles'
ALTER TABLE [dbo].[ImportFiles]
ADD CONSTRAINT [PK_ImportFiles]
    PRIMARY KEY CLUSTERED ([IDImportFile] ASC);
GO

-- Creating primary key on [IDImport] in table 'Imports'
ALTER TABLE [dbo].[Imports]
ADD CONSTRAINT [PK_Imports]
    PRIMARY KEY CLUSTERED ([IDImport] ASC);
GO

-- Creating primary key on [IDImportType] in table 'ImportTypes'
ALTER TABLE [dbo].[ImportTypes]
ADD CONSTRAINT [PK_ImportTypes]
    PRIMARY KEY CLUSTERED ([IDImportType] ASC);
GO

-- Creating primary key on [IDLocation] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([IDLocation] ASC);
GO

-- Creating primary key on [IDMenu] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [PK_Menus]
    PRIMARY KEY CLUSTERED ([IDMenu] ASC);
GO

-- Creating primary key on [IDMenuToRole] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [PK_MenuToRoles]
    PRIMARY KEY CLUSTERED ([IDMenuToRole] ASC);
GO

-- Creating primary key on [IDMonth] in table 'Months'
ALTER TABLE [dbo].[Months]
ADD CONSTRAINT [PK_Months]
    PRIMARY KEY CLUSTERED ([IDMonth] ASC);
GO

-- Creating primary key on [IDNetworkOperator] in table 'NetworkOperators'
ALTER TABLE [dbo].[NetworkOperators]
ADD CONSTRAINT [PK_NetworkOperators]
    PRIMARY KEY CLUSTERED ([IDNetworkOperator] ASC);
GO

-- Creating primary key on [IDNotificationRule] in table 'NotificationRules'
ALTER TABLE [dbo].[NotificationRules]
ADD CONSTRAINT [PK_NotificationRules]
    PRIMARY KEY CLUSTERED ([IDNotificationRule] ASC);
GO

-- Creating primary key on [IDNotification] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [PK_Notifications]
    PRIMARY KEY CLUSTERED ([IDNotification] ASC);
GO

-- Creating primary key on [IDNotificationToUser] in table 'NotificationsToUsers'
ALTER TABLE [dbo].[NotificationsToUsers]
ADD CONSTRAINT [PK_NotificationsToUsers]
    PRIMARY KEY CLUSTERED ([IDNotificationToUser] ASC);
GO

-- Creating primary key on [IDReport] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([IDReport] ASC);
GO

-- Creating primary key on [IDReportToRole] in table 'ReportsToRoles'
ALTER TABLE [dbo].[ReportsToRoles]
ADD CONSTRAINT [PK_ReportsToRoles]
    PRIMARY KEY CLUSTERED ([IDReportToRole] ASC);
GO

-- Creating primary key on [IDRole] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([IDRole] ASC);
GO

-- Creating primary key on [IDUser] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([IDUser] ASC);
GO

-- Creating primary key on [IDUserToRole] in table 'UsersToRoles'
ALTER TABLE [dbo].[UsersToRoles]
ADD CONSTRAINT [PK_UsersToRoles]
    PRIMARY KEY CLUSTERED ([IDUserToRole] ASC);
GO

-- Creating primary key on [IDVoltageLevel] in table 'VoltageLevels'
ALTER TABLE [dbo].[VoltageLevels]
ADD CONSTRAINT [PK_VoltageLevels]
    PRIMARY KEY CLUSTERED ([IDVoltageLevel] ASC);
GO

-- Creating primary key on [IDConsumerInfoLink] in table 'ConsumerInfoLinks'
ALTER TABLE [dbo].[ConsumerInfoLinks]
ADD CONSTRAINT [PK_ConsumerInfoLinks]
    PRIMARY KEY CLUSTERED ([IDConsumerInfoLink] ASC);
GO

-- Creating primary key on [IDConsumerType], [IDConsumerInfoLink] in table 'ConsumerTypeInfoLinks'
ALTER TABLE [dbo].[ConsumerTypeInfoLinks]
ADD CONSTRAINT [PK_ConsumerTypeInfoLinks]
    PRIMARY KEY CLUSTERED ([IDConsumerType], [IDConsumerInfoLink] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IDNetworkOperator] in table 'AcquisitionPrices'
ALTER TABLE [dbo].[AcquisitionPrices]
ADD CONSTRAINT [FK_AcquisitionPrices_NetworkOperators]
    FOREIGN KEY ([IDNetworkOperator])
    REFERENCES [dbo].[NetworkOperators]
        ([IDNetworkOperator])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AcquisitionPrices_NetworkOperators'
CREATE INDEX [IX_FK_AcquisitionPrices_NetworkOperators]
ON [dbo].[AcquisitionPrices]
    ([IDNetworkOperator]);
GO

-- Creating foreign key on [CreatedBy] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [FK_Assets_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Assets_Users'
CREATE INDEX [IX_FK_Assets_Users]
ON [dbo].[Assets]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [FK_Assets_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Assets_Users1'
CREATE INDEX [IX_FK_Assets_Users1]
ON [dbo].[Assets]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDAsset] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_Assets]
    FOREIGN KEY ([IDAsset])
    REFERENCES [dbo].[Assets]
        ([IDAsset])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_Assets'
CREATE INDEX [IX_FK_Consumers_Assets]
ON [dbo].[Consumers]
    ([IDAsset]);
GO

-- Creating foreign key on [IDConsumerType] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_ConsumerTypes]
    FOREIGN KEY ([IDConsumerType])
    REFERENCES [dbo].[ConsumerTypes]
        ([IDConsumerType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_ConsumerTypes'
CREATE INDEX [IX_FK_Consumers_ConsumerTypes]
ON [dbo].[Consumers]
    ([IDConsumerType]);
GO

-- Creating foreign key on [IDCostCenter] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_CostCenters]
    FOREIGN KEY ([IDCostCenter])
    REFERENCES [dbo].[CostCenters]
        ([IDCostCenter])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_CostCenters'
CREATE INDEX [IX_FK_Consumers_CostCenters]
ON [dbo].[Consumers]
    ([IDCostCenter]);
GO

-- Creating foreign key on [IDDistrict] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_Districts]
    FOREIGN KEY ([IDDistrict])
    REFERENCES [dbo].[Districts]
        ([IDDistrict])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_Districts'
CREATE INDEX [IX_FK_Consumers_Districts]
ON [dbo].[Consumers]
    ([IDDistrict]);
GO

-- Creating foreign key on [IDElectricStation] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_ElectricStations]
    FOREIGN KEY ([IDElectricStation])
    REFERENCES [dbo].[ElectricStations]
        ([IDElectricStation])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_ElectricStations'
CREATE INDEX [IX_FK_Consumers_ElectricStations]
ON [dbo].[Consumers]
    ([IDElectricStation]);
GO

-- Creating foreign key on [IDFieldCluster] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_FieldClusters]
    FOREIGN KEY ([IDFieldCluster])
    REFERENCES [dbo].[FieldClusters]
        ([IDFieldCluster])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_FieldClusters'
CREATE INDEX [IX_FK_Consumers_FieldClusters]
ON [dbo].[Consumers]
    ([IDFieldCluster]);
GO

-- Creating foreign key on [IDNetworkOperator] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_NetworkOperators]
    FOREIGN KEY ([IDNetworkOperator])
    REFERENCES [dbo].[NetworkOperators]
        ([IDNetworkOperator])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_NetworkOperators'
CREATE INDEX [IX_FK_Consumers_NetworkOperators]
ON [dbo].[Consumers]
    ([IDNetworkOperator]);
GO

-- Creating foreign key on [IDVoltageLevelMeasurePoint] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_VoltageLevels]
    FOREIGN KEY ([IDVoltageLevelMeasurePoint])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_VoltageLevels'
CREATE INDEX [IX_FK_Consumers_VoltageLevels]
ON [dbo].[Consumers]
    ([IDVoltageLevelMeasurePoint]);
GO

-- Creating foreign key on [IDVoltageLevelSettlementPoint] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_VoltageLevels1]
    FOREIGN KEY ([IDVoltageLevelSettlementPoint])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_VoltageLevels1'
CREATE INDEX [IX_FK_Consumers_VoltageLevels1]
ON [dbo].[Consumers]
    ([IDVoltageLevelSettlementPoint]);
GO

-- Creating foreign key on [IDConsumer] in table 'Consumptions'
ALTER TABLE [dbo].[Consumptions]
ADD CONSTRAINT [FK_Consumptions_Consumers]
    FOREIGN KEY ([IDConsumer])
    REFERENCES [dbo].[Consumers]
        ([IDConsumer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumptions_Consumers'
CREATE INDEX [IX_FK_Consumptions_Consumers]
ON [dbo].[Consumptions]
    ([IDConsumer]);
GO

-- Creating foreign key on [IDConsumer] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_Locations_Consumers]
    FOREIGN KEY ([IDConsumer])
    REFERENCES [dbo].[Consumers]
        ([IDConsumer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_Consumers'
CREATE INDEX [IX_FK_Locations_Consumers]
ON [dbo].[Locations]
    ([IDConsumer]);
GO

-- Creating foreign key on [IDConsumerType] in table 'ConsumerTypesToReports'
ALTER TABLE [dbo].[ConsumerTypesToReports]
ADD CONSTRAINT [FK_ConsumerTypesToReports_ConsumerTypes]
    FOREIGN KEY ([IDConsumerType])
    REFERENCES [dbo].[ConsumerTypes]
        ([IDConsumerType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumerTypesToReports_ConsumerTypes'
CREATE INDEX [IX_FK_ConsumerTypesToReports_ConsumerTypes]
ON [dbo].[ConsumerTypesToReports]
    ([IDConsumerType]);
GO

-- Creating foreign key on [IDReport] in table 'ConsumerTypesToReports'
ALTER TABLE [dbo].[ConsumerTypesToReports]
ADD CONSTRAINT [FK_ConsumerTypesToReports_Reports]
    FOREIGN KEY ([IDReport])
    REFERENCES [dbo].[Reports]
        ([IDReport])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumerTypesToReports_Reports'
CREATE INDEX [IX_FK_ConsumerTypesToReports_Reports]
ON [dbo].[ConsumerTypesToReports]
    ([IDReport]);
GO

-- Creating foreign key on [CreatedBy] in table 'ConsumerTypesToReports'
ALTER TABLE [dbo].[ConsumerTypesToReports]
ADD CONSTRAINT [FK_ConsumerTypesToReports_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumerTypesToReports_Users'
CREATE INDEX [IX_FK_ConsumerTypesToReports_Users]
ON [dbo].[ConsumerTypesToReports]
    ([CreatedBy]);
GO

-- Creating foreign key on [IDConsumption] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [FK_ConsumptionDetails_Consumptions]
    FOREIGN KEY ([IDConsumption])
    REFERENCES [dbo].[Consumptions]
        ([IDConsumption])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumptionDetails_Consumptions'
CREATE INDEX [IX_FK_ConsumptionDetails_Consumptions]
ON [dbo].[ConsumptionDetails]
    ([IDConsumption]);
GO

-- Creating foreign key on [ModifiedBy] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [FK_ConsumptionDetails_Users]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumptionDetails_Users'
CREATE INDEX [IX_FK_ConsumptionDetails_Users]
ON [dbo].[ConsumptionDetails]
    ([ModifiedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [FK_ConsumptionDetails_Users1]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumptionDetails_Users1'
CREATE INDEX [IX_FK_ConsumptionDetails_Users1]
ON [dbo].[ConsumptionDetails]
    ([CreatedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'Consumptions'
ALTER TABLE [dbo].[Consumptions]
ADD CONSTRAINT [FK_Consumptions_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumptions_Users'
CREATE INDEX [IX_FK_Consumptions_Users]
ON [dbo].[Consumptions]
    ([CreatedBy]);
GO

-- Creating foreign key on [IDParentCostCenter] in table 'CostCenters'
ALTER TABLE [dbo].[CostCenters]
ADD CONSTRAINT [FK_CostCenters_CostCenters]
    FOREIGN KEY ([IDParentCostCenter])
    REFERENCES [dbo].[CostCenters]
        ([IDCostCenter])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostCenters_CostCenters'
CREATE INDEX [IX_FK_CostCenters_CostCenters]
ON [dbo].[CostCenters]
    ([IDParentCostCenter]);
GO

-- Creating foreign key on [CreatedBy] in table 'CostCenters'
ALTER TABLE [dbo].[CostCenters]
ADD CONSTRAINT [FK_CostCenters_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostCenters_Users'
CREATE INDEX [IX_FK_CostCenters_Users]
ON [dbo].[CostCenters]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'CostCenters'
ALTER TABLE [dbo].[CostCenters]
ADD CONSTRAINT [FK_CostCenters_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostCenters_Users1'
CREATE INDEX [IX_FK_CostCenters_Users1]
ON [dbo].[CostCenters]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDOriginalFile] in table 'Imports'
ALTER TABLE [dbo].[Imports]
ADD CONSTRAINT [FK_Imports_ImportFiles]
    FOREIGN KEY ([IDOriginalFile])
    REFERENCES [dbo].[ImportFiles]
        ([IDImportFile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Imports_ImportFiles'
CREATE INDEX [IX_FK_Imports_ImportFiles]
ON [dbo].[Imports]
    ([IDOriginalFile]);
GO

-- Creating foreign key on [IDAnnotatedFile] in table 'Imports'
ALTER TABLE [dbo].[Imports]
ADD CONSTRAINT [FK_Imports_ImportFiles1]
    FOREIGN KEY ([IDAnnotatedFile])
    REFERENCES [dbo].[ImportFiles]
        ([IDImportFile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Imports_ImportFiles1'
CREATE INDEX [IX_FK_Imports_ImportFiles1]
ON [dbo].[Imports]
    ([IDAnnotatedFile]);
GO

-- Creating foreign key on [CreatedBy] in table 'Imports'
ALTER TABLE [dbo].[Imports]
ADD CONSTRAINT [FK_Imports_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Imports_Users'
CREATE INDEX [IX_FK_Imports_Users]
ON [dbo].[Imports]
    ([CreatedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_Locations_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_Users'
CREATE INDEX [IX_FK_Locations_Users]
ON [dbo].[Locations]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_Locations_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_Users1'
CREATE INDEX [IX_FK_Locations_Users1]
ON [dbo].[Locations]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDParentMenu] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menu_ParentMenu]
    FOREIGN KEY ([IDParentMenu])
    REFERENCES [dbo].[Menus]
        ([IDMenu])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_ParentMenu'
CREATE INDEX [IX_FK_Menu_ParentMenu]
ON [dbo].[Menus]
    ([IDParentMenu]);
GO

-- Creating foreign key on [CreatedBy] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menu_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Users'
CREATE INDEX [IX_FK_Menu_Users]
ON [dbo].[Menus]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menu_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Users1'
CREATE INDEX [IX_FK_Menu_Users1]
ON [dbo].[Menus]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDMenu] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [FK_MenuToRoles_Menu]
    FOREIGN KEY ([IDMenu])
    REFERENCES [dbo].[Menus]
        ([IDMenu])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuToRoles_Menu'
CREATE INDEX [IX_FK_MenuToRoles_Menu]
ON [dbo].[MenuToRoles]
    ([IDMenu]);
GO

-- Creating foreign key on [IDRole] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [FK_MenuToRoles_Roles]
    FOREIGN KEY ([IDRole])
    REFERENCES [dbo].[Roles]
        ([IDRole])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuToRoles_Roles'
CREATE INDEX [IX_FK_MenuToRoles_Roles]
ON [dbo].[MenuToRoles]
    ([IDRole]);
GO

-- Creating foreign key on [CreatedBy] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [FK_MenuToRoles_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuToRoles_Users'
CREATE INDEX [IX_FK_MenuToRoles_Users]
ON [dbo].[MenuToRoles]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [FK_MenuToRoles_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuToRoles_Users1'
CREATE INDEX [IX_FK_MenuToRoles_Users1]
ON [dbo].[MenuToRoles]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDNotificationRule] in table 'NotificationRules'
ALTER TABLE [dbo].[NotificationRules]
ADD CONSTRAINT [FK_NotificationRules_NotificationRules]
    FOREIGN KEY ([IDNotificationRule])
    REFERENCES [dbo].[NotificationRules]
        ([IDNotificationRule])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CreatedBy] in table 'NotificationRules'
ALTER TABLE [dbo].[NotificationRules]
ADD CONSTRAINT [FK_NotificationRules_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationRules_Users'
CREATE INDEX [IX_FK_NotificationRules_Users]
ON [dbo].[NotificationRules]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'NotificationRules'
ALTER TABLE [dbo].[NotificationRules]
ADD CONSTRAINT [FK_NotificationRules_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationRules_Users1'
CREATE INDEX [IX_FK_NotificationRules_Users1]
ON [dbo].[NotificationRules]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDNotificationRule] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [FK_Notifications_NotificationRules]
    FOREIGN KEY ([IDNotificationRule])
    REFERENCES [dbo].[NotificationRules]
        ([IDNotificationRule])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Notifications_NotificationRules'
CREATE INDEX [IX_FK_Notifications_NotificationRules]
ON [dbo].[Notifications]
    ([IDNotificationRule]);
GO

-- Creating foreign key on [IDNotification] in table 'NotificationsToUsers'
ALTER TABLE [dbo].[NotificationsToUsers]
ADD CONSTRAINT [FK_NotificationsToUsers_NotificationsToUsers]
    FOREIGN KEY ([IDNotification])
    REFERENCES [dbo].[Notifications]
        ([IDNotification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationsToUsers_NotificationsToUsers'
CREATE INDEX [IX_FK_NotificationsToUsers_NotificationsToUsers]
ON [dbo].[NotificationsToUsers]
    ([IDNotification]);
GO

-- Creating foreign key on [IDUser] in table 'NotificationsToUsers'
ALTER TABLE [dbo].[NotificationsToUsers]
ADD CONSTRAINT [FK_NotificationsToUsers_Users]
    FOREIGN KEY ([IDUser])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationsToUsers_Users'
CREATE INDEX [IX_FK_NotificationsToUsers_Users]
ON [dbo].[NotificationsToUsers]
    ([IDUser]);
GO

-- Creating foreign key on [CreatedBy] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_Reports_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Reports_Users'
CREATE INDEX [IX_FK_Reports_Users]
ON [dbo].[Reports]
    ([CreatedBy]);
GO

-- Creating foreign key on [IDReport] in table 'ReportsToRoles'
ALTER TABLE [dbo].[ReportsToRoles]
ADD CONSTRAINT [FK_ReportsToRoles_Reports]
    FOREIGN KEY ([IDReport])
    REFERENCES [dbo].[Reports]
        ([IDReport])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportsToRoles_Reports'
CREATE INDEX [IX_FK_ReportsToRoles_Reports]
ON [dbo].[ReportsToRoles]
    ([IDReport]);
GO

-- Creating foreign key on [IDRole] in table 'ReportsToRoles'
ALTER TABLE [dbo].[ReportsToRoles]
ADD CONSTRAINT [FK_ReportsToRoles_Roles]
    FOREIGN KEY ([IDRole])
    REFERENCES [dbo].[Roles]
        ([IDRole])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportsToRoles_Roles'
CREATE INDEX [IX_FK_ReportsToRoles_Roles]
ON [dbo].[ReportsToRoles]
    ([IDRole]);
GO

-- Creating foreign key on [IDRole] in table 'UsersToRoles'
ALTER TABLE [dbo].[UsersToRoles]
ADD CONSTRAINT [FK_UsersToRoles_Roles]
    FOREIGN KEY ([IDRole])
    REFERENCES [dbo].[Roles]
        ([IDRole])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersToRoles_Roles'
CREATE INDEX [IX_FK_UsersToRoles_Roles]
ON [dbo].[UsersToRoles]
    ([IDRole]);
GO

-- Creating foreign key on [CreatedBy] in table 'UsersToRoles'
ALTER TABLE [dbo].[UsersToRoles]
ADD CONSTRAINT [FK_UsersToRoles_CreatedByUser]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersToRoles_CreatedByUser'
CREATE INDEX [IX_FK_UsersToRoles_CreatedByUser]
ON [dbo].[UsersToRoles]
    ([CreatedBy]);
GO

-- Creating foreign key on [IDUser] in table 'UsersToRoles'
ALTER TABLE [dbo].[UsersToRoles]
ADD CONSTRAINT [FK_UsersToRoles_Users]
    FOREIGN KEY ([IDUser])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersToRoles_Users'
CREATE INDEX [IX_FK_UsersToRoles_Users]
ON [dbo].[UsersToRoles]
    ([IDUser]);
GO

-- Creating foreign key on [IDConsumerType] in table 'ConsumerTypeInfoLinks'
ALTER TABLE [dbo].[ConsumerTypeInfoLinks]
ADD CONSTRAINT [FK_ConsumerTypeConsumerTypeInfoLink]
    FOREIGN KEY ([IDConsumerType])
    REFERENCES [dbo].[ConsumerTypes]
        ([IDConsumerType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IDConsumerInfoLink] in table 'ConsumerTypeInfoLinks'
ALTER TABLE [dbo].[ConsumerTypeInfoLinks]
ADD CONSTRAINT [FK_ConsumerInfoLinkConsumerTypeInfoLink]
    FOREIGN KEY ([IDConsumerInfoLink])
    REFERENCES [dbo].[ConsumerInfoLinks]
        ([IDConsumerInfoLink])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumerInfoLinkConsumerTypeInfoLink'
CREATE INDEX [IX_FK_ConsumerInfoLinkConsumerTypeInfoLink]
ON [dbo].[ConsumerTypeInfoLinks]
    ([IDConsumerInfoLink]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------