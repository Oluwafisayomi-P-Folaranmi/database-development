CREATE TABLE Clients (
    ClientID INT,
    FullName VARCHAR(50),
    ContactNumber VARCHAR(15),
    ReverseFullName VARCHAR(50),
    PRIMARY KEY (ClientID)
);

INSERT INTO Clients
VALUES
    (1, 'Takashi Ito', '3517863465', 'Ito Takashi'),
    (2, 'John Murphy', '3515678243', 'Murphy Jane'),
    (3, 'Laurina Delgado', '3511425977', 'Delgado Laurina'),
    (4, 'Akemi Ito', '3517863465', 'Ito Akemi'),
    (5, 'Beth Clauss', '3511425879', 'Clauss Benjamin'),
    (6, 'Altay Ayhan', '3512089883', 'Ayhan Altay'),
    (7, 'Bert Galkina', '3512089755', 'Galkina Greta'),
    (8, 'Greta Clauss', '3513425100', 'Clauss Benjamin'),
    (9, 'Benjamin Ayhan', '3512089844', 'Ayhan Altay'),
    (10, 'Jane Delgado', '3512898756', 'Galkina Greta');
