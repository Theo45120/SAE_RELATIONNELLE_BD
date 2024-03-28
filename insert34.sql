% Définition des prédicats extensionnels

% Prédicat extensionnel pour les catégories de confort
categorieconfort(indicecategorie, description).

% Prédicat extensionnel pour les étapes
etape(codeetape, nometape, latitude, longitude, niveauconfort).

% Prédicat extensionnel pour les tronçons
troncon(identifianttroncon, nomusuel, distance, typesol, denivelemoyen, pointdepart, pointarrivee).

% Règles logiques pour déduire de nouvelles informations (si nécessaire)

% Règles pour obtenir des informations spécifiques sur les tronçons
distanceTroncon(NomUsuel, Distance) :-
  troncon(_, NomUsuel, Distance, _, _, _, _).

typeSolTroncon(NomUsuel, TypeSol) :-
  troncon(_, NomUsuel, _, TypeSol, _, _, _).

% Insertion des catégories de confort
categorieconfort(1, 'Ville').
categorieconfort(2, 'Refuge').
categorieconfort(3, 'Camping').
categorieconfort(4, 'Aire de repos').
categorieconfort(5, 'Sommet').
categorieconfort(6, 'Lac').
categorieconfort(7, 'Cascade').
categorieconfort(8, 'Point de vue').
categorieconfort(9, 'Forêt').
categorieconfort(10, 'Plage').
