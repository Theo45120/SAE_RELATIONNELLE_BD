-- QUESTION 3.2 A
SELECT DISTINCT e.NomEtape
FROM Etape e
INNER JOIN Troncon t ON e.CodeEtape = t.PointArrivee
INNER JOIN Etape o ON t.PointDepart = o.CodeEtape
WHERE o.NomEtape = 'Orléans';


-- QUESTION 3.2 B
SELECT e2.NomEtape AS Etape_Intermediaire, e3.NomEtape AS Etape_Arrivee
FROM Etape e1
JOIN Troncon t1 ON e1.CodeEtape = t1.PointDepart
JOIN Etape e2 ON t1.PointArrivee = e2.CodeEtape
JOIN Troncon t2 ON e2.CodeEtape = t2.PointDepart
JOIN Etape e3 ON t2.PointArrivee = e3.CodeEtape
WHERE e1.NomEtape = 'Orléans';


-- QUESTION 3.2 C
