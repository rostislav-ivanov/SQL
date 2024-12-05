CREATE OR ALTER FUNCTION ufn_IsWordComprised
(
	@setOfLetters VARCHAR(50),
	@word VARCHAR(50)
) 
RETURNS BIT
AS
BEGIN
	DECLARE @isComprised BIT = 1;
	SET @setOfLetters = UPPER(@setOfLetters);
	SET @word = UPPER(@word);
	DECLARE @i INT = 1
	WHILE @i <  LEN(@word)
	BEGIN
		DECLARE @char CHAR = SUBSTRING(@word, @i, 1);
		IF CHARINDEX(@char, @setOfLetters) = 0
		BEGIN
			SET @isComprised = 0;
			BREAK;
		END
		SET @i += 1;
	END;
	RETURN @isComprised
END;

GO


