-- All people, addresses and transactions below are synthetic university exercise data.
-- Transaction scenario 0
BEGIN TRANSACTION;
INSERT INTO Laender (idLand, Land) VALUES (1, 'Deutschland');
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (1, 'Rockenhausen', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (3819, 'Josephine', 'Schinke');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (3819, 'Stollgasse 23', 99622, 1);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (0, 3819, 0, 9180, '2024-10-25');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(0, 506, 200), (0, 506, 200), (0, 506, 200),
(0, 768, 1220), (0, 768, 1220),
(0, 490, 1020), (0, 490, 1020), (0, 490, 1020), (0, 490, 1020),
(0, 10, 1030), (0, 10, 1030);
COMMIT;

--Geschäftsfall-ID 1
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (2, 'Waren', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (3308, 'Fadime', 'Rosenow');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (3308, 'Hessplatz 7', 39361, 2);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (1, 3308, 0, 52860, '2024-08-26');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(1, 723, 9210), (1, 723, 9210), (1, 723, 9210), (1, 723, 9210),
(1, 321, 290), (1, 321, 290), (1, 321, 290), (1, 321, 290),
(1, 544, 3720), (1, 544, 3720), (1, 544, 3720),
(1, 490, 1060), (1, 490, 1060), (1, 490, 1060),
(1, 506, 260), (1, 506, 260);
COMMIT;

--Geschäftsfall-ID 2
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (3, 'Iserlohn', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (653, 'Hans-Ludwig', 'Klingelhoefer');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (653, 'Heinz-Otto-Wagenknecht-Allee 60-10', 53569, 3);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (2, 653, 0, 16790, '2023-07-04');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(2, 321, 430), (2, 321, 430),
(2, 219, 3750), (2, 219, 3750), (2, 219, 3750),
(2, 262, 1170), (2, 262, 1170), (2, 262, 1170), (2, 262, 1170);
COMMIT;

--Geschäftsfall-ID 3
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (3, 653, 1, 12040, '2024-11-20');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(3, 321, 270), (3, 321, 270),
(3, 10, 1150), (3, 10, 1150), (3, 10, 1150), (3, 10, 1150),
(3, 768, 1180), (3, 768, 1180), (3, 768, 1180),
(3, 490, 1120), (3, 490, 1120), (3, 490, 1120);
COMMIT;

--Geschäftsfall-ID 4
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (4, 'Eutin', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (4778, 'Herma', 'Preiss');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (4778, 'Ricardo-Herrmann-Gasse 8-4', 93216, 4);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (4, 4778, 1, 19020, '2024-10-10');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(4, 490, 1060), (4, 490, 1060), (4, 490, 1060), (4, 490, 1060),
(4, 544, 3640), (4, 544, 3640),
(4, 219, 3750), (4, 219, 3750);
COMMIT;

--Geschäftsfall-ID 5
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (5, 'Havelberg', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (690, 'Kunigunde', 'Dussen van');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (690, 'Filippo-Putz-Allee 2', 15044, 5);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (5, 690, 1, 43720, '2024-04-01');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(5, 544, 3640), (5, 544, 3640), (5, 544, 3640), (5, 544, 3640),
(5, 219, 3590), (5, 219, 3590),
(5, 506, 380), (5, 506, 380), (5, 506, 380),
(5, 723, 9250), (5, 723, 9250),
(5, 262, 1170), (5, 262, 1170);
COMMIT;

--Geschäftsfall-ID 6
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (6, 4778, 1, 8090, '2024-09-26');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(6, 264, 1300), (6, 264, 1300), (6, 264, 1300),
(6, 321, 410), (6, 321, 410), (6, 321, 410),
(6, 506, 380), (6, 506, 380),
(6, 768, 1100), (6, 768, 1100);
COMMIT;

--Geschäftsfall-ID 7
BEGIN TRANSACTION;
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (2385, 'Henryk', 'Wieloch');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (2385, 'Wirthallee 7555', 32262, 3);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (7, 2385, 0, 23410, '2023-10-27');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(7, 768, 1140), (7, 768, 1140), (7, 768, 1140),
(7, 219, 3590), (7, 219, 3590), (7, 219, 3590), (7, 219, 3590),
(7, 321, 210), (7, 321, 210), (7, 321, 210),
(7, 10, 1250), (7, 10, 1250), (7, 10, 1250), (7, 10, 1250);
COMMIT;

--Geschäftsfall-ID 8
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (8, 3819, 1, 19860, '2025-03-28');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(8, 768, 1280), (8, 768, 1280), (8, 768, 1280),
(8, 506, 420), (8, 506, 420), (8, 506, 420), (8, 506, 420),
(8, 219, 3610), (8, 219, 3610),
(8, 544, 3560), (8, 544, 3560);
COMMIT;

--Geschäftsfall-ID 9
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (9, 3308, 0, 41090, '2024-03-20');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(9, 768, 1140), (9, 768, 1140), (9, 768, 1140),
(9, 723, 9370), (9, 723, 9370), (9, 723, 9370),
(9, 262, 1150), (9, 262, 1150), (9, 262, 1150), (9, 262, 1150),
(9, 264, 1240), (9, 264, 1240), (9, 264, 1240), (9, 264, 1240);
COMMIT;

--Geschäftsfall-ID 10
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (10, 3819, 1, 9880, '2023-05-24');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(10, 506, 240), (10, 506, 240),
(10, 10, 1130), (10, 10, 1130), (10, 10, 1130), (10, 10, 1130),
(10, 264, 1220), (10, 264, 1220), (10, 264, 1220), (10, 264, 1220);
COMMIT;

--Geschäftsfall-ID 11
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (6, 'Weisswasser', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (168, 'Piotr', 'Foerster');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (168, 'Fredi-Kranz-Allee 2', 21937, 6);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (11, 168, 1, 8080, '2024-03-27');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(11, 490, 980), (11, 490, 980), (11, 490, 980), (11, 490, 980),
(11, 262, 1010), (11, 262, 1010),
(11, 10, 1070), (11, 10, 1070);
COMMIT;

--Geschäftsfall-ID 12
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (12, 168, 0, 14600, '2024-01-01');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(12, 506, 200), (12, 506, 200),
(12, 219, 3570), (12, 219, 3570),
(12, 10, 1250), (12, 10, 1250),
(12, 768, 1140), (12, 768, 1140), (12, 768, 1140), (12, 768, 1140);
COMMIT;

--Geschäftsfall-ID 13
BEGIN TRANSACTION;
INSERT INTO Staedte (idStadt, StadtName, idLand) VALUES (7, 'Aue', 1);
INSERT INTO Kunden (idKunde, Vorname, Nachname) VALUES (977, 'Holger', 'Linke');
INSERT INTO Adresse (idKunde, Strasse_und_Nummer, Postleitzahl, idStadt) VALUES (977, 'Gotthardring 17-64', 79155, 7);
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (13, 977, 0, 36400, '2024-07-31');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(13, 10, 1170), (13, 10, 1170), (13, 10, 1170),
(13, 321, 330), (13, 321, 330), (13, 321, 330),
(13, 544, 3520), (13, 544, 3520), (13, 544, 3520), (13, 544, 3520),
(13, 219, 3570), (13, 219, 3570), (13, 219, 3570), (13, 219, 3570),
(13, 768, 1180), (13, 768, 1180), (13, 768, 1180);
COMMIT;

--Geschäftsfall-ID 14
BEGIN TRANSACTION;
INSERT INTO Auftrag (idAuftrag, idKunde, bezahlt, beleg, datum) VALUES (14, 690, 0, 16760, '2024-01-01');
INSERT INTO Auftrag_und_Artikel (idAuftrag, idArtikel, artikelPreis) VALUES
(14, 10, 1130), (14, 10, 1130), (14, 10, 1130), (14, 10, 1130),
(14, 506, 360), (14, 506, 360), (14, 506, 360), (14, 506, 360),
(14, 264, 1320), (14, 264, 1320), (14, 264, 1320),
(14, 768, 1180), (14, 768, 1180), (14, 768, 1180), (14, 768, 1180),
(14, 490, 1060), (14, 490, 1060);
COMMIT;
