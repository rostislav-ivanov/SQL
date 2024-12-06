CREATE OR ALTER FUNCTION ufn_CalculateFutureValue 
(
	@sum DECIMAL,
	@rate FLOAT, 
	@years INT
)
RETURNS DECIMAL(18,4)
BEGIN
	DECLARE @futureValue DECIMAL(18,4) = @sum * POWER((1 + @rate), @years);
	RETURN  @futureValue;
END;

GO


SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5);