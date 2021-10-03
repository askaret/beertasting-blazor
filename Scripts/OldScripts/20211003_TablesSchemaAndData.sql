USE [BouvetBeertastingDb]
GO
/****** Object:  Table [dbo].[Beer]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beer](
	[BeerId] [int] IDENTITY(1,1) NOT NULL,
	[BeerStyleId] [int] NOT NULL,
	[BreweryId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ABV] [float] NOT NULL,
	[RateBeerLink] [nvarchar](max) NULL,
	[BeerClassId] [int] NOT NULL,
 CONSTRAINT [PK_Beer] PRIMARY KEY CLUSTERED 
(
	[BeerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beerclass]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beerclass](
	[BeerClassId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Beerclass] PRIMARY KEY CLUSTERED 
(
	[BeerClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beerstyle]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beerstyle](
	[BeerstyleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Beerstyle] PRIMARY KEY CLUSTERED 
(
	[BeerstyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brewery]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brewery](
	[BreweryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brewery] PRIMARY KEY CLUSTERED 
(
	[BreweryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RandomFact]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RandomFact](
	[RandomFactId] [int] IDENTITY(1,1) NOT NULL,
	[FactText] [nvarchar](max) NULL,
 CONSTRAINT [PK_RandomFact] PRIMARY KEY CLUSTERED 
(
	[RandomFactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taster]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taster](
	[TasterId] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Taster] PRIMARY KEY CLUSTERED 
(
	[TasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasting]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasting](
	[TastingId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsBlind] [bit] NOT NULL,
	[TastingDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tasting] PRIMARY KEY CLUSTERED 
(
	[TastingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TastingBeer]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TastingBeer](
	[TastingBeerId] [int] IDENTITY(1,1) NOT NULL,
	[TastingId] [int] NOT NULL,
	[BeerId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_TastingBeer] PRIMARY KEY CLUSTERED 
(
	[TastingBeerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TastingResult]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TastingResult](
	[TastingBeerResultId] [int] IDENTITY(1,1) NOT NULL,
	[TastingId] [int] NOT NULL,
	[BeerId] [int] NOT NULL,
	[BeerClassId] [int] NOT NULL,
	[BeerName] [nvarchar](max) NULL,
	[BreweryName] [nvarchar](max) NULL,
	[BeerStyle] [nvarchar](max) NULL,
	[Abv] [float] NOT NULL,
	[BreweryUrl] [nvarchar](max) NULL,
	[RateBeerUrl] [nvarchar](max) NULL,
	[ScoreTaste] [float] NOT NULL,
	[ScoreAppearance] [float] NOT NULL,
	[ScoreOverall] [float] NOT NULL,
	[ScoreFinal] [float] NOT NULL,
	[BeerClassName] [nvarchar](max) NULL,
 CONSTRAINT [PK_TastingResult] PRIMARY KEY CLUSTERED 
(
	[TastingBeerResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 22.09.2021 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[VoteId] [int] IDENTITY(1,1) NOT NULL,
	[BeerId] [int] NOT NULL,
	[TastingId] [int] NOT NULL,
	[TasterId] [int] NOT NULL,
	[Taste] [float] NOT NULL,
	[Appearance] [float] NOT NULL,
	[Overall] [float] NOT NULL,
	[Note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[VoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Beer] ON 
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (1, 1, 1, N'Nøgne Ø Two Captains Double IPA', 8.5, N'https://www.ratebeer.com/beer/nogne-o-two-captains-double-ipa/125773', 0)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (2, 2, 1, N'Nøgne Ø Imperial Stout', 9, N'https://www.ratebeer.com/beer/nogne-o-imperial-stout/49092/', 0)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (4, 4, 2, N'Betchard Blonde (2006)', 5.5, N'https://www.ratebeer.com/beer/betchard-blonde-2006/55996/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (5, 15, 2, N'Liquid Riot Jambe d’Érable', 10, N'https://www.ratebeer.com/beer/de-la-senne-liquid-riot-jambe-d%E2%80%99erable/658854/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (9, 58, 3, N'Tuftkall Juleøl', 4.7, N'https://www.ratebeer.com/beer/froya-tuftkall/575908/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (10, 81, 4, N'Vinterblot', 4.5, N'https://www.ratebeer.com/beer/olve-vinterblot-olves-juleol-45/95552/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (11, 111, 5, N'Hovmesteren Dark Christmas Ale', 4.7, N'https://www.ratebeer.com/beer/7-fjell-hovmesteren-dark-christmas-ale/458010/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (12, 81, 6, N'En Koselig Konjakk Juleøl', 4.7, N'https://www.ratebeer.com/beer/reins-kloster-en-koselig-konjakk-juleol/570837/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (13, 81, 1, N'Julekveld', 4.7, N'https://www.ratebeer.com/beer/nogne-o-julekveld/369350/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (14, 39, 7, N'Santa Clausthaler', 0, N'https://www.ratebeer.com/beer/santa-clausthaler/18656/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (15, 94, 8, N'Store Bjørn', 9, N'https://www.ratebeer.com/beer/e-c-dahls-store-bjorn-juleol/464078/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (16, 158, 9, N'Hvor er nisselua mi?', 10, N'https://www.ratebeer.com/beer/little-brother-hvor-er-nisselua-mi/562874/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (17, 119, 10, N'Hoppy Lovin Christmas IPA', 7.8, N'https://www.ratebeer.com/beer/mikkeller-hoppy-happy-lovin-christmas/155165/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (18, 81, 11, N'BP2', 7.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (19, 53, 12, N'Tannjul 2017', 8, N'https://www.ratebeer.com/beer/sagene-tannjul/566173/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (20, 158, 13, N'Chocolate Salty Christmas Balls', 10, N'https://www.ratebeer.com/beer/cervisiam-chocolate-salty-christmas-balls/561626/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (21, 114, 24, N'Delirium Noël', 10, N'https://www.ratebeer.com/beer/delirium-noel/5998/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (22, 81, 15, N'Dark Horse', 5.9, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (23, 53, 11, N'Søt Jul', 5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (24, 114, 16, N'Baladin Nöel Liquirizia', 9, N'https://www.ratebeer.com/beer/baladin-noeel-liquirizia/568889/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (25, 114, 17, N'Noel de Calabaza', 9, N'https://www.ratebeer.com/beer/jolly-pumpkin-noel-de-calabaza/80393/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (26, 81, 18, N'Julebokk 2017', 8.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (27, 81, 19, N'Helge', 10, N'https://www.ratebeer.com/beer/hornbeer-helge/129784/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (28, 170, 20, N'The Holy Bock', 7.5, N'https://www.ratebeer.com/beer/berentsens-the-holy-bock/561621/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (29, 94, 21, N'Dommpapp', 10.2, N'https://www.ratebeer.com/beer/inderoy-dommpapp/563188/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (30, 114, 22, N'Corsendonk Christmas Ale', 8.5, N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (31, 114, 23, N'St. Bernardus Christmas Ale', 10, N'https://www.ratebeer.com/beer/st-bernardus-christmas-ale/65814/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (32, 114, 10, N'Santa''s Little Helper 2016', 10.9, N'https://www.ratebeer.com/beer/mikkeller-santas-little-helper-2016/457785/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (33, 81, 18, N'Dobbel Julebokk', 8.9, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (34, 19, 25, N'Abundance Baltic Cherry Porter', 7.6, N'https://www.ratebeer.com/beer/renaissance-abundance-baltic-cherry-porter/240384/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (36, 118, 11, N'Torgeir''s Juleale', 6.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (37, 65, 27, N'Kringly Kris Juleporter', 4.7, NULL, 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (38, 54, 28, N'Lade Gaards Juleøl Sterk Type', 6.5, N'https://www.ratebeer.com/beer/lade-gaards-juleol-sterk-type/157318/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (39, 65, 8, N'Dahls Juleøl', 4.5, N'https://www.ratebeer.com/beer/dahls-juleol-4-5/11255/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (40, 54, 29, N'Vårres Jul', 4.7, N'https://www.ratebeer.com/beer/stjordalsbryggeriet-varres-juleol/492807/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (41, 133, 30, N'Økologisk Juleøl', 6, N'https://www.ratebeer.com/beer/herslev-okologisk-juleol/112170/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (42, 155, 31, N'Hansa Ekstra Vellagret Julebrygg', 6.5, N'https://www.ratebeer.com/beer/hansa-ekstra-vellagret-julebrygg-6-5/52874/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (43, 66, 32, N'Gulating Julebjorr', 4.7, N'https://www.ratebeer.com/beer/gulating-julebjorr/373318/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (44, 16, 33, N'Meteor Bière de Noël', 5.8, N'https://www.ratebeer.com/beer/meteor-biere-de-noel/9842/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (45, 60, 1, N'Nøgne Ø Hvit Jul', 4.5, N'https://www.ratebeer.com/beer/nogne-o-hvit-jul/369346/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (46, 116, 34, N'Aass Juleøl', 4.5, N'https://www.ratebeer.com/beer/aass-juleol-4-5/1030/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (47, 58, 35, N'Ringnes Juleøl', 4.5, N'https://www.ratebeer.com/beer/ringnes-juleol-4-5/18297/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (48, 58, 8, N'Dahls Julebrygg', 4.5, N'https://www.ratebeer.com/beer/dahls-julebrygg/11254/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (49, 58, 8, N'Dahls Juleøl Sterk', 6.5, N'https://www.ratebeer.com/beer/dahls-juleol-6-5/11257/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (50, 116, 11, N'God Jul', 7.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (51, 19, 11, N'Godt Nytt År', 6.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (52, 176, 28, N'Lade Gaards Juleøl', 4.7, N'https://www.ratebeer.com/beer/lade-gaards-juleol/132988/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (53, 121, 35, N'Nordlands Juleøl', 4.5, N'https://www.ratebeer.com/beer/nordlands-juleol/113198/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (54, 112, 36, N'Cuvée de Noël', 9, N'https://www.ratebeer.com/beer/st-feuillien-cuvee-de-noel/2407/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (55, 113, 37, N'Gauloise Du Bocq Christmas', 8.1, N'https://www.ratebeer.com/beer/du-bocq-christmas/81054/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (56, 66, 38, N'Austmann Vintersolverv', 6.9, N'https://www.ratebeer.com/beer/austmann-vintersolverv/297219/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (57, 170, 35, N'Ringnes Julebokk', 9, N'https://www.ratebeer.com/beer/ringnes-julebokk/18866/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (58, 6, 39, N'Haandbryggeriet Nissefar', 7, N'https://www.ratebeer.com/beer/haandbryggeriet-nissefar/52948/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (59, 114, 40, N'Het Anker Gouden Carolus Christmas', 10.5, N'https://www.ratebeer.com/beer/het-anker-gouden-carolus-christmas-noel/18375/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (60, 53, 41, N'Egils Malt Jólabjór', 5.7, N'https://www.ratebeer.com/beer/egils-malt-jolabjor/28392/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (61, 111, 5, N'Ølkymisten Gingerbread Maniac', 7, N'https://www.ratebeer.com/beer/olkymisten-gingerbread-maniac/671109/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (62, 64, 43, N'Põhjala Leevike', 6.5, N'https://www.ratebeer.com/beer/pohjala-leevike/651055/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (63, 168, 35, N'Julebokk 2018', 9, N'https://www.ratebeer.com/beer/ringnes-julebokk/18866/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (64, 117, 21, N'Fattigmainn', 10.2, N'https://www.ratebeer.com/beer/inderoy-fattigmainn/671838/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (65, 114, 44, N'Six Degrees North Snowy 2018', 7.5, N'https://www.ratebeer.com/beer/six-degrees-north-snowy-2018-7-5/671851/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (66, 19, 12, N'Tannjul 2018', 8, N'https://www.ratebeer.com/beer/sagene-tannjul/566173/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (67, 95, 45, N'Lusse Lelle', 6.5, N'https://www.ratebeer.com/beer/brekeriet-lusse-lelle/559828/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (68, 19, 46, N'Christmas Nights', 7, N'https://www.ratebeer.com/beer/beerbliotek-christmas-nights/238236/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (69, 114, 47, N'Kerst Pater Special Christmas', 9, N'https://www.ratebeer.com/beer/kerst-pater-special-christmas/11808/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (70, 105, 48, N'Fireside', 6.9, N'https://www.ratebeer.com/beer/edge-brewing-fireside/671168/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (71, 116, 49, N'Vixen', 7, N'https://www.ratebeer.com/beer/hogna-vixen/563923/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (72, 58, 35, N'Tuborg Juleøl', 4.6, N'https://www.ratebeer.com/beer/tuborg-juleol-4-5/52851/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (74, 118, 11, N'Grizzlybjørn', 5.8, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (75, 87, 11, N'Humlerød Jul', 6.5, NULL, 2)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (76, 53, 6, N'Cappuccino Snøstorm Stout', 4.5, NULL, 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (77, 118, 5, N'Mr. Winterbottom', 4.7, N'https://www.ratebeer.com/beer/7-fjell-mr-winterbottom/664702/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (78, 146, 50, N'Glühkriek', 6.5, N'https://www.ratebeer.com/beer/liefmans-gluehkriek/6428/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (79, 133, 51, N'Jul #1', 5.9, N'https://www.ratebeer.com/beer/bogedal-nr-0579-jul-1/574419/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (80, 176, 52, N'Santa''s Malty Helper', 7, N'https://www.ratebeer.com/beer/roros-santa-s-malty-helper/771454/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (81, 89, 53, N'Røyklagt', 7, N'https://www.ratebeer.com/beer/stolt-royklagt/707043/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (82, 119, 49, N'Blitzen Juleipa', 7.4, N'https://www.ratebeer.com/beer/hogna-blitzen-juleipa-2019/783932/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (83, 145, 54, N'Winter Ale', 8, N'https://www.ratebeer.com/beer/einstoek-icelandic-winter-ale/564980/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (84, 112, 16, N'Nöel Chocolat', 9, N'https://www.ratebeer.com/beer/baladin-noeel-chocolat/47894/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (85, 65, 8, N'Sankt Olav', 9.1, N'https://www.ratebeer.com/beer/e-c-dahls-sankt-olav-juleol/785303/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (86, 117, 55, N'Klaas Christmas', 9.8, N'https://www.ratebeer.com/beer/kaapse-klaas/310374/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (87, 56, 1, N'Julequad (2016)', 10, N'https://www.ratebeer.com/beer/nogne-o-julequad/452135/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (88, 126, 56, N'Christmas Break', 11, N'https://www.ratebeer.com/beer/the-piggy-christmas-break/776052/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (89, 112, 57, N'Bush de Noël Premium', 12, N'https://www.ratebeer.com/beer/dubuisson-scaldis-bush-de-noel-premium/54258/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (90, 112, 57, N'Bush de Noël Premium', 12, N'https://www.ratebeer.com/beer/dubuisson-scaldis-bush-de-noel-premium/54258/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (91, 117, 27, N'Hipster for Christmas', 12, N'https://www.ratebeer.com/beer/lervig-hipster-for-christmas/782172/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (92, 45, 58, N'Jule Mælk', 15, N'https://www.ratebeer.com/beer/to-ol-jule-maelk/235066/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (93, 114, 18, N'Juleøl 2019', 9, NULL, 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (94, 45, 11, N'Rozhdevsto Brezhnev', 8, NULL, 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (95, 6, 52, N'Fairytale of Røros', 4.7, N'https://www.ratebeer.com/beer/roros-fairytale-of-roros/792186/', 1)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (96, 65, 59, N'Joule Winter Warmer', 6, N'https://www.ratebeer.com/beer/monkey-brew-joule/390485/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (97, 176, 8, N'Kong Vinter', 7, N'https://www.ratebeer.com/beer/e-c-dahls-kong-vinter/870056/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (98, 65, 60, N'Julekula 2020', 9, N'https://www.ratebeer.com/beer/wettre-julekula/374897/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (99, 53, 13, N'Gryla', 12, N'https://www.ratebeer.com/beer/cervisiam-gryla-2020/872338/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (100, 176, 61, N'Julebokk', 9, N'https://www.ratebeer.com/beer/mack-julebokk/670508/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (101, 53, 62, N'Ashes to Ashes', 10.5, N'https://www.ratebeer.com/beer/amundsen-ashes-to-ashes/780557/', 3)
GO
INSERT [dbo].[Beer] ([BeerId], [BeerStyleId], [BreweryId], [Name], [ABV], [RateBeerLink], [BeerClassId]) VALUES (102, 111, 5, N'Mørk Juleøl', 4.7, N'https://www.ratebeer.com/beer/7-fjell-mork-juleol/875751/', 1)
GO
SET IDENTITY_INSERT [dbo].[Beer] OFF
GO
SET IDENTITY_INSERT [dbo].[Beerclass] ON 
GO
INSERT [dbo].[Beerclass] ([BeerClassId], [Name]) VALUES (1, N'Regular')
GO
INSERT [dbo].[Beerclass] ([BeerClassId], [Name]) VALUES (2, N'Homebrew')
GO
INSERT [dbo].[Beerclass] ([BeerClassId], [Name]) VALUES (3, N'High ABV')
GO
SET IDENTITY_INSERT [dbo].[Beerclass] OFF
GO
SET IDENTITY_INSERT [dbo].[Beerstyle] ON 
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (1, N'Alternative Grain Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (2, N'North German Altbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (3, N'Northern English Brown')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (4, N'Oatmeal Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (5, N'Oktoberfest/Märzen')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (6, N'Old Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (7, N'Open Category Mead')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (8, N'Ordinary Bitter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (9, N'Other Fruit Melomel')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (10, N'No Profile Selected')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (11, N'Other Smoked Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (12, N'Oud Bruin')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (13, N'Piwo Grodziskie')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (14, N'Pre-Prohibition Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (15, N'Pre-Prohibition Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (16, N'Premium American Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (17, N'Pyment (Grape Melomel)')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (18, N'Rauchbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (19, N'Robust Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (20, N'Other Specialty Cider or Perry')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (21, N'New Zealand Pilsner')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (22, N'New England Cider')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (23, N'Munich Helles')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (24, N'International Pale Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (25, N'Irish Extra Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (26, N'Irish Red Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (27, N'Irish Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (28, N'Kellerbier: Amber Kellerbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (29, N'Kellerbier: Pale Kellerbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (30, N'Kentucky Common')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (31, N'Kölsch')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (32, N'Lambic')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (33, N'Lichtenhainer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (34, N'Light American Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (35, N'London Brown Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (36, N'Maibock/Helles Bock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (37, N'Märzen')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (38, N'Metheglin')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (39, N'Mild')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (40, N'Mixed-Fermentation Sour Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (41, N'Mixed-Style Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (42, N'Munich Dunkel')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (43, N'Roggenbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (44, N'Roggenbier (German Rye Beer)')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (45, N'Russian Imperial Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (46, N'Sahti')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (47, N'Standard American Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (48, N'Standard/Ordinary Bitter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (49, N'Straight (Unblended) Lambic')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (50, N'Strong Bitter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (51, N'Strong Scotch Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (52, N'Sweet Mead')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (53, N'Sweet Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (54, N'Traditional Bock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (55, N'Traditional Perry')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (56, N'Trappist Single')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (57, N'Tropical Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (58, N'Vienna Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (59, N'Wee Heavy')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (60, N'Weissbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (61, N'Weizen/Weissbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (62, N'Weizenbock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (63, N'Wheatwine')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (64, N'Wild Specialty Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (65, N'Winter Seasonal Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (66, N'Spice, Herb, or Vegetable Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (67, N'International Dark Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (68, N'Specialty Wood-Aged Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (69, N'Specialty IPA: White IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (70, N'Saison')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (71, N'Schwarzbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (72, N'Scottish Export')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (73, N'Scottish Export 80/-')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (74, N'Scottish Heavy')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (75, N'Scottish Heavy 70/-')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (76, N'Scottish Light')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (77, N'Scottish Light 60/-')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (78, N'Semi-Sweet Mead')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (79, N'Southern English Brown')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (80, N'Special/Best/Premium Bitter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (81, N'Specialty Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (82, N'Specialty Fruit Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (83, N'Specialty IPA: Belgian IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (84, N'Specialty IPA: Black IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (85, N'Specialty IPA: Brown IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (86, N'Specialty IPA: New England IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (87, N'Specialty IPA: Red IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (88, N'Specialty IPA: Rye IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (89, N'Specialty Smoked Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (90, N'Witbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (91, N'International Amber Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (92, N'Imperial IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (93, N'Belgian Specialty Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (94, N'Belgian Tripel')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (95, N'Berliner Weisse')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (96, N'Best Bitter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (97, N'Bière de Garde')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (98, N'Blonde Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (99, N'Bohemian Pilsener')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (100, N'Braggot')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (101, N'Belgian Pale Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (102, N'Brett Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (103, N'British Golden Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (104, N'British Strong Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (105, N'Brown Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (106, N'Burton Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (107, N'California Common')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (108, N'California Common Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (109, N'Catharina Sour')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (110, N'Classic American Pilsner')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (111, N'British Brown Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (112, N'Belgian Golden Strong Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (113, N'Belgian Dubbel')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (114, N'Belgian Dark Strong Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (115, N'Alternative Sugar Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (116, N'American Amber Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (117, N'American Barleywine')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (118, N'American Brown Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (119, N'American IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (120, N'American Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (121, N'Altbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (122, N'American Light Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (123, N'American Pale Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (124, N'American Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (125, N'American Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (126, N'American Strong Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (127, N'American Wheat Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (128, N'American Wheat or Rye Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (129, N'Apple Wine')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (130, N'Australian Sparkling Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (131, N'Autumn Seasonal Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (132, N'Baltic Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (133, N'Belgian Blond Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (134, N'Classic Rauchbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (135, N'Classic Style Smoked Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (136, N'Clone Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (137, N'Common Cider')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (138, N'Experimental Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (139, N'Extra Special/Strong Bitter (ESB)')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (140, N'Festbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (141, N'Flanders Brown Ale/Oud Bruin')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (142, N'Flanders Red Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (143, N'Foreign Extra Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (144, N'French Cider')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (145, N'Fruit and Spice Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (146, N'Fruit Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (147, N'Fruit Cider')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (148, N'Fruit Lambic')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (149, N'German Helles Exportbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (150, N'German Leichtbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (151, N'German Pils')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (152, N'German Pilsner (Pils)')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (153, N'Gose')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (154, N'Gueuze')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (155, N'Helles Bock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (156, N'Holiday/Winter Special Spiced Beer')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (157, N'English Porter')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (158, N'Imperial Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (159, N'English IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (160, N'English Barleywine')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (161, N'Common Perry')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (162, N'Cream Ale')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (163, N'Cyser (Apple Melomel)')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (164, N'Czech Amber Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (165, N'Czech Dark Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (166, N'Czech Pale Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (167, N'Czech Premium Pale Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (168, N'Dark American Lager')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (169, N'Dark Mild')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (170, N'Doppelbock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (171, N'Dortmunder Export')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (172, N'Double IPA')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (173, N'Dry Mead')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (174, N'Dry Stout')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (175, N'Dunkelweizen')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (176, N'Dunkles Bock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (177, N'Dunkles Weissbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (178, N'Düsseldorf Altbier')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (179, N'Eisbock')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (180, N'English Cider')
GO
INSERT [dbo].[Beerstyle] ([BeerstyleId], [Name]) VALUES (181, N'Wood-Aged Beer')
GO
SET IDENTITY_INSERT [dbo].[Beerstyle] OFF
GO
SET IDENTITY_INSERT [dbo].[Brewery] ON 
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (1, N'Nøgne Ø (Hansa Borg)', N'Norway', N'https://www.nogne-o.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (2, N'Brasserie de la Senne', N'Belgium', N'http://brasseriedelasenne.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (3, N'Bryggeriet Frøya', N'Norway', N'http://bryggerietfroya.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (4, N'Ølve på Egge Bryggeri', N'Norway', N'http://www.olveegge.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (5, N'7 Fjell', N'Norway', N'https://www.7fjellbryggeri.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (6, N'Reins Kloster', N'Norway', N'https://reinskloster.no/reins-kloster-ol/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (7, N'Binding Brauerei', N'Germany', N'https://www.binding.de/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (8, N'E.C. Dahls Bryggeri', N'Norway', N'https://www.ecdahls.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (9, N'Little Brother Brewing', N'USA', N'https://www.littlebrotherbrew.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (10, N'Mikkeller APS', N'Denmark', N'http://mikkeller.dk/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (11, N'Torgeir Kruke', N'Norway', NULL)
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (12, N'Sagene Bryggeri', N'Norway', N'http://www.sagenebryggeri.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (13, N'Cervisiam Brewery', N'Norway', N'https://www.cervisiam.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (15, N'Jarle Hildrum', N'Norway', NULL)
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (16, N'Birra Baladin', N'Italy', N'http://www.baladin.it/en/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (17, N'Jolly Pumpkin Brewery', N'USA', N'http://brewery.jollypumpkin.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (18, N'Andreas Skaret', N'Norway', NULL)
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (19, N'Hornbeer', N'Denmark', N'https://hornbeer.dk/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (20, N'Berentsens Brygghus', N'Norway', N'https://www.berentsens.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (21, N'Inderøy Gårdsbryggeri', N'Norway', N'http://www.igb.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (22, N'Brouwerij Corsendonk', N'Belgium', N'http://www.corsendonk.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (23, N'Brewery St.Bernard', N'Belgium', N'http://www.sintbernardus.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (24, N'Brouwerij Huyghe', N'Belgium', N'http://www.delirium.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (25, N'Reneissance Brewing', N'New Zealand', N'http://www.renaissancebrewing.co.nz/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (27, N'Lervig Aktiebryggeri', N'Norway', N'http://lervig.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (28, N'Grans Bryggeri', N'Norway', N'http://www.grans.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (29, N'Stjørdalsbryggeriet', N'Norway', N'http://stjordalsbryggeriet.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (30, N'Herslev Bryghus', N'Denmark', N'http://www.herslevbryghus.dk/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (31, N'Hansa Borg Bryggerier', N'Norway', N'http://www.hansaborg.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (32, N'Færder Mikrobryggeri', N'Norway', N'http://faerdermikrobryggeri.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (33, N'Brasserie Meteor', N'France', N'http://www.brasserie-meteor.fr/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (34, N'Aass Bryggeri', N'Norway', N'http://www.aass.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (35, N'Ringnes Bryggeri', N'Norway', N'http://www.ringnes.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (36, N'Brasserie St. Feuilien', N'Belgium', N'http://www.st-feuillien.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (37, N'Brasserie Du Bocq', N'Belgium', N'http://www.bocq.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (38, N'Austmann (Hansa Borg)', N'Norway', N'http://www.austmann.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (39, N'Haandbryggeriet', N'Norway', N'http://www.haandbryggeriet.net/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (40, N'Brouwerij Het Anker', N'Belgium', N'http://www.hetanker.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (41, N'Ölgerðin Egill Skallagrímsson', N'Iceland', N'http://www.olgerdin.is/en/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (43, N'Põhjala', N'Estonia', N'https://pohjalabeer.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (44, N'Six Degrees North', N'Scotland', N'http://sixdnorth.co.uk/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (45, N'Brekeriet', N'Sweden', N'http://www.brekeriet.se/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (46, N'Beerbliotek', N'Sweden', N'http://beerbliotek.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (47, N'Brouwerij Van Den Bossche', N'Belgium', N'https://www.paterlieven.be/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (48, N'Edge Brewing', N'Spain', N'http://www.edgebrewing.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (49, N'Hogna Brygg', N'Norway', N'https://hognabrygg.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (50, N'Brouwerij Liefmans', N'Belgium', N'https://www.liefmans.be/en')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (51, N'Bøgedal Brew', N'Denmark', N'https://www.boegedal.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (52, N'Røros Bryggeri', N'Norway', N'https://rorosbryggeri.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (53, N'Stolt Bryggeri', N'Norway', N'https://www.stoltbryggeri.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (54, N'Einstök Ölgerð', N'Iceland', N'https://einstokbeer.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (55, N'Kaapse Brouwers', N'Netherland', N'https://www.kaapsebrouwers.nl/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (56, N'The Piggy Brewing Company', N'France', N'https://www.thepiggybrewingcompany.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (57, N'Dubussion', N'Belgium', N'http://www.br-dubuisson.com/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (58, N'To Øl', N'Denmark', N'https://toolbeer.dk/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (59, N'Monkey Brew', N'Norway', N'https://www.monkeybrew.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (60, N'Wettre Bryggeri', N'Norway', N'https://wettrebryggeri.net/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (61, N'Mack Bryggeri', N'Norway', N'https://www.mack.no/')
GO
INSERT [dbo].[Brewery] ([BreweryId], [Name], [Country], [Website]) VALUES (62, N'Amundsen Bryggeri', N'Norge', N'https://www.amundsenbrewery.com/')
GO
SET IDENTITY_INSERT [dbo].[Brewery] OFF
GO
SET IDENTITY_INSERT [dbo].[RandomFact] ON 
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (1, N'Beer is the third-most popular drink on Earth, after water and tea')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (2, N'Beer is by far the most popular alcoholic drink in the world. In 2016, people consumed nearly 50 billion gallons of beer worldwide')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (3, N'Beer is as old as human history. Beer brewing and drinking predate written language')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (4, N'The Czech Republic consumes the most beer per capita of any country in the world, and China consumes the most overall')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (5, N'The earliest evidence of beer making was found in western Iran, dating back to 3,500 BC')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (6, N'Ancient Sumerians made beer from bread and malt')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (7, N'Though there are hundreds of styles of beer, they all fall into two basic categories: lagers and ales')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (8, N'In 1963, Heineken developed beer bottles that could double as glass bricks to build houses')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (9, N'In Medieval Europe, Catholic monks would often undergo "beer fasts" during the forty days of Lent. They ate no food, getting calories only from beer, which they called "liquid bread')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (10, N'French scientist Louis Pasteur wrote a book on the "diseases" of beer and the causes of its spoilage')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (11, N'Ancient Egypt relied heavily on beer since it provided necessary vitamins and was generally cleaner and safer to drink than water from the Nile')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (12, N'Brewers began adding hops to beer in the 9th century AD. Today, nearly all beer is brewed with hops, which adds a zesty, bitter flavor to beer and acts as a preservative')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (13, N'Many civilizations of antiquity and Medieval times relied heavily upon beer as the safest available drink, due to poor water quality')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (14, N'Catholic priests and monks took up the art of brewing in the early Middle Ages, and many European breweries today have grown out of this monastic tradition')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (15, N'A bottle of "Allsopp''s Arctic Ale," brewed in 1875 for an expedition to the North Pole, sold at auction in England in 2015 for £3,300, which equates to about $4,500')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (16, N'It is alleged that the longest hangover took place after a Scotsman drank just over 28 litres of beer. It is said his hangover lasted for 4 weeks.')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (17, N'You can use beer to shine up any old copper items')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (18, N'Slugs and snails love beer! If you’re looking to rid your garden of these pests, put some beer in shallow containers at night')
GO
INSERT [dbo].[RandomFact] ([RandomFactId], [FactText]) VALUES (19, N'Belgium has the most individual brands of beer found in any country. You’re looking at around 400 different brands!')
GO
SET IDENTITY_INSERT [dbo].[RandomFact] OFF
GO
SET IDENTITY_INSERT [dbo].[Taster] ON 
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (1, N'andreas.skaret@bouvet.no', N'Andreas', NULL, 1)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (2, N'andreas.skaret@poomail.com', N'Andreas', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (3, N'mowen@costco.com', N'Morten', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (4, N'admin@costco.com', N'Admin', NULL, 1)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (12, N'anders.grendstadbakk@costco.com', N'Anders', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (13, N'Hege.torsvik@costco.com', N'Hegita', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (14, N'Eirik.lyngaas@costco.com ', N'Rasmus Lyngaas', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (15, N'robert.baar@costco.com', N'Robban', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (16, N'daniel.royland@costco.com', N'Daniel Røyland', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (17, N'ole.talgo@costco.com', N'Ole Petter', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (18, N'Per.paasche@costco.com', N'Per Christian', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (19, N'per-ivar.skinderhaug@costco.com', N'Per Ivar', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (20, N'Morten.Wennevik@costco.com', N'Hakamoto', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (21, N'roy.halvorsen@costco.com', N'Roy1', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (22, N'Andrea.leikvold@costco.com', N'Andrea L', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (23, N'oddvar.johnsen@costco.com', N'Bjorno', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (24, N'dag.prestegarden@costco.com', N'Dag Olav', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (25, N'Poop@costco.com', N'😎🍻😐🤘''''&$@;/\¶%©', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (26, N'stig.ofstad@costco.com', N'Stig Oskar', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (27, N'trond.bjorgum@costco.com', N'Trond Håvard', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (28, N'Jeppe.aaker@costco.com', N'Porterveien 2', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (29, N'Eirik.thomessen@costco.com', N'Affiegutt', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (30, N'kay.johnsen@costco.com', N'SnapKay', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (31, N'Oyvind.wilson@costco.com', N'Wilson', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (32, N'Joran.haines@costco.com', N'Jøran', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (33, N'Borge.rodsjo@costco.com', N'Børge Rødsjø', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (34, N'Johan.loudon@costco.com', N'Johan', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (35, N'astrid.hongset@costco.com', N'Astrid', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (36, N'Renate.Kristiansen@costco.com', N'Renna', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (37, N'fredrik.worren@costco.com', N'Beise sjarken', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (38, N'Ingrid.odegaard@costco.com', N'Daftbird', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (39, N'tatiana.igumnova@costco.com', N'Tanja', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (40, N'eirik.fosse@costco.com', N'Eirik Fosse', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (41, N'jonas.dalseth@costco.com', N'Jonas', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (42, N'jonatan.lund@costco.com', N'Super Lund', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (43, N'Simen.budde@costco.com ', N'Simen', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (44, N'Jostein.solaas@costco.com', N'jostein', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (45, N'constanza.hauge@costco.com', N'FortKickass', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (46, N'Tull@costco.com', N'Test', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (47, N'Torgeir.kruke@costco.com', N'Krukis', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (48, N'havard.nygard@costco.com', N'Håvard Nygård', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (49, N'espen.bjornsen@costco.com', N'Espen B', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (50, N'ole.dahl@costco.com', N'Ole Halvor Dahl', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (51, N'bendik.kristiansen@costco.com', N'Bendik', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (52, N'kirsti.brors@costco.com', N'Kirsti', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (53, N'olav.fykse@costco.com', N'Olav Fykse', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (54, N'roar.larsen@costco.com', N'Roar', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (55, N'markus.foss@costco.com', N'Markus', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (56, N'Stian.kilaas@costco.com', N'Stinis', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (57, N'laila.jossund@costco.com', N'Laila', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (58, N'richard.gjerde@costco.com', N'Richard', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (59, N'lars.owren@costco.com', N'Lowren', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (60, N'nils.thommesen@costco.com', N'Nils Andreas', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (61, N'sindre.nistad@costco.com', N'Sindre Nistad', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (62, N'Oyvind.kvalnes@costco.com', N'Øyvind', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (63, N'inger.hakedal@costco.com', N'ingerjo', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (64, N'peder.birkeland@costco.com', N'Peder', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (65, N'espen.oyan@costco.com', N'Espen Ø', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (66, N'Ane.otterlei@costco.com', N'Ane ', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (67, N'stian.hagensen@costco.com', N'Stian H', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (68, N'Irene.skanke@costco.com', N'Irene', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (69, N'eirik.vefsnmo@costco.com', N'Eirik V', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (70, N'kia.brekke@costco.com', N'Kia', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (71, N'kari.dahn@costco.com', N'Kari', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (72, N'John.solem@costco.com', N'JohnSverre', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (73, N'torbjorn.kvale@costco.com', N'Torbjørn', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (74, N'fredrik.worrem@costco.com', N'Fiffert', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (75, N'vegard.stuan@costco.com', N'VegardS', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (76, N'Lars.owren@costco.com', N'Lbowren', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (77, N'jens.lien@costco.com', N'Jens', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (78, N'marianne.slordahl@costco.com', N'Marianne', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (79, N'magnus.guttormsen@costco.com', N'MG', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (80, N'ann.kinge@costco.com', N'Ann Kinge', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (81, N'ingvald.skaug@costco.com', N'ingvald', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (82, N'kristian.kjerstad@costco.com', N'Kristian_Kjerstad', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (83, N'vegard.stenvik@costco.com', N'Vegard Stenvik', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (84, N'eivind.tafto@costco.com', N'Eivind T', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (85, N'stiasor@costco.com', N'Stian Sørli', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (86, N'torgeir.myhre@costco.com', N'Torgeir', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (87, N'Toril.aspaas@costco.com', N'Toril', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (88, N'Lars.grytten@costco.com', N'largehendrix', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (89, N'anders.bakkevold@costco.com', N'Anders B', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (90, N'magnus.eriksson@costco.com', N'Magnus', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (91, N'kenneth.rannem@costco.com', N'Rannem', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (92, N'Magnus.longva@costco.com', N'Magnus', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (93, N'rune.molden@costco.com', N'Rune "Amarone" Molden', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (94, N'rita.aursoy@costco.com', N'Rita', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (95, N'Mari.eggen@costco.com', N'Mari SE', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (96, N'anna.heistad@costco.com', N'Banana', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (97, N'Thomas.johansen@costco.com ', N'Monsieur Thomas', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (98, N'andrea.vesterhus@costco.com', N'Rudolf', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (99, N'test@costco.com', N'Reinbeer Rudolph', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (100, N'Sigrid.krishnan@costco.com', N'Dancer', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (101, N'Trude.arntsen@costco.com', N'Trujea', NULL, 0)
GO
INSERT [dbo].[Taster] ([TasterId], [EmailAddress], [DisplayName], [Password], [IsAdmin]) VALUES (102, N'arve.bremseth@costco.com', N'Arve', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Taster] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasting] ON 
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (1, N'Bouvet juleølsmaking 2017', N'Årlig juleølsmaking for Bouvet Nord', 0, 1, CAST(N'2017-11-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (3, N'Bouvet juleølsmaking 2018', N'Årlig juleølsmaking for Bouvet Nord', 0, 1, CAST(N'2018-11-23T07:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (6, N'Bouvet juleølsmaking 2016', N'Årlig juleølsmaking for Bouvet Nord', 0, 1, CAST(N'2016-11-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (7, N'Bouvet juleølsmaking 2014', N'Årlig juleølsmaking for Bouvet Nord', 0, 0, CAST(N'2014-11-23T02:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (8, N'Bouvet juleølsmaking 2015', N'Årlig juleølsmaking for Bouvet Nord', 0, 0, CAST(N'2015-11-23T01:01:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (13, N'Bouvet juleølsmaking 2019', N'Årlig juleølsmaking for Bouvet Nord', 0, 1, CAST(N'2019-11-29T16:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tasting] ([TastingId], [Name], [Description], [IsActive], [IsBlind], [TastingDate]) VALUES (14, N'Bouvet juleølsmaking 2020', N'Årlig juleølsmaking for Bouvet Nord', 0, 0, CAST(N'2020-12-03T18:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Tasting] OFF
GO
SET IDENTITY_INSERT [dbo].[TastingBeer] ON 
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (6, 1, 9, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (7, 1, 10, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (8, 1, 11, 3)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (9, 1, 12, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (10, 1, 13, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (11, 1, 14, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (12, 1, 15, 7)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (13, 1, 16, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (14, 1, 17, 9)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (15, 1, 18, 10)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (16, 1, 19, 11)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (17, 1, 20, 12)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (18, 1, 21, 13)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (19, 1, 22, 14)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (20, 1, 23, 15)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (21, 1, 24, 16)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (22, 1, 25, 17)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (23, 1, 26, 18)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (24, 1, 27, 19)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (25, 1, 28, 20)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (26, 1, 29, 21)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (27, 1, 30, 22)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (28, 1, 31, 23)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (47, 6, 30, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (48, 6, 32, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (49, 6, 33, 3)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (50, 6, 21, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (51, 6, 31, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (52, 6, 34, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (54, 6, 36, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (55, 6, 37, 9)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (56, 6, 38, 10)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (57, 6, 39, 11)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (58, 6, 40, 12)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (59, 6, 41, 13)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (60, 6, 42, 14)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (61, 6, 43, 15)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (62, 6, 44, 16)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (63, 6, 45, 17)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (64, 6, 46, 18)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (65, 6, 47, 19)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (66, 6, 48, 20)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (67, 7, 54, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (68, 7, 55, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (69, 7, 30, 3)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (70, 7, 56, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (71, 7, 57, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (72, 7, 46, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (73, 7, 58, 7)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (74, 7, 59, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (75, 7, 42, 9)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (76, 7, 48, 10)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (77, 7, 49, 11)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (78, 7, 38, 12)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (79, 7, 50, 13)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (80, 7, 51, 14)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (81, 7, 53, 15)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (82, 7, 47, 16)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (83, 7, 52, 17)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (84, 7, 39, 18)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (96, 3, 48, 3)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (97, 3, 72, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (98, 3, 60, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (99, 3, 61, 10)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (100, 3, 62, 7)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (101, 3, 57, 15)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (102, 3, 64, 17)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (103, 3, 65, 13)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (104, 3, 66, 14)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (105, 3, 67, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (106, 3, 68, 11)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (107, 3, 69, 18)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (108, 3, 70, 9)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (109, 3, 30, 19)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (110, 3, 21, 20)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (111, 3, 15, 16)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (112, 3, 71, 12)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (113, 3, 74, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (114, 3, 75, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (115, 3, 46, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (122, 13, 48, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (123, 13, 76, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (124, 13, 77, 3)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (125, 13, 9, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (126, 13, 78, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (127, 13, 79, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (128, 13, 94, 11)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (129, 13, 80, 7)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (130, 13, 81, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (131, 13, 82, 10)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (132, 13, 83, 12)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (133, 13, 84, 14)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (134, 13, 30, 13)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (135, 13, 93, 9)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (136, 13, 85, 15)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (137, 13, 86, 16)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (138, 13, 87, 17)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (139, 13, 59, 18)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (140, 13, 88, 19)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (141, 13, 89, 20)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (142, 13, 91, 21)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (143, 13, 92, 22)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (145, 14, 39, 1)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (146, 14, 95, 2)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (147, 14, 96, 4)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (148, 14, 97, 5)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (150, 14, 99, 8)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (151, 14, 100, 6)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (152, 14, 101, 7)
GO
INSERT [dbo].[TastingBeer] ([TastingBeerId], [TastingId], [BeerId], [SortOrder]) VALUES (153, 14, 102, 3)
GO
SET IDENTITY_INSERT [dbo].[TastingBeer] OFF
GO
SET IDENTITY_INSERT [dbo].[TastingResult] ON 
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (24, 7, 30, 3, N'Corsendonk Christmas Ale', N'Brouwerij Corsendonk', N'Belgian Dark Strong Ale', 8.5, N'http://www.corsendonk.com/', N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 4.25, 4.69, 4.5, 4.42, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (25, 7, 57, 3, N'Ringnes Julebokk', N'Ringnes Bryggeri', N'Doppelbock', 9, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/ringnes-julebokk/18866/', 4.06, 4.41, 4.06, 4.15, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (26, 7, 56, 3, N'Austmann Vintersolverv', N'Austmann (Hansa Borg)', N'Spice, Herb, or Vegetable Beer', 6.9, N'http://www.austmann.no/', N'https://www.ratebeer.com/beer/austmann-vintersolverv/297219/', 4.56, 4.31, 4.38, 4.45, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (27, 7, 55, 3, N'Gauloise Du Bocq Christmas', N'Brasserie Du Bocq', N'Belgian Dubbel', 8.1, N'http://www.bocq.be/', N'https://www.ratebeer.com/beer/du-bocq-christmas/81054/', 4.69, 4.56, 4.5, 4.61, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (28, 7, 54, 3, N'Cuvée de Noël', N'Brasserie St. Feuilien', N'Belgian Golden Strong Ale', 9, N'http://www.st-feuillien.com/', N'https://www.ratebeer.com/beer/st-feuillien-cuvee-de-noel/2407/', 4.81, 4.44, 4.75, 4.7, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (29, 7, 53, 1, N'Nordlands Juleøl', N'Ringnes Bryggeri', N'Altbier', 4.5, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/nordlands-juleol/113198/', 2.53, 3.65, 2.65, 2.84, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (30, 7, 52, 1, N'Lade Gaards Juleøl', N'Grans Bryggeri', N'Dunkles Bock', 4.7, N'http://www.grans.no/', N'https://www.ratebeer.com/beer/lade-gaards-juleol/132988/', 2.06, 3.41, 2.29, 2.46, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (31, 7, 51, 2, N'Godt Nytt År', N'Torgeir Kruke', N'Robust Porter', 6.5, NULL, NULL, 3, 3.53, 3.29, 3.2, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (32, 7, 50, 2, N'God Jul', N'Torgeir Kruke', N'American Amber Ale', 7.5, NULL, NULL, 3.47, 3.41, 3.47, 3.46, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (33, 7, 49, 3, N'Dahls Juleøl Sterk', N'E.C. Dahls Bryggeri', N'Vienna Lager', 6.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-juleol-6-5/11257/', 3.24, 3.88, 3.41, 3.44, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (34, 7, 48, 1, N'Dahls Julebrygg', N'E.C. Dahls Bryggeri', N'Vienna Lager', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-julebrygg/11254/', 3.12, 4.24, 3.59, 3.52, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (35, 7, 47, 1, N'Ringnes Juleøl', N'Ringnes Bryggeri', N'Vienna Lager', 4.5, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/ringnes-juleol-4-5/18297/', 2.41, 3.18, 2.71, 2.68, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (36, 7, 46, 1, N'Aass Juleøl', N'Aass Bryggeri', N'American Amber Ale', 4.5, N'http://www.aass.no/', N'https://www.ratebeer.com/beer/aass-juleol-4-5/1030/', 3.94, 4.29, 4.06, 4.06, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (37, 7, 42, 3, N'Hansa Ekstra Vellagret Julebrygg', N'Hansa Borg Bryggerier', N'Helles Bock', 6.5, N'http://www.hansaborg.no/', N'https://www.ratebeer.com/beer/hansa-ekstra-vellagret-julebrygg-6-5/52874/', 3.69, 3.75, 3.69, 3.7, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (38, 7, 39, 1, N'Dahls Juleøl', N'E.C. Dahls Bryggeri', N'Winter Seasonal Beer', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-juleol-4-5/11255/', 2.29, 2.88, 2.47, 2.48, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (39, 7, 38, 3, N'Lade Gaards Juleøl Sterk Type', N'Grans Bryggeri', N'Traditional Bock', 6.5, N'http://www.grans.no/', N'https://www.ratebeer.com/beer/lade-gaards-juleol-sterk-type/157318/', 3.29, 3.65, 3.47, 3.42, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (40, 7, 58, 3, N'Haandbryggeriet Nissefar', N'Haandbryggeriet', N'Old Ale', 7, N'http://www.haandbryggeriet.net/', N'https://www.ratebeer.com/beer/haandbryggeriet-nissefar/52948/', 4.06, 3.88, 4.06, 4.01, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (41, 7, 59, 3, N'Het Anker Gouden Carolus Christmas', N'Brouwerij Het Anker', N'Belgian Dark Strong Ale', 10.5, N'http://www.hetanker.be/', N'https://www.ratebeer.com/beer/het-anker-gouden-carolus-christmas-noel/18375/', 3.71, 4.53, 3.76, 3.93, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (42, 6, 21, 3, N'Delirium Noël', N'Brouwerij Huyghe', N'Belgian Dark Strong Ale', 10, N'http://www.delirium.be/', N'https://www.ratebeer.com/beer/delirium-noel/5998/', 6, 6.29, 6.12, 6.1, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (43, 6, 46, 1, N'Aass Juleøl', N'Aass Bryggeri', N'American Amber Ale', 4.5, N'http://www.aass.no/', N'https://www.ratebeer.com/beer/aass-juleol-4-5/1030/', 2.79, 4.12, 3, 3.18, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (44, 6, 45, 1, N'Nøgne Ø Hvit Jul', N'Nøgne Ø (Hansa Borg)', N'Weissbier', 4.5, N'https://www.nogne-o.com/', N'https://www.ratebeer.com/beer/nogne-o-hvit-jul/369346/', 3.92, 2.92, 3.17, 3.48, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (45, 6, 44, 3, N'Meteor Bière de Noël', N'Brasserie Meteor', N'Premium American Lager', 5.8, N'http://www.brasserie-meteor.fr/', N'https://www.ratebeer.com/beer/meteor-biere-de-noel/9842/', 3.71, 3.21, 3.33, 3.49, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (46, 6, 43, 1, N'Gulating Julebjorr', N'Færder Mikrobryggeri', N'Spice, Herb, or Vegetable Beer', 4.7, N'http://faerdermikrobryggeri.com/', N'https://www.ratebeer.com/beer/gulating-julebjorr/373318/', 3.75, 3.5, 3.58, 3.64, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (47, 6, 42, 3, N'Hansa Ekstra Vellagret Julebrygg', N'Hansa Borg Bryggerier', N'Helles Bock', 6.5, N'http://www.hansaborg.no/', N'https://www.ratebeer.com/beer/hansa-ekstra-vellagret-julebrygg-6-5/52874/', 4.08, 4.54, 3.88, 4.14, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (48, 6, 41, 3, N'Økologisk Juleøl', N'Herslev Bryghus', N'Belgian Blond Ale', 6, N'http://www.herslevbryghus.dk/', N'https://www.ratebeer.com/beer/herslev-okologisk-juleol/112170/', 4.33, 4.17, 4.08, 4.23, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (49, 6, 40, 1, N'Vårres Jul', N'Stjørdalsbryggeriet', N'Traditional Bock', 4.7, N'http://stjordalsbryggeriet.no/', N'https://www.ratebeer.com/beer/stjordalsbryggeriet-varres-juleol/492807/', 3.67, 5.08, 4.42, 4.21, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (50, 6, 39, 1, N'Dahls Juleøl', N'E.C. Dahls Bryggeri', N'Winter Seasonal Beer', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-juleol-4-5/11255/', 4.62, 5.75, 4.67, 4.92, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (51, 6, 38, 3, N'Lade Gaards Juleøl Sterk Type', N'Grans Bryggeri', N'Traditional Bock', 6.5, N'http://www.grans.no/', N'https://www.ratebeer.com/beer/lade-gaards-juleol-sterk-type/157318/', 5, 5.67, 5, 5.17, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (52, 6, 37, 1, N'Kringly Kris Juleporter', N'Lervig Aktiebryggeri', N'Winter Seasonal Beer', 4.7, N'http://lervig.no/', N'4.7', 5, 5.75, 5.25, 5.25, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (53, 6, 36, 2, N'Torgeir''s Juleale', N'Torgeir Kruke', N'American Brown Ale', 6.5, NULL, NULL, 5.46, 4.88, 5.58, 5.35, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (54, 6, 35, 2, N'Rød Svans', N'Unknown', N'Specialty Beer', 5.5, NULL, NULL, 5.25, 5.67, 5.54, 5.43, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (55, 6, 34, 3, N'Abundance Baltic Cherry Porter', N'Reneissance Brewing', N'Robust Porter', 7.6, N'http://www.renaissancebrewing.co.nz/', N'https://www.ratebeer.com/beer/renaissance-abundance-baltic-cherry-porter/240384/', 5.88, 6.29, 5.92, 5.99, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (56, 6, 33, 2, N'Dobbel Julebokk', N'Andreas Skaret', N'Specialty Beer', 8.9, NULL, NULL, 6, 6.29, 6.38, 6.17, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (57, 6, 32, 3, N'Santa''s Little Helper 2016', N'Mikkeller APS', N'Belgian Dark Strong Ale', 10.9, N'http://mikkeller.dk/', N'https://www.ratebeer.com/beer/mikkeller-santas-little-helper-2016/457785/', 6.42, 6.75, 6.75, 6.58, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (58, 6, 31, 3, N'St. Bernardus Christmas Ale', N'Brewery St.Bernard', N'Belgian Dark Strong Ale', 10, N'http://www.sintbernardus.be/', N'https://www.ratebeer.com/beer/st-bernardus-christmas-ale/65814/', 6, 6.04, 6.04, 6.02, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (59, 6, 30, 3, N'Corsendonk Christmas Ale', N'Brouwerij Corsendonk', N'Belgian Dark Strong Ale', 8.5, N'http://www.corsendonk.com/', N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 6.71, 7.04, 6.83, 6.82, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (60, 6, 47, 1, N'Ringnes Juleøl', N'Ringnes Bryggeri', N'Vienna Lager', 4.5, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/ringnes-juleol-4-5/18297/', 2.79, 4.12, 2.92, 3.16, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (61, 6, 48, 1, N'Dahls Julebrygg', N'E.C. Dahls Bryggeri', N'Vienna Lager', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-julebrygg/11254/', 2.75, 3.29, 2.54, 2.83, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (62, 1, 9, 1, N'Tuftkall Juleøl', N'Bryggeriet Frøya', N'Vienna Lager', 4.7, N'http://bryggerietfroya.no/', N'https://www.ratebeer.com/beer/froya-tuftkall/575908/', 5.69, 6.78, 6, 6.04, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (63, 1, 29, 3, N'Dommpapp', N'Inderøy Gårdsbryggeri', N'Belgian Tripel', 10.2, N'http://www.igb.no/', N'https://www.ratebeer.com/beer/inderoy-dommpapp/563188/', 5.35, 5.39, 5.42, 5.38, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (64, 1, 28, 3, N'The Holy Bock', N'Berentsens Brygghus', N'Doppelbock', 7.5, N'https://www.berentsens.no/', N'https://www.ratebeer.com/beer/berentsens-the-holy-bock/561621/', 5.33, 6.8, 5.7, 5.79, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (65, 1, 27, 3, N'Helge', N'Hornbeer', N'Specialty Beer', 10, N'https://hornbeer.dk/', N'https://www.ratebeer.com/beer/hornbeer-helge/129784/', 4.13, 5.58, 4.23, 4.52, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (66, 1, 26, 2, N'Julebokk 2017', N'Andreas Skaret', N'Specialty Beer', 8.5, NULL, NULL, 6.07, 6.17, 6.23, 6.14, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (67, 1, 25, 3, N'Noel de Calabaza', N'Jolly Pumpkin Brewery', N'Belgian Dark Strong Ale', 9, N'http://brewery.jollypumpkin.com/', N'https://www.ratebeer.com/beer/jolly-pumpkin-noel-de-calabaza/80393/', 3.81, 4.52, 3.87, 4, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (68, 1, 24, 3, N'Baladin Nöel Liquirizia', N'Birra Baladin', N'Belgian Dark Strong Ale', 9, N'http://www.baladin.it/en/', N'https://www.ratebeer.com/beer/baladin-noeel-liquirizia/568889/', 5.41, 5.97, 5.63, 5.6, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (69, 1, 23, 2, N'Søt Jul', N'Torgeir Kruke', N'Sweet Stout', 5, NULL, NULL, 5.31, 6.13, 5.44, 5.55, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (70, 1, 22, 2, N'Dark Horse', N'Jarle Hildrum', N'Specialty Beer', 5.9, NULL, NULL, 4.44, 5.91, 4.72, 4.88, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (71, 1, 21, 3, N'Delirium Noël', N'Brouwerij Huyghe', N'Belgian Dark Strong Ale', 10, N'http://www.delirium.be/', N'https://www.ratebeer.com/beer/delirium-noel/5998/', 5.5, 5.7, 5.4, 5.52, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (72, 1, 30, 3, N'Corsendonk Christmas Ale', N'Brouwerij Corsendonk', N'Belgian Dark Strong Ale', 8.5, N'http://www.corsendonk.com/', N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 6.1, 6.4, 6.13, 6.18, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (73, 1, 20, 3, N'Chocolate Salty Christmas Balls', N'Cervisiam Brewery', N'Imperial Stout', 10, N'https://www.cervisiam.no/', N'https://www.ratebeer.com/beer/cervisiam-chocolate-salty-christmas-balls/561626/', 5.44, 6.88, 5.53, 5.82, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (74, 1, 18, 2, N'BP2', N'Torgeir Kruke', N'Specialty Beer', 7.5, NULL, NULL, 6.69, 6.63, 6.47, 6.62, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (75, 1, 17, 3, N'Hoppy Lovin Christmas IPA', N'Mikkeller APS', N'American IPA', 7.8, N'http://mikkeller.dk/', N'https://www.ratebeer.com/beer/mikkeller-hoppy-happy-lovin-christmas/155165/', 5.66, 5.38, 5.53, 5.56, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (76, 1, 16, 3, N'Hvor er nisselua mi?', N'Little Brother Brewing', N'Imperial Stout', 10, N'https://www.littlebrotherbrew.com/', N'https://www.ratebeer.com/beer/little-brother-hvor-er-nisselua-mi/562874/', 5, 6.35, 5.16, 5.38, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (77, 1, 15, 3, N'Store Bjørn', N'E.C. Dahls Bryggeri', N'Belgian Tripel', 9, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/e-c-dahls-store-bjorn-juleol/464078/', 4.94, 4.45, 4.77, 4.78, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (78, 1, 14, 3, N'Santa Clausthaler', N'Binding Brauerei', N'Mild', 0, N'https://www.binding.de/', N'https://www.ratebeer.com/beer/santa-clausthaler/18656/', 3.97, 3.94, 3.94, 3.96, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (79, 1, 13, 1, N'Julekveld', N'Nøgne Ø (Hansa Borg)', N'Specialty Beer', 4.7, N'https://www.nogne-o.com/', N'https://www.ratebeer.com/beer/nogne-o-julekveld/369350/', 4.45, 6.15, 5.06, 5.03, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (80, 1, 12, 1, N'En Koselig Konjakk Juleøl', N'Reins Kloster', N'Specialty Beer', 4.7, N'https://reinskloster.no/reins-kloster-ol/', N'https://www.ratebeer.com/beer/reins-kloster-en-koselig-konjakk-juleol/570837/', 4.15, 4.36, 4.21, 4.22, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (81, 1, 11, 1, N'Hovmesteren Dark Christmas Ale', N'7 Fjell', N'British Brown Ale', 4.7, N'https://www.7fjellbryggeri.com/', N'https://www.ratebeer.com/beer/7-fjell-hovmesteren-dark-christmas-ale/458010/', 4.71, 5.06, 4.68, 4.79, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (82, 1, 10, 1, N'Vinterblot', N'Ølve på Egge Bryggeri', N'Specialty Beer', 4.5, N'http://www.olveegge.no/', N'https://www.ratebeer.com/beer/olve-vinterblot-olves-juleol-45/95552/', 3.03, 5.19, 3.75, 3.75, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (83, 1, 19, 3, N'Tannjul 2017', N'Sagene Bryggeri', N'Sweet Stout', 8, N'http://www.sagenebryggeri.com/', N'https://www.ratebeer.com/beer/sagene-tannjul/566173/', 6.25, 6.66, 6.31, 6.37, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (84, 1, 31, 3, N'St. Bernardus Christmas Ale', N'Brewery St.Bernard', N'Belgian Dark Strong Ale', 10, N'http://www.sintbernardus.be/', N'https://www.ratebeer.com/beer/st-bernardus-christmas-ale/65814/', 5.94, 6.52, 6.06, 6.12, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (85, 3, 15, 3, N'Store Bjørn', N'E.C. Dahls Bryggeri', N'Belgian Tripel', 9, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/e-c-dahls-store-bjorn-juleol/464078/', 4.88, 4.83, 4.88, 4.87, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (86, 3, 72, 1, N'Tuborg Juleøl', N'Ringnes Bryggeri', N'Vienna Lager', 4.6, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/tuborg-juleol-4-5/52851/', 5.55, 6.78, 5.88, 5.94, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (87, 3, 71, 3, N'Vixen', N'Hogna Brygg', N'American Amber Ale', 7, N'https://hognabrygg.no/', N'https://www.ratebeer.com/beer/hogna-vixen/563923/', 5.66, 6.11, 5.96, 5.85, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (88, 3, 70, 3, N'Fireside', N'Edge Brewing', N'Brown Porter', 6.9, N'http://www.edgebrewing.com/', N'https://www.ratebeer.com/beer/edge-brewing-fireside/671168/', 4.73, 5.84, 4.95, 5.06, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (89, 3, 69, 3, N'Kerst Pater Special Christmas', N'Brouwerij Van Den Bossche', N'Belgian Dark Strong Ale', 9, N'https://www.paterlieven.be/', N'https://www.ratebeer.com/beer/kerst-pater-special-christmas/11808/', 4.75, 5.88, 5.21, 5.15, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (90, 3, 68, 3, N'Christmas Nights', N'Beerbliotek', N'Robust Porter', 7, N'http://beerbliotek.com/', N'https://www.ratebeer.com/beer/beerbliotek-christmas-nights/238236/', 5.3, 5.62, 5.15, 5.34, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (91, 3, 67, 3, N'Lusse Lelle', N'Brekeriet', N'Berliner Weisse', 6.5, N'http://www.brekeriet.se/', N'https://www.ratebeer.com/beer/brekeriet-lusse-lelle/559828/', 2.9, 2.9, 3.02, 2.93, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (92, 3, 66, 3, N'Tannjul 2018', N'Sagene Bryggeri', N'Robust Porter', 8, N'http://www.sagenebryggeri.com/', N'https://www.ratebeer.com/beer/sagene-tannjul/566173/', 5.91, 6.12, 5.82, 5.94, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (93, 3, 65, 3, N'Six Degrees North Snowy 2018', N'Six Degrees North', N'Belgian Dark Strong Ale', 7.5, N'http://sixdnorth.co.uk/', N'https://www.ratebeer.com/beer/six-degrees-north-snowy-2018-7-5/671851/', 5.86, 6.11, 5.86, 5.92, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (94, 3, 64, 3, N'Fattigmainn', N'Inderøy Gårdsbryggeri', N'American Barleywine', 10.2, N'http://www.igb.no/', N'https://www.ratebeer.com/beer/inderoy-fattigmainn/671838/', 5.21, 4.88, 5.12, 5.11, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (95, 3, 62, 3, N'Põhjala Leevike', N'Põhjala', N'Wild Specialty Beer', 6.5, N'https://pohjalabeer.com/', N'https://www.ratebeer.com/beer/pohjala-leevike/651055/', 4.27, 5.7, 4.39, 4.66, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (96, 3, 61, 3, N'Ølkymisten Gingerbread Maniac', N'7 Fjell', N'British Brown Ale', 7, N'https://www.7fjellbryggeri.com/', N'https://www.ratebeer.com/beer/olkymisten-gingerbread-maniac/671109/', 6.27, 6.12, 6.1, 6.19, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (97, 3, 60, 3, N'Egils Malt Jólabjór', N'Ölgerðin Egill Skallagrímsson', N'Sweet Stout', 5.7, N'http://www.olgerdin.is/en/', N'https://www.ratebeer.com/beer/egils-malt-jolabjor/28392/', 5.93, 6.27, 5.98, 6.03, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (98, 3, 57, 3, N'Ringnes Julebokk', N'Ringnes Bryggeri', N'Doppelbock', 9, N'http://www.ringnes.no/', N'https://www.ratebeer.com/beer/ringnes-julebokk/18866/', 5.67, 6.1, 5.69, 5.78, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (99, 3, 48, 1, N'Dahls Julebrygg', N'E.C. Dahls Bryggeri', N'Vienna Lager', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-julebrygg/11254/', 4.13, 5.63, 4.28, 4.55, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (100, 3, 46, 1, N'Aass Juleøl', N'Aass Bryggeri', N'American Amber Ale', 4.5, N'http://www.aass.no/', N'https://www.ratebeer.com/beer/aass-juleol-4-5/1030/', 4.23, 5.77, 4.48, 4.68, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (101, 3, 30, 3, N'Corsendonk Christmas Ale', N'Brouwerij Corsendonk', N'Belgian Dark Strong Ale', 8.5, N'http://www.corsendonk.com/', N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 5.98, 6.64, 6.44, 6.26, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (102, 3, 21, 3, N'Delirium Noël', N'Brouwerij Huyghe', N'Belgian Dark Strong Ale', 10, N'http://www.delirium.be/', N'https://www.ratebeer.com/beer/delirium-noel/5998/', 6.79, 6.79, 6.72, 6.77, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (103, 3, 74, 2, N'Grizzlybjørn', N'Torgeir Kruke', N'American Brown Ale', 5.8, NULL, NULL, 5.52, 6.03, 5.35, 5.6, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (104, 3, 75, 2, N'Humlerød Jul', N'Torgeir Kruke', N'Specialty IPA: Red IPA', 6.5, NULL, NULL, 5.23, 5.53, 5.36, 5.34, N'Homebrew')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (105, 13, 9, 1, N'Tuftkall Juleøl', N'Bryggeriet Frøya', N'Vienna Lager', 4.7, N'http://bryggerietfroya.no/', N'https://www.ratebeer.com/beer/froya-tuftkall/575908/', 4.21, 5.62, 4.47, 4.62, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (106, 13, 92, 3, N'Jule Mælk', N'To Øl', N'Russian Imperial Stout', 15, N'https://toolbeer.dk/', N'https://www.ratebeer.com/beer/to-ol-jule-maelk/235066/', 5.89, 6.74, 5.91, 6.11, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (107, 13, 91, 3, N'Hipster for Christmas', N'Lervig Aktiebryggeri', N'American Barleywine', 12, N'http://lervig.no/', N'https://www.ratebeer.com/beer/lervig-hipster-for-christmas/782172/', 4.33, 5.74, 4.34, 4.68, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (108, 13, 89, 3, N'Bush de Noël Premium', N'Dubussion', N'Belgian Golden Strong Ale', 12, N'http://www.br-dubuisson.com/', N'https://www.ratebeer.com/beer/dubuisson-scaldis-bush-de-noel-premium/54258/', 5.85, 6, 5.77, 5.87, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (109, 13, 88, 3, N'Christmas Break', N'The Piggy Brewing Company', N'American Strong Ale', 11, N'https://www.thepiggybrewingcompany.com/', N'https://www.ratebeer.com/beer/the-piggy-christmas-break/776052/', 5.76, 5.92, 5.63, 5.77, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (110, 13, 87, 3, N'Julequad (2016)', N'Nøgne Ø (Hansa Borg)', N'Trappist Single', 10, N'https://www.nogne-o.com/', N'https://www.ratebeer.com/beer/nogne-o-julequad/452135/', 6.54, 7.15, 6.5, 6.68, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (111, 13, 86, 3, N'Klaas Christmas', N'Kaapse Brouwers', N'American Barleywine', 9.8, N'https://www.kaapsebrouwers.nl/', N'https://www.ratebeer.com/beer/kaapse-klaas/310374/', 6.74, 6.82, 6.71, 6.75, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (112, 13, 85, 3, N'Sankt Olav', N'E.C. Dahls Bryggeri', N'Winter Seasonal Beer', 9.1, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/e-c-dahls-sankt-olav-juleol/785303/', 6.31, 7, 6.38, 6.5, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (113, 13, 84, 3, N'Nöel Chocolat', N'Birra Baladin', N'Belgian Golden Strong Ale', 9, N'http://www.baladin.it/en/', N'https://www.ratebeer.com/beer/baladin-noeel-chocolat/47894/', 6.13, 6.28, 5.97, 6.13, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (114, 13, 83, 3, N'Winter Ale', N'Einstök Ölgerð', N'Fruit and Spice Beer', 8, N'https://einstokbeer.com/', N'https://www.ratebeer.com/beer/einstoek-icelandic-winter-ale/564980/', 4.69, 6.77, 5.03, 5.29, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (115, 13, 82, 3, N'Blitzen Juleipa', N'Hogna Brygg', N'American IPA', 7.4, N'https://hognabrygg.no/', N'https://www.ratebeer.com/beer/hogna-blitzen-juleipa-2019/783932/', 5.18, 5.62, 5, 5.24, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (116, 13, 81, 3, N'Røyklagt', N'Stolt Bryggeri', N'Specialty Smoked Beer', 7, N'https://www.stoltbryggeri.com/', N'https://www.ratebeer.com/beer/stolt-royklagt/707043/', 3.56, 4.1, 3.72, 3.73, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (117, 13, 80, 3, N'Santa''s Malty Helper', N'Røros Bryggeri', N'Dunkles Bock', 7, N'https://rorosbryggeri.no/', N'https://www.ratebeer.com/beer/roros-santa-s-malty-helper/771454/', 5.22, 6.32, 5.51, 5.57, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (118, 13, 79, 3, N'Jul #1', N'Bøgedal Brew', N'Belgian Blond Ale', 5.9, N'https://www.boegedal.com/', N'https://www.ratebeer.com/beer/bogedal-nr-0579-jul-1/574419/', 5.42, 5.88, 5.46, 5.55, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (119, 13, 78, 3, N'Glühkriek', N'Brouwerij Liefmans', N'Fruit Beer', 6.5, N'https://www.liefmans.be/en', N'https://www.ratebeer.com/beer/liefmans-gluehkriek/6428/', 5.49, 5.92, 5.41, 5.58, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (120, 13, 77, 1, N'Mr. Winterbottom', N'7 Fjell', N'American Brown Ale', 4.7, N'https://www.7fjellbryggeri.com/', N'https://www.ratebeer.com/beer/7-fjell-mr-winterbottom/664702/', 5.49, 6.23, 5.59, 5.7, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (121, 13, 76, 1, N'Cappuccino Snøstorm Stout', N'Reins Kloster', N'Sweet Stout', 4.5, N'https://reinskloster.no/reins-kloster-ol/', NULL, 4.77, 6.03, 4.74, 5.08, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (122, 13, 59, 3, N'Het Anker Gouden Carolus Christmas', N'Brouwerij Het Anker', N'Belgian Dark Strong Ale', 10.5, N'http://www.hetanker.be/', N'https://www.ratebeer.com/beer/het-anker-gouden-carolus-christmas-noel/18375/', 5.56, 7.41, 5.87, 6.1, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (123, 13, 48, 1, N'Dahls Julebrygg', N'E.C. Dahls Bryggeri', N'Vienna Lager', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-julebrygg/11254/', 4.11, 6.37, 4.63, 4.8, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (124, 13, 30, 3, N'Corsendonk Christmas Ale', N'Brouwerij Corsendonk', N'Belgian Dark Strong Ale', 8.5, N'http://www.corsendonk.com/', N'https://www.ratebeer.com/beer/corsendonk-christmas-ale/996/', 6.51, 6.87, 6.56, 6.62, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (125, 13, 93, 3, N'Juleøl 2019', N'Andreas Skaret', N'Belgian Dark Strong Ale', 9, NULL, NULL, 4.72, 5.45, 4.81, 4.93, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (126, 13, 94, 3, N'Rozhdevsto Brezhnev', N'Torgeir Kruke', N'Russian Imperial Stout', 8, NULL, NULL, 6.18, 6.72, 6.24, 6.33, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (127, 14, 39, 1, N'Dahls Juleøl', N'E.C. Dahls Bryggeri', N'Winter Seasonal Beer', 4.5, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/dahls-juleol-4-5/11255/', 5.1, 6.58, 5.58, 5.59, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (128, 14, 95, 1, N'Fairytale of Røros', N'Røros Bryggeri', N'Old Ale', 4.7, N'https://rorosbryggeri.no/', N'https://www.ratebeer.com/beer/roros-fairytale-of-roros/792186/', 5.4, 6.57, 5.69, 5.76, N'Regular')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (129, 14, 96, 3, N'Joule Winter Warmer', N'Monkey Brew', N'Winter Seasonal Beer', 6, N'https://www.monkeybrew.no/', N'https://www.ratebeer.com/beer/monkey-brew-joule/390485/', 5.9, 6.75, 5.96, 6.12, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (130, 14, 97, 3, N'Kong Vinter', N'E.C. Dahls Bryggeri', N'Dunkles Bock', 7, N'https://www.ecdahls.no/', N'https://www.ratebeer.com/beer/e-c-dahls-kong-vinter/870056/', 6.22, 6.76, 6.14, 6.33, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (131, 14, 99, 3, N'Gryla', N'Cervisiam Brewery', N'Sweet Stout', 12, N'https://www.cervisiam.no/', N'https://www.ratebeer.com/beer/cervisiam-gryla-2020/872338/', 5.52, 6.54, 5.69, 5.81, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (132, 14, 100, 3, N'Julebokk', N'Mack Bryggeri', N'Dunkles Bock', 9, N'https://www.mack.no/', N'https://www.ratebeer.com/beer/mack-julebokk/670508/', 6.79, 7.14, 6.91, 6.91, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (133, 14, 101, 3, N'Ashes to Ashes', N'Amundsen Bryggeri', N'Sweet Stout', 10.5, N'https://www.amundsenbrewery.com/', N'https://www.ratebeer.com/beer/amundsen-ashes-to-ashes/780557/', 6.19, 6.93, 6.33, 6.41, N'High ABV')
GO
INSERT [dbo].[TastingResult] ([TastingBeerResultId], [TastingId], [BeerId], [BeerClassId], [BeerName], [BreweryName], [BeerStyle], [Abv], [BreweryUrl], [RateBeerUrl], [ScoreTaste], [ScoreAppearance], [ScoreOverall], [ScoreFinal], [BeerClassName]) VALUES (134, 14, 102, 1, N'Mørk Juleøl', N'7 Fjell', N'British Brown Ale', 4.7, N'https://www.7fjellbryggeri.com/', N'https://www.ratebeer.com/beer/7-fjell-mork-juleol/875751/', 4.82, 5.47, 4.82, 4.98, N'Regular')
GO
SET IDENTITY_INSERT [dbo].[TastingResult] OFF
GO
SET IDENTITY_INSERT [dbo].[Vote] ON 
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (50, 9, 1, 4, 5.69, 6.78, 6, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (51, 10, 1, 4, 3.03, 5.19, 3.75, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (52, 11, 1, 4, 4.71, 5.06, 4.68, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (53, 12, 1, 4, 4.15, 4.36, 4.21, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (54, 13, 1, 4, 4.45, 6.15, 5.06, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (55, 14, 1, 4, 3.97, 3.94, 3.94, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (56, 15, 1, 4, 4.94, 4.45, 4.77, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (57, 16, 1, 4, 5, 6.35, 5.16, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (58, 17, 1, 4, 5.66, 5.38, 5.53, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (59, 18, 1, 4, 6.69, 6.63, 6.47, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (60, 19, 1, 4, 6.25, 6.66, 6.31, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (61, 20, 1, 4, 5.44, 6.88, 5.53, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (62, 21, 1, 4, 5.5, 5.7, 5.4, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (63, 22, 1, 4, 4.44, 5.91, 4.72, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (64, 23, 1, 4, 5.31, 6.13, 5.44, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (65, 24, 1, 4, 5.41, 5.97, 5.63, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (66, 25, 1, 4, 3.81, 4.52, 3.87, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (67, 26, 1, 4, 6.07, 6.17, 6.23, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (68, 27, 1, 4, 4.13, 5.58, 4.23, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (69, 28, 1, 4, 5.33, 6.8, 5.7, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (70, 29, 1, 4, 5.35, 5.39, 5.42, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (71, 30, 1, 4, 6.1, 6.4, 6.13, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (72, 31, 1, 4, 5.94, 6.52, 6.06, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (76, 30, 6, 4, 6.71, 7.04, 6.83, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (77, 32, 6, 4, 6.42, 6.75, 6.75, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (78, 33, 6, 4, 6, 6.29, 6.38, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (79, 21, 6, 4, 6, 6.29, 6.12, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (80, 31, 6, 4, 6, 6.04, 6.04, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (81, 34, 6, 4, 5.88, 6.29, 5.92, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (82, 35, 6, 4, 5.25, 5.67, 5.54, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (83, 36, 6, 4, 5.46, 4.88, 5.58, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (84, 37, 6, 4, 5, 5.75, 5.25, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (85, 38, 6, 4, 5, 5.67, 5, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (86, 39, 6, 4, 4.62, 5.75, 4.67, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (87, 40, 6, 4, 3.67, 5.08, 4.42, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (88, 41, 6, 4, 4.33, 4.17, 4.08, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (89, 42, 6, 4, 4.08, 4.54, 3.88, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (90, 43, 6, 4, 3.75, 3.5, 3.58, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (91, 44, 6, 4, 3.71, 3.21, 3.33, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (92, 45, 6, 4, 3.92, 2.92, 3.17, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (93, 46, 6, 4, 2.79, 4.12, 3, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (94, 47, 6, 4, 2.79, 4.12, 2.92, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (95, 48, 6, 4, 2.75, 3.29, 2.54, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (96, 54, 7, 4, 4.81, 4.44, 4.75, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (97, 55, 7, 4, 4.69, 4.56, 4.5, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (98, 30, 7, 4, 4.25, 4.69, 4.5, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (99, 56, 7, 4, 4.56, 4.31, 4.38, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (100, 57, 7, 4, 4.06, 4.41, 4.06, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (101, 46, 7, 4, 3.94, 4.29, 4.06, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (102, 58, 7, 4, 4.06, 3.88, 4.06, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (103, 59, 7, 4, 3.71, 4.53, 3.76, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (104, 42, 7, 4, 3.69, 3.75, 3.69, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (105, 48, 7, 4, 3.12, 4.24, 3.59, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (106, 49, 7, 4, 3.24, 3.88, 3.41, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (107, 38, 7, 4, 3.29, 3.65, 3.47, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (108, 50, 7, 4, 3.47, 3.41, 3.47, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (109, 51, 7, 4, 3, 3.53, 3.29, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (110, 53, 7, 4, 2.53, 3.65, 2.65, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (111, 47, 7, 4, 2.41, 3.18, 2.71, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (112, 52, 7, 4, 2.06, 3.41, 2.29, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (113, 39, 7, 4, 2.29, 2.88, 2.47, N'Added by Admin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (145, 72, 3, 12, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (146, 72, 3, 43, 6, 7, 7, N'🎅🍻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (147, 72, 3, 14, 5, 7, 5.5, N'Hello world')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (148, 72, 3, 16, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (149, 72, 3, 39, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (150, 72, 3, 23, 2, 6, 2, N'Slappe saker')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (151, 72, 3, 19, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (152, 72, 3, 33, 7, 8, 8, N'Mer!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (153, 72, 3, 42, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (154, 72, 3, 13, 8, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (155, 72, 3, 41, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (156, 72, 3, 34, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (157, 72, 3, 32, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (158, 72, 3, 40, 3, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (159, 72, 3, 30, 5, 8, 5, N'Fin farge, lite smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (160, 72, 3, 29, 3, 1, 3, N'Ok.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (161, 72, 3, 17, 3, 3, 3, N'Dahls Julebrygg ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (162, 72, 3, 45, 8, 7, 8, N'Overraskende')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (163, 72, 3, 21, 8, 7, 8, N'Va itj så væsst')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (164, 72, 3, 35, 4, 9, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (165, 72, 3, 36, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (166, 72, 3, 24, 6, 7, 6, N'Akkurat passelig i kategorien ''lettdrikkelig juleøl'' fin farge, lukt og smak, men alle kunne vært litt mer markerte. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (167, 72, 3, 44, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (168, 72, 3, 28, 3, 5, 4, N'🥴')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (169, 72, 3, 38, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (170, 72, 3, 37, 5.5, 6.5, 5.8, N'Skum, rød brun ish')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (171, 72, 3, 18, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (172, 72, 3, 46, 8, 8, 8, N'Jul')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (173, 72, 3, 31, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (174, 46, 3, 19, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (175, 46, 3, 42, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (176, 46, 3, 30, 6, 8, 6, N'Fin farge, god smak. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (177, 46, 3, 21, 10, 7, 10, N'Vel ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (178, 46, 3, 16, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (179, 46, 3, 14, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (180, 46, 3, 41, 5, 7, 5, N'Samme som forrige?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (181, 46, 3, 40, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (182, 46, 3, 12, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (183, 46, 3, 23, 4, 7, 5, N'Tja... mere jul enn forrige')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (184, 46, 3, 39, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (185, 46, 3, 24, 4, 5, 5, N'Litt slapp, bismak som ligner Ringnes')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (186, 46, 3, 34, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (187, 46, 3, 28, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (188, 46, 3, 44, 2, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (189, 46, 3, 43, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (190, 46, 3, 37, 4, 6, 4.5, N'Lite smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (191, 46, 3, 13, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (192, 46, 3, 32, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (193, 46, 3, 29, 0, 1, 0, N'Mindre ok.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (194, 48, 3, 19, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (195, 46, 3, 36, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (196, 46, 3, 35, 2, 8, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (197, 46, 3, 18, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (198, 46, 3, 38, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (199, 46, 3, 45, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (200, 46, 3, 17, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (201, 46, 3, 33, 5, 6, 4, N'Meh')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (202, 46, 3, 31, 3, 6, 3, N'Ja ja...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (203, 46, 3, 46, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (204, 48, 3, 24, 5, 5, 5, N'Fortsatt noe slapp, men mer fruktig og bedre lukt enn de forrige. Dahls? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (205, 48, 3, 42, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (206, 48, 3, 21, 7, 10, 7, N'Trur vi e på nr. 1 enno')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (207, 48, 3, 14, 5, 7, 5.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (208, 48, 3, 31, 2, 5, 2, N'...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (209, 48, 3, 12, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (210, 48, 3, 38, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (211, 48, 3, 43, 4, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (212, 48, 3, 37, 2, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (213, 48, 3, 32, 4, 6, 4, N'🤔')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (214, 48, 3, 30, 5, 7, 5, N'Lettøl?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (215, 48, 3, 23, 0, 6, 1, N'Smaker eddik')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (216, 48, 3, 18, 3, 4, 3, N'Pfjøy...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (217, 48, 3, 45, 4, 7, 5, N'Æsjda')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (218, 48, 3, 34, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (219, 48, 3, 41, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (220, 48, 3, 36, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (221, 48, 3, 16, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (222, 48, 3, 29, 0, 0, 0, N'Itj nå høydare')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (223, 48, 3, 17, 4, 4, 4, N'Julesnadder fra Nøgne? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (224, 48, 3, 35, 2, 7, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (225, 48, 3, 33, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (226, 48, 3, 13, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (227, 48, 3, 40, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (228, 48, 3, 46, 6, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (229, 48, 3, 44, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (230, 48, 3, 28, 4, 5, 4, N'Hmmm ikke min favoritt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (231, 60, 3, 21, 8, 5, 7, N'Jeven hårrå ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (232, 60, 3, 45, 5, 7, 5, N'Smaker cola')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (233, 60, 3, 14, 8, 9, 8.25, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (234, 48, 3, 39, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (235, 60, 3, 42, 6, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (236, 60, 3, 31, 10, 8, 10, N'Nå ligner det noe')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (237, 60, 3, 19, 7, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (238, 60, 3, 43, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (239, 60, 3, 34, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (240, 60, 3, 12, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (241, 60, 3, 23, 7, 9, 7, N'Litt søt, ekte jul')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (242, 60, 3, 24, 3, 6, 4, N'Mørk, søt, slapp. Rar sukkersmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (243, 60, 3, 13, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (244, 60, 3, 38, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (245, 60, 3, 17, 2, 2, 4, N'Pepsi ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (246, 60, 3, 36, 2, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (247, 60, 3, 16, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (248, 60, 3, 18, 6, 7, 7, N'Ja,bra den der 🍻 🍻 ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (249, 72, 3, 22, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (250, 60, 3, 35, 3, 8, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (251, 60, 3, 39, 9, 8, 9, N'God mørk øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (252, 60, 3, 28, 6, 8, 6, N'🍻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (253, 60, 3, 30, 4, 8, 4, N'Mørk farge, søt smak, dau')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (254, 60, 3, 37, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (255, 60, 3, 33, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (256, 46, 3, 22, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (257, 60, 3, 29, 4, 0, 4, N'Halleluja!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (258, 48, 3, 22, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (259, 60, 3, 44, 4, 3, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (260, 60, 3, 46, 5, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (261, 60, 3, 40, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (262, 60, 3, 41, 10, 9, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (263, 60, 3, 22, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (264, 60, 3, 32, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (265, 74, 3, 14, 6, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (266, 74, 3, 19, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (267, 74, 3, 30, 7, 8, 7, N'Porter, mørk, kaffe')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (268, 74, 3, 21, 8, 6, 7, N'Okey ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (269, 74, 3, 23, 8, 10, 8, N'Jaaa, endelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (270, 74, 3, 24, 6, 6, 6, N'Syrlig, god stout. Hint av kaffe? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (271, 74, 3, 38, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (272, 74, 3, 43, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (273, 74, 3, 45, 4, 6, 4, N'Ay caramba')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (274, 74, 3, 32, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (275, 74, 3, 34, 3, 6, 3, N'Guiness')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (276, 74, 3, 31, 6, 7, 6, N'Joa')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (277, 74, 3, 12, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (278, 74, 3, 22, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (279, 74, 3, 22, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (280, 74, 3, 18, 6, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (281, 74, 3, 44, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (282, 74, 3, 29, 0, 0, 0, N':’(')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (283, 74, 3, 37, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (284, 74, 3, 17, 7, 4, 5, N'Endelig noe godt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (285, 74, 3, 35, 7, 8, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (286, 74, 3, 13, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (287, 74, 3, 41, 7, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (288, 74, 3, 42, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (289, 74, 3, 39, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (290, 74, 3, 33, 7, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (291, 74, 3, 40, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (292, 74, 3, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (293, 74, 3, 16, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (294, 74, 3, 46, 3, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (295, 74, 3, 28, 7, 7, 7, N'Skål🍺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (296, 67, 3, 21, 0, 2, 1, N'Blæh')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (297, 67, 3, 19, 1, 1, 1, N'Neinei')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (298, 67, 3, 14, 5, 4, 4.75, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (299, 67, 3, 34, 2, 5, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (300, 67, 3, 38, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (301, 67, 3, 23, 0, 1, 0, N'Ikke noe for meg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (302, 67, 3, 30, 4, 4, 4, N'Surt. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (303, 67, 3, 13, 4, 3, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (304, 67, 3, 12, 3, 6, 4, N'Ikke det værste jeg har smakt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (305, 67, 3, 17, 2, 2, 6, N'Sur jul, magesyre. Espen ville likt det. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (306, 67, 3, 16, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (307, 67, 3, 36, 1, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (308, 67, 3, 42, 0, 4, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (309, 67, 3, 35, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (310, 67, 3, 44, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (311, 67, 3, 39, 4, 2, 4, N'Urinøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (312, 67, 3, 31, 2, 2, 2, N'Surt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (313, 67, 3, 18, 0, 1, 1, N'Hoj')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (314, 67, 3, 45, 1, 2, 1, N'OMG noooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (315, 67, 3, 43, 5, 3, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (316, 67, 3, 28, 1, 3, 1, N'🤢')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (317, 67, 3, 37, 4, 1, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (318, 67, 3, 29, 0, 0, 0, N'Egentlig -3')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (319, 67, 3, 33, 0, 0, 0, N'Surt kattepiss')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (320, 67, 3, 24, 6, 6, 6, N'Helt ok sur fruktøl. Men hvilken frukt? Sitron og appelsin? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (321, 67, 3, 40, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (322, 67, 3, 41, 5, 4, 5, N'Rar, syrlig gul')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (323, 67, 3, 46, 7, 2, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (324, 67, 3, 22, 7, 3, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (325, 67, 3, 22, 7, 3, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (326, 67, 3, 32, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (327, 62, 3, 21, 4, 4, 4, N'Nei faen ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (328, 62, 3, 19, 1, 5, 2, N'Suuurt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (329, 62, 3, 38, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (330, 62, 3, 45, 1, 8, 2, N'Går ikke an')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (331, 62, 3, 31, 1, 8, 2, N'Surt II')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (332, 62, 3, 24, 7, 6, 7, N'Surt pepperkake.. Overraskende bra, VELDIG julete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (333, 62, 3, 14, 8, 7, 7.75, N'🤟😎🤟')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (334, 62, 3, 13, 5, 6, 6, N'Pepperkakedeig i flytende form ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (335, 62, 3, 17, 3, 4, 4, N'𓂺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (336, 62, 3, 41, 10, 4, 0, N'Smaker pepperkaker')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (337, 62, 3, 36, 1, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (338, 62, 3, 23, 4, 6, 5, N'Spennende')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (339, 62, 3, 39, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (340, 62, 3, 35, 4, 6, 4, N'🎄💨')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (341, 62, 3, 37, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (342, 62, 3, 22, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (343, 62, 3, 12, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (344, 62, 3, 33, 2, 7, 2, N'sjutoto')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (345, 62, 3, 30, 9, 6, 9, N'Pepperkake, sur, nydelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (346, 62, 3, 40, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (347, 62, 3, 44, 1, 2, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (348, 62, 3, 28, 7, 4, 6, N'Tja surt men spennende')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (349, 62, 3, 18, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (350, 62, 3, 43, 5, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (351, 62, 3, 29, 0, 9, 3, N'😍')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (352, 62, 3, 34, 3, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (353, 62, 3, 46, 2, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (354, 62, 3, 16, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (355, 62, 3, 32, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (356, 62, 3, 42, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (357, 75, 3, 19, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (358, 75, 3, 43, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (359, 75, 3, 21, 5, 5, 5, N'Pøh, for tenk ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (360, 75, 3, 42, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (361, 75, 3, 14, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (362, 75, 3, 36, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (363, 75, 3, 38, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (364, 75, 3, 30, 3, 6, 3, N'IPA, dårlig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (365, 75, 3, 45, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (366, 75, 3, 16, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (367, 75, 3, 41, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (368, 75, 3, 39, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (369, 75, 3, 13, 10, 5, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (370, 75, 3, 34, 10, 9, 10, N'Nå er det jul')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (371, 75, 3, 12, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (372, 75, 3, 31, 9, 8, 9, N'Bra! Hjemmebrygg?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (373, 75, 3, 40, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (374, 75, 3, 24, 7, 5, 6, N'Jule-dobbel-IPA? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (375, 75, 3, 18, 7, 7, 7, N'Bra hjemmebrygg mister')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (376, 75, 3, 23, 5, 5, 5, N'Fin duft av humle, men smaken.....')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (377, 75, 3, 17, 4, 4, 5, N'𓂺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (378, 75, 3, 37, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (379, 75, 3, 44, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (380, 75, 3, 22, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (381, 75, 3, 33, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (382, 70, 3, 32, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (383, 75, 3, 46, 3, 2, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (384, 75, 3, 32, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (385, 75, 3, 29, 3, 6, 3.8, N'En god nummer to')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (386, 75, 3, 28, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (387, 75, 3, 35, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (388, 70, 3, 38, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (389, 70, 3, 21, 4, 5, 4, N'Uhæ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (390, 70, 3, 19, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (391, 70, 3, 12, 7, 8, 7, N'Litt voldsom')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (392, 70, 3, 14, 7.5, 9, 8, N'Lakris? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (393, 70, 3, 13, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (394, 70, 3, 39, 8, 8, 8, N'Staut kaffe')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (395, 70, 3, 24, 8, 8, 8, N'Kveldens første juleøl med stor L. Bismak av Nutella. Nydelig farge')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (396, 70, 3, 44, 3, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (397, 70, 3, 36, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (398, 70, 3, 45, 1, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (399, 70, 3, 43, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (400, 70, 3, 31, 3, 8, 3, N'Bitter ettersmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (401, 70, 3, 30, 4, 6, 4, N'Mørk, bitter, porter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (402, 70, 3, 23, 5, 8, 7, N'Mye smak, men... av hva?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (403, 70, 3, 17, 3, 3, 5, N'𓂺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (404, 70, 3, 16, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (405, 70, 3, 46, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (406, 70, 3, 34, 3, 9, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (407, 70, 3, 37, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (408, 70, 3, 18, 7, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (409, 70, 3, 35, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (410, 70, 3, 40, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (411, 70, 3, 28, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (412, 70, 3, 33, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (413, 70, 3, 42, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (414, 70, 3, 29, 1, 5, 1.8, N'Duft av øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (415, 70, 3, 29, 1, 5, 1.8, N'Duft av øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (416, 61, 3, 19, 4, 3, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (417, 61, 3, 14, 8, 8.5, 8.12, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (418, 61, 3, 21, 6, 5, 10, N'Pjuk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (419, 70, 3, 41, 10, 5, 10, N'Lukter peanøtter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (420, 61, 3, 39, 9, 8, 9, N'Kjempegod øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (421, 61, 3, 12, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (422, 61, 3, 30, 7, 6, 7, N'Passe mørk. Kunne hatt mer smak. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (423, 61, 3, 38, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (424, 61, 3, 36, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (425, 61, 3, 23, 8, 8, 9, N'Julestemning !!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (426, 61, 3, 28, 8, 8, 8, N'👏🏻👍🏻🤘🙌')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (427, 61, 3, 24, 7, 8, 7, N'Mer juleøl, smaker gløgg. Men noe slapt.. Veeeeldig pent i motlys')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (428, 61, 3, 44, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (429, 61, 3, 46, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (430, 61, 3, 17, 5, 5, 5, N'Endelig noe bedre igjen ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (431, 61, 3, 41, 7, 6, 7, N'Litt svak, men god julesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (432, 61, 3, 18, 4, 6, 5, N'Middelhavsfarer')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (433, 70, 3, 22, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (434, 61, 3, 43, 9, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (435, 61, 3, 34, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (436, 61, 3, 16, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (437, 61, 3, 31, 9, 7, 9, N'Gølgg men god')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (438, 61, 3, 40, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (439, 61, 3, 37, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (440, 61, 3, 35, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (441, 61, 3, 29, 9, 5, 5, N'😍🍻😍🍻😍')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (442, 61, 3, 33, 6, 6, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (443, 61, 3, 42, 8, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (444, 61, 3, 22, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (445, 68, 3, 21, 10, 5, 5, N'Grei')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (446, 61, 3, 32, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (447, 68, 3, 14, 9.5, 9.5, 9.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (448, 68, 3, 44, 2, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (449, 68, 3, 39, 7, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (450, 68, 3, 22, 1, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (451, 68, 3, 22, 1, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (452, 68, 3, 38, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (453, 68, 3, 43, 9, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (454, 68, 3, 16, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (455, 68, 3, 19, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (456, 61, 3, 13, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (457, 68, 3, 31, 8, 9, 8, N'Mørkt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (458, 68, 3, 46, 1, 5, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (459, 61, 3, 45, 1, 5, 1, N'Just no')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (460, 68, 3, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (461, 68, 3, 17, 4, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (462, 68, 3, 45, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (463, 68, 3, 28, 9, 8, 9, N'💪💪💪')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (464, 68, 3, 24, 7, 8, 8, N'Overraskende friskyt fargen tatt i betraktning. Mørkt som natta, men fruktig og fint. Hint av fernet')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (465, 68, 3, 41, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (466, 68, 3, 23, 9, 8, 9, N'Smaker den virkelig bedre eller er det beruselse?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (467, 68, 3, 34, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (468, 68, 3, 12, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (469, 68, 3, 37, 6.5, 6, 6, N'Jeg liker det heftig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (470, 68, 3, 29, 0, 0, 0, N'Kald kaffe?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (471, 68, 3, 30, 7, 7, 7, N'Porter, mørk, kraftig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (472, 68, 3, 18, 8, 8, 8, N'Mørkt og godt. Elleven')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (473, 68, 3, 33, 2, 3, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (474, 68, 3, 32, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (475, 68, 3, 35, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (476, 68, 3, 40, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (477, 71, 3, 21, 6, 5, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (478, 71, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (479, 71, 3, 14, 6.5, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (480, 71, 3, 24, 8, 9, 8, N'Nydelig utseende. Ellers ganske plain. Kan drikke mye av dette, både på godt og vondt. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (481, 71, 3, 17, 8, 6, 8, N'Yay ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (482, 71, 3, 23, 7, 10, 8, N'Nydelig farge')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (483, 71, 3, 35, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (484, 71, 3, 39, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (485, 68, 3, 13, 8, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (486, 71, 3, 12, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (487, 71, 3, 22, 1, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (488, 71, 3, 31, 6, 8, 6, N'Ok, litt smaksløs')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (489, 71, 3, 38, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (490, 71, 3, 43, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (491, 71, 3, 36, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (492, 71, 3, 34, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (493, 71, 3, 29, 3, 0, 2, N'Lunken ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (494, 71, 3, 30, 7, 6, 7, N'Lik den forrige, ikke så kraftig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (495, 71, 3, 18, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (496, 71, 3, 16, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (497, 71, 3, 32, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (498, 71, 3, 46, 1, 4, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (499, 71, 3, 37, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (500, 71, 3, 41, 10, 7, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (501, 71, 3, 44, 3, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (502, 71, 3, 13, 7, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (503, 71, 3, 33, 9, 6, 9, N'Når man lukter plommer men får noe annet')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (504, 65, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (505, 65, 3, 21, 6, 5, 10, N'Yeah yeah')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (506, 65, 3, 30, 6, 6, 6, N'IPA, mørk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (507, 65, 3, 39, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (508, 65, 3, 14, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (509, 65, 3, 38, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (510, 65, 3, 31, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (511, 71, 3, 40, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (512, 65, 3, 24, 7, 7, 7, N'Juleøl.. Smaker fortsatt øl, ikke for mye dill. Litt for søt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (513, 65, 3, 16, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (514, 65, 3, 23, 9, 10, 9, N'Sprenger snart skalaen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (515, 65, 3, 41, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (516, 65, 3, 12, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (517, 65, 3, 34, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (518, 65, 3, 13, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (519, 65, 3, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (520, 65, 3, 35, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (521, 65, 3, 17, 5, 5, 5, N'Ok')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (522, 65, 3, 46, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (523, 65, 3, 43, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (524, 71, 3, 28, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (525, 65, 3, 44, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (526, 65, 3, 29, 5, 5, 5, N'Midt på træ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (527, 65, 3, 22, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (528, 65, 3, 37, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (529, 65, 3, 33, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (530, 65, 3, 40, 5, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (531, 66, 3, 21, 1, 1, 1, N'Magesyre')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (532, 66, 3, 19, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (533, 65, 3, 18, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (534, 66, 3, 38, 5, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (535, 66, 3, 14, 8.5, 9.5, 8.75, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (536, 65, 3, 32, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (537, 66, 3, 17, 8, 5, 7, N'Cornelius? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (538, 66, 3, 30, 8, 7, 8, N'Mørk, rund, god :)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (539, 66, 3, 36, 8, 8, 8, N'Svart. God')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (540, 66, 3, 23, 4, 6, 4, N'Litt for bitter for meg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (541, 66, 3, 43, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (542, 66, 3, 34, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (543, 66, 3, 13, 8, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (544, 66, 3, 24, 6, 7, 6, N'Søt lakris.. Noe med ettersmaken som skurrer litt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (545, 66, 3, 35, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (546, 66, 3, 12, 7, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (547, 66, 3, 46, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (548, 65, 3, 28, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (549, 66, 3, 44, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (550, 66, 3, 40, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (551, 66, 3, 31, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (552, 66, 3, 37, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (553, 66, 3, 16, 3, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (554, 66, 3, 29, 0, 0, 0, N'Dårlig dørmatte')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (555, 57, 3, 34, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (556, 57, 3, 21, 4, 4, 4, N'Blæh')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (557, 66, 3, 33, 10, 8, 10, N'Deilig rund, mektig Nike skosåle. Løv it!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (558, 66, 3, 18, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (559, 57, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (560, 66, 3, 39, 9, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (561, 57, 3, 31, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (562, 66, 3, 22, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (563, 66, 3, 22, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (564, 57, 3, 39, 7, 8, 7, N'Bærøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (565, 57, 3, 23, 6, 9, 6, N'For kraftig maltsmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (566, 57, 3, 17, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (567, 57, 3, 24, 7, 9, 7, N'Nydelig utseende. Veldig søtt.. Bokk av et slag.. Føler  vi har hatt denne tidligere år. Passer til salt mat, men funker ikke alene. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (568, 57, 3, 43, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (569, 57, 3, 14, 6.5, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (570, 57, 3, 38, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (571, 57, 3, 36, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (572, 66, 3, 28, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (573, 57, 3, 13, 7, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (574, 66, 3, 41, 10, 6, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (575, 57, 3, 18, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (576, 57, 3, 40, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (577, 57, 3, 35, 7, 10, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (578, 57, 3, 30, 6, 6, 6, N'Helt grei, ikke så god som forrige')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (579, 57, 3, 46, 7, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (580, 57, 3, 41, 10, 8, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (581, 57, 3, 12, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (582, 66, 3, 32, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (583, 57, 3, 37, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (584, 57, 3, 28, 9, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (585, 57, 3, 33, 0, 6, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (586, 57, 3, 29, 0, 0, 0, N'Kveldens dårligste ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (587, 57, 3, 32, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (588, 57, 3, 16, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (589, 57, 3, 22, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (590, 57, 3, 22, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (591, 57, 3, 44, 4, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (592, 15, 3, 21, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (593, 15, 3, 14, 6.5, 6, 6.38, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (594, 15, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (595, 15, 3, 39, 4, 2, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (596, 15, 3, 43, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (597, 15, 3, 16, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (598, 15, 3, 22, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (599, 15, 3, 22, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (600, 15, 3, 23, 9, 5, 8, N'Nøgne ø ??')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (601, 15, 3, 41, 10, 6, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (602, 15, 3, 38, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (603, 15, 3, 24, 7, 6, 7, N'Nøgne Ø? Samme som i fjor.. Lure juleøl. Smaker jul, men ser feil ut. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (604, 15, 3, 34, 9, 4, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (605, 15, 3, 30, 6, 5, 6, N'Hveteøl e godt men ikke julete nok')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (606, 15, 3, 17, 4, 3, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (607, 15, 3, 32, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (608, 15, 3, 13, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (609, 15, 3, 40, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (610, 15, 3, 31, 6, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (611, 15, 3, 44, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (612, 15, 3, 28, 9, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (613, 15, 3, 46, 1, 5, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (614, 15, 3, 37, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (615, 15, 3, 33, 0, 1, 1, N'Gjæra earl grey te')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (616, 15, 3, 29, 0, 3, 1, N'Lys men fæl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (617, 15, 3, 18, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (618, 15, 3, 36, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (619, 15, 3, 35, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (620, 64, 3, 19, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (621, 64, 3, 21, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (622, 15, 3, 12, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (623, 64, 3, 14, 8, 6.5, 7.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (624, 64, 3, 34, 0, 3, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (625, 64, 3, 38, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (626, 64, 3, 30, 6, 6, 6, N'Ubestemmelig, krydrete men ikke nok julete, eplesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (627, 64, 3, 23, 6, 5, 5, N'Nei, fy')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (628, 64, 3, 24, 4, 5, 4, N'Hjemmebrygg? Litt spritsmak. Ikke spesielt julete hverken på smak eller farge. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (629, 64, 3, 31, 5, 3, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (630, 64, 3, 43, 3, 2, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (631, 64, 3, 41, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (632, 64, 3, 39, 6, 3, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (633, 64, 3, 13, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (634, 64, 3, 18, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (635, 64, 3, 17, 6, 4, 7, N'My alkohol. Hjemmebrygg? 𓂺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (636, 64, 3, 36, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (637, 64, 3, 22, 2, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (638, 64, 3, 40, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (639, 64, 3, 44, 5, 6, 5, N'Sabla mye godt øl!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (640, 64, 3, 16, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (641, 64, 3, 37, 5, 5, 5, N'😏')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (642, 64, 3, 46, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (643, 69, 3, 37, 6, 6, 6, N'🤪')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (644, 64, 3, 35, 5, 3, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (645, 64, 3, 33, 1, 3, 0, N'Gjæææææær')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (646, 64, 3, 28, 10, 6, 9, N'Yippi🦵🏼🙏👅')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (647, 64, 3, 29, 0, 0, 0, N'Worren, vil du dans med mæ?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (648, 64, 3, 12, 8, 6, 7, N'Fikk frysninga')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (649, 64, 3, 32, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (650, 69, 3, 34, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (651, 69, 3, 21, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (652, 69, 3, 19, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (653, 69, 3, 43, 9, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (654, 69, 3, 30, 8, 7, 8, N'Sur, søt og mørk? Rar kombo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (655, 69, 3, 39, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (656, 69, 3, 24, 8, 10, 8, N'Nn nydelig utseende... Ganske god, men bittelitt for sur.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (657, 69, 3, 23, 6, 10, 7, N'Ingen kommentar')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (658, 69, 3, 36, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (659, 69, 3, 22, 1, 2, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (660, 69, 3, 38, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (661, 69, 3, 13, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (662, 69, 3, 31, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (663, 69, 3, 17, 3, 6, 4, N'Meh')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (664, 69, 3, 14, 9, 8.5, 8.88, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (665, 69, 3, 18, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (666, 69, 3, 28, 3, 6, 4, N'🤯😭🥺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (667, 69, 3, 40, 6, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (668, 69, 3, 16, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (669, 69, 3, 41, 10, 6, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (670, 69, 3, 29, 0, 0, 5, N'Bra på mengde, dårlig på smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (671, 69, 3, 44, 1, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (672, 69, 3, 46, 2, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (673, 69, 3, 35, 1, 8, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (674, 30, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (675, 69, 3, 12, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (676, 30, 3, 21, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (677, 30, 3, 23, 3, 8, 4, N'Fin lød, men...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (678, 30, 3, 34, 1, 8, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (679, 30, 3, 38, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (680, 30, 3, 43, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (681, 30, 3, 14, 7.5, 8.5, 7.75, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (682, 30, 3, 40, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (683, 30, 3, 17, 6, 4, 5, N'Cornelius? 𓂺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (684, 30, 3, 31, 6, 6, 6, N'Anis')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (685, 30, 3, 24, 9, 10, 9, N'Anis! Deilig jul! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (686, 30, 3, 37, 6, 6, 6, N'🤯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (687, 69, 3, 32, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (688, 30, 3, 16, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (689, 30, 3, 28, 10, 10, 10, N'🏆🏆🏆🏆')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (690, 30, 3, 18, 2, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (691, 30, 3, 30, 7, 7, 8, N'Ganske god rett og slett.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (692, 69, 3, 33, 5, 5, 5, N'5')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (693, 30, 3, 36, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (694, 30, 3, 46, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (695, 30, 3, 39, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (696, 30, 3, 29, 0, 0, 8, N'Enda bedr mengde, enda dårliger smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (697, 30, 3, 33, 10, 9, 10, N'arigato gosai mas! 10')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (698, 30, 3, 35, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (699, 30, 3, 44, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (700, 30, 3, 41, 7, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (701, 21, 3, 21, 9, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (702, 21, 3, 30, 7, 7, 7, N'Grei, mye kullsyre')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (703, 21, 3, 36, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (704, 21, 3, 34, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (705, 21, 3, 19, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (706, 21, 3, 39, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (707, 21, 3, 24, 8, 8, 8, N'Når ikke helt opp på fargen, litt for lys. Hakket for mye alkohol for smaken, som i utgangspunktet er god... Men trekk for spritsmaken. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (708, 21, 3, 44, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (709, 21, 3, 31, 6, 3, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (710, 21, 3, 17, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (711, 21, 3, 14, 7, 8, 7.25, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (712, 21, 3, 23, 6, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (713, 30, 3, 13, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (714, 21, 3, 43, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (715, 21, 3, 13, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (716, 21, 3, 35, 6, 10, 8, N'🍻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (717, 30, 3, 22, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (718, 30, 3, 22, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (719, 21, 3, 22, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (720, 21, 3, 22, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (721, 21, 3, 40, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (722, 21, 3, 18, 6, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (723, 30, 3, 12, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (724, 21, 3, 37, 8, 8, 8, N'😮')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (725, 30, 3, 32, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (726, 21, 3, 28, 9, 8, 9, N'Bra avslutning🙌👍🏻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (727, 21, 3, 16, 5, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (728, 21, 3, 46, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (729, 21, 3, 32, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (730, 21, 3, 33, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (731, 21, 3, 29, 1, 1, 1, N'🥉🎪')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (732, 21, 3, 12, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (733, 21, 3, 41, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (734, 48, 13, 1, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (735, 48, 13, 39, 6, 7, 6, N'Ok smak, drikkenes')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (736, 48, 13, 34, 5, 7, 5, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (737, 48, 13, 12, 3, 8, 6, N'😕')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (738, 48, 13, 42, 4, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (739, 48, 13, 43, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (740, 48, 13, 23, 4, 7, 5, N'Litt blekt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (741, 48, 13, 69, 3, 7, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (742, 48, 13, 52, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (743, 48, 13, 56, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (744, 48, 13, 14, 3, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (745, 48, 13, 18, 4, 4, 4, N'Tamme greier')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (746, 48, 13, 76, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (747, 48, 13, 54, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (748, 48, 13, 26, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (749, 48, 13, 70, 2, 8, 3, N'Litt tam smak, mye vann. Lite dybde')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (750, 48, 13, 74, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (751, 48, 13, 64, 2, 7, 3, N'Weak taste, nice color')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (752, 48, 13, 75, 3, 7, 4, N'Fint å se på, litt karakterløst')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (753, 48, 13, 41, 5, 8, 6, N'Smakte ganske lite, men lettdrikkelig.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (754, 48, 13, 65, 3, 7, 3, N'Tynn')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (755, 48, 13, 17, 3, 5, 3, N'Dahls juleskvip')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (756, 48, 13, 28, 5, 5, 5, N'Vi er i gang😛')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (757, 48, 13, 67, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (758, 48, 13, 49, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (759, 48, 13, 50, 5, 7, 5, N'Litt kjedelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (760, 48, 13, 51, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (761, 48, 13, 53, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (762, 48, 13, 66, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (763, 48, 13, 36, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (764, 48, 13, 55, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (765, 48, 13, 21, 4, 5, 4, N'Yeah yeah')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (766, 48, 13, 40, 3, 5, 4, N'#1')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (767, 48, 13, 73, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (768, 48, 13, 71, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (769, 48, 13, 68, 4, 6, 4, N'Lite skum!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (770, 48, 13, 72, 2, 6, 2, N'Tynn vanndig smak, Dahls julebrus?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (771, 76, 13, 14, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (772, 76, 13, 69, 3, 2, 3, N'Jævla støckt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (773, 76, 13, 54, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (774, 76, 13, 64, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (775, 76, 13, 23, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (776, 76, 13, 40, 6, 8, 7, N'#2')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (777, 76, 13, 26, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (778, 76, 13, 52, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (779, 76, 13, 49, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (780, 76, 13, 41, 6, 5, 5, N'En lett stout.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (781, 76, 13, 65, 4, 6, 4, N'Røyksmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (782, 76, 13, 42, 5, 4, 4, N'Øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (783, 76, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (784, 76, 13, 1, 6, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (785, 76, 13, 55, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (786, 76, 13, 39, 5, 9, 6, N'Røyk ettersmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (787, 76, 13, 50, 4, 7, 0, N'Paprika og eller chili? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (788, 76, 13, 53, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (789, 76, 13, 28, 6, 8, 6, N'😋')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (790, 76, 13, 74, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (791, 76, 13, 21, 6, 5, 5, N'Itj så væsst')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (792, 76, 13, 68, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (793, 76, 13, 51, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (794, 76, 13, 76, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (795, 76, 13, 17, 5, 4, 3, N'Hjemmebrygg? Litt lite julete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (796, 76, 13, 75, 8, 7, 8, N'Massiv stout, røyk, tjapreg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (797, 76, 13, 61, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (798, 76, 13, 70, 2, 4, 3, N'Smakte lite, lukta litt rart. Mildere enn hva det ser ut som')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (799, 76, 13, 12, 5, 6, 6, N'🙂')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (800, 76, 13, 66, 4, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (801, 76, 13, 67, 6, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (802, 76, 13, 71, 7, 6, 7, N'Lett stout')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (803, 76, 13, 18, 6, 6, 6, N'Bra, noe for varm ved servering? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (804, 76, 13, 73, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (805, 48, 13, 27, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (806, 76, 13, 43, 6, 8, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (807, 76, 13, 36, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (808, 76, 13, 27, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (809, 76, 13, 34, 3, 5, 4, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (810, 76, 13, 72, 4, 5, 4, N'Kaffe, lakris? Mildt og godt. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (811, 77, 13, 14, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (812, 77, 13, 21, 2, 4, 3, N'Nope')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (813, 77, 13, 74, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (814, 77, 13, 69, 6, 8, 6, N'Gøtt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (815, 77, 13, 50, 7, 7, 7, N'Mmm katzenpizz ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (816, 77, 13, 53, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (817, 77, 13, 23, 7, 7, 7, N'Friskt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (818, 77, 13, 39, 5, 6, 6, N'Kattepiss øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (819, 77, 13, 26, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (820, 77, 13, 40, 4, 5, 4, N'#3')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (821, 77, 13, 67, 7, 6, 7, N'Snasen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (822, 77, 13, 43, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (823, 77, 13, 61, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (824, 77, 13, 64, 7, 10, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (825, 77, 13, 76, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (826, 77, 13, 52, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (827, 77, 13, 1, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (828, 77, 13, 42, 7, 7, 6, N'Øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (829, 77, 13, 36, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (830, 77, 13, 34, 7, 8, 7, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (831, 77, 13, 28, 7, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (832, 77, 13, 54, 7, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (833, 77, 13, 68, 3, 5, 3, N'Kattepiss og pepperkaker mmmmm!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (834, 77, 13, 56, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (835, 77, 13, 49, 6, 8, 6, N'Oh, I''l kill that cat')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (836, 77, 13, 66, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (837, 77, 13, 17, 5, 5, 4, N'Mild apa')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (838, 77, 13, 18, 7, 7, 7, N'Truncate table beer_votes;  🍺🍺🍺🍺🍺🍺🍺🍺👍👍😂😂')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (839, 77, 13, 71, 4, 6, 4, N'Litt pepperkakelukt, litt tynn smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (840, 77, 13, 12, 6, 8, 6, N'🙂')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (841, 77, 13, 51, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (842, 77, 13, 41, 5, 6, 6, N'IPA med pepperkaker? (Ingen smak av pepperkaker)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (843, 77, 13, 65, 6, 6, 6, N'6')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (844, 77, 13, 55, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (845, 77, 13, 73, 6, 7, 6, N'Knallbra humler')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (846, 77, 13, 27, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (847, 77, 13, 70, 5, 7, 5, N'Grei. Helt ok. Ikke vond')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (848, 77, 13, 75, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (849, 77, 13, 72, 3, 4, 3, N'Fruktig, lett, mild -ikke pepperkake')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (850, 9, 13, 69, 5, 7, 5, N'Fesk fra Frøya')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (851, 9, 13, 52, 2, 3, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (852, 9, 13, 12, 6, 7, 6, N'😕')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (853, 9, 13, 67, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (854, 9, 13, 14, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (855, 9, 13, 26, 3, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (856, 9, 13, 23, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (857, 9, 13, 68, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (858, 9, 13, 74, 5, 6, 5.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (859, 9, 13, 66, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (860, 9, 13, 54, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (861, 9, 13, 36, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (862, 9, 13, 55, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (863, 9, 13, 39, 4, 5, 4, N'Litt sur')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (864, 9, 13, 76, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (865, 9, 13, 53, 2, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (866, 9, 13, 51, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (867, 9, 13, 41, 8, 5, 7, N'Undergjæra, litt sur.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (868, 9, 13, 64, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (869, 9, 13, 56, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (870, 9, 13, 71, 5, 8, 6, N'Undergjæret surøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (871, 9, 13, 43, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (872, 9, 13, 49, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (873, 9, 13, 28, 4, 6, 4, N'Hva med Hitra og Fjellværsøya??')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (874, 9, 13, 61, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (875, 9, 13, 65, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (876, 9, 13, 50, 4, 7, 4, N'(╯°Д°)╯︵/(.□ . \)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (877, 9, 13, 34, 4, 10, 5, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (878, 9, 13, 42, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (879, 9, 13, 17, 1, 5, 1, N'Feilbrygg fra Grøya')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (880, 9, 13, 21, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (881, 9, 13, 73, 6, 4, 6, N'<h1>god lukt</h1>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (882, 9, 13, 75, 5, 7, 6, N'Mer syre men ok i')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (883, 9, 13, 70, 5, 7, 5, N'Litt uspesifisert sur. Spennende, men litt tynn')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (884, 9, 13, 40, 5, 6, 7, N'#4')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (885, 9, 13, 1, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (886, 9, 13, 18, 5, 5, 5, N'Ganske bra, likte denne. 🍻🍻🍻🍻🍻🍻🍻🍻🍻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (887, 9, 13, 72, 1, 5, 2, N'Syrlig, som tynn saft')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (888, 78, 13, 14, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (889, 78, 13, 64, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (890, 78, 13, 50, 5, 7, 5, N'Gløgg i (╯°Д°)╯︵/(.□ . \)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (891, 78, 13, 40, 7, 7, 8, N'#5')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (892, 78, 13, 49, 6, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (893, 78, 13, 69, 2, 5, 3, N'Kirsebærsaft, langt fra øl. Uvanlig 😎')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (894, 78, 13, 54, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (895, 78, 13, 61, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (896, 78, 13, 43, 2, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (897, 78, 13, 74, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (898, 78, 13, 66, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (899, 78, 13, 55, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (900, 78, 13, 75, 5, 7, 6, N'KirsebærFrisk og spesiell, men ville ikke ha kjøpt... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (901, 78, 13, 34, 2, 6, 3, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (902, 78, 13, 23, 6, 5, 6, N'Hurra for Belgia!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (903, 78, 13, 53, 8, 8, 8, N'Kjøp denne')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (904, 78, 13, 52, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (905, 78, 13, 65, 6, 5, 5, N'Kirsebærgløgg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (906, 78, 13, 76, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (907, 78, 13, 12, 6, 7, 6, N'Flytende skumnisse')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (908, 78, 13, 1, 5, 4, 5, N'Husholdningssaft')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (909, 78, 13, 42, 9, 9, 9, N'<script>alert("ØL!")</script>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (910, 78, 13, 26, 9, 7, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (911, 78, 13, 21, 3, 4, 3, N'Vingummi')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (912, 78, 13, 73, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (913, 78, 13, 36, 1, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (914, 78, 13, 67, 8, 5, 7, N'Snavvel')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (915, 78, 13, 39, 3, 4, 3, N'Brus')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (916, 78, 13, 56, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (917, 78, 13, 28, 8, 7, 8, N'👍🏻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (918, 78, 13, 17, 3, 2, 5, N'Cherry')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (919, 78, 13, 51, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (920, 78, 13, 72, 3, 3, 3, N'Kirsebær, lett syrlig. For søt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (921, 78, 13, 71, 4, 6, 4, N'Er dette øl?!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (922, 78, 13, 18, 6, 6, 5, N'Rød Saft? Kan serveres i barnebursdager i Nord-Trøndelag 📯🔔🎷')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (923, 78, 13, 70, 8, 7, 8, N'God, sur og søt. Det beste barneølet jeg har smakt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (924, 78, 13, 68, 8, 7, 7, N'Eventyrbrus og gløgg!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (925, 78, 13, 41, 6, 5, 0, N'Veldig spesiell, likøraktig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (926, 79, 13, 69, 2, 10, 3, N'Ande, gakk gakk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (927, 79, 13, 14, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (928, 79, 13, 66, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (929, 79, 13, 43, 7, 7, 6, N'🎄🎄')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (930, 79, 13, 64, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (931, 79, 13, 50, 8, 7, 7, N'Stærkt! (╯°Д°)╯︵/(.□ . \)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (932, 79, 13, 54, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (933, 79, 13, 65, 4, 5, 4, N'Lite julete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (934, 79, 13, 53, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (935, 79, 13, 42, 4, 4, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (936, 79, 13, 36, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (937, 79, 13, 61, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (938, 79, 13, 75, 6, 7, 6, N'Asfalt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (939, 79, 13, 55, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (940, 79, 13, 17, 6, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (941, 79, 13, 73, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (942, 79, 13, 49, 5, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (943, 79, 13, 18, 7, 8, 8, N'Best in glass so far. 👍👍👍🍺🍺🍺')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (944, 79, 13, 26, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (945, 79, 13, 56, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (946, 79, 13, 40, 5, 5, 4, N'#6')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (947, 79, 13, 74, 6, 5, 5.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (948, 79, 13, 28, 7, 8, 7, N'Litt bitter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (949, 79, 13, 76, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (950, 79, 13, 34, 7, 7, 7, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (951, 79, 13, 12, 8, 6, 8, N'😀')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (952, 79, 13, 52, 4, 2, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (953, 79, 13, 1, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (954, 79, 13, 23, 2, 5, 3, N'For bittert')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (955, 79, 13, 67, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (956, 79, 13, 51, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (957, 79, 13, 71, 6, 4, 6, N'Lite lukt, kraftig smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (958, 9, 13, 27, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (959, 79, 13, 21, 4, 6, 4, N'Oj ... 😳')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (960, 79, 13, 39, 3, 9, 4, N'Bra skum og farge, litt for bitter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (961, 78, 13, 27, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (962, 79, 13, 41, 7, 4, 7, N'Mye skum, hint av appelsin, god til juleand.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (963, 79, 13, 68, 7, 8, 8, N'Lukter lite, smaker godt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (964, 79, 13, 27, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (965, 79, 13, 70, 2, 2, 2, N'Litt som en betongblokk med mye støv. Det blir brått smak, deretter borte og bare en rar ettersmak av støv igjen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (966, 79, 13, 72, 5, 4, 4, N'Mørk, lett bitter og syrlig. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (967, 80, 13, 64, 4, 10, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (968, 80, 13, 55, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (969, 80, 13, 54, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (970, 80, 13, 69, 3, 7, 4, N'Malvik special')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (971, 80, 13, 66, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (972, 80, 13, 50, 8, 7, 8, N'Oppa gangnam styleっ-●益●)っ ,︵‿ ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (973, 80, 13, 14, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (974, 80, 13, 71, 5, 7, 5, N'Veldig lett')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (975, 80, 13, 73, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (976, 80, 13, 39, 5, 7, 6, N'Samme som nr 1')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (977, 80, 13, 61, 6, 5, 5.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (978, 80, 13, 49, 3, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (979, 80, 13, 43, 5, 6, 7, N'🎄🎄🎄')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (980, 80, 13, 40, 5, 5, 5, N'#7')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (981, 80, 13, 76, 6, 10, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (982, 80, 13, 28, 5, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (983, 80, 13, 52, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (984, 80, 13, 12, 6, 8, 7, N'<script>alert(«øl!»);</script>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (985, 80, 13, 74, 6, 7, 6.5, N'Nam nam')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (986, 80, 13, 56, 6, 7, 6.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (987, 80, 13, 26, 6, 6, 6, N'0x00165')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (988, 80, 13, 17, 6, 5, 6, N'Bra, Stolt bryggeri? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (989, 80, 13, 67, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (990, 80, 13, 27, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (991, 80, 13, 68, 6, 5, 6, N'Lite smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (992, 80, 13, 51, 3, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (993, 80, 13, 41, 7, 5, 6, N'Lett stout')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (994, 80, 13, 53, 6, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (995, 80, 13, 36, 4, 5, 4, N'20 prince')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (996, 80, 13, 18, 6, 6, 6, N'Good shit #7')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (997, 80, 13, 21, 3, 2, 0, N'Blæh ... 😳')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (998, 80, 13, 1, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (999, 80, 13, 65, 7, 7, 7, N'#7 Topp til julemiddagen!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1000, 80, 13, 72, 2, 5, 3, N'Tynn, gyllen mørk. Ikke nok malt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1001, 80, 13, 34, 6, 9, 6, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1002, 80, 13, 42, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1003, 80, 13, 75, 6, 7, 6, N'En av de bedre og oo9')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1004, 80, 13, 70, 6, 6, 6, N'Den har absolutt potensiale. Har sterke hint av juleøl, men er litt pjusk i smak og kraft')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1005, 80, 13, 23, 4, 6, 4, N'Bitter ettersmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1006, 79, 13, 60, 7, 6, 7, N'Dansk rund smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1007, 80, 13, 60, 5, 7, 5, N'Bokkøl, midt-norge, litt kjedelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1008, 81, 13, 52, 2, 8, 7, N'Bål i glass')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1009, 81, 13, 14, 2, 1, 2, N'Hva faen? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1010, 81, 13, 28, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1011, 81, 13, 53, 1, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1012, 81, 13, 69, 1, 2, 2, N'Kattepiss, ferdigrøkt 😮')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1013, 81, 13, 54, 1, 2, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1014, 81, 13, 42, 1, 1, 1, N'Hvis dette ikke er kattepiss så vet ikke jeg 🐱')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1015, 81, 13, 61, 3, 4, 3, N'Smaker fjøs')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1016, 81, 13, 21, 1, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1017, 81, 13, 64, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1018, 81, 13, 56, 7, 3, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1019, 81, 13, 74, 3, 2, 2.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1020, 81, 13, 1, 1, 5, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1021, 81, 13, 55, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1022, 81, 13, 65, 1, 3, 1, N'Bålhælvet')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1023, 81, 13, 34, 3, 7, 3, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1024, 81, 13, 76, 2, 4, 3, N'Bålkos')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1025, 81, 13, 73, 6, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1026, 81, 13, 70, 3, 3, 0, N'Bål bål bål bål båååååååååååål')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1027, 81, 13, 66, 5, 8, 6, N'Bål')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1028, 81, 13, 50, 5, 7, 5, N'Oppa gangnam styleっ-●益●)っ ,︵‿')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1029, 81, 13, 17, 10, 4, 8, N'Fantastisk fra Stolt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1030, 81, 13, 23, 1, 4, 2, N'Av alt som kommer fra Stjørdal..,')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1031, 81, 13, 43, 1, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1032, 81, 13, 49, 1, 5, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1033, 81, 13, 39, 1, 2, 1, N'Røkt urinprøve')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1034, 81, 13, 40, 2, 2, 2, N'#8')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1035, 81, 13, 41, 7, 5, 6, N'Bål på boks')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1036, 81, 13, 71, 6, 2, 5, N'Røkt øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1037, 81, 13, 60, 6, 7, 8, N'Trad, god røyksmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1038, 81, 13, 36, 5, 6, 5, N'20 prince')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1039, 81, 13, 26, 6, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1040, 81, 13, 75, 5, 7, 5, N'Bål på boks. Spennende til vaffel... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1041, 81, 13, 68, 2, 3, 2, N'Smaker som festrøyking!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1042, 81, 13, 67, 1, 2, 1, N'<script>alert("øøøøøl");</script>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1043, 81, 13, 12, 7, 5, 8, N'😃')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1044, 81, 13, 18, 7, 7, 7, N'#8 Mye røyk her gitt. For den erfarne øl-drikker, gjerne fra rett over den gamle fylkesgrensa ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1045, 81, 13, 51, 5, 5, 5, N'Bål 🚬')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1046, 81, 13, 72, 7, 4, 6, N'Frisk og søt. Røyk som tar opp. Litt svak start')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1047, 93, 13, 43, 4, 6, 4, N'(kkk(kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk(kkk(kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1048, 93, 13, 14, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1049, 93, 13, 64, 4, 6, 5, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1050, 93, 13, 21, 6, 5, 5, N'Yeah yeah')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1051, 93, 13, 61, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1052, 93, 13, 34, 3, 6, 3, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1053, 93, 13, 69, 3, 1, 3, N'Lokalt grums ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1054, 93, 13, 54, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1055, 93, 13, 50, 5, 7, 5, N'Oppa gangnam styleっ-●益●)っ ,︵‿')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1056, 93, 13, 26, 5, 3, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1057, 93, 13, 73, 4, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1058, 93, 13, 23, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1059, 93, 13, 52, 3, 7, 4, N'Stærschk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1060, 93, 13, 76, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1061, 93, 13, 55, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1062, 93, 13, 66, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1063, 93, 13, 36, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1064, 93, 13, 1, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1065, 93, 13, 40, 4, 4, 4, N'#9')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1066, 93, 13, 67, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1067, 93, 13, 42, 5, 5, 5, N'Sykt kattepiss lukt. Smakte bedre enn det lukta')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1068, 93, 13, 74, 7, 6, 6.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1069, 93, 13, 49, 1, 3, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1070, 93, 13, 39, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1071, 93, 13, 28, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1072, 93, 13, 51, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1073, 93, 13, 41, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1074, 93, 13, 71, 6, 5, 5, N'Spennende lukt, lite smak, litt bitter, krydret')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1075, 93, 13, 53, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1076, 93, 13, 60, 4, 7, 5, N'Belgisk, sterk, krydder, men tynn i smaken')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1077, 93, 13, 68, 4, 7, 4, N'Flat')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1078, 93, 13, 56, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1079, 93, 13, 17, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1080, 93, 13, 75, 6, 5, 6, N'Rar ettersmak ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1081, 93, 13, 65, 7, 6, 7, N'#9 Skarets?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1082, 93, 13, 18, 4, 4, 4, N'#9 litt halvferdig. Bålølet #7 var bedre')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1083, 93, 13, 12, 4, 7, 4, N'😕')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1084, 82, 13, 69, 3, 6, 4, N'Rugøl, sitrus💪')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1085, 82, 13, 14, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1086, 82, 13, 26, 1, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1087, 82, 13, 50, 7, 7, 7, N'Oppa gangnam styleっ-●益●)っ ,︵‿')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1088, 93, 13, 72, 2, 4, 3, N'Tynn og tam. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1089, 93, 13, 70, 3, 1, 3, N'Udefinerbar, kjedelig, litt Basic bitch uten innhold')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1090, 82, 13, 39, 3, 3, 3, N'Medisin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1091, 82, 13, 61, 4, 6, 4, N'Friskt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1092, 82, 13, 54, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1093, 82, 13, 64, 7, 9, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1094, 82, 13, 52, 3, 8, 1, N'Fin - men smaker høgg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1095, 82, 13, 23, 4, 3, 4, N'Huff......denne må det mye feit ribbe til')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1096, 82, 13, 67, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1097, 82, 13, 28, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1098, 82, 13, 34, 7, 9, 8, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1099, 82, 13, 66, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1100, 82, 13, 53, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1101, 82, 13, 74, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1102, 82, 13, 75, 7, 6, 7, N'Syre og sitrus. Godt 😁')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1103, 82, 13, 43, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1104, 82, 13, 40, 5, 3, 3, N'#10')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1105, 82, 13, 60, 7, 7, 7, N'Lokalt, rug, IPA , sitrus. God IPA!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1106, 82, 13, 73, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1107, 82, 13, 55, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1108, 82, 13, 65, 5, 6, 5, N'#10 God IPA, lite julesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1109, 82, 13, 1, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1110, 82, 13, 17, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1111, 82, 13, 70, 6, 7, 7, N'Mye smak, mye sjarm. Litt vilter og rufsete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1112, 82, 13, 12, 4, 5, 3, N'🙁')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1113, 82, 13, 51, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1114, 82, 13, 18, 6, 6, 6, N'#10 bra, fikk ekstra påfyll 👍😎')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1115, 82, 13, 68, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1116, 82, 13, 76, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1117, 82, 13, 41, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1118, 82, 13, 49, 6, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1119, 94, 13, 34, 5, 7, 5, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1120, 82, 13, 72, 4, 5, 5, N'Ipaish, bitter men frisk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1121, 94, 13, 67, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1122, 94, 13, 66, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1123, 94, 13, 39, 6, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1124, 82, 13, 36, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1125, 94, 13, 64, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1126, 94, 13, 54, 5, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1127, 94, 13, 69, 8, 10, 9, N'Lokalt, russian ribbe ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1128, 94, 13, 43, 7, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1129, 94, 13, 14, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1130, 82, 13, 42, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1131, 94, 13, 61, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1132, 94, 13, 42, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1133, 94, 13, 41, 8, 8, 8, N'Kraftig og god, sjukt svart.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1134, 94, 13, 52, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1135, 94, 13, 76, 8, 7, 7, N'Svarte')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1136, 94, 13, 26, 4, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1137, 82, 13, 56, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1138, 94, 13, 55, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1139, 94, 13, 28, 7, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1140, 94, 13, 50, 8, 7, 8, N'Oppa gangnam styleっ-●益●)っ ,︵‿')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1141, 94, 13, 74, 7, 6, 6.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1142, 94, 13, 73, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1143, 94, 13, 49, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1144, 94, 13, 40, 7, 8, 5, N'#11')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1145, 94, 13, 53, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1146, 94, 13, 65, 4, 5, 4, N'#11 Ålreit, lite julestemning')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1147, 94, 13, 70, 7, 8, 7, N'Høy og mørk, men litt spiss. Litt sneip. En 19-årig Johnny Depp ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1148, 94, 13, 17, 8, 4, 8, N'<script>window.reload()</script>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1149, 94, 13, 23, 9, 9, 10, N'Slik skal juleøl smake, passer til multekrem')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1150, 94, 13, 1, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1151, 94, 13, 68, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1152, 94, 13, 36, 6, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1153, 82, 13, 21, 1, 7, 3, N'Puke 🤢')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1154, 94, 13, 51, 5, 6, 5, N'Hjemmebrygg? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1155, 82, 13, 71, 0, 0, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1156, 94, 13, 60, 5, 5, 5, N'Lokal, russian stout, Ok ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1157, 94, 13, 18, 5, 8, 6, N'#11 Mørke greier, bra i små doser')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1158, 94, 13, 72, 5, 4, 4, N'Rik smak, spiss slutt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1159, 94, 13, 12, 8, 10, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1160, 94, 13, 75, 7, 7, 7, N'Typisk dessertøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1161, 94, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1162, 83, 13, 14, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1163, 83, 13, 69, 5, 10, 5, N'Vestover! Furuspire ❄️')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1164, 83, 13, 64, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1165, 83, 13, 61, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1166, 83, 13, 41, 5, 10, 6, N'Furuspirer med røyksmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1167, 83, 13, 54, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1168, 83, 13, 39, 1, 6, 2, N'Æsj')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1169, 83, 13, 49, 5, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1170, 83, 13, 66, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1171, 83, 13, 34, 2, 6, 2, N'       _.---._    /\\     ./''       "--`\//   ./              o \          .-----.  /./\  )______   \__ \        ( help! ) ./  / /\ \   | \ \  \ \       /`-----''    / /  \ \  | |\ \  \7--- ooo ooo ooo ooo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1172, 83, 13, 55, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1173, 83, 13, 52, 2, 7, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1174, 83, 13, 43, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1175, 83, 13, 26, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1176, 83, 13, 50, 4, 7, 4, N'¯\_( 👁︠ ͜ʖ ︡👁)_/¯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1177, 83, 13, 23, 5, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1178, 81, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1179, 81, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1180, 83, 13, 67, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1181, 83, 13, 74, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1182, 83, 13, 70, 1, 9, 2, N'Hmm.. hmmm... eehhh... lukter stramt og innestengt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1183, 93, 13, 27, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1184, 83, 13, 17, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1185, 82, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1186, 83, 13, 51, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1187, 94, 13, 27, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1188, 83, 13, 76, 2, 10, 4, N'Furu my ass')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1189, 83, 13, 73, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1190, 83, 13, 27, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1191, 83, 13, 75, 5, 9, 7, N'Tja. Furu.... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1192, 83, 13, 68, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1193, 83, 13, 40, 6, 6, 5, N'#12')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1194, 94, 13, 71, 7, 7, 7, N'Varm ettersmak, også litt røyk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1195, 83, 13, 65, 7, 6, 7, N'#12 Spennende smak! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1196, 83, 13, 18, 1, 7, 3, N'#12 fysj og føy - - where 1=1; update votes set score = 1 where beerid =12;')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1197, 83, 13, 36, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1198, 83, 13, 53, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1199, 83, 13, 28, 8, 7, 8, N'En god nr 12')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1200, 83, 13, 71, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1201, 83, 13, 56, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1202, 94, 13, 21, 1, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1203, 83, 13, 60, 5, 6, 6, N'Vest, tradisjon, furu . Litt kjedelig ettersmak.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1204, 83, 13, 21, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1205, 83, 13, 12, 5, 7, 4, N' __         __ /  \.-"""-./  \ \    -   -    /  |   o   o   |  \  .-''''''-.  /   ''-\__Y__/-''      `---`')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1206, 30, 13, 21, 10, 10, 10, N'YESSSS 😃🎅🏻🏃🏽‍♂️')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1207, 83, 13, 72, 6, 6, 5, N'Fyldig, rik, men mangler noe på avslutningen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1208, 30, 13, 69, 6, 9, 7, N'Traver, alle år siden 2014, sør og vest, røkt mat🎶')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1209, 30, 13, 14, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1210, 30, 13, 50, 7, 7, 7, N'¯\_( 👁︠ ͜ʖ ︡👁)_/¯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1211, 30, 13, 61, 6, 5, 6, N'{{ øl }}')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1212, 30, 13, 64, 9, 8, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1213, 30, 13, 43, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1214, 30, 13, 66, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1215, 30, 13, 53, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1216, 30, 13, 41, 8, 5, 7, N'Dropssmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1217, 30, 13, 23, 7, 7, 7, N'En god belgier')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1218, 30, 13, 74, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1219, 30, 13, 40, 7, 8, 7, N'#13')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1220, 30, 13, 17, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1221, 30, 13, 60, 6, 8, 6, N'Utenlandsk, Gml Traver, krydder, malt,  smak av koriander? Litt ugg, også')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1222, 30, 13, 28, 9, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1223, 30, 13, 73, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1224, 30, 13, 76, 4, 9, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1225, 30, 13, 65, 8, 7, 8, N'#trættn Mye smak, passe kullsyre, lett å drikke. Yahtzee!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1226, 30, 13, 39, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1227, 30, 13, 54, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1228, 30, 13, 26, 3, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1229, 30, 13, 55, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1230, 30, 13, 52, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1231, 30, 13, 75, 8, 9, 8, N'Karamellpreg... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1232, 30, 13, 27, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1233, 30, 13, 67, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1234, 30, 13, 12, 8, 8, 8, N'😃')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1235, 30, 13, 70, 5, 5, 5, N'Husker helt talt ikke, den mentale kapasiteten er allerede halvert')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1236, 30, 13, 34, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1237, 30, 13, 56, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1238, 30, 13, 71, 6, 6, 6, N'Røyk!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1239, 84, 13, 14, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1240, 84, 13, 50, 7, 7, 7, N'¯\_( 👁︠ ͜ʖ ︡👁)_/¯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1241, 30, 13, 49, 7, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1242, 30, 13, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1243, 30, 13, 68, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1244, 30, 13, 51, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1245, 84, 13, 69, 7, 8, 7, N'Fransk øl, søtt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1246, 84, 13, 21, 10, 8, 9, N'Yeah yeah #BuvvetDeller')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1247, 84, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1248, 84, 13, 52, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1249, 84, 13, 43, 7, 4, 5, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1250, 84, 13, 39, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1251, 84, 13, 55, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1252, 84, 13, 64, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1253, 84, 13, 23, 5, 8, 5, N'Tja......')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1254, 84, 13, 54, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1255, 84, 13, 12, 6, 7, 6, N'😀')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1256, 84, 13, 74, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1257, 84, 13, 61, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1258, 84, 13, 76, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1259, 84, 13, 75, 5, 8, 6, N'Greit nok, kunne klart en slik')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1260, 84, 13, 17, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1261, 84, 13, 66, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1262, 84, 13, 53, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1263, 84, 13, 73, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1264, 84, 13, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1265, 84, 13, 49, 4, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1266, 84, 13, 65, 8, 7, 8, N'1#4 Litt sterk? Men god! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1267, 84, 13, 67, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1268, 84, 13, 26, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1269, 84, 13, 70, 7, 6, 7, N'Ganske god, litt anonym. Litt Simen Hegstad krüger')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1270, 84, 13, 28, 10, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1271, 84, 13, 41, 7, 6, 7, N'God')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1272, 84, 13, 68, 7, 7, 7, N'Lukter røyk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1273, 30, 13, 18, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1274, 84, 13, 40, 6, 4, 6, N'#14')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1275, 84, 13, 51, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1276, 84, 13, 71, 8, 8, 8, N'Litt røyk-preg, smakfull')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1277, 84, 13, 60, 7, 8, 7, N'Søtt, masse korn, sør europa. Typisk juleøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1278, 30, 13, 72, 6, 5, 5, N'Gammel traver, god men ikke spesiell')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1279, 84, 13, 72, 5, 6, 5, N'Veldig lik #13 søtlig. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1280, 83, 13, 1, 3, 3, 0, N'3')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1281, 30, 13, 1, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1282, 84, 13, 1, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1283, 85, 13, 69, 9, 8, 9, N'Norge, midt, juleøl, sterkt, søtt, dessert, ribbe ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1284, 85, 13, 66, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1285, 85, 13, 64, 8, 9, 8, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1286, 85, 13, 43, 8, 8, 8, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1287, 84, 13, 34, 6, 9, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1288, 85, 13, 55, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1289, 85, 13, 49, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1290, 85, 13, 39, 3, 6, 4, N'Bitter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1291, 85, 13, 41, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1292, 85, 13, 73, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1293, 85, 13, 36, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1294, 84, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1295, 85, 13, 76, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1296, 85, 13, 52, 1, 8, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1297, 85, 13, 12, 8, 8, 8, N'🙌')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1298, 85, 13, 27, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1299, 85, 13, 65, 6, 7, 6, N'Ferr stærtt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1300, 85, 13, 21, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1301, 85, 13, 54, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1302, 85, 13, 28, 5, 8, 6, N'Sterke saker')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1303, 85, 13, 75, 8, 10, 9, N'Veldig bra. Jatakk. Nå blir d jul... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1304, 85, 13, 23, 9, 8, 9, N'En juleøl som en juleøl skal smake')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1305, 86, 13, 43, 7, 6, 7, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1306, 85, 13, 74, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1307, 85, 13, 68, 9, 8, 8, N'Dessertøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1308, 85, 13, 67, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1309, 85, 13, 26, 3, 6, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1310, 84, 13, 18, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1311, 85, 13, 14, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1312, 85, 13, 1, 6, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1313, 85, 13, 60, 8, 8, 8, N'Norge, midt. Juleøl, sterkt, søtt. Dessert.  Godt juleøl!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1314, 85, 13, 51, 7, 7, 7, N'Mye lukt og smak. God, klassisk juleøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1315, 85, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1316, 85, 13, 18, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1317, 85, 13, 34, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1318, 85, 13, 70, 6, 7, 6, N'Litt spiss røyk. Ganske god. På skalaen NTNU-fag så er det mekanikk 2')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1319, 85, 13, 50, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1320, 85, 13, 71, 6, 7, 7, N'Klassisk juleøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1321, 85, 13, 61, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1322, 85, 13, 72, 8, 6, 7, N'Sterkt, lite smak i starten')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1323, 85, 13, 17, 7, 6, 7, N'<script>window.location.href = "http://www.bouvet.no";</script>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1324, 86, 13, 69, 7, 10, 9, N'Vanskelig å få tak i, dyrt, årgangsøl, kaffe og karamell ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1325, 86, 13, 66, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1326, 86, 13, 56, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1327, 86, 13, 61, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1328, 85, 13, 53, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1329, 86, 13, 39, 4, 9, 4, N'Jvlig bitter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1330, 87, 13, 43, 7, 6, 6, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1331, 85, 13, 40, 6, 7, 6, N'#15')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1332, 86, 13, 14, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1333, 86, 13, 52, 0, 2, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1334, 86, 13, 1, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1335, 86, 13, 34, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1336, 86, 13, 71, 7, 6, 6, N'Litt gløgg-ish')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1337, 86, 13, 75, 9, 9, 9, N'Pepperkaker. Smaker jul🤶 r ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1338, 86, 13, 49, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1339, 86, 13, 73, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1340, 86, 13, 23, 9, 7, 9, N'Denne krever litt god, feit julemat som følge')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1341, 86, 13, 54, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1342, 86, 13, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1343, 86, 13, 53, 9, 7, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1344, 86, 13, 17, 9, 6, 7, N'Julekos')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1345, 86, 13, 26, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1346, 86, 13, 41, 8, 9, 8, N'Skikkelig jul, godt med litt, men ikke en liter.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1347, 86, 13, 40, 7, 7, 8, N'#16')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1348, 86, 13, 68, 8, 7, 7, N'Gløggete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1349, 86, 13, 55, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1350, 86, 13, 21, 3, 3, 3, N'Nei ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1351, 86, 13, 67, 9, 5, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1352, 86, 13, 76, 5, 6, 5, N'Jåleøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1353, 86, 13, 50, 7, 7, 7, N'¯\_( 👁︠ ͜ʖ ︡👁)_/¯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1354, 86, 13, 51, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1355, 86, 13, 27, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1356, 86, 13, 60, 7, 6, 7, N'Vansk å få tak i, barley wine. Julekrydder, gløgg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1357, 86, 13, 65, 9, 8, 9, N'#Seisen Kveldens vinner? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1358, 86, 13, 70, 7, 7, 7, N'Pepperkakeknekkebrød ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1359, 86, 13, 74, 8, 7, 7.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1360, 86, 13, 12, 8, 6, 8, N'🎅')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1361, 86, 13, 18, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1362, 87, 13, 69, 10, 10, 9, N'Årgangsøl, utsolgt, 2016, ferskt øl, mørkt, mye alkohol ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1363, 87, 13, 14, 8, 10, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1364, 86, 13, 72, 9, 5, 7, N'Julekrydder, fyldig , rik mørk og kaffe')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1365, 87, 13, 50, 7, 7, 7, N'¯\_( 👁︠ ͜ʖ ︡👁)_/¯')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1366, 87, 13, 39, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1367, 87, 13, 66, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1368, 87, 13, 74, 9, 8, 8.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1369, 87, 13, 67, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1370, 87, 13, 27, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1371, 87, 13, 23, 10, 10, 10, N'Topp, ikke mer å diskutere')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1372, 87, 13, 54, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1373, 87, 13, 76, 6, 10, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1374, 87, 13, 53, 10, 10, 10, N'Prøv og kjøp denne')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1375, 87, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1376, 87, 13, 55, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1377, 87, 13, 61, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1378, 86, 13, 64, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1379, 87, 13, 1, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1380, 87, 13, 52, 0, 9, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1381, 87, 13, 71, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1382, 87, 13, 65, 10, 9, 10, N'#Søttn DENNE er vinneren (ikke #16 som jeg trodde) ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1383, 86, 13, 28, 9, 9, 9, N'Dagens overraskelse????')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1384, 87, 13, 75, 8, 10, 10, N'Høydare. Til julekaker... 🤗')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1385, 87, 13, 26, 1, 2, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1386, 87, 13, 49, 7, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1387, 87, 13, 73, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1388, 87, 13, 40, 8, 8, 8, N'#17')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1389, 87, 13, 21, 4, 4, 4, N'Skarp')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1390, 87, 13, 28, 9, 10, 9, N'Goooood!!!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1391, 87, 13, 34, 3, 8, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1392, 87, 13, 17, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1393, 87, 13, 70, 7, 5, 7, N'lun og Mild bestefar. Litt som han Ingar Helge Gimle.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1394, 87, 13, 60, 8, 7, 9, N'Årgangsøl, 2016, norsk, trappist-type. Best så langt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1395, 87, 13, 18, 2, 2, 2, N'Too much... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1396, 87, 13, 51, 9, 8, 8, N'God trappistøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1397, 87, 13, 68, 9, 8, 9, N'Fin og rund!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1398, 87, 13, 36, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1399, 87, 13, 12, 4, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1400, 87, 13, 72, 10, 6, 9, N'Rund og fin. Søt godt balansert')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1401, 59, 13, 52, 4, 10, 9, N'Rålakris')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1402, 59, 13, 14, 8, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1403, 87, 13, 64, 2, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1404, 59, 13, 27, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1405, 59, 13, 66, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1406, 59, 13, 39, 1, 6, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1407, 59, 13, 74, 6, 9, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1408, 59, 13, 49, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1409, 59, 13, 53, 8, 10, 8, N'Lakris')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1410, 59, 13, 54, 3, 8, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1411, 59, 13, 23, 5, 9, 5, N'For mye, rett og slett')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1412, 59, 13, 56, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1413, 59, 13, 61, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1414, 59, 13, 70, 10, 10, 10, N'Lakris er livet! Lakris er livet! Njuuuuuta')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1415, 59, 13, 21, 2, 2, 2, N'Nope')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1416, 59, 13, 1, 4, 3, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1417, 59, 13, 40, 4, 7, 4, N'#18')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1418, 59, 13, 17, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1419, 59, 13, 26, 2, 7, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1420, 87, 13, 41, 7, 8, 7, N'Gammel og sjelden')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1421, 59, 13, 50, 7, 7, 7, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1422, 59, 13, 34, 1, 7, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1423, 59, 13, 64, 1, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1424, 59, 13, 51, 6, 7, 6, N'Hostesaftlukt? 😷')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1425, 59, 13, 75, 9, 10, 9, N'Lakris, karamell, blir bra')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1426, 59, 13, 73, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1427, 59, 13, 28, 8, 10, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1428, 59, 13, 65, 8, 9, 8, N'#Atn For mye anis')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1429, 59, 13, 36, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1430, 59, 13, 55, 2, 6, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1431, 59, 13, 41, 6, 9, 6, N'Laaaaaakriiiiiizzzzzzzz! Kia synes den var god.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1432, 59, 13, 12, 7, 10, 8, N'Sambucca-ish')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1433, 59, 13, 60, 7, 8, 7, N'Vært med før, mørkt og sterkt, krydder. Liker ikke korianderfrø så godt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1434, 59, 13, 18, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1435, 59, 13, 76, 5, 9, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1436, 59, 13, 68, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1437, 59, 13, 71, 4, 5, 4, N'Søt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1438, 59, 13, 72, 6, 6, 5, N'Litt for søtt. Korsendunk?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1439, 59, 13, 43, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1440, 88, 13, 14, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1441, 88, 13, 74, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1442, 88, 13, 43, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1443, 88, 13, 66, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1444, 88, 13, 23, 4, 9, 4, N'Nei, denne er også for voldsom')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1445, 88, 13, 28, 8, 8, 8, N'Æ likt’n')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1446, 88, 13, 54, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1447, 88, 13, 64, 5, 3, 4, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1448, 88, 13, 21, 4, 4, 4, N'Oh dæven')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1449, 88, 13, 26, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1450, 88, 13, 39, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1451, 88, 13, 41, 7, 8, 7, N'Kaffe og sjokolade')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1452, 88, 13, 55, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1453, 88, 13, 1, 10, 8, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1454, 59, 13, 69, 3, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1455, 88, 13, 49, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1456, 88, 13, 18, 4, 4, 4, N'<a href="https://www.w3schools.com">Visit W3Schools</a>')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1457, 88, 13, 60, 6, 7, 6, N'Sør Europa, brown ale.  Litt for sterk? Spriker litt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1458, 88, 13, 70, 8, 2, 7, N'Rund glass-artig smak. Kanskje god og mild. Fin på en varm og rolig julekveld. Stygg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1459, 88, 13, 17, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1460, 88, 13, 69, 7, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1461, 88, 13, 65, 6, 6, 6, N'#19 Njæ, ikke like god som de beste')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1462, 88, 13, 75, 8, 8, 7, N'I overkant. Masse kompleksitet ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1463, 88, 13, 73, 6, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1464, 89, 13, 69, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1465, 88, 13, 53, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1466, 88, 13, 68, 8, 8, 8, N'Lær.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1467, 88, 13, 71, 6, 4, 6, N'Lærpreg')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1468, 88, 13, 36, 9, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1469, 88, 13, 51, 6, 6, 6, N'Lær')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1470, 88, 13, 52, 1, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1471, 88, 13, 34, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1472, 88, 13, 40, 5, 5, 5, N'#19')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1473, 88, 13, 72, 5, 5, 5, N'Udefinert, sterk sødme')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1474, 88, 13, 76, 6, 10, 8, N'Tuuung')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1475, 88, 13, 61, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1476, 89, 13, 64, 3, 6, 4, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1477, 89, 13, 26, 2, 5, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1478, 89, 13, 43, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1479, 59, 13, 67, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1480, 89, 13, 54, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1481, 89, 13, 14, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1482, 88, 13, 67, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1483, 89, 13, 39, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1484, 89, 13, 70, 2, 4, 2, N'Litt hjemmesnekra kanskje? Litt uraffinert og veldig gjæret')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1485, 89, 13, 75, 7, 7, 6, N'Tja.....🙄. Blir tøfft nå... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1486, 89, 13, 21, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1487, 89, 13, 67, 6, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1488, 89, 13, 52, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1489, 89, 13, 40, 6, 5, 4, N'#20')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1490, 89, 13, 53, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1491, 89, 13, 74, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1492, 89, 13, 1, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1493, 88, 13, 12, 8, 7, 7, N'😃')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1494, 89, 13, 18, 3, 3, 3, N'#20 For mye alko')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1495, 89, 13, 66, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1496, 89, 13, 41, 6, 5, 5, N'Bakerøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1497, 89, 13, 36, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1498, 89, 13, 68, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1499, 89, 13, 23, 6, 6, 6, N'Sexy? Nei, vet du hva!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1500, 89, 13, 51, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1501, 89, 13, 12, 6, 6, 7, N'🙃')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1502, 89, 13, 28, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1503, 89, 13, 60, 7, 7, 7, N'Belgisk, mørkt. Champagnegjær. Vin-noter. Koriander igjen, trekker ned')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1504, 89, 13, 71, 3, 4, 4, N'Ekkel-søt 😕')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1505, 89, 13, 65, 6, 5, 6, N'#tyve Kjedeli ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1506, 89, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1507, 89, 13, 55, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1508, 89, 13, 17, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1509, 89, 13, 61, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1510, 89, 13, 49, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1511, 88, 13, 56, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1512, 89, 13, 72, 6, 6, 5, N'Gyllen, spiss, søt, urter')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1513, 88, 13, 50, 7, 7, 7, N'Oppa gangnam styleっ-●益●)っ ,︵‿')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1514, 89, 13, 76, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1515, 89, 13, 56, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1516, 89, 13, 50, 7, 7, 7, N'¯\_( 👁︠ ͜ʖ ︡👁)_/Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1517, 89, 13, 34, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1518, 91, 13, 67, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1519, 91, 13, 43, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1520, 91, 13, 66, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1521, 91, 13, 14, 9, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1522, 91, 13, 26, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1523, 91, 13, 39, 0, 10, 2, N'Kvalmende')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1524, 91, 13, 54, 0, 4, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1525, 91, 13, 21, 1, 1, 1, N'Nope')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1526, 91, 13, 1, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1527, 91, 13, 23, 1, 8, 2, N'Kokosmakroner, hva har det å gjøre i et øl?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1528, 91, 13, 74, 7, 6, 6.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1529, 91, 13, 27, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1530, 91, 13, 23, 1, 8, 2, N'Kokosmakroner, hva har det å gjøre i et øl?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1531, 91, 13, 49, 8, 7, 7, N'Kliiiiiiin kokkosssss')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1532, 91, 13, 55, 6, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1533, 91, 13, 53, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1534, 91, 13, 56, 8.5, 6, 8.5, N'Arti Læll sjø')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1535, 91, 13, 12, 5, 6, 5, N'😒')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1536, 91, 13, 75, 4, 6, 4, N'Kokosmakroner... Tøff dessert 🤗 Pepperkaker gått ut på dato... ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1537, 91, 13, 51, 5, 6, 5, N'Buljong+ekstremt tydelig lakris. Bounty? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1538, 91, 13, 65, 4, 5, 4, N'#21 Klin Kokos smak, lukter heimert')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1539, 91, 13, 52, 1, 4, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1540, 91, 13, 17, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1541, 91, 13, 28, 9, 7, 7, N'Whaaaattt???? Crazy!!!!!!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1542, 91, 13, 70, 7, 6, 7, N'Klin kykkeli kokosbolle. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1543, 89, 13, 73, 9, 5, 8, N'Snedig! Engelsk konfekt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1544, 91, 13, 76, 1, 6, 2, N'Fysjamei #21')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1545, 91, 13, 71, 1, 3, 1, N'KOKOS 🤢')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1546, 91, 13, 61, 2, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1547, 91, 13, 64, 4, 10, 6, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1548, 91, 13, 41, 3, 5, 3, N'Fæl, men ikke full krise.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1549, 91, 13, 60, 6, 6, 5, N'Fra sør, bourbonfat. Noe som smaker kokos!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1550, 91, 13, 36, 2, 1, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1551, 91, 13, 72, 7, 6, 6, N'Lakris, kokos')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1552, 91, 13, 40, 6, 6, 5, N'#21')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1553, 91, 13, 18, 0, 0, 0, N'#21 Kan umulig være øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1554, 91, 13, 68, 1, 2, 1, N'Kokos og fusel. Yakk!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1555, 91, 13, 73, 9, 8, 8, N'Snedig! Engelsk konfekt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1556, 92, 13, 14, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1557, 91, 13, 34, 2, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1558, 92, 13, 66, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1559, 92, 13, 64, 4, 7, 5, N'Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It''s not a story the Jedi would tell you. It''s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1560, 92, 13, 43, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1561, 92, 13, 28, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1562, 92, 13, 21, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1563, 92, 13, 23, 4, 10, 5, N'For connoceurs🤗')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1564, 92, 13, 61, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1565, 92, 13, 41, 8, 10, 8, N'Kraftig dessert, men trenger ikke å være dessert.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1566, 92, 13, 54, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1567, 92, 13, 76, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1568, 92, 13, 36, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1569, 92, 13, 68, 8, 8, 8, N'Fin og rund - og sterk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1570, 92, 13, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1571, 92, 13, 55, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1572, 92, 13, 70, 5, 10, 5, N'Svart er den fineste fargen.  Smaksløkene er numme')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1573, 92, 13, 17, 7, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1574, 92, 13, 53, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1575, 92, 13, 52, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1576, 92, 13, 73, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1577, 92, 13, 39, 5, 10, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1578, 92, 13, 51, 6, 6, 6, N'15%')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1579, 92, 13, 74, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1580, 92, 13, 71, 7, 6, 6, N'Note to self: Vær forsiktig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1581, 92, 13, 60, 7, 7, 8, N'Dessert, sterkest 15%. Tåler styrken. Mye smak. Kraft.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1582, 92, 13, 75, 9, 7, 9, N'Massiv. God. Sterk... 🙄')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1583, 92, 13, 72, 7, 7, 7, N'God, rik men kunne vært bedre')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1584, 92, 13, 18, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1585, 92, 13, 65, 4, 5, 4, N'#22 For sterkt, null julesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1586, 92, 13, 49, 6, 5, 6, N'Færdig alt??? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1587, 92, 13, 40, 6, 6, 5, N'#22')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1588, 92, 13, 26, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1589, 92, 13, 34, 3, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1590, 92, 13, 12, 7, 7, 7, N'🤪')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1591, 92, 13, 56, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1592, 39, 14, 21, 7, 8, 8, N'Jau')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1593, 39, 14, 81, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1594, 39, 14, 14, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1595, 39, 14, 49, 8, 9, 8, N'Skikkelig karramællll')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1596, 39, 14, 43, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1597, 39, 14, 30, 5, 5, 5, N'Kjedelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1598, 39, 14, 52, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1599, 39, 14, 40, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1600, 39, 14, 13, 9, 9, 9, N'Noe morsomt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1601, 39, 14, 41, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1602, 39, 14, 73, 4, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1603, 39, 14, 69, 4, 8, 6, N'Røkt julegris!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1604, 39, 14, 53, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1605, 39, 14, 33, 4, 6, 5, N'Kjedelig, ikke noe julesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1606, 39, 14, 91, 5, 5, 5, N'Select passord from user')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1607, 39, 14, 88, 4, 7, 5, N'4')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1608, 39, 14, 62, 4, 7, 5, N'Vann med malt-smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1609, 39, 14, 36, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1610, 39, 14, 1, 1, 4, 3, N'Tynt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1611, 39, 14, 68, 7, 7, 7, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1612, 39, 14, 82, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1613, 39, 14, 67, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1614, 39, 14, 94, 5, 3, 5, N'Dahls er best, inntil i dag 🍻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1615, 39, 14, 37, 2, 3, 2.5, N'Nje')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1616, 39, 14, 87, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1617, 39, 14, 28, 5, 5, 5, N'Midt på dette. Passer oss midt i Norge')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1618, 39, 14, 60, 5, 8, 5, N'Greit juleøl, flott farge men litt kjedelig smak. Masse malt-smak.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1619, 39, 14, 18, 5, 7, 6, N'Ingen på team Stjørdal hverken lukter eller smaker noe... 😁')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1620, 39, 14, 27, 3, 4, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1621, 39, 14, 84, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1622, 39, 14, 76, 4, 8, 6, N'Eksotisk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1623, 39, 14, 92, 5, 4, 5, N'Utseende som cola blandet med vin. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1624, 39, 14, 31, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1625, 39, 14, 29, 3, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1626, 39, 14, 90, 6, 7, 6, N'Sikkert god med akkert')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1627, 39, 14, 55, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1628, 39, 14, 78, 4, 7, 5, N'Passa dårlig med sjokolade')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1629, 39, 14, 71, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1630, 39, 14, 80, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1631, 39, 14, 89, 3, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1632, 39, 14, 85, 5, 8, 6, N'Mer ølsmak enn julesmak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1633, 39, 14, 96, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1634, 39, 14, 99, 7, 5, 7, N'God klassisk. Smaker som en hyggelig kveld med peiskos')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1635, 39, 14, 83, 8, 8, 8, N'Et sikkerstikk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1636, 39, 14, 34, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1637, 39, 14, 61, 4, 6, 5, N'Rar, ubeskrivelig smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1638, 39, 14, 66, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1639, 39, 14, 95, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1640, 39, 14, 100, 8, 8, 9, N'Enkel og grei, sklir meget enkelt ned.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1641, 39, 14, 65, 4, 8, 4, N'Som meg: tynn og tvilsom')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1642, 39, 14, 47, 4, 6, 5, N'Fin øl, bedre enn Dahls'' polvariant!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1643, 39, 14, 93, 6, 8, 6, N'Glemte minner... Hvor er ribba?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1644, 39, 14, 97, 5, 7, 5, N'Tynn kryddersaft')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1645, 39, 14, 102, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1646, 39, 14, 98, 7, 7, 7, N'7')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1647, 95, 14, 49, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1648, 39, 14, 86, 1, 6, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1649, 95, 14, 91, 10, 10, 10, N'Nydelig! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1650, 95, 14, 1, 3, 5, 4, N'Svett sokk i følge Espen Ø')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1651, 95, 14, 69, 4, 4, 4, N'Søt lutefisk!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1652, 95, 14, 33, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1653, 95, 14, 52, 8, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1654, 39, 14, 101, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1655, 95, 14, 21, 6, 7, 6, N'Syns det va godt, æ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1656, 95, 14, 36, 5, 7, 6, N'Fin boks')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1657, 95, 14, 27, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1658, 95, 14, 13, 10, 8, 9, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1659, 95, 14, 67, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1660, 95, 14, 101, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1661, 95, 14, 87, 8, 6, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1662, 95, 14, 73, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1663, 95, 14, 89, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1664, 95, 14, 60, 4, 8, 5, N'ganske tam i grunnen, mindre julesmak enn den burde ha')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1665, 95, 14, 62, 4, 5, 5, N'Oss liker ikke rakrygga suppe')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1666, 95, 14, 76, 5, 3, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1667, 95, 14, 68, 9, 7, 8, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1668, 95, 14, 83, 4, 8, 5, N'Litt vassinj')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1669, 95, 14, 90, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1670, 95, 14, 28, 4, 5, 5, N'Dahls går foran ja! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1671, 95, 14, 66, 5, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1672, 39, 14, 72, 6, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1673, 95, 14, 96, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1674, 95, 14, 81, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1675, 95, 14, 18, 4, 6, 5, N'Litt tynn. - - truncate users ;')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1676, 95, 14, 37, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1677, 95, 14, 31, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1678, 95, 14, 82, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1679, 95, 14, 61, 3, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1680, 95, 14, 94, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1681, 95, 14, 85, 6, 7, 7, N'Meget drikkbar')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1682, 95, 14, 78, 3, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1683, 95, 14, 30, 7, 6, 7, N'God. Lettdrikkelig. Karamell. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1684, 95, 14, 29, 1, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1685, 95, 14, 47, 2, 4, 2, N'Rødbruspreg, ullen, tam')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1686, 95, 14, 102, 5, 4, 5, N'Like tynn som trumps bortforklaringer')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1687, 95, 14, 14, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1688, 95, 14, 88, 7, 6, 7, N'lætt og fin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1689, 95, 14, 95, 9, 8, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1690, 95, 14, 40, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1691, 95, 14, 43, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1692, 95, 14, 41, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1693, 95, 14, 65, 10, 8, 4, N'Første slurken var bedre enn Dahls, men helt middels')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1694, 95, 14, 71, 5, 5, 5, N'For tynn ja')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1695, 95, 14, 98, 5, 9, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1696, 95, 14, 53, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1697, 95, 14, 86, 2, 6, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1698, 95, 14, 55, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1699, 95, 14, 84, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1700, 95, 14, 97, 5, 5, 5, N'Myrvann')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1701, 95, 14, 93, 5, 9, 7, N'Brygga rakrygga med 10 kg sukker på ryggen?')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1702, 95, 14, 34, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1703, 95, 14, 100, 3, 9, 4, N'Krydret, men tam og litt daff. Designet er mer sexy enn innholdet')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1704, 95, 14, 99, 6, 7, 6, N'Smaker frisk fjellbekk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1705, 95, 14, 72, 5, 6, 6, N'Søtlig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1706, 95, 14, 80, 6, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1707, 95, 14, 92, 8, 7, 7, N'Har et lite hint av munnskyll')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1708, 102, 14, 91, 6, 6, 6, N'Heilt grei!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1709, 102, 14, 69, 6, 7, 6, N'Svidd ribbe!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1710, 102, 14, 41, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1711, 102, 14, 21, 5, 4, 4, N'Den støgg ! 🥴')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1712, 102, 14, 73, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1713, 102, 14, 94, 8, 4, 7, N'Goooood')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1714, 102, 14, 18, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1715, 102, 14, 52, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1716, 102, 14, 86, 2, 6, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1717, 102, 14, 67, 7, 7, 7, N'Itj shtøgg næi')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1718, 102, 14, 87, 6, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1719, 102, 14, 1, 4, 4, 4, N'Tja, lite smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1720, 102, 14, 102, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1721, 102, 14, 66, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1722, 102, 14, 62, 6, 7, 6, N'Nå begynner vi å snakke grevling, her! :)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1723, 102, 14, 93, 3, 5, 4, N'Lukter Torgalmenningen etter besøk av Vidar Johnsen....')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1724, 102, 14, 28, 7, 5, 6, N'7 fjell: liaåsen, månen, nymånen, solemsvåttan, jervfjellet, forbordsfjellet, vart det 7? Te mæ vart d karakter 6')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1725, 102, 14, 88, 3, 4, 3, N'neeeh.. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1726, 102, 14, 40, 5, 5, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1727, 102, 14, 72, 4, 5, 4, N'Sur sokk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1728, 102, 14, 83, 3, 7, 4, N'Nei')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1729, 102, 14, 84, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1730, 102, 14, 81, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1731, 102, 14, 96, 4, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1732, 102, 14, 14, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1733, 102, 14, 27, 3, 3, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1734, 102, 14, 98, 2, 7, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1735, 102, 14, 76, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1736, 102, 14, 43, 6, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1737, 102, 14, 30, 4, 4, 4, N'Ikkje bra. Mulig litt for kald.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1738, 102, 14, 65, 3, 8, 3, N'7 Fjell har gått på 7 smell')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1739, 102, 14, 80, 4, 3, 4, N'God lukt, men mister poeng for smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1740, 102, 14, 68, 8, 7, 7, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1741, 102, 14, 85, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1742, 102, 14, 55, 5, 4, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1743, 102, 14, 49, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1744, 102, 14, 101, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1745, 102, 14, 95, 4, 2, 4, N'Taaaam')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1746, 102, 14, 82, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1747, 102, 14, 78, 3, 5, 4, N'Lukta utedo')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1748, 102, 14, 89, 7, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1749, 102, 14, 37, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1750, 102, 14, 53, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1751, 102, 14, 60, 6, 5, 6, N'Som en litt kraftig ale på pub i england, sikkert bedre med julemat, men ikke noen favoritt her')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1752, 102, 14, 33, 5, 7, 6, N'Eim av sur bergenser')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1753, 102, 14, 97, 4, 3, 4, N'Forurenset regnvann')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1754, 102, 14, 71, 4, 6, 4, N'Spennende krydder, litt besk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1755, 102, 14, 90, 3, 4, 3, N'Kjedelig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1756, 102, 14, 99, 2, 8, 3, N'Ok lukt. Blir faktisk bedre for hver slurk. Overraskende egentlig')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1757, 102, 14, 47, 3, 4, 3, N'Dårlig skum, grei smak men noe ''kort og enkel'' ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1758, 102, 14, 31, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1759, 102, 14, 100, 3, 6, 4, N'Sexy og mystisk design. Tung smak.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1760, 102, 14, 34, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1761, 102, 14, 29, 2, 1, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1762, 102, 14, 36, 4, 6, 4, N'Hørt om han som er så liten at boblejakke hans har bare en boble? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1763, 96, 14, 81, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1764, 96, 14, 91, 1, 1, 1, N'Kaill kaffe & Pepsi Max')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1765, 96, 14, 80, 10, 9, 8, N'Nice')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1766, 96, 14, 28, 7, 8, 7, N'Det smaker dora men d e jo bra👍🏻')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1767, 96, 14, 69, 8, 9, 8, N'Einerøkt pinnekjøtt !!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1768, 96, 14, 73, 4, 7, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1769, 96, 14, 67, 5, 7, 6, N'Schtøgg ja')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1770, 96, 14, 94, 9, 7, 8, N'Den var dødsgod!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1771, 96, 14, 68, 9, 9, 9, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1772, 96, 14, 71, 6, 8, 6, N'Smaker litt røkt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1773, 96, 14, 83, 7, 9, 7, N'Rund som nissefar')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1774, 96, 14, 21, 7, 8, 7, N'Njæsj ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1775, 96, 14, 102, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1776, 102, 14, 92, 8, 7, 8, N'Smaker mye som Fairytale of Røros')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1777, 96, 14, 41, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1778, 96, 14, 88, 8, 8, 9, N'den va go''')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1779, 96, 14, 37, 6, 7, 6.5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1780, 96, 14, 18, 8, 8, 8, N'stEik-bra')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1781, 96, 14, 85, 8, 8, 8, N'Mektig! Ikke en å chugge ned. Veldig vakkert skum.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1782, 96, 14, 40, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1783, 96, 14, 62, 8, 7, 8, N'Nam nam, kanelstang!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1784, 96, 14, 49, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1785, 96, 14, 43, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1786, 96, 14, 30, 8, 8, 8, N'Myk, rund og god. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1787, 96, 14, 84, 4, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1788, 96, 14, 27, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1789, 102, 14, 13, 8, 7, 9, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1790, 96, 14, 87, 3, 6, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1791, 96, 14, 76, 6, 6, 6, N'Svarte')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1792, 96, 14, 78, 2, 5, 3, N'Æsj')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1793, 96, 14, 95, 3, 2, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1794, 96, 14, 52, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1795, 96, 14, 13, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1796, 96, 14, 66, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1797, 96, 14, 82, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1798, 96, 14, 1, 5, 5, 5, N'Asfalt og lakrisrot')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1799, 96, 14, 55, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1800, 96, 14, 93, 7, 7, 7, N'Marvins jul....')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1801, 96, 14, 72, 8, 7, 7, N'Veldig bra')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1802, 96, 14, 34, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1803, 96, 14, 65, 4, 7, 4, N'Alt for julete')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1804, 96, 14, 60, 7, 7, 7, N'Mer kompleks i smaken: lakris? eik, røyk, noe frukt? ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1805, 96, 14, 33, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1806, 102, 14, 61, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1807, 96, 14, 29, 2, 6, 3, N'Bitter ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1808, 96, 14, 86, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1809, 96, 14, 100, 3, 5, 4, N'Tung. Neitakk')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1810, 96, 14, 53, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1811, 96, 14, 96, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1812, 96, 14, 90, 2, 3, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1813, 96, 14, 98, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1814, 96, 14, 61, 5, 8, 0, N'Kan tygges')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1815, 96, 14, 89, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1816, 96, 14, 14, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1817, 96, 14, 99, 6, 7, 6, N'Mørk sirup er diggere enn lys')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1818, 96, 14, 31, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1819, 96, 14, 47, 7, 7, 7, N'Mektig og rik på smak. Silkemyk (milk stout?), fløtekaramell')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1820, 96, 14, 92, 2, 3, 3, N'Artig volum på boksen. Ølet har farge som en natt i desember. Lukter fruktig. Har et hint av gårsdagens kaffe med smuler av svidd brødskorpe.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1821, 96, 14, 97, 7, 7, 7, N'Begynner å ligne på øl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1822, 97, 14, 52, 7, 9, 8, N'Opptur')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1823, 97, 14, 67, 7, 6, 7, N'Schtøggod')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1824, 97, 14, 14, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1825, 102, 14, 77, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1826, 102, 14, 77, 6, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1827, 97, 14, 73, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1828, 97, 14, 87, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1829, 97, 14, 28, 8, 7, 8, N'Jei bocker mei i støvel')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1830, 97, 14, 91, 9, 9, 9, N'Nydelig! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1831, 97, 14, 69, 4, 3, 4, N'Tørket julegran!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1832, 97, 14, 21, 8, 7, 8, N'Burp ..')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1833, 97, 14, 94, 6, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1834, 97, 14, 84, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1835, 97, 14, 27, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1836, 97, 14, 88, 5, 6, 5, N'smaken forsvant så fort den kom')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1837, 97, 14, 13, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1838, 96, 14, 101, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1839, 96, 14, 101, 3, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1840, 97, 14, 83, 6, 7, 6, N'Dempet, som en snølagt vinternatt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1841, 96, 14, 36, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1842, 97, 14, 30, 6, 5, 6, N'Skuffende. Bedre enn butikk varianten. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1843, 97, 14, 78, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1844, 97, 14, 65, 3, 8, 3, N'Det kribler bak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1845, 97, 14, 62, 6, 7, 6, N'Ææææ. Monkey brew var bedre')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1846, 97, 14, 102, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1847, 97, 14, 102, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1848, 97, 14, 93, 8, 7, 8, N'Dette var virkelig bedre enn beinmarg...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1849, 97, 14, 18, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1850, 97, 14, 53, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1851, 97, 14, 1, 3, 4, 3, N'Covid')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1852, 97, 14, 85, 7, 5, 6, N'I søteste laget')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1853, 97, 14, 37, 4, 4, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1854, 97, 14, 90, 5, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1855, 97, 14, 31, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1856, 97, 14, 89, 7, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1857, 97, 14, 29, 2, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1858, 97, 14, 81, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1859, 97, 14, 40, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1860, 97, 14, 60, 8, 8, 8, N'Flott gylden farge og  god smak')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1861, 97, 14, 55, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1862, 97, 14, 66, 7, 8, 0, N'7')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1863, 97, 14, 80, 5, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1864, 97, 14, 76, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1865, 97, 14, 71, 7, 7, 7, N'God allround juleøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1866, 97, 14, 82, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1867, 97, 14, 43, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1868, 97, 14, 98, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1869, 97, 14, 86, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1870, 97, 14, 33, 8, 6, 7, N'Førelpig favoritt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1871, 97, 14, 34, 8, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1872, 97, 14, 100, 4, 7, 5, N'Billig design, minner om Sverige. Litt for fruity/krydra. Litt tung.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1873, 97, 14, 99, 3, 4, 3, N'Rødlig. Cheap. smaker som siste ølet på nachet som varte alt for lenge')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1874, 97, 14, 61, 5, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1875, 97, 14, 72, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1876, 97, 14, 68, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1877, 97, 14, 95, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1878, 97, 14, 97, 7, 4, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1879, 100, 14, 102, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1880, 97, 14, 96, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1881, 97, 14, 49, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1882, 97, 14, 92, 6, 8, 6, N'Ser ut som ananasbrus som har fått dampe litt i solen. Har en eim av ubehandlet trepanel som har vært liggende i vann. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1883, 97, 14, 47, 8, 8, 8, N'Godt ribbeøl. Mye sødme og godt maltpreg.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1884, 100, 14, 83, 10, 8, 10, N'WOW!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1885, 97, 14, 41, 5, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1886, 100, 14, 69, 8, 9, 9, N'Julebukk...nei julegeit!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1887, 100, 14, 28, 9, 7, 8, N'Donald Dunkel Duck Bock')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1888, 100, 14, 13, 10, 10, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1889, 100, 14, 30, 7, 7, 6, N'Helt grei')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1890, 100, 14, 87, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1891, 100, 14, 88, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1892, 100, 14, 21, 6, 9, 7, N'Julebrokken va sur ...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1893, 100, 14, 66, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1894, 100, 14, 71, 8, 8, 8, N'Denne hadde vært god til vilt!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1895, 100, 14, 80, 8, 7, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1896, 100, 14, 73, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1897, 100, 14, 82, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1898, 100, 14, 27, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1899, 100, 14, 65, 6, 8, 8, N'JuleSCHMOKK! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1900, 100, 14, 68, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1901, 100, 14, 53, 7, 7, 7, N'Lukter litt fis')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1902, 100, 14, 68, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1903, 100, 14, 33, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1904, 100, 14, 78, 7, 8, 8, N'Oi')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1905, 100, 14, 52, 4, 7, 5, N'Hubba bubba')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1906, 100, 14, 40, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1907, 100, 14, 84, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1908, 100, 14, 85, 8, 6, 7, N'Itj så reingæli')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1909, 97, 14, 36, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1910, 100, 14, 94, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1911, 100, 14, 1, 7, 7, 7, N'Beste så langt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1912, 100, 14, 86, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1913, 100, 14, 67, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1914, 100, 14, 76, 7, 9, 8, N'Heøy')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1915, 100, 14, 43, 7, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1916, 100, 14, 37, 6, 6, 6, N'smake bra')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1917, 100, 14, 34, 9, 10, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1918, 100, 14, 61, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1919, 100, 14, 18, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1920, 100, 14, 31, 8, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1921, 100, 14, 96, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1922, 100, 14, 60, 8, 8, 9, N'Litt sterkere øl, mye smak, fruktig. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1923, 100, 14, 55, 4, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1924, 100, 14, 29, 3, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1925, 100, 14, 81, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1926, 100, 14, 91, 5, 5, 5, N'Heilt grei!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1927, 100, 14, 14, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1928, 100, 14, 90, 4, 5, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1929, 100, 14, 93, 5, 5, 5, N'"Per Mathias"-øl...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1930, 100, 14, 62, 7, 8, 6, N'Jøsspeis!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1931, 100, 14, 100, 6, 9, 6, N'Sexy design. Grei smak! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1932, 100, 14, 97, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1933, 100, 14, 89, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1934, 100, 14, 72, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1935, 100, 14, 99, 5, 3, 5, N'Poeng for å være annerledes. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1936, 100, 14, 47, 8, 8, 8, N'Snill, fyldig, god. Koseøl :-)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1937, 100, 14, 98, 4, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1938, 100, 14, 49, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1939, 100, 14, 95, 7, 4, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1940, 101, 14, 60, 7, 8, 8, N'Lørdagsgodteri! FLytende karamell, jo! men ubalansert mye sødme')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1941, 97, 14, 101, 6, 7, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1942, 101, 14, 83, 10, 10, 10, N'Ønsker meg litt multekrem nå')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1943, 101, 14, 69, 10, 8, 10, N'Lakk-gris!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1944, 101, 14, 93, 4, 5, 6, N'Lettspydd... Kokos.... Vin er bedre!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1945, 101, 14, 13, 7, 7, 7, N'Noe morso')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1946, 101, 14, 73, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1947, 101, 14, 101, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1948, 101, 14, 87, 2, 10, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1949, 101, 14, 68, 10, 10, 10, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1950, 101, 14, 68, 10, 10, 10, N'Noe morsomt')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1951, 101, 14, 52, 1, 10, 2, N'Hjelp')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1952, 101, 14, 82, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1953, 101, 14, 27, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1954, 101, 14, 21, 8, 9, 9, N'Jeven hårrå !!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1955, 101, 14, 86, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1956, 101, 14, 67, 9, 7, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1957, 101, 14, 85, 8, 10, 8, N'Trudd det va ølsmaking, ikke karamellsaussmaking')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1958, 100, 14, 41, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1959, 101, 14, 81, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1960, 101, 14, 30, 9, 9, 9, N'Knallgod i veeeldig små mengder. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1961, 101, 14, 43, 8, 5, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1962, 101, 14, 98, 2, 7, 2, N'Fin for sosiopater')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1963, 101, 14, 84, 6, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1964, 101, 14, 95, 3, 3, 3, N'Dette er cheridan sukkerlake med karamellsaus')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1965, 101, 14, 66, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1966, 101, 14, 14, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1967, 101, 14, 94, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1968, 101, 14, 49, 4, 3, 5, N'Ser ut som soyasaus, lukter som ostekake og smaker Bayleys')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1969, 101, 14, 28, 9, 7, 9, N'Royal Amundsen!!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1970, 101, 14, 88, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1971, 101, 14, 99, 7, 5, 6, N'Willy wonka som tar seg et bad i ølspa')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1972, 101, 14, 55, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1973, 101, 14, 33, 3, 6, 4, N'Amundsen levere dessertøl')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1974, 101, 14, 61, 5, 7, 0, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1975, 101, 14, 1, 7, 8, 8, N'Karamellpudding! 🍮')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1976, 101, 14, 53, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1977, 101, 14, 78, 2, 4, 3, N'Fytti kaittn')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1978, 101, 14, 76, 5, 6, 6, N'Candy King')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1979, 39, 14, 79, 5, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1980, 101, 14, 37, 7, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1981, 101, 14, 47, 5, 7, 6, N'Godt gjort!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1982, 101, 14, 89, 5, 8, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1983, 101, 14, 18, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1984, 101, 14, 92, 3, 6, 4, N'Ser ut som smeltet lakris. Lukter hva det lukter. Smaker som karamellpudding med antibac i stedet for vaniljesaus. representerer smaken nøyaktig.')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1985, 101, 14, 72, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1986, 101, 14, 40, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1987, 101, 14, 65, 3, 7, 5, N'Mangler bare kremtoppen på karamellpuddingen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1988, 101, 14, 34, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1989, 101, 14, 102, 8, 8, 8, N'Bittersøt - akkurat som Renate')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1990, 101, 14, 90, 7, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1991, 101, 14, 96, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1992, 101, 14, 100, 5, 7, 5, N'Ashes. ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1993, 101, 14, 29, 5, 4, 4, N'God 🥳')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1994, 101, 14, 41, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1995, 101, 14, 31, 9, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1996, 101, 14, 62, 9, 9, 9, N'Nam nam (i shotglass)')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1997, 101, 14, 91, 0, 0, 0, N'Fy og fysj! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1998, 99, 14, 52, 1, 10, 1, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (1999, 99, 14, 13, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2000, 99, 14, 87, 1, 9, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2001, 99, 14, 82, 3, 5, 3, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2002, 99, 14, 90, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2003, 99, 14, 21, 5, 9, 6, N'Herregaids')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2004, 99, 14, 37, 4, 5, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2005, 99, 14, 73, 7, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2006, 99, 14, 94, 8, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2007, 99, 14, 28, 9, 8, 9, N'Sucker for tøff øl eller Ilaøl som æ vil kalt d!!!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2008, 99, 14, 30, 10, 10, 10, N'Vinner')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2009, 99, 14, 68, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2010, 99, 14, 68, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2011, 99, 14, 92, 3, 6, 4, N'Deler de samme usjarmerende trekkene som ashes to ashes, bare at denne vanhelliger ost i tillegg til karamellpudding. Den hornete karen på etikken gir et godt bilde av smaken')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2012, 99, 14, 14, 7, 9, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2013, 99, 14, 88, 9, 9, 9, N'kveldens desiderte vinner')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2014, 99, 14, 1, 9, 9, 9, N'❤️❤️❤️🎠🎠🎠❤️❤️❤️')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2015, 99, 14, 43, 6, 5, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2016, 99, 14, 85, 6, 10, 7, N'Rosévin')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2017, 100, 14, 36, 10, 7, 10, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2018, 99, 14, 93, 7, 6, 6, N'Spiss i smaken, men fortsatt lettspydd...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2019, 99, 14, 60, 8, 7, 9, N'Kraftige saker, mye sødme og styrke. Best av de søte og sterke')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2020, 101, 14, 36, 7, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2021, 99, 14, 55, 5, 7, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2022, 99, 14, 27, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2023, 99, 14, 78, 1, 3, 2, N'I alle dager')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2024, 99, 14, 83, 4, 7, 4, N'hoi hoi hoi')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2025, 99, 14, 67, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2026, 99, 14, 84, 8, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2027, 99, 14, 69, 5, 7, 5, N'Multekrem!!')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2028, 99, 14, 66, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2029, 99, 14, 62, 8, 8, 8, N'Tja')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2030, 99, 14, 18, 7, 7, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2031, 99, 14, 89, 7, 6, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2032, 99, 14, 40, 6, 8, 7, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2033, 99, 14, 61, 5, 7, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2034, 99, 14, 100, 3, 4, 4, N'Nasty, ikke på en kinky måte...')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2035, 99, 14, 47, 6, 7, 7, N'Se forrige. Men litt mer balanse i denne her')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2036, 99, 14, 53, 8, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2037, 99, 14, 81, 9, 9, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2038, 99, 14, 29, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2039, 99, 14, 91, 0, 0, 0, N'Satan! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2040, 99, 14, 91, 0, 0, 0, N'Satan! ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2041, 99, 14, 98, 2, 7, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2042, 99, 14, 76, 3, 6, 4, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2043, 99, 14, 65, 2, 6, 3, N'Gryla smakt bare sprit ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2044, 99, 14, 95, 2, 2, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2045, 99, 14, 41, 9, 8, 9, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2046, 101, 14, 97, 8, 7, 7, N'Kokosnøtt ')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2047, 99, 14, 99, 1, 4, 1, N'Donerer denne til taper av quizen')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2048, 99, 14, 86, 8, 8, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2049, 99, 14, 102, 9, 9, 9, N'Dessert på boks')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2050, 99, 14, 72, 9, 7, 8, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2051, 99, 14, 97, 7, 7, 7, N'Nam')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2052, 99, 14, 34, 6, 6, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2053, 99, 14, 33, 2, 4, 2, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2054, 101, 14, 71, 4, 6, 5, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2055, 99, 14, 71, 6, 6, 6, N'Smaker kake')
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2056, 101, 14, 80, 4, 8, 6, NULL)
GO
INSERT [dbo].[Vote] ([VoteId], [BeerId], [TastingId], [TasterId], [Taste], [Appearance], [Overall], [Note]) VALUES (2057, 95, 14, 79, 3, 4, 5, NULL)
GO
SET IDENTITY_INSERT [dbo].[Vote] OFF
GO
ALTER TABLE [dbo].[Beer] ADD  DEFAULT ((0)) FOR [BeerClassId]
GO
ALTER TABLE [dbo].[Tasting] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TastingDate]
GO
ALTER TABLE [dbo].[Beer]  WITH CHECK ADD  CONSTRAINT [FK_Beer_Beerstyle_BeerStyleId] FOREIGN KEY([BeerStyleId])
REFERENCES [dbo].[Beerstyle] ([BeerstyleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Beer] CHECK CONSTRAINT [FK_Beer_Beerstyle_BeerStyleId]
GO
ALTER TABLE [dbo].[Beer]  WITH CHECK ADD  CONSTRAINT [FK_Beer_Brewery_BreweryId] FOREIGN KEY([BreweryId])
REFERENCES [dbo].[Brewery] ([BreweryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Beer] CHECK CONSTRAINT [FK_Beer_Brewery_BreweryId]
GO
ALTER TABLE [dbo].[TastingBeer]  WITH CHECK ADD  CONSTRAINT [FK_TastingBeer_Beer_BeerId] FOREIGN KEY([BeerId])
REFERENCES [dbo].[Beer] ([BeerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TastingBeer] CHECK CONSTRAINT [FK_TastingBeer_Beer_BeerId]
GO
ALTER TABLE [dbo].[TastingBeer]  WITH CHECK ADD  CONSTRAINT [FK_TastingBeer_Tasting_TastingId] FOREIGN KEY([TastingId])
REFERENCES [dbo].[Tasting] ([TastingId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TastingBeer] CHECK CONSTRAINT [FK_TastingBeer_Tasting_TastingId]
GO
