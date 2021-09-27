
-- Insertions Table Campus --
INSERT INTO Campus (nom, adresse) VALUES ('Campus de Longueuil', 'Adresse Longueuil');
INSERT INTO Campus (nom, adresse) VALUES ('Campus de l''Ouest', 'Adresse Campus principale');
INSERT INTO Campus (nom, adresse) VALUES ('Campus de l''Est', 'Adresse Campus de la santé');


-- Insertions Table Pavillon --
INSERT INTO Pavillon (id_pavillon, nom, id_campus) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (id_pavillon, nom, id_campus) VALUES ('D7', 'Marie-Victorin', 2);

-- Insertions Table Faculte --
INSERT INTO Faculte (nom) VALUES ('Génie');
INSERT INTO Faculte (nom) VALUES ('Sciences');

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

-- Insertions Table Local --
INSERT INTO Local (nom_local, capacite, id_pavillon, id_fonction, description)
    VALUES ('1007', 21, 'C1', '0212', 'Grand');
INSERT INTO Local (nom_local, capacite, id_pavillon,id_fonction, description)
    VALUES ('2028', 10, 'C1', '0212', 'Matériaux composites');
INSERT INTO Local (nom_local, capacite, id_pavillon,id_fonction)
    VALUES ('2055', 24, 'C1', '0211');
INSERT INTO Local (nom_local, capacite, id_pavillon,id_fonction, description)
    VALUES ('3014', 25, 'C1', '0211', 'Laboratoire mécatronique');
INSERT INTO Local (nom_local, capacite, id_pavillon,id_fonction, description)
    VALUES ('3027', 15, 'C1', '0211', 'Petit laboratoire de élec');
INSERT INTO Local (nom_local, capacite, id_pavillon,id_fonction, description)
VALUES ('3007', 106, 'C1', '0620', 'Avec console multi-média');

-- Insertions Table Local_privilege --
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('1007', 1);
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('3027', 1);
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('3014', 1);
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('3007', 2);
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('2055', 2);
INSERT INTO local_privilege (nom_local, id_privilege) VALUES ('2028', 2);

-- Insertions Table Caracteristique --
INSERT INTO Caracteristique (nom) VALUES ('Connexion à Internet');
INSERT INTO Caracteristique (nom) VALUES ('Tables fixes en U et chaises mobiles');
INSERT INTO Caracteristique (nom) VALUES ('Monoplaces');
INSERT INTO Caracteristique (nom) VALUES ('Tables fixes et chaises fixes');
INSERT INTO Caracteristique (nom) VALUES ('Tables pour 2 ou + et chaises mobiles');
INSERT INTO Caracteristique (nom) VALUES ('Tables mobiles et chaises mobiles');
INSERT INTO Caracteristique (nom) VALUES ('Tables hautes et chaises hautes');
INSERT INTO Caracteristique (nom) VALUES ('Tables fixes et chaises mobiles');
INSERT INTO Caracteristique (nom) VALUES ('Écran');
INSERT INTO Caracteristique (nom) VALUES ('Rétroprojecteur');
INSERT INTO Caracteristique (nom) VALUES ('Gradins');
INSERT INTO Caracteristique (nom) VALUES ('Fenêtres');
INSERT INTO Caracteristique (nom) VALUES ('1 piano');
INSERT INTO Caracteristique (nom) VALUES ('2 pianos');
INSERT INTO Caracteristique (nom) VALUES ('Autres instruments');
INSERT INTO Caracteristique (nom) VALUES ('Système de son');
INSERT INTO Caracteristique (nom) VALUES ('Salle réservée (spéciale)');
INSERT INTO Caracteristique (nom) VALUES ('Ordinateurs PC');
INSERT INTO Caracteristique (nom) VALUES ('Ordinateurs SUN pour génie électrique');
INSERT INTO Caracteristique (nom) VALUES ('Ordinateurs (oscillomètre et multimètre)');
INSERT INTO Caracteristique (nom) VALUES ('Ordinateurs modélisation des structures');
INSERT INTO Caracteristique (nom) VALUES ('Équipement pour microélectronique');
INSERT INTO Caracteristique (nom) VALUES ('Équipement pour génie électrique');
INSERT INTO Caracteristique (nom) VALUES ('Ordinateurs et équipement pour mécatroni');
INSERT INTO Caracteristique (nom) VALUES ('Équipement métrologie');
INSERT INTO Caracteristique (nom) VALUES ('Équipement de machinerie');
INSERT INTO Caracteristique (nom) VALUES ('Équipement de géologie');
INSERT INTO Caracteristique (nom) VALUES ('Équipement pour la caractérisation');
INSERT INTO Caracteristique (nom) VALUES ('Équipement pour la thermodynamique');
INSERT INTO Caracteristique (nom) VALUES ('Équipement pour génie civil');
INSERT INTO Caracteristique (nom) VALUES ('Télévision');
INSERT INTO Caracteristique (nom) VALUES ('VHS');
INSERT INTO Caracteristique (nom) VALUES ('Hauts parleurs');
INSERT INTO Caracteristique (nom) VALUES ('Micro');
INSERT INTO Caracteristique (nom) VALUES ('Magnétophone à cassette');
INSERT INTO Caracteristique (nom) VALUES ('Amplificateur audio');
INSERT INTO Caracteristique (nom) VALUES ('Local barré');
INSERT INTO Caracteristique (nom) VALUES ('Prise réseau');

-- Insertions Table Local_Caracteristique --
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3014', 30);
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3007', 10);
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3007', 13);
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3007', 23);
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3007', 38);
INSERT INTO local_caracteristique (nom_local, id_caracteristique) VALUES ('3007', 37);

-- Insertions Table Operation --
INSERT INTO Operation (nom) VALUES ('Nouvelle réservation');
INSERT INTO Operation (nom) VALUES ('Suppression réservation');
INSERT INTO Operation (nom) VALUES ('Modification réservation');
INSERT INTO Operation (nom) VALUES ('Nouvelle connexion');
INSERT INTO Operation (nom) VALUES ('Deconnexion');


SELECT * FROM local_caracteristique;
SELECT * FROM Faculte;
SELECT * FROM Pavillon;
SELECT * FROM pavillon_faculte;
SELECT * FROM Departement;
SELECT * FROM statut_privilege;
SELECT * FROM privilege;
SELECT * FROM Local;

SELECT * FROM Journal;
SELECT * FROM Reservation;

-- Insertions Table Reservation -- faire contrainte
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('9:00', '13:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('18:00', '20:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('8:00', '9:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('11:00', '12:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('20:00', '21:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('5:00', '6:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');
INSERT INTO Reservation (debut, fin, date, description, etat, nom_local, cip) VALUES ('4:00', '5:00', NOW(), 'Travail d''équipe',  true, '3014', 'SAEJ3101');


--- TRIGGER ---
UPDATE Reservation SET debut = '10:00' WHERE id_reservation = 1;
UPDATE Reservation SET etat = False WHERE id_reservation = 1;
DELETE FROM Reservation WHERE id_reservation = 1;

CREATE OR REPLACE FUNCTION reservation_debut()
RETURNS TRIGGER AS
$$
DECLARE
    operation_id INT;
    action VARCHAR(20);
BEGIN
    action = TG_ARGV[0];
    CASE
        WHEN action = 'INSERT' THEN
            SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Nouvelle réservation';
        WHEN action = 'DELETE' THEN
            -- AJOUTER AUSSI LE CHANGEMENT DE L'ETAT
            UPDATE Reservation SET etat = false WHERE id_reservation = NEW.id_reservation;
            SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Suppression réservation';
            RETURN NULL;
        WHEN action = 'UPDATE' THEN
            SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Modification réservation';
        ELSE
            RAISE NOTICE 'Aucune action';
    END CASE;
    INSERT INTO Journal (cip, id_operation)
        VALUES (NEW.cip, operation_id);
    RETURN NEW;
END
$$
LANGUAGE plpgsql;

-- SELECT (TIME '9:00', TIME '10:00') OVERLAPS (TIME '5:00', TIME '6:00');
-- SELECT (DATE '2016-01-10', DATE '2016-02-01') OVERLAPS (DATE '2016-01-20', DATE '2016-02-10');
-- SELECT (TIME '9:00', TIME '10:00') OVERLAPS (debut, fin)
--     FROM Reservation;

CREATE OR REPLACE FUNCTION reservation_insert()
RETURNS TRIGGER AS
$$
DECLARE
operation_id INT;
chevauchement BOOLEAN;
BEGIN
    -- Gestion des chevauchements
    chevauchement = NULL;
    WITH get_chevauchement AS (
        SELECT ((NEW.debut, NEW.fin) OVERLAPS (Reservation.debut,Reservation.fin)) AS chevauchement_state
        FROM Reservation WHERE etat = True
    )
    SELECT chevauchement_state INTO chevauchement FROM get_chevauchement WHERE chevauchement_state = True;

    IF chevauchement IS NULL THEN
        -- Insertion dans le journal
        SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Nouvelle réservation';
        INSERT INTO Journal (cip, id_operation)
        VALUES (NEW.cip, operation_id);
        RETURN NEW;
    ELSE
        RETURN NULL;
    END IF;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION reservation_update()
RETURNS TRIGGER AS
$$
DECLARE
operation_id INT;
BEGIN
    -- Vérification si suppression
    IF NEW.etat = False THEN
        SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Suppression réservation';
    ELSE
        SELECT id_operation INTO operation_id FROM Operation WHERE Operation.nom = 'Modification réservation';
    END IF;
    -- Insertion dans le journal
    INSERT INTO Journal (cip, id_operation)
    VALUES (NEW.cip, operation_id);
    RETURN NEW;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION reservation_delete()
RETURNS TRIGGER AS
$$
DECLARE
operation_id INT;
BEGIN

END
$$
LANGUAGE plpgsql;

DROP TRIGGER log_reservation_insert ON Reservation;
CREATE TRIGGER log_reservation_insert
    BEFORE INSERT ON Reservation
    FOR EACH ROW EXECUTE FUNCTION reservation_insert();

DROP TRIGGER log_reservation_update ON Reservation;
CREATE TRIGGER log_reservation_update
    AFTER UPDATE ON Reservation
    FOR EACH ROW EXECUTE FUNCTION reservation_update();

DROP TRIGGER log_reservation_delete ON Reservation;
CREATE TRIGGER log_reservation_delete
    BEFORE DELETE ON Reservation
    FOR EACH ROW EXECUTE FUNCTION reservation_delete('DELETE');