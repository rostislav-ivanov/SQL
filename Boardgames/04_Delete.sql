BEGIN TRANSACTION

DELETE CreatorsBoardgames
WHERE BoardgameId IN (
	SELECT cb.BoardgameId
	FROM Addresses AS a
	JOIN Publishers AS p ON p.AddressId = a.Id
	JOIN Boardgames AS b ON b.PublisherId = p.Id
	JOIN CreatorsBoardgames AS cb ON cb.BoardgameId = b.Id
	WHERE LEFT(Town, 1) = 'L'
);

DELETE Boardgames
WHERE PublisherId IN (
	SELECT p.Id
	FROM Addresses AS a
	JOIN Publishers AS p ON p.AddressId = a.Id
	JOIN Boardgames AS b ON b.PublisherId = p.Id
	WHERE LEFT(Town, 1) = 'L'
);

DELETE Publishers
WHERE AddressId IN (
	SELECT 
		a.Id
	FROM Addresses AS a
	JOIN Publishers AS p ON p.AddressId = a.Id
	WHERE LEFT(Town, 1) = 'L'
);

DELETE Addresses
WHERE LEFT(Town, 1) = 'L';


SELECT * FROM Addresses
ORDER BY Town;
ROLLBACK TRANSACTION;