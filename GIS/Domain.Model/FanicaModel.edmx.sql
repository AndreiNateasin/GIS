
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/15/2014 17:24:37
-- Generated from EDMX file: C:\Users\User\Documents\GitHub\GIS\GIS\Domain.Model\FanicaModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Assets_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets] DROP CONSTRAINT [FK_Assets_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Assets_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets] DROP CONSTRAINT [FK_Assets_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricLines_Assets]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricLines] DROP CONSTRAINT [FK_ElectricLines_Assets];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_Assets]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_Assets];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_Assets]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_Assets];
GO
IF OBJECT_ID(N'[dbo].[FK_Capacitors_CapacitorTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Capacitors] DROP CONSTRAINT [FK_Capacitors_CapacitorTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Capacitors_MapElementTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Capacitors] DROP CONSTRAINT [FK_Capacitors_MapElementTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Capacitors_PowerTransformers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Capacitors] DROP CONSTRAINT [FK_Capacitors_PowerTransformers];
GO
IF OBJECT_ID(N'[dbo].[FK_Capacitors_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Capacitors] DROP CONSTRAINT [FK_Capacitors_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Capacitors_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Capacitors] DROP CONSTRAINT [FK_Capacitors_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_CapacitorTypes_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CapacitorTypes] DROP CONSTRAINT [FK_CapacitorTypes_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CapacitorTypes_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CapacitorTypes] DROP CONSTRAINT [FK_CapacitorTypes_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_Consumers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_Consumers];
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
IF OBJECT_ID(N'[dbo].[FK_Consumers_MapElementTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_MapElementTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumers_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumers] DROP CONSTRAINT [FK_Consumers_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consumption_Consumers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consumption] DROP CONSTRAINT [FK_Consumption_Consumers];
GO
IF OBJECT_ID(N'[dbo].[FK_WellProduction_Consumers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WellProduction] DROP CONSTRAINT [FK_WellProduction_Consumers];
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
IF OBJECT_ID(N'[dbo].[FK_CostCenters_CostCenters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_CostCenters];
GO
IF OBJECT_ID(N'[dbo].[FK_CostCenters_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CostCenters_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostCenters] DROP CONSTRAINT [FK_CostCenters_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricLines_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricLines] DROP CONSTRAINT [FK_ElectricLines_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_AcquisitionPrices_NetworkOperators]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricalTariffs] DROP CONSTRAINT [FK_AcquisitionPrices_NetworkOperators];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricalThresholds_ElectricalThresholds]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricalThresholds] DROP CONSTRAINT [FK_ElectricalThresholds_ElectricalThresholds];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricLines_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricLines] DROP CONSTRAINT [FK_ElectricLines_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricLines_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricLines] DROP CONSTRAINT [FK_ElectricLines_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_ElectricLines_VoltageLevels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElectricLines] DROP CONSTRAINT [FK_ElectricLines_VoltageLevels];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_ElectricLines]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_ElectricLines];
GO
IF OBJECT_ID(N'[dbo].[FK_GPSCoordinates_ElectricLine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GPSCoordinates] DROP CONSTRAINT [FK_GPSCoordinates_ElectricLine];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_ElectricLines]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_ElectricLines];
GO
IF OBJECT_ID(N'[dbo].[FK_EnergyInput_FiscalMeters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EnergyInput] DROP CONSTRAINT [FK_EnergyInput_FiscalMeters];
GO
IF OBJECT_ID(N'[dbo].[FK_EnergyInput_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EnergyInput] DROP CONSTRAINT [FK_EnergyInput_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_MapElementTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_MapElementTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_NetworkOperators]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_NetworkOperators];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_FiscalMeters_VoltageLevels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FiscalMeters] DROP CONSTRAINT [FK_FiscalMeters_VoltageLevels];
GO
IF OBJECT_ID(N'[dbo].[FK_Locations_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GPSCoordinates] DROP CONSTRAINT [FK_Locations_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Locations_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GPSCoordinates] DROP CONSTRAINT [FK_Locations_Users1];
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
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_MapElementTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_MapElementTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_ParentMenu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_ParentMenu];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_Users1];
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
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_VoltageLevels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_VoltageLevels];
GO
IF OBJECT_ID(N'[dbo].[FK_PowerTransformers_VoltageLevels1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PowerTransformers] DROP CONSTRAINT [FK_PowerTransformers_VoltageLevels1];
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
IF OBJECT_ID(N'[dbo].[FK_WellProduction_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WellProduction] DROP CONSTRAINT [FK_WellProduction_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_MapElementLinksMapElementsToMapElementLinks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MapElementsToMapElementLinks] DROP CONSTRAINT [FK_MapElementLinksMapElementsToMapElementLinks];
GO
IF OBJECT_ID(N'[dbo].[FK_MapElementTypesMapElementsToMapElementLinks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MapElementsToMapElementLinks] DROP CONSTRAINT [FK_MapElementTypesMapElementsToMapElementLinks];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Assets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets];
GO
IF OBJECT_ID(N'[dbo].[Capacitors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Capacitors];
GO
IF OBJECT_ID(N'[dbo].[CapacitorTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CapacitorTypes];
GO
IF OBJECT_ID(N'[dbo].[Consumers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consumers];
GO
IF OBJECT_ID(N'[dbo].[Consumption]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consumption];
GO
IF OBJECT_ID(N'[dbo].[ConsumptionDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumptionDetails];
GO
IF OBJECT_ID(N'[dbo].[CostCenters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CostCenters];
GO
IF OBJECT_ID(N'[dbo].[DataSources]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DataSources];
GO
IF OBJECT_ID(N'[dbo].[Districts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Districts];
GO
IF OBJECT_ID(N'[dbo].[ElectricalTariffs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElectricalTariffs];
GO
IF OBJECT_ID(N'[dbo].[ElectricalThresholds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElectricalThresholds];
GO
IF OBJECT_ID(N'[dbo].[ElectricLines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElectricLines];
GO
IF OBJECT_ID(N'[dbo].[ElectricStations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElectricStations];
GO
IF OBJECT_ID(N'[dbo].[EnergyInput]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EnergyInput];
GO
IF OBJECT_ID(N'[dbo].[FieldClusters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FieldClusters];
GO
IF OBJECT_ID(N'[dbo].[FiscalMeters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FiscalMeters];
GO
IF OBJECT_ID(N'[dbo].[GPSCoordinates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GPSCoordinates];
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
IF OBJECT_ID(N'[dbo].[MapElementLinks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MapElementLinks];
GO
IF OBJECT_ID(N'[dbo].[MapElementsToMapElementLinks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MapElementsToMapElementLinks];
GO
IF OBJECT_ID(N'[dbo].[MapElementTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MapElementTypes];
GO
IF OBJECT_ID(N'[dbo].[Menu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menu];
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
IF OBJECT_ID(N'[dbo].[PowerTransformers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PowerTransformers];
GO
IF OBJECT_ID(N'[dbo].[PowerTransformersToElectricLines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PowerTransformersToElectricLines];
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
IF OBJECT_ID(N'[dbo].[WellProduction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WellProduction];
GO
IF OBJECT_ID(N'[dbo].[MapElectricLines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MapElectricLines];
GO
IF OBJECT_ID(N'[dbo].[MapElements]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MapElements];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

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

-- Creating table 'Capacitors'
CREATE TABLE [dbo].[Capacitors] (
    [IDCapacitor] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [IDCapacitorType] int  NOT NULL,
    [IDPowerTransformer] int  NOT NULL,
    [IDMapElementType] int  NULL,
    [InstalledPower] int  NULL,
    [Latitude] varchar(50)  NULL,
    [Longitude] varchar(50)  NULL,
    [Image] varbinary(max)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] int  NOT NULL
);
GO

-- Creating table 'CapacitorTypes'
CREATE TABLE [dbo].[CapacitorTypes] (
    [IDCapacitorType] int IDENTITY(1,1) NOT NULL,
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
    [Name] nvarchar(100)  NOT NULL,
    [UWI] nvarchar(50)  NULL,
    [InternalOrder] nvarchar(50)  NULL,
    [IDMapElementType] int  NOT NULL,
    [IDCostCenter] int  NOT NULL,
    [IDDistrict] int  NOT NULL,
    [IDFieldCluster] int  NULL,
    [IDElectricStation] int  NULL,
    [IDPowerTransformer] int  NULL,
    [Address] nvarchar(255)  NULL,
    [InstalledPower] int  NULL,
    [NormalOperation] int  NULL,
    [VMSCode] nvarchar(25)  NULL,
    [NominalVoltage] int  NULL,
    [IDDataSource] int  NULL,
    [ComputingSign] int  NOT NULL,
    [Latitude] varchar(50)  NULL,
    [Longitude] varchar(50)  NULL,
    [Image] varbinary(max)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Consumption'
CREATE TABLE [dbo].[Consumption] (
    [IDConsumption] int IDENTITY(1,1) NOT NULL,
    [IDConsumer] int  NOT NULL,
    [ConsumptionDate] datetime  NOT NULL,
    [ActiveEnergyIndex] int  NOT NULL,
    [InductiveEnergyIndex] int  NULL,
    [CapacitiveEnergyIndex] int  NULL,
    [ActiveEnergyCorrection] int  NULL,
    [InductiveEnergyCorrection] int  NULL,
    [CapacitiveEnergyCorrection] int  NULL,
    [Voltage] int  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL
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

-- Creating table 'DataSources'
CREATE TABLE [dbo].[DataSources] (
    [IDDataSource] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Districts'
CREATE TABLE [dbo].[Districts] (
    [IDDistrict] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Code] nchar(10)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ElectricalTariffs'
CREATE TABLE [dbo].[ElectricalTariffs] (
    [IDElectricalTariff] int IDENTITY(1,1) NOT NULL,
    [IDNetworkOperator] int  NOT NULL,
    [ActiveEnergyPrice] decimal(10,2)  NOT NULL,
    [ReactiveMediumVoltageEnergyPrice] decimal(10,2)  NOT NULL,
    [ReactiveLowVoltageEnergyPrice] decimal(10,2)  NOT NULL,
    [Transport] decimal(10,2)  NOT NULL,
    [SystemServices] decimal(10,2)  NOT NULL,
    [OPCOM] decimal(10,2)  NOT NULL,
    [HighVoltageDistribution] decimal(10,2)  NOT NULL,
    [MediumVoltageDistribution] decimal(10,2)  NOT NULL,
    [LowVoltageDistribution] decimal(10,2)  NOT NULL,
    [BalancingCost] decimal(10,2)  NOT NULL,
    [ProviderProfit] decimal(10,2)  NOT NULL,
    [CogenerationContribution] decimal(10,2)  NOT NULL,
    [ValidityStartDate] datetime  NOT NULL,
    [ValidityEndDate] datetime  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ElectricalThresholds'
CREATE TABLE [dbo].[ElectricalThresholds] (
    [IDElectricalThreshold] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [MinimumValue] decimal(10,2)  NULL,
    [MaximumValue] decimal(10,2)  NULL,
    [SuccessiveOccurrences] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ElectricLines'
CREATE TABLE [dbo].[ElectricLines] (
    [IDElectricLine] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [IDVoltageLevel] int  NOT NULL,
    [IDAsset] int  NOT NULL,
    [IDDistrict] int  NULL,
    [IDMapElementType] int  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL,
    [Capacity] int  NOT NULL
);
GO

-- Creating table 'ElectricStations'
CREATE TABLE [dbo].[ElectricStations] (
    [IDElectricStation] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'EnergyInput'
CREATE TABLE [dbo].[EnergyInput] (
    [IDEnergyInput] int IDENTITY(1,1) NOT NULL,
    [IDFiscalMeter] int  NOT NULL,
    [InputDate] datetime  NOT NULL,
    [ActiveEnergyIndex] int  NULL,
    [InductiveEnergyIndex] int  NULL,
    [CapacitiveEnergyIndex] int  NULL,
    [ActiveEnergyCorrection] int  NULL,
    [InductiveEnergyCorrection] int  NULL,
    [CapacitiveEnergyCorrection] int  NULL,
    [CreatedOn] datetime  NULL,
    [CreatedBy] int  NULL
);
GO

-- Creating table 'FieldClusters'
CREATE TABLE [dbo].[FieldClusters] (
    [IDFieldCluster] int IDENTITY(1,1) NOT NULL,
    [FieldClusterName] nvarchar(100)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'FiscalMeters'
CREATE TABLE [dbo].[FiscalMeters] (
    [IDFiscalMeter] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NULL,
    [Serial] nvarchar(50)  NOT NULL,
    [Constant] int  NULL,
    [IDAsset] int  NOT NULL,
    [IDDistrict] int  NULL,
    [IDVoltageLevel] int  NULL,
    [IDNetworkOperator] int  NULL,
    [IDElectricLine] int  NULL,
    [IDMapElementType] int  NULL,
    [Latitude] varchar(50)  NULL,
    [Longitude] varchar(50)  NULL,
    [Image] varbinary(max)  NULL,
    [CreatedOn] datetime  NULL,
    [CreatedBy] int  NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'GPSCoordinates'
CREATE TABLE [dbo].[GPSCoordinates] (
    [IDGPSCoordinate] int IDENTITY(1,1) NOT NULL,
    [IDElectricLine] int  NOT NULL,
    [Longitude] varchar(50)  NOT NULL,
    [Latitude] varchar(50)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
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

-- Creating table 'MapElementLinks'
CREATE TABLE [dbo].[MapElementLinks] (
    [IDMapElementLink] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [ReferenceIndex] nvarchar(max)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'MapElementsToMapElementLinks'
CREATE TABLE [dbo].[MapElementsToMapElementLinks] (
    [IDMapElementType] int  NOT NULL,
    [IDMapElementLink] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'MapElementTypes'
CREATE TABLE [dbo].[MapElementTypes] (
    [IDMapElementType] int IDENTITY(1,1) NOT NULL,
    [TypeName] nvarchar(100)  NOT NULL,
    [TypeImage] varbinary(max)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'Menu'
CREATE TABLE [dbo].[Menu] (
    [IDMenu] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
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
    [Year] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'NetworkOperators'
CREATE TABLE [dbo].[NetworkOperators] (
    [IDNetworkOperator] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
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
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NULL,
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

-- Creating table 'PowerTransformers'
CREATE TABLE [dbo].[PowerTransformers] (
    [IDPowerTransformer] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [IDAsset] int  NULL,
    [IDDistrict] int  NULL,
    [IDElectricLine] int  NOT NULL,
    [IDVoltageLevelMeasurePoint] int  NULL,
    [IDVoltageLevelSettlementPoint] int  NULL,
    [IDMapElementType] int  NULL,
    [NoLoadLosses] int  NOT NULL,
    [CreepLosses] int  NOT NULL,
    [Latitude] varchar(50)  NULL,
    [Longitude] varchar(50)  NULL,
    [Image] varbinary(max)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'PowerTransformersToElectricLines'
CREATE TABLE [dbo].[PowerTransformersToElectricLines] (
    [IDPowerTransformersToElectricLines] int IDENTITY(1,1) NOT NULL,
    [IDPowerTransformer] int  NOT NULL,
    [IDElectricLine] int  NOT NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [IDReport] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(255)  NOT NULL,
    [UIReportName] nvarchar(255)  NOT NULL,
    [ReportGroup] nvarchar(50)  NULL,
    [ReportGroupOrderNo] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ReportsToRoles'
CREATE TABLE [dbo].[ReportsToRoles] (
    [IDReportToRole] int IDENTITY(1,1) NOT NULL,
    [IDReport] int  NOT NULL,
    [IDRole] int  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [IDRole] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Description] nvarchar(50)  NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
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
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
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
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'VoltageLevels'
CREATE TABLE [dbo].[VoltageLevels] (
    [IDVoltageLevel] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'WellProduction'
CREATE TABLE [dbo].[WellProduction] (
    [IDWellProduction] int IDENTITY(1,1) NOT NULL,
    [IDConsumer] int  NOT NULL,
    [ProductionDate] datetime  NOT NULL,
    [RunningHours] int  NULL,
    [GrossProduction] decimal(10,2)  NOT NULL,
    [WaterCut] decimal(10,2)  NOT NULL,
    [NetOil] decimal(10,2)  NOT NULL,
    [GasProduction] decimal(10,2)  NOT NULL,
    [Water] decimal(10,2)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [CreatedBy] int  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedBy] int  NULL
);
GO

-- Creating table 'MapElectricLines'
CREATE TABLE [dbo].[MapElectricLines] (
    [Name] nvarchar(100)  NOT NULL,
    [Latitude] varchar(50)  NOT NULL,
    [Longitude] varchar(50)  NOT NULL,
    [TypeName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'MapElements'
CREATE TABLE [dbo].[MapElements] (
    [Name] nvarchar(100)  NULL,
    [Latitude] varchar(50)  NULL,
    [Longitude] varchar(50)  NULL,
    [Image] varbinary(max)  NULL,
    [TypeName] nvarchar(100)  NOT NULL,
    [TypeImage] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDAsset] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [PK_Assets]
    PRIMARY KEY CLUSTERED ([IDAsset] ASC);
GO

-- Creating primary key on [IDCapacitor] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [PK_Capacitors]
    PRIMARY KEY CLUSTERED ([IDCapacitor] ASC);
GO

-- Creating primary key on [IDCapacitorType] in table 'CapacitorTypes'
ALTER TABLE [dbo].[CapacitorTypes]
ADD CONSTRAINT [PK_CapacitorTypes]
    PRIMARY KEY CLUSTERED ([IDCapacitorType] ASC);
GO

-- Creating primary key on [IDConsumer] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [PK_Consumers]
    PRIMARY KEY CLUSTERED ([IDConsumer] ASC);
GO

-- Creating primary key on [IDConsumption] in table 'Consumption'
ALTER TABLE [dbo].[Consumption]
ADD CONSTRAINT [PK_Consumption]
    PRIMARY KEY CLUSTERED ([IDConsumption] ASC);
GO

-- Creating primary key on [IDConsumptionDetail] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [PK_ConsumptionDetails]
    PRIMARY KEY CLUSTERED ([IDConsumptionDetail] ASC);
GO

-- Creating primary key on [IDCostCenter] in table 'CostCenters'
ALTER TABLE [dbo].[CostCenters]
ADD CONSTRAINT [PK_CostCenters]
    PRIMARY KEY CLUSTERED ([IDCostCenter] ASC);
GO

-- Creating primary key on [IDDataSource] in table 'DataSources'
ALTER TABLE [dbo].[DataSources]
ADD CONSTRAINT [PK_DataSources]
    PRIMARY KEY CLUSTERED ([IDDataSource] ASC);
GO

-- Creating primary key on [IDDistrict] in table 'Districts'
ALTER TABLE [dbo].[Districts]
ADD CONSTRAINT [PK_Districts]
    PRIMARY KEY CLUSTERED ([IDDistrict] ASC);
GO

-- Creating primary key on [IDElectricalTariff] in table 'ElectricalTariffs'
ALTER TABLE [dbo].[ElectricalTariffs]
ADD CONSTRAINT [PK_ElectricalTariffs]
    PRIMARY KEY CLUSTERED ([IDElectricalTariff] ASC);
GO

-- Creating primary key on [IDElectricalThreshold] in table 'ElectricalThresholds'
ALTER TABLE [dbo].[ElectricalThresholds]
ADD CONSTRAINT [PK_ElectricalThresholds]
    PRIMARY KEY CLUSTERED ([IDElectricalThreshold] ASC);
GO

-- Creating primary key on [IDElectricLine] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [PK_ElectricLines]
    PRIMARY KEY CLUSTERED ([IDElectricLine] ASC);
GO

-- Creating primary key on [IDElectricStation] in table 'ElectricStations'
ALTER TABLE [dbo].[ElectricStations]
ADD CONSTRAINT [PK_ElectricStations]
    PRIMARY KEY CLUSTERED ([IDElectricStation] ASC);
GO

-- Creating primary key on [IDEnergyInput] in table 'EnergyInput'
ALTER TABLE [dbo].[EnergyInput]
ADD CONSTRAINT [PK_EnergyInput]
    PRIMARY KEY CLUSTERED ([IDEnergyInput] ASC);
GO

-- Creating primary key on [IDFieldCluster] in table 'FieldClusters'
ALTER TABLE [dbo].[FieldClusters]
ADD CONSTRAINT [PK_FieldClusters]
    PRIMARY KEY CLUSTERED ([IDFieldCluster] ASC);
GO

-- Creating primary key on [IDFiscalMeter] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [PK_FiscalMeters]
    PRIMARY KEY CLUSTERED ([IDFiscalMeter] ASC);
GO

-- Creating primary key on [IDGPSCoordinate] in table 'GPSCoordinates'
ALTER TABLE [dbo].[GPSCoordinates]
ADD CONSTRAINT [PK_GPSCoordinates]
    PRIMARY KEY CLUSTERED ([IDGPSCoordinate] ASC);
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

-- Creating primary key on [IDMapElementLink] in table 'MapElementLinks'
ALTER TABLE [dbo].[MapElementLinks]
ADD CONSTRAINT [PK_MapElementLinks]
    PRIMARY KEY CLUSTERED ([IDMapElementLink] ASC);
GO

-- Creating primary key on [IDMapElementLink], [IDMapElementType] in table 'MapElementsToMapElementLinks'
ALTER TABLE [dbo].[MapElementsToMapElementLinks]
ADD CONSTRAINT [PK_MapElementsToMapElementLinks]
    PRIMARY KEY CLUSTERED ([IDMapElementLink], [IDMapElementType] ASC);
GO

-- Creating primary key on [IDMapElementType] in table 'MapElementTypes'
ALTER TABLE [dbo].[MapElementTypes]
ADD CONSTRAINT [PK_MapElementTypes]
    PRIMARY KEY CLUSTERED ([IDMapElementType] ASC);
GO

-- Creating primary key on [IDMenu] in table 'Menu'
ALTER TABLE [dbo].[Menu]
ADD CONSTRAINT [PK_Menu]
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

-- Creating primary key on [IDPowerTransformer] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [PK_PowerTransformers]
    PRIMARY KEY CLUSTERED ([IDPowerTransformer] ASC);
GO

-- Creating primary key on [IDPowerTransformersToElectricLines] in table 'PowerTransformersToElectricLines'
ALTER TABLE [dbo].[PowerTransformersToElectricLines]
ADD CONSTRAINT [PK_PowerTransformersToElectricLines]
    PRIMARY KEY CLUSTERED ([IDPowerTransformersToElectricLines] ASC);
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

-- Creating primary key on [IDWellProduction] in table 'WellProduction'
ALTER TABLE [dbo].[WellProduction]
ADD CONSTRAINT [PK_WellProduction]
    PRIMARY KEY CLUSTERED ([IDWellProduction] ASC);
GO

-- Creating primary key on [Name], [Latitude], [Longitude], [TypeName] in table 'MapElectricLines'
ALTER TABLE [dbo].[MapElectricLines]
ADD CONSTRAINT [PK_MapElectricLines]
    PRIMARY KEY CLUSTERED ([Name], [Latitude], [Longitude], [TypeName] ASC);
GO

-- Creating primary key on [TypeName] in table 'MapElements'
ALTER TABLE [dbo].[MapElements]
ADD CONSTRAINT [PK_MapElements]
    PRIMARY KEY CLUSTERED ([TypeName] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

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

-- Creating foreign key on [IDAsset] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [FK_ElectricLines_Assets]
    FOREIGN KEY ([IDAsset])
    REFERENCES [dbo].[Assets]
        ([IDAsset])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricLines_Assets'
CREATE INDEX [IX_FK_ElectricLines_Assets]
ON [dbo].[ElectricLines]
    ([IDAsset]);
GO

-- Creating foreign key on [IDAsset] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_Assets]
    FOREIGN KEY ([IDAsset])
    REFERENCES [dbo].[Assets]
        ([IDAsset])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_Assets'
CREATE INDEX [IX_FK_FiscalMeters_Assets]
ON [dbo].[FiscalMeters]
    ([IDAsset]);
GO

-- Creating foreign key on [IDAsset] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_Assets]
    FOREIGN KEY ([IDAsset])
    REFERENCES [dbo].[Assets]
        ([IDAsset])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_Assets'
CREATE INDEX [IX_FK_PowerTransformers_Assets]
ON [dbo].[PowerTransformers]
    ([IDAsset]);
GO

-- Creating foreign key on [IDCapacitorType] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [FK_Capacitors_CapacitorTypes]
    FOREIGN KEY ([IDCapacitorType])
    REFERENCES [dbo].[CapacitorTypes]
        ([IDCapacitorType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Capacitors_CapacitorTypes'
CREATE INDEX [IX_FK_Capacitors_CapacitorTypes]
ON [dbo].[Capacitors]
    ([IDCapacitorType]);
GO

-- Creating foreign key on [IDMapElementType] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [FK_Capacitors_MapElementTypes]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Capacitors_MapElementTypes'
CREATE INDEX [IX_FK_Capacitors_MapElementTypes]
ON [dbo].[Capacitors]
    ([IDMapElementType]);
GO

-- Creating foreign key on [CreatedBy] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [FK_Capacitors_PowerTransformers]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Capacitors_PowerTransformers'
CREATE INDEX [IX_FK_Capacitors_PowerTransformers]
ON [dbo].[Capacitors]
    ([CreatedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [FK_Capacitors_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Capacitors_Users'
CREATE INDEX [IX_FK_Capacitors_Users]
ON [dbo].[Capacitors]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Capacitors'
ALTER TABLE [dbo].[Capacitors]
ADD CONSTRAINT [FK_Capacitors_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Capacitors_Users1'
CREATE INDEX [IX_FK_Capacitors_Users1]
ON [dbo].[Capacitors]
    ([ModifiedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'CapacitorTypes'
ALTER TABLE [dbo].[CapacitorTypes]
ADD CONSTRAINT [FK_CapacitorTypes_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CapacitorTypes_Users'
CREATE INDEX [IX_FK_CapacitorTypes_Users]
ON [dbo].[CapacitorTypes]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'CapacitorTypes'
ALTER TABLE [dbo].[CapacitorTypes]
ADD CONSTRAINT [FK_CapacitorTypes_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CapacitorTypes_Users1'
CREATE INDEX [IX_FK_CapacitorTypes_Users1]
ON [dbo].[CapacitorTypes]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDConsumer] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_Consumers]
    FOREIGN KEY ([IDConsumer])
    REFERENCES [dbo].[Consumers]
        ([IDConsumer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IDMapElementType] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_ConsumerTypes]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_ConsumerTypes'
CREATE INDEX [IX_FK_Consumers_ConsumerTypes]
ON [dbo].[Consumers]
    ([IDMapElementType]);
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

-- Creating foreign key on [IDMapElementType] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_MapElementTypes]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_MapElementTypes'
CREATE INDEX [IX_FK_Consumers_MapElementTypes]
ON [dbo].[Consumers]
    ([IDMapElementType]);
GO

-- Creating foreign key on [CreatedBy] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_Users'
CREATE INDEX [IX_FK_Consumers_Users]
ON [dbo].[Consumers]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Consumers'
ALTER TABLE [dbo].[Consumers]
ADD CONSTRAINT [FK_Consumers_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumers_Users1'
CREATE INDEX [IX_FK_Consumers_Users1]
ON [dbo].[Consumers]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDConsumer] in table 'Consumption'
ALTER TABLE [dbo].[Consumption]
ADD CONSTRAINT [FK_Consumption_Consumers]
    FOREIGN KEY ([IDConsumer])
    REFERENCES [dbo].[Consumers]
        ([IDConsumer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consumption_Consumers'
CREATE INDEX [IX_FK_Consumption_Consumers]
ON [dbo].[Consumption]
    ([IDConsumer]);
GO

-- Creating foreign key on [IDConsumer] in table 'WellProduction'
ALTER TABLE [dbo].[WellProduction]
ADD CONSTRAINT [FK_WellProduction_Consumers]
    FOREIGN KEY ([IDConsumer])
    REFERENCES [dbo].[Consumers]
        ([IDConsumer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_WellProduction_Consumers'
CREATE INDEX [IX_FK_WellProduction_Consumers]
ON [dbo].[WellProduction]
    ([IDConsumer]);
GO

-- Creating foreign key on [IDConsumption] in table 'ConsumptionDetails'
ALTER TABLE [dbo].[ConsumptionDetails]
ADD CONSTRAINT [FK_ConsumptionDetails_Consumptions]
    FOREIGN KEY ([IDConsumption])
    REFERENCES [dbo].[Consumption]
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

-- Creating foreign key on [IDDistrict] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [FK_ElectricLines_Districts]
    FOREIGN KEY ([IDDistrict])
    REFERENCES [dbo].[Districts]
        ([IDDistrict])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricLines_Districts'
CREATE INDEX [IX_FK_ElectricLines_Districts]
ON [dbo].[ElectricLines]
    ([IDDistrict]);
GO

-- Creating foreign key on [IDDistrict] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_Districts]
    FOREIGN KEY ([IDDistrict])
    REFERENCES [dbo].[Districts]
        ([IDDistrict])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_Districts'
CREATE INDEX [IX_FK_FiscalMeters_Districts]
ON [dbo].[FiscalMeters]
    ([IDDistrict]);
GO

-- Creating foreign key on [IDDistrict] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_Districts]
    FOREIGN KEY ([IDDistrict])
    REFERENCES [dbo].[Districts]
        ([IDDistrict])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_Districts'
CREATE INDEX [IX_FK_PowerTransformers_Districts]
ON [dbo].[PowerTransformers]
    ([IDDistrict]);
GO

-- Creating foreign key on [IDNetworkOperator] in table 'ElectricalTariffs'
ALTER TABLE [dbo].[ElectricalTariffs]
ADD CONSTRAINT [FK_AcquisitionPrices_NetworkOperators]
    FOREIGN KEY ([IDNetworkOperator])
    REFERENCES [dbo].[NetworkOperators]
        ([IDNetworkOperator])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AcquisitionPrices_NetworkOperators'
CREATE INDEX [IX_FK_AcquisitionPrices_NetworkOperators]
ON [dbo].[ElectricalTariffs]
    ([IDNetworkOperator]);
GO

-- Creating foreign key on [IDElectricalThreshold] in table 'ElectricalThresholds'
ALTER TABLE [dbo].[ElectricalThresholds]
ADD CONSTRAINT [FK_ElectricalThresholds_ElectricalThresholds]
    FOREIGN KEY ([IDElectricalThreshold])
    REFERENCES [dbo].[ElectricalThresholds]
        ([IDElectricalThreshold])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CreatedBy] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [FK_ElectricLines_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricLines_Users'
CREATE INDEX [IX_FK_ElectricLines_Users]
ON [dbo].[ElectricLines]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [FK_ElectricLines_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricLines_Users1'
CREATE INDEX [IX_FK_ElectricLines_Users1]
ON [dbo].[ElectricLines]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDVoltageLevel] in table 'ElectricLines'
ALTER TABLE [dbo].[ElectricLines]
ADD CONSTRAINT [FK_ElectricLines_VoltageLevels]
    FOREIGN KEY ([IDVoltageLevel])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricLines_VoltageLevels'
CREATE INDEX [IX_FK_ElectricLines_VoltageLevels]
ON [dbo].[ElectricLines]
    ([IDVoltageLevel]);
GO

-- Creating foreign key on [IDElectricLine] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_ElectricLines]
    FOREIGN KEY ([IDElectricLine])
    REFERENCES [dbo].[ElectricLines]
        ([IDElectricLine])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_ElectricLines'
CREATE INDEX [IX_FK_FiscalMeters_ElectricLines]
ON [dbo].[FiscalMeters]
    ([IDElectricLine]);
GO

-- Creating foreign key on [IDElectricLine] in table 'GPSCoordinates'
ALTER TABLE [dbo].[GPSCoordinates]
ADD CONSTRAINT [FK_GPSCoordinates_ElectricLine]
    FOREIGN KEY ([IDElectricLine])
    REFERENCES [dbo].[ElectricLines]
        ([IDElectricLine])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GPSCoordinates_ElectricLine'
CREATE INDEX [IX_FK_GPSCoordinates_ElectricLine]
ON [dbo].[GPSCoordinates]
    ([IDElectricLine]);
GO

-- Creating foreign key on [IDElectricLine] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_ElectricLines]
    FOREIGN KEY ([IDElectricLine])
    REFERENCES [dbo].[ElectricLines]
        ([IDElectricLine])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_ElectricLines'
CREATE INDEX [IX_FK_PowerTransformers_ElectricLines]
ON [dbo].[PowerTransformers]
    ([IDElectricLine]);
GO

-- Creating foreign key on [IDFiscalMeter] in table 'EnergyInput'
ALTER TABLE [dbo].[EnergyInput]
ADD CONSTRAINT [FK_EnergyInput_FiscalMeters]
    FOREIGN KEY ([IDFiscalMeter])
    REFERENCES [dbo].[FiscalMeters]
        ([IDFiscalMeter])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EnergyInput_FiscalMeters'
CREATE INDEX [IX_FK_EnergyInput_FiscalMeters]
ON [dbo].[EnergyInput]
    ([IDFiscalMeter]);
GO

-- Creating foreign key on [CreatedBy] in table 'EnergyInput'
ALTER TABLE [dbo].[EnergyInput]
ADD CONSTRAINT [FK_EnergyInput_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EnergyInput_Users'
CREATE INDEX [IX_FK_EnergyInput_Users]
ON [dbo].[EnergyInput]
    ([CreatedBy]);
GO

-- Creating foreign key on [IDMapElementType] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_MapElementTypes]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_MapElementTypes'
CREATE INDEX [IX_FK_FiscalMeters_MapElementTypes]
ON [dbo].[FiscalMeters]
    ([IDMapElementType]);
GO

-- Creating foreign key on [IDNetworkOperator] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_NetworkOperators]
    FOREIGN KEY ([IDNetworkOperator])
    REFERENCES [dbo].[NetworkOperators]
        ([IDNetworkOperator])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_NetworkOperators'
CREATE INDEX [IX_FK_FiscalMeters_NetworkOperators]
ON [dbo].[FiscalMeters]
    ([IDNetworkOperator]);
GO

-- Creating foreign key on [CreatedBy] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_Users'
CREATE INDEX [IX_FK_FiscalMeters_Users]
ON [dbo].[FiscalMeters]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_Users1'
CREATE INDEX [IX_FK_FiscalMeters_Users1]
ON [dbo].[FiscalMeters]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDVoltageLevel] in table 'FiscalMeters'
ALTER TABLE [dbo].[FiscalMeters]
ADD CONSTRAINT [FK_FiscalMeters_VoltageLevels]
    FOREIGN KEY ([IDVoltageLevel])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FiscalMeters_VoltageLevels'
CREATE INDEX [IX_FK_FiscalMeters_VoltageLevels]
ON [dbo].[FiscalMeters]
    ([IDVoltageLevel]);
GO

-- Creating foreign key on [CreatedBy] in table 'GPSCoordinates'
ALTER TABLE [dbo].[GPSCoordinates]
ADD CONSTRAINT [FK_Locations_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_Users'
CREATE INDEX [IX_FK_Locations_Users]
ON [dbo].[GPSCoordinates]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'GPSCoordinates'
ALTER TABLE [dbo].[GPSCoordinates]
ADD CONSTRAINT [FK_Locations_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_Users1'
CREATE INDEX [IX_FK_Locations_Users1]
ON [dbo].[GPSCoordinates]
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

-- Creating foreign key on [IDMapElementType] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_MapElementTypes]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_MapElementTypes'
CREATE INDEX [IX_FK_PowerTransformers_MapElementTypes]
ON [dbo].[PowerTransformers]
    ([IDMapElementType]);
GO

-- Creating foreign key on [IDParentMenu] in table 'Menu'
ALTER TABLE [dbo].[Menu]
ADD CONSTRAINT [FK_Menu_ParentMenu]
    FOREIGN KEY ([IDParentMenu])
    REFERENCES [dbo].[Menu]
        ([IDMenu])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_ParentMenu'
CREATE INDEX [IX_FK_Menu_ParentMenu]
ON [dbo].[Menu]
    ([IDParentMenu]);
GO

-- Creating foreign key on [CreatedBy] in table 'Menu'
ALTER TABLE [dbo].[Menu]
ADD CONSTRAINT [FK_Menu_Users]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Users'
CREATE INDEX [IX_FK_Menu_Users]
ON [dbo].[Menu]
    ([CreatedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'Menu'
ALTER TABLE [dbo].[Menu]
ADD CONSTRAINT [FK_Menu_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Users1'
CREATE INDEX [IX_FK_Menu_Users1]
ON [dbo].[Menu]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDMenu] in table 'MenuToRoles'
ALTER TABLE [dbo].[MenuToRoles]
ADD CONSTRAINT [FK_MenuToRoles_Menu]
    FOREIGN KEY ([IDMenu])
    REFERENCES [dbo].[Menu]
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

-- Creating foreign key on [ModifiedBy] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_Users]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_Users'
CREATE INDEX [IX_FK_PowerTransformers_Users]
ON [dbo].[PowerTransformers]
    ([ModifiedBy]);
GO

-- Creating foreign key on [ModifiedBy] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_Users1'
CREATE INDEX [IX_FK_PowerTransformers_Users1]
ON [dbo].[PowerTransformers]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDVoltageLevelMeasurePoint] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_VoltageLevels]
    FOREIGN KEY ([IDVoltageLevelMeasurePoint])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_VoltageLevels'
CREATE INDEX [IX_FK_PowerTransformers_VoltageLevels]
ON [dbo].[PowerTransformers]
    ([IDVoltageLevelMeasurePoint]);
GO

-- Creating foreign key on [IDVoltageLevelSettlementPoint] in table 'PowerTransformers'
ALTER TABLE [dbo].[PowerTransformers]
ADD CONSTRAINT [FK_PowerTransformers_VoltageLevels1]
    FOREIGN KEY ([IDVoltageLevelSettlementPoint])
    REFERENCES [dbo].[VoltageLevels]
        ([IDVoltageLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PowerTransformers_VoltageLevels1'
CREATE INDEX [IX_FK_PowerTransformers_VoltageLevels1]
ON [dbo].[PowerTransformers]
    ([IDVoltageLevelSettlementPoint]);
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

-- Creating foreign key on [ModifiedBy] in table 'WellProduction'
ALTER TABLE [dbo].[WellProduction]
ADD CONSTRAINT [FK_WellProduction_Users1]
    FOREIGN KEY ([ModifiedBy])
    REFERENCES [dbo].[Users]
        ([IDUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_WellProduction_Users1'
CREATE INDEX [IX_FK_WellProduction_Users1]
ON [dbo].[WellProduction]
    ([ModifiedBy]);
GO

-- Creating foreign key on [IDMapElementLink] in table 'MapElementsToMapElementLinks'
ALTER TABLE [dbo].[MapElementsToMapElementLinks]
ADD CONSTRAINT [FK_MapElementLinksMapElementsToMapElementLinks]
    FOREIGN KEY ([IDMapElementLink])
    REFERENCES [dbo].[MapElementLinks]
        ([IDMapElementLink])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IDMapElementType] in table 'MapElementsToMapElementLinks'
ALTER TABLE [dbo].[MapElementsToMapElementLinks]
ADD CONSTRAINT [FK_MapElementTypesMapElementsToMapElementLinks]
    FOREIGN KEY ([IDMapElementType])
    REFERENCES [dbo].[MapElementTypes]
        ([IDMapElementType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MapElementTypesMapElementsToMapElementLinks'
CREATE INDEX [IX_FK_MapElementTypesMapElementsToMapElementLinks]
ON [dbo].[MapElementsToMapElementLinks]
    ([IDMapElementType]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------