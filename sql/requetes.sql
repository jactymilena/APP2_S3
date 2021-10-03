-- Procedure TABLEAU --
DROP FUNCTION TABLEAU(new_debut TIME, new_fin TIME, new_date DATE, fonction CHAR(4));
CREATE OR REPLACE FUNCTION TABLEAU(new_debut TIME, new_fin TIME, new_date DATE, fonction CHAR(4))
RETURNS TABLE (
                   interval_t TIME,
                   id_reserv INT,
                   date_t DATE,
                   debut_t TIME,
                   fin_t TIME,
                   id_pav CHAR(2),
                   nom_local_t CHAR(4),
                   prenom_t VARCHAR(20),
                   nom_t VARCHAR(20),
                   description_t VARCHAR(300)
              )
AS
$$
DECLARE
    diff_duree INT;
BEGIN
    SELECT EXTRACT (HOURS FROM (new_fin - new_debut)) INTO diff_duree;

    RETURN QUERY
        WITH recursive time_series_recursive AS (
            SELECT 0 AS num
            UNION ALL
            SELECT  num + 15
            FROM time_series_recursive
            WHERE num < (diff_duree) * 60
        ), time_series AS (
            SELECT num * interval '1 MINUTE' + new_debut::TIME AS interval
            FROM time_series_recursive
        ), plages_horaire AS (
            SELECT * FROM time_series CROSS JOIN Local
            WHERE id_fonction = fonction
        ), get_reservation AS (
            SELECT date,reservation.debut,reservation.fin,id_pavillon,reservation.nom_local,prenom,nom,reservation.description as desc, reservation.id_reservation
            FROM reservation
                     JOIN membre m
                          ON reservation.cip = m.cip
                     JOIN local l
                          ON reservation.nom_local = l.nom_local
            WHERE date = new_date AND id_fonction = fonction
        ) SELECT plages_horaire.interval, id_reservation, date,debut,fin, plages_horaire.id_pavillon,plages_horaire.nom_local,prenom,nom,get_reservation.desc
        FROM get_reservation
                 FULL JOIN plages_horaire ON (plages_horaire.interval = debut and plages_horaire.nom_local = get_reservation.nom_local)
        ORDER BY plages_horaire.interval ASC;

END
$$
LANGUAGE plpgsql;

SELECT * FROM TABLEAU(TIME'8:00', TIME '22:00', DATE '2021-09-26','0211');


