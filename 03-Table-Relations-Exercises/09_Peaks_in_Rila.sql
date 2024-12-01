USE Geography;


SELECT
	m.MountainRange,
	p.PeakName,
	p.Elevation
FROM Mountains AS m
JOIN Peaks AS p
ON m.Id = P.MountainId
WHERE m.MountainRange = 'Rila'
ORDER BY p.Elevation DESC;