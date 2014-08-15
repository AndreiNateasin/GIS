CREATE TABLE #variables
    (
    VarName VARCHAR(20) PRIMARY KEY,
    Value VARCHAR(255)
    )
GO

------------------Consumer links------------------------ 
insert into dbo.MapElementLinks(ReferenceIndex, Title)
							values('1', 'Schema Monofilara')
Insert into #variables  values('consumerTypeLink1', @@IDENTITY)

insert into dbo.MapElementLinks (ReferenceIndex, Title)
							values('2', 'Grafic consum')
Insert into #variables  values('consumerTypeLink2', @@IDENTITY)

insert into dbo.MapElementLinks (ReferenceIndex, Title)
							values('3', 'Raport consum')
Insert into #variables  values('consumerTypeLink3', @@IDENTITY)

------------------Consumer links------------------------ 


insert into dbo.MapElementTypes(TypeName) 
	Values ('city')
Insert into #variables  values('consumerTypeCity', @@IDENTITY)

Go
insert into dbo.MapElementsToMapElementLinks(IDMapElementLink, IDMapElementType) 
	Values ((Select Value From #variables Where VarName = 'consumerTypeLink1'), (Select Value From #variables Where VarName = 'consumerTypeCity'))

insert into dbo.MapElementsToMapElementLinks (IDMapElementLink, IDMapElementType) 
	Values ((Select Value From #variables Where VarName = 'consumerTypeLink2'), (Select Value From #variables Where VarName = 'consumerTypeCity'))

insert into dbo.MapElementsToMapElementLinks (IDMapElementLink, IDMapElementType) 
	Values ((Select Value From #variables Where VarName = 'consumerTypeLink3'), (Select Value From #variables Where VarName = 'consumerTypeCity'))

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Bucuresti', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 44.43250, 26.10389)


insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Pitesti', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 44.86056, 24.86778)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Sibiu', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 45.79278,24.15207)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Cluj Napoca', 1, (Select Value From #variables Where VarName = 'consumerTypeCity'), 46.76667, 23.58333)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Suceava', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 47.65139, 26.25556)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Balti', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 47.75399, 27.91841)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Chisinau', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 47.01070, 28.86870)

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Galati', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 45.42333, 28.04250)

------------------------
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Buzau', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 45.16667, 26.81667)

-------------------------

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Ploiesti', 1,  (Select Value From #variables Where VarName = 'consumerTypeCity'), 44.93377, 26.02687)

-------------------------Pumps--------------------
insert into dbo.MapElementTypes (TypeName) 
	Values ('Pump')
Insert into #variables  values('consumerTypePump', @@IDENTITY)

Go
insert into dbo.MapElementsToMapElementLinks (IDMapElementLink, IDMapElementType) 
	Values ((Select Value From #variables Where VarName = 'consumerTypeLink1'), (Select Value From #variables Where VarName = 'consumerTypePump'))

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('German Pump', 1,  (Select Value From #variables Where VarName = 'consumerTypePump'), 44.34589, 23.91449)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Swedish Pump', 1,  (Select Value From #variables Where VarName = 'consumerTypePump'), 44.47930, 24.22211)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Italian Pump', 1, (Select Value From #variables Where VarName = 'consumerTypePump'), 44.31445, 24.48029)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Romanian Pump', 1, (Select Value From #variables Where VarName = 'consumerTypePump'), 44.24760, 24.30450)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
-------------------------


insert into dbo.MapElementTypes (TypeName) 
	Values ('Factory')
Insert into #variables  values('consumerTypeFactory', @@IDENTITY)

Go
insert into dbo.MapElementsToMapElementLinks (IDMapElementLink, IDMapElementType) 
	Values ((Select Value From #variables Where VarName = 'consumerTypeLink3'), (Select Value From #variables Where VarName = 'consumerTypeFactory'))

insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('German Factory', 1, (Select Value From #variables Where VarName = 'consumerTypeFactory'), 44.50945, 26.83548)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Swedish Factory', 1, (Select Value From #variables Where VarName = 'consumerTypeFactory'), 44.40555, 26.72836)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Italian Factory', 1,  (Select Value From #variables Where VarName = 'consumerTypeFactory'), 44.44086, 26.96182)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into dbo.Consumers (Name,Active , IDMapElementType, Latitude, Longitude) 
	Values ('Romanian Factory', 1, (Select Value From #variables Where VarName = 'consumerTypeFactory'), 44.33683, 26.85471)

--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
-------------------------
insert into dbo.MapElementTypes (TypeName) 
	Values ('Electric network')
Insert into #variables  values('consumerTypeNetwork', @@IDENTITY)


insert into dbo.ElectricLines(Name,Active , IDMapElementType, Capacity) 
	Values ('Bucuresti - Sibiu ', 1, (Select Value From #variables Where VarName = 'consumerTypeNetwork'), 5)

insert into.dbo.GPSCoordinates (Active, Latitude, Longitude,IDElectricLine)
	Values(1, 44.43497, 26.10489, @@IDENTITY),
		  (1, 44.49966, 25.90714, @@IDENTITY),
		  (1, 44.68742, 25.38528, @@IDENTITY),
		  (1, 44.85900, 24.96231, @@IDENTITY),
		  (1, 45.01763, 24.72297, @@IDENTITY),
		  (1, 45.25648, 24.64622, @@IDENTITY),
		  (1, 45.72138, 24.32737, @@IDENTITY),
		  (1, 45.79284, 24.15070, @@IDENTITY)
------------------------------------------------------

insert into dbo.ElectricLines (Name,Active , IDMapElementType, Capacity) 
	Values ('Bucuresti - Ploiesti ', 1, (Select Value From #variables Where VarName = 'consumerTypeNetwork'),3)

insert into.dbo.GPSCoordinates (Active, Latitude, Longitude,IDElectricLine)
	Values
		  (1, 44.42805, 26.10437, @@IDENTITY),
		  (1, 44.51644, 26.09051, @@IDENTITY),
		  (1, 44.57025, 26.07491, @@IDENTITY),
		  (1, 44.60439, 26.07461, @@IDENTITY),
		  (1, 44.61997, 26.06702, @@IDENTITY),
		  (1, 44.62959, 26.06011, @@IDENTITY),
		  (1, 44.64327, 26.07483, @@IDENTITY),
		  (1, 44.67642, 26.07556, @@IDENTITY),
		  (1, 44.72822, 26.10564, @@IDENTITY),
		  (1, 44.7452,  26.1147 , @@IDENTITY),
		  (1, 44.78862, 26.09766, @@IDENTITY),
		  (1, 44.80896, 26.08333, @@IDENTITY),
		  (1, 44.82781, 26.08037, @@IDENTITY),
		  (1, 44.85065, 26.07705, @@IDENTITY),
		  (1, 44.88489, 26.04799, @@IDENTITY),
		  (1, 44.90228, 26.06711, @@IDENTITY),
		  (1, 44.92135, 26.03526, @@IDENTITY),
		  (1, 44.93377, 26.02687, @@IDENTITY)
------------------------------------------------------

insert into dbo.ElectricLines (Name,Active , IDMapElementType, Capacity) 
	Values ('Chisinau - Galati ', 1, (Select Value From #variables Where VarName = 'consumerTypeNetwork'), 1)

insert into.dbo.GPSCoordinates (Active, Latitude, Longitude,IDElectricLine)
	Values
		  (1, 47.0107,  28.8687,  @@IDENTITY),
		  (1, 46.90862, 28.6854,  @@IDENTITY),
		  (1, 46.77525, 28.63179, @@IDENTITY),
		  (1, 46.61485, 28.72745, @@IDENTITY),
		  (1, 46.5226,  28.78274, @@IDENTITY),
		  (1, 46.2949,  28.65717, @@IDENTITY),
		  (1, 46.09861, 28.59516, @@IDENTITY),
		  (1, 45.78352, 28.56071, @@IDENTITY),
		  (1, 45.68366, 28.41367, @@IDENTITY),
		  (1, 45.47014, 28.18703, @@IDENTITY),
		  (1, 45.42579, 28.02722, @@IDENTITY)
		  
------------------------------------------------------

GO

DROP TABLE #variables
go