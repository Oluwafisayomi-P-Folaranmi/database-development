-- Clients Table
CREATE TABLE Clients (
    ClientID VARCHAR(5),
    FullName VARCHAR(255),
    ContactNumber INT,
    Location VARCHAR(255)
);

INSERT INTO Clients (ClientID, FullName, ContactNumber, Location) VALUES
('Cl01', 'Benjamin Clauss', 351854758, 'Graham County'),
('Cl02', 'Altay Ayhan', 351963258, 'Pinal County'),
('Cl03', 'Greta Galkina', 351784512, 'Santa Cruz County'),
('Cl04', 'Julia Marr', 351854125, 'Cochise County'),
('Cl05', 'Karl Murry', 351314658, 'Gila County');


-- LegacyClients Table
CREATE TABLE LegacyClients (
    ClientID VARCHAR(5),
    FullName VARCHAR(255),
    ContactNumber INT,
    Location VARCHAR(255)
);

INSERT INTO LegacyClients (ClientID, FullName, ContactNumber, Location) VALUES
('Cl1', 'Takashi Ito', 351786345, 'Graham County'),
('Cl2', 'Jane Murphy', 351567243, 'Pinal County'),
('Cl3', 'Laurina Delgado', 351342597, 'Santa Cruz County'),
('Cl4', 'Mike Edwards', 351342509, 'Gila County'),
('Cl5', 'Julia Marr', 351208741, 'Cochise County');
