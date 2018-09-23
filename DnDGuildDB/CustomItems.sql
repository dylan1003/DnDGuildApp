CREATE TABLE [dbo].[CustomItems]
(
	[ItemId] INT IDENTITY (1,1),
	[CampaignTitle] VARCHAR(25) NULL,
	[Title] VARCHAR(50) NOT NULL,
	[Magical] BIT NOT NULL,
	[MagicLevel] BIT NULL,
	[Rarity] VARCHAR(20) NOT NULL,
	[Attunement] BIT NULL,
	[Restriction] VARCHAR(200),
	[ItemDescription] VARCHAR(5000) NOT NULL,
	[Weight] INT NULL,
	[Price] INT NULL,
	[ImageSrc] VARCHAR(100) NULL,
	CONSTRAINT PK_CustomItemKey PRIMARY KEY ([ItemId]),
	CONSTRAINT UQ_UniqueTitlePerCampaign UNIQUE ([Title], [CampaignTitle]),
	CONSTRAINT CHK_ValidAttunement CHECK ([Attunement] = 0 OR [Attunement] = 1 OR [Attunement] = NULL),
	CONSTRAINT CHK_MagicLevelRange CHECK ([MagicLevel] >= 0 AND [MagicLevel] <= 10 )
)
