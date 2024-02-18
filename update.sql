USE project;

DELETE FROM Klienci WHERE NumerKontrahenta=12;

DELETE FROM Marki WHERE nazwa='Volkswagen';

UPDATE Samochody
SET VIN = '77777777777777777'
WHERE VIN = 'JHLRE487594096950';

UPDATE Klienci
SET NIP = '1111111111'
WHERE NIP = '1235437765';

UPDATE Dealerzy
SET Nazwa = 'Audi Plichta Stadion'
WHERE Nazwa = 'Audi Gdañsk Stadion';

SELECT * FROM JazdyTestowe
SELECT * FROM Samochody
SELECT * FROM Zamowienia
SELECT * FROM Nadwozia
SELECT * FROM Silniki
SELECT * FROM Paliwa
SELECT * FROM Klienci
SELECT * FROM Modele
SELECT * FROM Marki
SELECT * FROM Dealerzy