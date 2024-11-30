USE HotelDb;

UPDATE Payments
SET TaxRate = 30;

UPDATE Payments
SET TaxRate = TaxRate * 0.97;