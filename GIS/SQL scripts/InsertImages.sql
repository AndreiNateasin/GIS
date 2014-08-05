UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\bucuresti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%bucuresti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\cluj.png', Single_Blob) MyImage)
WHERE ConsumerName like '%cluj%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\ploiesti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%ploiesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\buzau.png', Single_Blob) MyImage)
WHERE ConsumerName like '%buzau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\suceava.png', Single_Blob) MyImage)
WHERE ConsumerName like '%suceava%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\balti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%balti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\chisinau.png', Single_Blob) MyImage)
WHERE ConsumerName like '%chisinau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\sibiu.png', Single_Blob) MyImage)
WHERE ConsumerName like '%sibiu%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\pitesti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%pitesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\galati.png', Single_Blob) MyImage)
WHERE ConsumerName like '%galati%' 

------------------------------------------ConsumerTypes------------------------
UPDATE dbo.ConsumerTypes 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\cable.png', Single_Blob) MyImage)
WHERE ConsumerTypeName like '%Electric network%' 

UPDATE dbo.ConsumerTypes 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\city.png', Single_Blob) MyImage)
WHERE ConsumerTypeName like '%city%' 

UPDATE dbo.ConsumerTypes 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\pump.png', Single_Blob) MyImage)
WHERE ConsumerTypeName like '%pump%' 

UPDATE dbo.ConsumerTypes 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\factory.png', Single_Blob) MyImage)
WHERE ConsumerTypeName like '%factory%' 