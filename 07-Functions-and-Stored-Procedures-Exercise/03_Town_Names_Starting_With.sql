CREATE OR ALTER PROCEDURE usp_GetTownsStartingWith 
	@TownFirstLetter CHAR
AS
BEGIN
	SELECT [Name] AS [Town]
	  FROM [SoftUni].[dbo].[Towns]
	  WHERE UPPER(LEFT([Name], 1)) = UPPER(@TownFirstLetter)
END;

GO

EXEC usp_GetTownsStartingWith @TownFirstLetter = 'b';
