-- Insertion des catégories de confort
INSERT INTO CategorieConfort (IndiceCategorie, Description) VALUES
(1, 'Ville'),
(2, 'Refuge'),
(3, 'Placement de camping'),
(4, 'Aire de repos'),
(5, 'Sommet'),
(6, 'Lac'),
(7, 'Cascade'),
(8, 'Point de vue'),
(9, 'Forêt'),
(10, 'Plage');

-- Insertion des étapes
INSERT INTO Etape (CodeEtape, NomEtape, Latitude, Longitude, NiveauConfort) VALUES
(1, 'Prati', 42.123456, 9.987654, 2),
(2, 'L’Onda', 42.234567, 9.876543, 3),
(3, 'Refuge du Col de Vergio', 42.345678, 9.765432, 2),
(4, 'Cascade des Anglais', 42.456789, 9.654321, 7),
(5, 'Sommet du Monte Cinto', 42.567890, 9.543210, 5),
(6, 'Orléans', 47.902964, 1.909251, 1),
(7, 'Blois', 47.5917, 1.3281, 2),
(8, 'Tours', 47.3941, 0.6848, 3),
(9, 'Châteaudun', 48.0815, 1.3361, 2),
(10, 'Chartres', 48.4439, 1.4897, 2),
(11, 'Paris', 42.1253, 1.6985, 1);

-- Insertion des tronçons
INSERT INTO Troncon (IdentifiantTroncon, NomUsuel, Distance, TypeSol, DeniveleMoyen, PointDepart, PointArrivee) VALUES
(1, 'Sentier de Prati à L’Onda', 5.3, 'Terre', 200, 1, 2),
(2, 'Sentier de L’Onda au Refuge du Col de Vergio', 8.7, 'Terre', 350, 2, 3),
(3, 'Sentier du Refuge du Col de Vergio à la Cascade des Anglais', 3.5, 'Terre', 150, 3, 4),
(4, 'Sentier de la Cascade des Anglais au Sommet du Monte Cinto', 10.2, 'Terre', 800, 4, 5),
(5, 'Sentier d''Orléans à Blois', 55.8, 'Bitume', 50, 6, 7),
(6, 'Sentier d''Orléans à Tours', 122.5, 'Bitume', 80, 6, 8),
(7, 'Sentier d''Orléans à Châteaudun', 35.2, 'Bitume', 40, 6, 9),
(8, 'Sentier de Châteaudun à Chartres', 45.6, 'Bitume', 30, 9, 10);
(9, 'Sentier de Chartres à Paris', 180.2, 'Bitume', 20, 10, 11);