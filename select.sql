USE project;

/*
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48757C077750','C405','Polska',2019, 4, 10500, (SELECT ID FROM Modele WHERE nazwa='Octavia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TSI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AAARE48757C096955','A380','Polska',2021, 8, 10000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=15));
INSERT INTO Zamowienia (DataZlozenia, Zaliczka, PrzewidywanyCzasDostawy, Kwota, Zamawiajacy) VALUES
('2024-01-01', 0, '2024-02-01', 12000, 4),
('2024-01-02', 0, '2024-02-15', 330000, 19),
('2024-01-03', 0, '2024-02-05', 111100, 17);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('CCCCCCC757C096950','AB05','Polska',2019, 4, 111000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gda�sk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=21),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AAAAAAA757C096950','AB05','Polska',2019, 4, 111000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gda�sk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=22),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('BBBBBBB757C096950','ABBB','Polska',2019, 4, 11000, (SELECT ID FROM Modele WHERE nazwa='Mondeo'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TDI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gda�sk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=23),NULL);
*/
/*
1. Z uwagi na ograniczenia narzucone przez nowe przepisy dotycz�ce starych
samochod�w z silnikiem diesla w�a�ciciel jest zmuszony zrobi� przegl�d posiadanych
samochod�w. Uporz�dkuj samochody rosn�co wzgl�dem rocznika korzystaj�ce z
diesela
*/

/*
SELECT Samochody.VIN, Samochody.Rocznik, Marki.Nazwa, Modele.Nazwa, Silniki.Oznaczenie FROM Samochody
	JOIN Modele ON Samochody.Model = Modele.ID
	JOIN Marki ON Modele.Marka = Marki.ID
	JOIN Silniki ON Samochody.Silnik = Silniki.Oznaczenie
	JOIN Paliwa ON Silniki.Paliwo = Paliwa.ID
		WHERE Paliwa.Typ = 'diesel'
		ORDER BY Samochody.Rocznik ASC;
*/

/*
2 Zrobi� tabelk� kt�ra b�dzie przechowywa�a wszystkie samochody dost�pne od r�ki czyli takie, kt�re
nie maj� w�a�ciciela oraz nie s� zapisane na �adn� jazd� testow�. Ponadto ich silnik musi mie� moc 
wi�ksz� ni� 100 KM.
*/

--DROP VIEW SamochodyOdReki


/*
GO

CREATE VIEW SamochodyOdReki AS
SELECT Marki.Nazwa Marka, Modele.Nazwa Model, S.VIN, S.Silnik, S.KodLakieru, S.KrajPochodzenia, S.Rocznik, S.Generacja, S.Przebieg
FROM Samochody S
JOIN Modele ON S.Model = Modele.ID
JOIN Marki ON Modele.Marka = Marki.ID
WHERE S.Zamowienie IS NULL
  AND S.VIN NOT IN (SELECT DISTINCT JazdyTestowe.VIN FROM JazdyTestowe WHERE JazdyTestowe.VIN IS NOT NULL)
  AND S.VIN IN (
      SELECT DISTINCT S.VIN
      FROM Samochody S
      JOIN Silniki ON S.Silnik = Silniki.Oznaczenie
      WHERE Silniki.Moc > 100
  );
*/
  


--SELECT * FROM SamochodyOdReki;

/*SELECT S.VIN, S.KodLakieru, S.KrajPochodzenia, S.Rocznik, S.Generacja, S.Przebieg
FROM SamochodyOdReki S
WHERE S.KrajPochodzenia = 'Polska'
*/

/*
3. Aby przedstawi� odpowiednie oferty klientom potrzebna jest lista klient�w kt�rzy
kupuj� samochody o najwi�kszej pojemno�ci. Podaj alfabetycznie Nazwiska os�b,
kt�rych samochody (silniki) maj� pojemno�� powy�ej 1.6 litra
*/

/*
SELECT DISTINCT Klienci.Nazwisko, Klienci.Imie/*, Marki.Nazwa, Modele.Nazwa, Silniki.Oznaczenie*/ FROM Klienci
	JOIN Samochody ON Klienci.NumerKontrahenta = Samochody.Wlasciciel
	JOIN Silniki ON Samochody.Silnik = Silniki.Oznaczenie
	JOIN Modele ON Samochody.Model = Modele.ID
	JOIN Marki ON Modele.Marka = Marki.ID
		WHERE Silniki.Pojemnosc > 1600
		ORDER BY Klienci.Nazwisko ASC;
*/

/*
4. Ile samochod�w konkretnej marki I modelu zam�wiono, gdzie zaliczka nie zosta�a jeszcze
wp�acona?
*/

/*
SELECT Marki.Nazwa, Modele.Nazwa, COUNT(*) AS LiczbaSamochodow FROM Samochody
	JOIN Modele ON Samochody.Model = Modele.ID
	JOIN Marki ON Modele.Marka = Marki.ID
	JOIN Zamowienia ON Samochody.Zamowienie = Zamowienia.NumerZamowienia
	WHERE Zamowienia.Zaliczka = 0
		GROUP BY Marki.Nazwa, Modele.Nazwa;
*/


/*
5. Podaj imi� I nazwisko klienta kt�ry by� na dw�ch jazdach testowych I zam�wi� conajmniej
jeden samoch�d
*/

/*
SELECT Klienci.Imie, Klienci.Nazwisko FROM Klienci
	JOIN JazdyTestowe ON Klienci.NumerKontrahenta = JazdyTestowe.NumerKontrahenta
	JOIN Zamowienia ON Klienci.NumerKontrahenta = Zamowienia.Zamawiajacy
		WHERE Klienci.NumerKontrahenta IN (
			SELECT NumerKontrahenta FROM JazdyTestowe
				GROUP BY NumerKontrahenta
				HAVING COUNT(*) >= 2
		)
		AND Zamowienia.NumerZamowienia IS NOT NULL
		GROUP BY Klienci.Imie, Klienci.Nazwisko;
*/


/*
6. Jaki model samochodu o danym typie nadwozia I danym paliwie jest zamawiany
najcze�ciej?
*/

/*
SELECT Marki.Nazwa, Modele.Nazwa, Nadwozia.Typ, Paliwa.Typ, COUNT(*) AS LiczbaZamowien FROM Samochody
	JOIN Modele ON Samochody.Model = Modele.ID
	JOIN Marki ON Modele.Marka = Marki.ID
	JOIN Nadwozia ON Samochody.Nadwozie = Nadwozia.ID
	JOIN Silniki ON Samochody.Silnik = Silniki.Oznaczenie
	JOIN Paliwa ON Silniki.Paliwo = Paliwa.ID
	JOIN Zamowienia ON Samochody.Zamowienie = Zamowienia.NumerZamowienia
		GROUP BY Marki.Nazwa, Modele.Nazwa, Nadwozia.Typ, Paliwa.Typ
		ORDER BY COUNT(*) DESC
*/