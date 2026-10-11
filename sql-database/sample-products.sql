-- Synthetic product seed data for the portfolio database sample.
BEGIN TRANSACTION;
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (723, 'Motor', 9180);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (219, 'Getriebe', 3560);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (490, 'Auspuff', 1010);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (262, 'Kupplung', 1040);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (506, 'Bremsbelaege', 250);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (10, 'Scheinwerfer', 1060);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (768, 'Stossdaempfer', 1110);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (264, 'Reifen', 1270);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (321, 'Fensterheber', 240);
INSERT INTO Artikel (idArtikel, artikelName, empfohlenerPreis) VALUES (544, 'Batterie', 3570);
COMMIT;
