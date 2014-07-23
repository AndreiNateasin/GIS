SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Locations](
	[IDLocation] [int] IDENTITY(1,1) NOT NULL,
	[IDConsumer] [int] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[ElectricalLineDiagramX] [int] NULL,
	[ElectricalLineDiagramY] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[IDLocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Locations] ADD  CONSTRAINT [DF_Locations_Active]  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Consumers] FOREIGN KEY([IDConsumer])
REFERENCES [dbo].[Consumers] ([IDConsumer])
GO

ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Consumers]
GO



