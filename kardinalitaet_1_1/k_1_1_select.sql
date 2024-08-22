-- SELECTS


-- Einzeltabellen
SELECT * FROM design.cats;
SELECT * FROM design.servants;


-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM design.cats JOIN design.servants;

-- Inner Join 1 / Gesamte Tabelle
SELECT
    *
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
;

