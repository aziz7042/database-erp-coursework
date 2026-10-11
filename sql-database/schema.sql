-- Portfolio sample using synthetic university exercise data only.
BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS Kunden (
    idKunde INTEGER PRIMARY KEY,
    Vorname TEXT NOT NULL,
    Nachname TEXT NOT NULL
) STRICT;

CREATE TABLE IF NOT EXISTS Adresse (
    idKunde INTEGER PRIMARY KEY,
    Strasse_und_Nummer TEXT NOT NULL,
    Postleitzahl INTEGER NOT NULL,
    idStadt INTEGER NOT NULL,
    FOREIGN KEY (idKunde) REFERENCES Kunden(idKunde),
    FOREIGN KEY (idStadt) REFERENCES Staedte(idStadt)
) STRICT;

CREATE TABLE IF NOT EXISTS Staedte (
    idStadt INTEGER PRIMARY KEY,
    StadtName TEXT NOT NULL,
    idLand INTEGER NOT NULL,
    FOREIGN KEY (idLand) REFERENCES Laender(idLand),
    UNIQUE (StadtName)
) STRICT;

CREATE TABLE IF NOT EXISTS Laender (
    idLand INTEGER PRIMARY KEY,
    Land TEXT NOT NULL
) STRICT;

CREATE TABLE IF NOT EXISTS Auftrag (
    idAuftrag INTEGER PRIMARY KEY,
    idKunde INTEGER NOT NULL,
    bezahlt INTEGER NOT NULL DEFAULT 0, -- 0: False, 1: True
    beleg INTEGER NOT NULL DEFAULT 0,
    datum TEXT NOT NULL, --  Datum
    FOREIGN KEY (idKunde) REFERENCES Kunden(idKunde)
) STRICT;

CREATE TABLE IF NOT EXISTS Auftrag_und_Artikel (
    idAuftrag INTEGER NOT NULL,
    idArtikel INTEGER NOT NULL,
    artikelPreis INTEGER NOT NULL,
    idAuftragsposition INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (idAuftrag) REFERENCES Auftrag(idAuftrag),
    FOREIGN KEY (idArtikel) REFERENCES Artikel(idArtikel),
    UNIQUE (idAuftragsposition, idAuftrag, idArtikel)
) STRICT;
CREATE INDEX IF NOT EXISTS Auftrag_und_Artikel_Auftrag_idx ON Auftrag_und_Artikel (idAuftrag);
CREATE INDEX IF NOT EXISTS Auftrag_und_Artikel_Artikel_idx ON Auftrag_und_Artikel (idArtikel);
CREATE INDEX IF NOT EXISTS Auftrag_und_Artikel_AuftragArtikel_idx ON Auftrag_und_Artikel (idAuftrag, idArtikel);

CREATE TABLE IF NOT EXISTS Artikel (
    idArtikel INTEGER PRIMARY KEY,
    artikelName TEXT NOT NULL,
    empfohlenerPreis INTEGER NOT NULL
) STRICT;

COMMIT;
