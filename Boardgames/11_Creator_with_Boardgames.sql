CREATE FUNCTION udf_CreatorWithBoardgames
(
	@name NVARCHAR(30)
)
RETURNS INT
AS
BEGIN
	DECLARE @count INT = (
		SELECT COUNT(*)
		FROM [Creators] AS c
		JOIN [CreatorsBoardgames] AS cb ON cb.[CreatorId] = c.[Id]
		WHERE c.[FirstName] = @name)
	RETURN @count
END;

GO


SELECT dbo.udf_CreatorWithBoardgames('Bruno');