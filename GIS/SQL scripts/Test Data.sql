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
------------------------
insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Buzau', 1, 9, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 45.16667, 26.81667, @consumer)
-------------------------

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Ploiesti', 1, 10, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values(1, 44.93377, 26.02687, @consumer)
-------------------------
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
		  (1, 45.01763, 24.72297, @consumer),
		  (1, 45.25648, 24.64622, @consumer),
		  (1, 45.72138, 24.32737, @consumer),
		  (1, 45.79284, 24.15070, @consumer)
------------------------------------------------------

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Bucuresti - Ploiesti ', 1, 9, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values
		  (1, 44.42805, 26.10437, @consumer),
		  (1, 44.51644, 26.09051, @consumer),
		  (1, 44.57025, 26.07491, @consumer),
		  (1, 44.60439, 26.07461, @consumer),
		  (1, 44.61997, 26.06702, @consumer),
		  (1, 44.62959, 26.06011, @consumer),
		  (1, 44.64327, 26.07483, @consumer),
		  (1, 44.67642, 26.07556, @consumer),
		  (1, 44.72822, 26.10564, @consumer),
		  (1, 44.7452,  26.1147 , @consumer),
		  (1, 44.78862, 26.09766, @consumer),
		  (1, 44.80896, 26.08333, @consumer),
		  (1, 44.82781, 26.08037, @consumer),
		  (1, 44.85065, 26.07705, @consumer),
		  (1, 44.88489, 26.04799, @consumer),
		  (1, 44.90228, 26.06711, @consumer),
		  (1, 44.92135, 26.03526, @consumer),
		  (1, 44.93377, 26.02687, @consumer)
------------------------------------------------------

insert into dbo.Consumers (ConsumerName,Active,ElectricMeterConstant, IDConsumerType) 
	Values ('Chisinau - Galati ', 1, 9, @consumerType)

SET  @consumer = @@IDENTITY;

insert into.dbo.Locations (Active, Latitude, Longitude,IDConsumer)
	Values
		  (1, 47.0107,  28.8687, @consumer),
		  (1, 46.90862, 28.6854, @consumer),
		  (1, 46.77525, 28.63179, @consumer),
		  (1, 46.61485, 28.72745, @consumer),
		  (1, 46.5226,  28.78274, @consumer),
		  (1, 46.2949,  28.65717, @consumer),
		  (1, 46.09861, 28.59516, @consumer),
		  (1, 45.78352, 28.56071, @consumer),
		  (1, 45.68366, 28.41367, @consumer),
		  (1, 45.47014, 28.18703, @consumer),
		  (1, 45.42579, 28.02722, @consumer)
		  
------------------------------------------------------

GO
