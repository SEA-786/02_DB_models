-- Vorbereitungen
USE design;

DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS servants;

-- Mastertabelle: unverändert
CREATE TABLE IF NOT EXISTS cats
(
  id INT NOT NULL AUTO_INCREMENT,
  cat_name VARCHAR NOT NULL,
  fur_color VARCHAR NOT NULL,
  PRIMARY KEY (id)
);

-- Detailtabelle: Verbindung zur MT über Fremdschlüssel
CREATE TABLE IF NOT EXISTS servants
(
  id INT NOT NULL AUTO_INCREMENT,
  servant_name VARCHAR NOT NULL,
  yrs_served TINYINT NOT NULL,
  cats_id INT NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE servants
  ADD CONSTRAINT FK_cats_TO_servants
    FOREIGN KEY (cats_id)
    REFERENCES cats (id);

DESCRIBE design.cats;
DESCRIBE design.servants;

