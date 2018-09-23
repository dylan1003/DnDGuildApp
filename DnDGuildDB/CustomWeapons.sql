CREATE TABLE [dbo].[Weapon]
(
	[WeaponId] INT,
	[ArchType] VARCHAR(30) NOT NULL,
	[InRange] INT NULL,
	[OutofRange] INT NULL,
	[DamageDiceNumber] INT NOT NULL,
	[DamageDiceSize] INT NOT NULL,
	[Properties] VARCHAR(200) NOT NULL,
	CONSTRAINT PK_CustomWeaponKey PRIMARY KEY ([WeaponId]),
	CONSTRAINT FK_WeaponInheritCustomItem FOREIGN KEY ([WeaponId]) REFERENCES CustomItems(ItemId),
)
