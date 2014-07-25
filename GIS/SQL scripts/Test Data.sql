Declare @consumer bigint;
Declare @consumerType bigint;

insert into dbo.ConsumerTypes (ConsumerTypeName) 
	Values ('city')
SET @consumerType =  @@IDENTITY;

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Bucuresti', 1, 1, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 44.43250, 26.10389, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Pitesti', 1, 2, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 44.86056, 24.86778, @consumer)
insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Sibiu', 1, 3, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 45.79278,24.15207, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Cluj Napoca', 1, 4, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 46.76667, 23.58333, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Suceava', 1, 5, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 47.65139, 26.25556, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Balti', 1, 6, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 47.75399, 27.91841, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Chisinau', 1, 7, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 47.01070, 28.86870, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Galati', 1, 8, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 45.42333, 28.04250, @consumer)

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Buzau', 1, 9, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 45.16667, 26.81667, @consumer)

insert into dbo.ConsumerTypes (ConsumerTypeName) 
	Values ('Electric network')
SET @consumerType =  @@IDENTITY;

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Bucuresti - Buzau ', 1, 9, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 44.43497, 26.10489, @consumer),
		  (1, 44.49966, 25.90714, @consumer),
		  (1, 44.68742, 25.38528, @consumer),
		  (1, 44.85900, 24.96231, @consumer),
		  (1, 45.07201, 24.72748, @consumer),
		  (1, 45.30043, 24.44183, @consumer),
		  (1, 45.63943, 24.13971, @consumer),
		  (1, 45.79284, 24.15070, @consumer)
GO
