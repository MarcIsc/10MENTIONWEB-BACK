SELECT * FROM abonnes WHERE id_abonne IN(SELECT id_abonnes FROM emprunt WHERE id_livres IN (SELECT id_livre FROM livres WHERE auteur LIKE '%DAUDET%'));
SELECT titre, id_livre FROM livres WHERE id_livre IN (SELECT id_livre);
SELECT titre, id_livre FROM livres WHERE id_livre IN (SELECT id_livres FROM emprunt WHERE id_abonnes IN(SELECT id_abonne FROM abonnes WHERE prenom = 'Benoit'));
SELECT titre, id_livre FROM livres WHERE id_livre NOT IN (SELECT id_livres FROM emprunt WHERE id_abonnes IN(SELECT id_abonne FROM abonnes WHERE prenom = 'Benoit'));
SELECT titre FROM livres WHERE id_livre IN(SELECT id_livre FROM emprunt WHERE date_rendu IS NULL AND id_abonnes IN(SELECT id_abonne FROM abonnes WHERE prenom = 'Benoit'));
SELECT COUNT (*) FROM livres WHERE id_livre IN(SELECT id_livre FROM emprunt WHERE id_abonnes IN(SELECT id_abonne FROM abonnes WHERE prenom = 'Guillaume'));
SELECT COUNT(id_livre) AS  nombreEmpruntGuillaume FROM emprunt WHERE id_abonne IN(select id_abonne);
SELECT titre FROM livres WHERE id_livre NOT IN (SELECT id_livres FROM emprunt);



