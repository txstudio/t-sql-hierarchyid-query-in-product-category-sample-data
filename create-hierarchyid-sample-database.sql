USE [master]
GO

IF (EXISTS (
		SELECT name FROM [master].[dbo].[sysdatabases]
		WHERE name = 'HierarchyIDSampleDb'
	))
BEGIN
	ALTER DATABASE [HierarchyIDSampleDb] SET 
		SINGLE_USER WITH ROLLBACK IMMEDIATE
	
	DROP DATABASE [HierarchyIDSampleDb]
END

CREATE DATABASE [HierarchyIDSampleDb]
GO

USE [HierarchyIDSampleDb]
GO

CREATE SCHEMA [Product]
GO

--建立商品類別資料表與預設資料內容
CREATE TABLE [Product].[ProductCategories]
(
	[No]			INT NOT NULL,
	[Path]			HIERARCHYID,

	[Name]			NVARCHAR(50),
	[IsEnabled]		BIT DEFAULT(1),

	CONSTRAINT [pk_ProductCategories] PRIMARY KEY ([No])
)
GO

INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (1,'/1/',N'女裝')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (2,'/1/1/',N'家居&內著')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (3,'/1/1/1/',N'保暖衣')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (4,'/1/1/2/',N'細肩帶背心')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (5,'/1/1/3/',N'清涼系列')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (6,'/1/1/4/',N'內搭褲')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (7,'/1/2/',N'外套類')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (8,'/1/2/1/',N'極輕羽絨')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (9,'/1/2/2/',N'保暖羽絨')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (10,'/1/2/3/',N'西裝/大衣')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (11,'/1/2/4/',N'休閒外套')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (12,'/1/2/5/',N'機能外套')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (13,'/1/3/',N'上身類')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (14,'/1/3/1/',N'印花長T')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (15,'/1/3/2/',N'印花短T')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (16,'/1/3/3/',N'七分/長袖')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (17,'/2/',N'男裝')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (18,'/2/1/',N'襯衫類')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (19,'/2/1/1/',N'法蘭絨襯衫')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (20,'/2/1/2/',N'休閒襯衫')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (21,'/2/1/3/',N'商務襯衫')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (22,'/2/2/',N'針織衫')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (23,'/2/2/1/',N'針織/毛衣')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (24,'/2/3/',N'配件')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (25,'/2/3/1/',N'圍巾')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (26,'/2/3/2/',N'帽子/手套')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (27,'/2/3/3/',N'皮帶')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (28,'/2/3/4/',N'鞋類')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (29,'/3/',N'運動')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (30,'/3/1/',N'運動女裝')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (31,'/3/1/1/',N'上身類-女')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (32,'/3/1/2/',N'褲&裙裝-女')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (33,'/3/1/3/',N'外套類-女')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (34,'/3/1/3/',N'配件類-女')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (35,'/3/2/',N'運動男裝')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (36,'/3/2/1/',N'上身類-男')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (37,'/3/2/2/',N'褲裝類-男')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (38,'/3/2/3/',N'外套類-男')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (39,'/3/2/4/',N'配件類-男')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (40,'/3/3/',N'運動童裝')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (41,'/3/3/1/',N'上身類-童')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (42,'/3/3/2/',N'褲&裙裝-童')
INSERT INTO [Product].[ProductCategories]([No],[Path],[Name]) VALUES (43,'/3/3/3/',N'配件類-童')
GO