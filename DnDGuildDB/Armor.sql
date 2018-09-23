CREATE TABLE [dbo].[Armor]
(
	[ArmorId] INT,
	[ArmorType] VARCHAR(20) NOT NULL,
	[ArmorClass] INT NOT NULL,
	[StealthDisadvantage] BIT NOT NULL,
	[Size] VARCHAR(15) NULL,
	CONSTRAINT PK_ArmorKey PRIMARY KEY ([ArmorId]),
	CONSTRAINT FK_ArmorInheritanceCustomItem FOREIGN KEY ([ArmorId]) REFERENCES CustomItems(ItemId)
)
