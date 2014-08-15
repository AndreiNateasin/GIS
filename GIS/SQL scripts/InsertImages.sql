UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\bucuresti.png', Single_Blob) MyImage)
WHERE Name like '%bucuresti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\cluj.png', Single_Blob) MyImage)
WHERE Name like '%cluj%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\ploiesti.png', Single_Blob) MyImage)
WHERE Name like '%ploiesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\buzau.png', Single_Blob) MyImage)
WHERE Name like '%buzau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\suceava.png', Single_Blob) MyImage)
WHERE Name like '%suceava%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\balti.png', Single_Blob) MyImage)
WHERE Name like '%balti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\chisinau.png', Single_Blob) MyImage)
WHERE Name like '%chisinau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\sibiu.png', Single_Blob) MyImage)
WHERE Name like '%sibiu%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\pitesti.png', Single_Blob) MyImage)
WHERE Name like '%pitesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\galati.png', Single_Blob) MyImage)
WHERE Name like '%galati%' 

------------------------------------------MapElementTypes------------------------
UPDATE dbo.MapElementTypes 
SET [TypeImage] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\cable.png', Single_Blob) MyImage)
WHERE TypeName like '%Electric network%' 

UPDATE dbo.MapElementTypes 
SET [TypeImage] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\city.png', Single_Blob) MyImage)
WHERE TypeName like '%city%' 

UPDATE dbo.MapElementTypes 
SET [TypeImage] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\pump.png', Single_Blob) MyImage)
WHERE TypeName like '%pump%' 

UPDATE dbo.MapElementTypes 
SET [TypeImage] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\User\Documents\GitHub\GIS\ConsumerImages\factory.png', Single_Blob) MyImage)
WHERE TypeName like '%factory%' 