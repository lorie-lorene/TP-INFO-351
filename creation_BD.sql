DROP DATABASE IF EXISTS TPINF351;
CREATE DATABASE IF NOT EXISTS TPINF351;
USE TPINF351;

CREATE TABLE IF NOT EXISTS auteur (
 idauteur INT NOT NULL AUTO_INCREMENT,
 nom_encode VARCHAR(255),
 PRIMARY KEY(idauteur)
);

CREATE TABLE IF NOT EXISTS article(
 idarticle INT NOT NULL AUTO_INCREMENT,
 titre_article VARCHAR(255),
  PRIMARY KEY(idarticle)
);

CREATE TABLE IF NOT EXISTS affiliation(
 idaffiliation INT NOT NULL AUTO_INCREMENT,
 etablissement VARCHAR(255),
 ville VARCHAR(255),
 pays VARCHAR(255),
 PRIMARY KEY(idaffiliation)
);

CREATE TABLE IF NOT EXISTS auteurarticle(
idauteur INT NOT NULL,
FOREIGN KEY (idauteur) REFERENCES auteur(idauteur),
idarticle INT NOT NULL,
FOREIGN KEY (idarticle) REFERENCES article(idarticle)
);

CREATE TABLE IF NOT EXISTS auteurfiliation(
idauteur INT NOT NULL,
FOREIGN KEY (idauteur) REFERENCES auteur(idauteur),
idaffiliation INT NOT NULL,
FOREIGN KEY (idaffiliation) REFERENCES affiliation(idaffiliation)
);
