CREATE DATABASE  IF NOT EXISTS `client_directory`;
USE `client_directory`;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;

CREATE TABLE Clients (
  ClientID VARCHAR(10) NOT NULL PRIMARY KEY,
  FullName VARCHAR(100) NOT NULL,
  ContactNumber INT NOT NULL UNIQUE,
  Location VARCHAR(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Data for table `Clients`
--

INSERT INTO `Clients`
VALUES
  ('Cl1','Takashi Ito',351786345,'Pinal County'),
  ('Cl2','Jane Murphy',351567243,'Pinal County'),
  ('Cl3','Laurina Delgado',351342597,'Pinal County'),
  ('Cl4','Benjamin Clauss',351342509,'Graham County'),
  ('Cl5','Altay Ayhan',351208983,'Santa Cruz County'),
  ('Cl6','Greta Galkina',351298755,'Graham County');
  