USE operativna_baza_podataka;

INSERT INTO MESTO (IdMes, Naziv) VALUES
(11, 'Kragujevac'),
(12, 'Subotica');


INSERT INTO KORISNIK
(IdKor, Ime, Prezime, Mobilni, Email, Godiste, Pol, IdMes, DatumKreiranja)
VALUES
(21, 'Ana', 'Petrovic', '061111111', 'ana@gmail.com', 2002, 'F', 1, NOW()),
(22, 'Marko', 'Nikolic', '062222222', 'marko12@gmail.com', 1995, 'M', 2, NOW());


INSERT INTO KATEGORIJA (IdKat, Naziv, DatumKreiranja)
VALUES
(11, 'Edukativne igre', NOW());


INSERT INTO ARTIKAL
(IdArt, Naziv, Opis, Cena, Popust, Kolicina, IdKor, IdKat, DatumKreiranja)
VALUES
(31, 'Lego set', 'Kockice za decu', 5000, 10, 20, 21, 11, NOW()),
(32, 'Puzzle 1000', 'Velike puzzle', 2500, 0, 15, 22, 11, NOW());


INSERT INTO NARUDZBINA
(IdNar, IdKor, Datum, Vreme, Iznos)
VALUES
(41, 22, DATE(NOW()), TIME(NOW()), 5000),
(42, 21, DATE(NOW()), TIME(NOW()), 2500);


INSERT INTO STAVKA
(IdNar, IdArt, Iznos, Kolicina)
VALUES
(41, 31, 5000, 1),
(42, 32, 2500, 1);


INSERT INTO KORPA (IdKor, IdArt, Kolicina) VALUES
(21, 31, 1),
(22, 32, 2);



INSERT INTO RECENZIJA
(IdKor, IdArt, Ocena, Opis, Datum, Vreme)
VALUES
(22, 31, 5, 'Odličan proizvod', DATE(NOW()), TIME(NOW())),
(21, 32, 4, 'Zadovoljan sam', DATE(NOW()), TIME(NOW()));
