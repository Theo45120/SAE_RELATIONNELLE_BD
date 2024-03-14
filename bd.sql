-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS Troncon;
DROP TABLE IF EXISTS Etape;
DROP TABLE IF EXISTS CategorieConfort;

-- Table pour les catégories de confort
CREATE TABLE CategorieConfort (
    IndiceCategorie INT PRIMARY KEY,
    Description VARCHAR(100)
);

-- Table pour les étapes
CREATE TABLE Etape (
    CodeEtape INT PRIMARY KEY,
    NomEtape VARCHAR(50),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    NiveauConfort INT,
    FOREIGN KEY (NiveauConfort) REFERENCES CategorieConfort(IndiceCategorie)
);

-- Table pour les tronçons
CREATE TABLE Troncon (
    IdentifiantTroncon INT PRIMARY KEY,
    NomUsuel VARCHAR(50),
    Distance DECIMAL(10,2),
    TypeSol VARCHAR(50),
    DeniveleMoyen DECIMAL(10,2),
    PointDepart INT,
    PointArrivee INT,
    FOREIGN KEY (PointDepart) REFERENCES Etape(CodeEtape),
    FOREIGN KEY (PointArrivee) REFERENCES Etape(CodeEtape)
);
