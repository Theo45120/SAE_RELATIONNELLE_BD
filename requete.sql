-- QUESTION 3.2 

    -- AVEC INNER JOIN
SELECT DISTINCT e.NomEtape
FROM Etape e
INNER JOIN Troncon t ON e.CodeEtape = t.PointArrivee
INNER JOIN Etape o ON t.PointDepart = o.CodeEtape
WHERE o.NomEtape = 'Orléans';

    -- AVEC SELECT EMBOITE  
SELECT DISTINCT e.NomEtape
FROM Etape e
WHERE e.CodeEtape IN (
    SELECT t.PointArrivee
    FROM Troncon t
    WHERE t.PointDepart IN (
        SELECT CodeEtape
        FROM Etape
        WHERE NomEtape = 'Orléans'
    )
);


-- QUESTION 3.2 B
SELECT e2.NomEtape AS Etape_Intermediaire, e3.NomEtape AS Etape_Arrivee
FROM Etape e1
INNER JOIN Troncon t1 ON e1.CodeEtape = t1.PointDepart
INNER JOIN Etape e2 ON t1.PointArrivee = e2.CodeEtape
INNER JOIN Troncon t2 ON e2.CodeEtape = t2.PointDepart
INNER JOIN Etape e3 ON t2.PointArrivee = e3.CodeEtape
WHERE e1.NomEtape = 'Orléans';


-- QUESTION 3.2 C
WITH RECURSIVE Chemin AS (
  SELECT t.PointArrivee AS CodeEtape
  FROM Troncon t
  INNER JOIN Etape e ON t.PointArrivee = e.CodeEtape
  INNER JOIN Etape o ON t.PointDepart = o.CodeEtape
  WHERE o.NomEtape = 'Orléans'
  
  UNION ALL
  
  SELECT PointArrivee
  FROM Chemin
  NATURAL JOIN Troncon WHERE CodeEtape = PointDepart
)

SELECT NomEtape
FROM Chemin
NATURAL JOIN Etape WHERE CodeEtape = CodeEtape;
