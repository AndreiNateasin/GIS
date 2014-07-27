UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\bucuresti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%bucuresti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\cluj.png', Single_Blob) MyImage)
WHERE ConsumerName like '%cluj%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\ploiesti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%ploiesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\buzau.png', Single_Blob) MyImage)
WHERE ConsumerName like '%buzau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\suceava.png', Single_Blob) MyImage)
WHERE ConsumerName like '%suceava%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\balti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%balti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\chisinau.png', Single_Blob) MyImage)
WHERE ConsumerName like '%chisinau%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\sibiu.png', Single_Blob) MyImage)
WHERE ConsumerName like '%sibiu%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\pitesti.png', Single_Blob) MyImage)
WHERE ConsumerName like '%pitesti%' 

UPDATE dbo.Consumers 
SET [Image] = (SELECT MyImage.* from Openrowset(Bulk 'C:\Users\Andrei\Pictures\Cities\galati.png', Single_Blob) MyImage)
WHERE ConsumerName like '%galati%' 