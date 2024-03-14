-- QUESTION 3.2
SELECT DISTINCT e.NomEtape
FROM Etape e
INNER JOIN Troncon t ON e.CodeEtape = t.PointArrivee
INNER JOIN Etape o ON t.PointDepart = o.CodeEtape
WHERE o.NomEtape = 'Orléans';
