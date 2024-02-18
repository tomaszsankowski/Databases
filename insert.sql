use Project;

INSERT INTO Dealerzy (Nazwa, Adres) VALUES
('BMW Zdunek','Mia³ki Szlak 59, Gdañsk'),
('Carter Chodzeñ','Magnacka 9, Kowale'),
('Toyota Walder','Oliwska 58, Chwaszczyno'),
('EURO-CAR','Morska 491, Gdynia'),
('Toyota Carter','Grunwaldzka 260, Gdañsk'),
('Bawaria Motors','Grunwaldzka 195, Gdañsk'),
('Renault Zdunek','Mia³ki Szlak 43, Gdañsk'),
('Zdunek KMJ','Grunwaldzka 295, Gdañsk'),
('BMG Goworowski','£u¿ycka 9, Gdynia'),
('BMG Gowronowski','Elbl¹ska 81, Gdañsk'),
('FordStore Euro-Car','Owsiana 13, Gdynia'),
('Audi Centrum Gdañsk','Lubiwidzka 44, Gdañsk'),
('Audi City Gdañsk','Grunwaldzka 347, Gdañsk'),
('Audi Gdañsk Stadion','Marynarki Polskiej 90, Gdañsk'),
('Mercedes-Benz Witman','Grunwaldzka 493, Gdañsk'),
('Porsche Centrum Sopot','Niepodleg³oœci 637, Sopot'),
('Salon Plichta','Marynarki Polskiej 94, Gdañsk'),
('Skoda Plichta Gdañsk','Grunwaldzka 339, Gdañsk'),
('Skoda Plichta Gdynia','Morska 80, Gdañsk'),
('Skoda Plichta Wejherowo','Gdañska 13c, Wejherowo');

INSERT INTO Klienci(Imie, Nazwisko, NumerTelefonu, NIP) VALUES
('Jan','Rogowski','534523053',NULL),
('Piotr','Sulewski','552334643','1235437765'),
('Adam','Pacek','123442643','6635438765'),
('Kajetan','Joskowski','534788993',NULL),
('Oskar','Wojnowski','873994999','5930646850'),
('Kamil','Stawiarski','554653325',NULL),
('Maja','Mazurek','302984503',NULL),
('Maja','Skoczek','334275441',NULL),
('Marcin','Skoczek','463788564','2349839733'),
('Marcin','Pozorski','968463729',NULL),
('Kacper','Mazur','718885375',NULL),
('Kacper','Rozenkranc','886262624',NULL),
('Elon','Musk','887402955','1122334489'),
('Igor','Stadnicki','492750356','1145235155'),
('Adam','Bucior','593850295','3359285102'),
('Anna','Sysoeva','513419812',NULL),
('Anna','Owczarek','518368418',NULL),
('Kamil','Hirsz','888765943',NULL),
('Piotr','Senn','444535286',NULL),
('Michal','Murawski','840205239','1005738422');

INSERT INTO Silniki (Oznaczenie, Pojemnosc, Moc, Paliwo) VALUES
('1.0TSI', 999, 100, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.2TSI', 1197, 130, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.5TSI', 1489, 150, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('2.0TSI', 1997, 245, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.6MPI', 1589, 90, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.2MPI', 1199, 60, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.6GLX', 1590, 75, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('2.0TFSI', 1996, 255, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('35TFSI', 2000, 180, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('55TFSI', 3000, 345, (SELECT ID FROM Paliwa WHERE Typ = 'benzyna')),
('1.9TDI', 1896, 105, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('1.9CDI', 1899, 100, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('2.0TDI', 1994, 150, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('1.6TDI', 1588, 110, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('2.0d', 1999, 140, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('1.4TDI', 1386, 90, (SELECT ID FROM Paliwa WHERE Typ = 'diesel')),
('55ETRON', NULL, 500, (SELECT ID FROM Paliwa WHERE Typ = 'elektryczny')),
('35ETRON', NULL, 350, (SELECT ID FROM Paliwa WHERE Typ = 'elektryczny')),
('2.0HEV', 1999, 170, (SELECT ID FROM Paliwa WHERE Typ = 'hybryda')),
('1.5H', 1499, 115, (SELECT ID FROM Paliwa WHERE Typ = 'hybryda'));

INSERT INTO Marki (Nazwa) VALUES
('Ford'),
('Skoda'),
('Volkswagen'),
('Fiat'),
('Audi'),
('Mercedes-Benz'),
('BMW'),
('Porsche'),
('Bentley'),
('Toyota'),
('Honda'),
('Subaru'),
('Ferrari'),
('Opel'),
('Seat'),
('Cupra'),
('Lexus'),
('Rolls-Royce'),
('Lamborghini'),
('Tesla');

INSERT INTO Modele (Nazwa, Marka) VALUES
('Octavia',(SELECT ID FROM Marki WHERE Nazwa='Skoda')),
('Fabia',(SELECT ID FROM Marki WHERE Nazwa='Skoda')),
('Superb',(SELECT ID FROM Marki WHERE Nazwa='Skoda')),
('Rapid',(SELECT ID FROM Marki WHERE Nazwa='Skoda')),
('Golf',(SELECT ID FROM Marki WHERE Nazwa='Volkswagen')),
('Passat',(SELECT ID FROM Marki WHERE Nazwa='Volkswagen')),
('Phateon',(SELECT ID FROM Marki WHERE Nazwa='Volkswagen')),
('Focus',(SELECT ID FROM Marki WHERE Nazwa='Ford')),
('Fiesta',(SELECT ID FROM Marki WHERE Nazwa='Ford')),
('Mondeo',(SELECT ID FROM Marki WHERE Nazwa='Ford')),
('Yaris',(SELECT ID FROM Marki WHERE Nazwa='Toyota')),
('Corolla',(SELECT ID FROM Marki WHERE Nazwa='Toyota')),
('Avensis',(SELECT ID FROM Marki WHERE Nazwa='Toyota')),
('Astra',(SELECT ID FROM Marki WHERE Nazwa='Opel')),
('Corsa',(SELECT ID FROM Marki WHERE Nazwa='Opel')),
('A4',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('A5',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('A6',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('A7',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('SQ7',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('RS6',(SELECT ID FROM Marki WHERE Nazwa='Audi')),
('CLS',(SELECT ID FROM Marki WHERE Nazwa='Mercedes-Benz')),
('S-class',(SELECT ID FROM Marki WHERE Nazwa='Mercedes-Benz')),
('E-class',(SELECT ID FROM Marki WHERE Nazwa='Mercedes-Benz')),
('X5',(SELECT ID FROM Marki WHERE Nazwa='BMW')),
('3 series',(SELECT ID FROM Marki WHERE Nazwa='BMW')),
('5 series',(SELECT ID FROM Marki WHERE Nazwa='BMW')),
('GT3RS',(SELECT ID FROM Marki WHERE Nazwa='Porsche'));

INSERT INTO Zamowienia (DataZlozenia, Zaliczka, PrzewidywanyCzasDostawy, Kwota, Zamawiajacy) VALUES
('2024-01-01', 0, '2024-02-01', 12000, 4),
('2024-01-02', 0, '2024-02-15', 330000, 19),
('2024-01-03', 0, '2024-02-05', 111100, 17);
('2023-01-15', 15000, '2023-02-01', 120000, 3),
('2023-02-28', 20000, '2023-03-15', 180000, 3),
('2023-03-10', 25000, '2023-04-05', 200000, 3),
('2023-04-22', 18000, '2023-05-10', 140000, 4),
('2023-05-05', 30000, '2023-06-01', 250000, 5),
('2023-06-18', 22000, '2023-07-05', 175000, 6),
('2023-07-29', 28000, '2023-08-15', 220000, 7),
('2023-08-12', 32000, '2023-09-01', 260000, 8),
('2023-09-25', 27000, '2023-10-10', 210000, 9),
('2023-10-10', 35000, '2023-11-05', 280000, 17),
('2023-11-20', 30000, '2023-12-01', 240000, 8),
('2023-12-28', 40000, '2024-01-15', 320000, 8),
('2024-01-05', 42000, '2024-02-01', 340000, 3),
('2024-02-17', 38000, '2024-03-10', 300000, 4),
('2024-03-30', 45000, '2024-04-15', 360000, 11),
('2024-04-12', 50000, '2024-05-01', 400000, 11),
('2024-05-25', 48000, '2024-06-10', 380000, 11),
('2024-06-08', 55000, '2024-07-01', 440000, 13),
('2024-07-21', 60000, '2024-08-15', 480000, 13),
('2024-08-03', 52000, '2024-09-01', 420000, 19);

INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48757C096950','C405','Polska',2017, 3.5, 210500, (SELECT ID FROM Modele WHERE nazwa='Focus'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.6TDI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='FordStore Euro-Car'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=10));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AAARE48757C096950','A035','Polska',2003, 3, 310000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.2TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=10));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JH85468757C096950','C406','Polska',2007, 5, 280000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.5TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=8), NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE487357456950','C407','Polska',2022, 8, 65000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.5TSI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHAO98D757C096950','C407','Polska',2023, 4, 4, (SELECT ID FROM Modele WHERE nazwa='Superb'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TDI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JAAO09I9E7C096950','C407','Polska',2023, 4, 4, (SELECT ID FROM Modele WHERE nazwa='Octavia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.9TDI'), (SELECT ID FROM Nadwozia where typ='liftback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('J0PRE48742C096950','A405','Polska',2023, 2, 4, (SELECT ID FROM Modele WHERE nazwa='A4'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.9TDI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Centrum Gdañsk'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=8));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE487594096950','B400','Polska',2023, 4, 57, (SELECT ID FROM Modele WHERE nazwa='A6'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='35TFSI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Centrum Gdañsk'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=23));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLR00057C0969550','C404','Polska',2015, 2.5, 150000, (SELECT ID FROM Modele WHERE nazwa='Octavia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.6TDI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=11));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHFOD48757C096950','AB43','Polska',2018, 3.5, 190500, (SELECT ID FROM Modele WHERE nazwa='Superb'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TFSI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Centrum Gdañsk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=17),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('A0LRE48757C096950','AB05','Polska',2019, 4, 111000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=17),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE4875750AC042','PL05','Polska',2007, 6, 450000, (SELECT ID FROM Modele WHERE nazwa='Passat'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.9TDI'), (SELECT ID FROM Nadwozia where typ='liftback'), (SELECT ID FROM Dealerzy WHERE nazwa='Toyota Carter'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=5), NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE487PPP096950','PF05','Polska',2000, 5, 500500, (SELECT ID FROM Modele WHERE nazwa='Passat'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0d'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Toyota Carter'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=5), NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('PFLRE48757C096950','44FF','Czechy',2003, 1, 250000, (SELECT ID FROM Modele WHERE nazwa='A4'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='35TFSI'), (SELECT ID FROM Nadwozia where typ='coupe'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Centrum Gdañsk'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48757C0FOS50','FFFF','Wielka Brytania',2013, 2, 177000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.2MPI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48PP7C096950','AAF3','Niemcy',2010, 2.5, 200000, (SELECT ID FROM Modele WHERE nazwa='A5'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TFSI'), (SELECT ID FROM Nadwozia where typ='kabriolet'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Centrum Gdañsk'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48757C000000','C093','Niemcy',2010, 5, 210500, (SELECT ID FROM Modele WHERE nazwa='Corolla'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0HEV'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Toyota Carter'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE4APLCD096950','CD0C','Stany Zjednoczone',2001, 2, 310500, (SELECT ID FROM Modele WHERE nazwa='Mondeo'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.9CDI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='FordStore Euro-Car'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRVP8377C096950','PO01','Stany Zjednoczone',2015, 6.5, 110500, (SELECT ID FROM Modele WHERE nazwa='Passat'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TSI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AO00148757C096950','C400','Stany Zjednoczone',2021, 8, 10500, (SELECT ID FROM Modele WHERE nazwa='SQ7'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='55TFSI'), (SELECT ID FROM Nadwozia where typ='SUV'), (SELECT ID FROM Dealerzy WHERE nazwa='Audi Gdañsk Stadion'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JH85460007C096950','C406','Polska',2007, 5, 280000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.5TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=10), NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('JHLRE48757C077750','C405','Polska',2019, 4, 10500, (SELECT ID FROM Modele WHERE nazwa='Octavia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TSI'), (SELECT ID FROM Nadwozia where typ='sedan'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AAARE48757C096955','A380','Polska',2021, 8, 10000, (SELECT ID FROM Modele WHERE nazwa='Golf'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Wejherowo'),
NULL, (SELECT NumerKontrahenta FROM Klienci WHERE NumerKontrahenta=15));
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('CCCCCCC757C096950','AB05','Polska',2019, 4, 111000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=21),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('AAAAAAA757C096950','AB05','Polska',2019, 4, 111000, (SELECT ID FROM Modele WHERE nazwa='Fabia'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='1.0TSI'), (SELECT ID FROM Nadwozia where typ='hatchback'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=22),NULL);
INSERT INTO Samochody (VIN, KodLakieru, KrajPochodzenia, Rocznik, Generacja, Przebieg, Model, Silnik, Nadwozie, Dealer, Zamowienie, Wlasciciel) VALUES
('BBBBBBB757C096950','ABBB','Polska',2019, 4, 11000, (SELECT ID FROM Modele WHERE nazwa='Mondeo'),
(SELECT oznaczenie FROM Silniki WHERE oznaczenie='2.0TDI'), (SELECT ID FROM Nadwozia where typ='kombi'), (SELECT ID FROM Dealerzy WHERE nazwa='Skoda Plichta Gdañsk'),
(SELECT NumerZamowienia FROM Zamowienia WHERE NumerZamowienia=23),NULL);

INSERT INTO JazdyTestowe (VIN, NumerKontrahenta, DataJazdy, Kaucja) VALUES
('JHLRE48757C000000', 5, '2023-09-25 11:10:00', 1300),
('AO00148757C096950', 5, '2024-02-17 12:40:00', 1800),
('AO00148757C096950', 20, '2023-01-15 09:30:00', 500),
('JHLRE48757C000000', 20, '2024-04-12 14:15:00', 2000),
('JHAO98D757C096950', 5, '2024-05-25 10:25:00', 2100),
('AO00148757C096950', 6, '2023-03-10 10:00:00', 700),
('JHLRE487594096950', 7, '2023-10-10 13:15:00', 1400),
('JHLRE48757C000000', 4, '2023-11-20 14:30:00', 1500),
('JHAO98D757C096950', 9, '2023-12-28 09:20:00', 1600),
('AO00148757C096950', 13, '2024-01-05 10:55:00', 1700),
('JHLRE487594096950', 11, '2023-04-22 11:20:00', 800),
('JHAO98D757C096950', 12, '2023-06-18 12:30:00', 1000),
('JHLRE48757C000000', 12, '2023-07-29 10:45:00', 1100),
('AO00148757C096950', 12, '2023-05-05 14:00:00', 900),
('JHAO98D757C096950', 12, '2024-06-08 13:00:00', 2200),
('JHLRE487594096950', 9, '2023-02-28 13:45:00', 600),
('JHLRE487594096950', 4, '2023-08-12 09:00:00', 1200),
('JHLRE48757C000000', 6, '2024-03-30 11:05:00', 1900),
('JHAO98D757C096950', 20, '2024-07-21 09:50:00', 2300),
('AO00148757C096950', 16, '2024-08-03 10:35:00', 2400);