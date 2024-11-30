USE Geography

SELECT TOP 30
	c.CountryName,
	c.[Population]
FROM Continents 
JOIN Countries AS c
ON Continents.ContinentCode = c.ContinentCode
WHERE Continents.ContinentName = 'Europe'
ORDER BY c.[Population] DESC, c.CountryName;