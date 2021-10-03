USE [BouvetBeertastingDb]
GO

ALTER TABLE dbo.TastingResult
DROP COLUMN BeerClassId, BeerName, BreweryName, BeerStyle, Abv, BreweryUrl, RateBeerUrl, BeerClassName
GO