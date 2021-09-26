
-- Insertions Table Campus --
INSERT INTO Campus (nom, adresse) VALUES ('Campus de Longueuil', 'Adresse Longueuil');
INSERT INTO Campus (nom, adresse) VALUES ('Campus de l''Ouest', 'Adresse Campus principale');
INSERT INTO Campus (nom, adresse) VALUES ('Campus de l''Est', 'Adresse Campus de la santé');


-- Insertions Table Pavillon --
INSERT INTO Pavillon (id_pavillon, nom, id_campus) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (id_pavillon, nom, id_campus) VALUES ('D7', 'Marie-Victorin', 2);

-- Insertions Table Faculte --
INSERT INTO Faculte (nom) VALUES ('Faculté de génie');
INSERT INTO Faculte (nom) VALUES ('Faculté des sciences');

-- Insertions Table Pavillon_Faculte --
INSERT INTO pavillon_faculte (id_pavillon, id_faculte) VALUES ('C1', 1);
INSERT INTO pavillon_faculte (id_pavillon, id_faculte) VALUES ('D7', 2);

-- Insertions Table Departement --
INSERT INTO Departement (nom, id_faculte) VALUES ('Département de génie électrique et de génie informatique', 1);
INSERT INTO Departement (nom, id_faculte) VALUES ('Département de génie mécanique', 1);
INSERT INTO Departement (nom, id_faculte) VALUES ('Département de génie civil et de génie du bâtiment', 1);
INSERT INTO Departement (nom, id_faculte) VALUES ('Département d''informatique', 2);

-- Insertions Table Membre --
INSERT INTO Membre (cip, nom, prenom, courriel, num_telephone, id_departement)
            VALUES ('SAEJ3101', 'Saenz Rosales', 'Jacty Milena', 'saej3101@usherbrooke.ca', '8191234567', 1);
INSERT INTO Membre (cip, nom, prenom, courriel, num_telephone, id_departement)
            VALUES ('MILL3003', 'Milette', 'Laurence', 'mill3003@usherbrooke.ca', '8198910111', 1);
INSERT INTO Membre (cip, nom, prenom, courriel, num_telephone, id_departement)
VALUES ('DOEJ6787', 'Doe', 'John', 'doej6787@usherbrooke.ca', '8198910911', 1);

-- Insertions Table Statut --
INSERT INTO Statut (nom) VALUES ('Étudiant');
INSERT INTO Statut (nom) VALUES ('Professeur');

-- Insertions Table Role --
INSERT INTO Role (cip, id_statut) VALUES ('SAEJ3101', 1);
INSERT INTO Role (cip, id_statut) VALUES ('MILL3003', 1);
INSERT INTO Role (cip, id_statut) VALUES ('DOEJ6787', 2);

-- Insertions Table Privilege --
INSERT INTO Privilege (nom) VALUES ('Réservation 24 heures à l''avance');
INSERT INTO Privilege (nom) VALUES ('Réservation 2 semaines à l''avance');

-- Insertions Table Statut_privilege --
INSERT INTO statut_privilege (id_statut, id_privilege) VALUES (1, 1);
INSERT INTO statut_privilege (id_statut, id_privilege) VALUES (2, 2);

-- Insertions Table Fonction --
INSERT INTO Fonction (id_fonction, nom) VALUES ('0110', 'Salle de classe générale');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0111', 'Salle de classe spécialisée');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0120', 'Salle de séminaire');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0121', 'Cubicules');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0210', 'Laboratoire informatique');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0211', 'Laboratoire denseignement spécialisé');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0212', 'Atelier');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0213', 'Salle de dessin');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0214', 'Atelier (civil)');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0215', 'Salle de musique');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0216', 'Atelier sur 2 étages, conjoint avec autre local');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0217', 'Salle de conférence');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0372', 'Salle de réunion');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0373', 'Salle dentrevue et de tests');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0510', 'Salle de lecture ou de consultation');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0620', 'Auditorium');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0625', 'Salle de concert');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0640', 'Salle d''audience');
INSERT INTO Fonction (id_fonction, nom) VALUES ('0930', 'Salon du personnel');
INSERT INTO Fonction (id_fonction, nom) VALUES ('1030', 'Studio d''enregistrement');
INSERT INTO Fonction (id_fonction, nom) VALUES ('1260', 'Hall d''entrée');






SELECT * FROM Faculte;
SELECT * FROM Pavillon;
SELECT * FROM pavillon_faculte;
SELECT * FROM Departement;
SELECT * FROM statut_privilege;
SELECT * FROM privilege;