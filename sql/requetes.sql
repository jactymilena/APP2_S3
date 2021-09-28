--ProcédureTableau--
SELECT CURRENT_DATE;
--nom local/ id de la fonction/ nom de la fonction
SELECT nom_local,fonction.id_fonction,fonction.nom FROM local
                                                            JOIN fonction
                                                                 ON local.id_fonction = fonction.id_fonction;



--Date de reservation avec le debut/fin, id_pavillon et le nom du local avec le nom/prenom de la personne qui reserve + description si besoin
SELECT date,debut,fin,id_pavillon,reservation.nom_local,prenom,nom,reservation.description FROM reservation
    LEFT JOIN membre m
        ON reservation.cip = m.cip
    LEFT JOIN local l
        ON reservation.nom_local = l.nom_local;

SELECT * FROM reservation;


--display des heures durant 1 journee (8-minuit)
WITH recursive time_series_recursive AS (
     SELECT 30 AS num
     UNION ALL
     SELECT  num + 15
     FROM time_series_recursive
     WHERE num < 16.5 * 60
 ), time_series AS (
    SELECT num * interval '1 MINUTE' + '7:30'::TIME AS interval
    FROM time_series_recursive
), get_reservation AS (
    SELECT date,debut,fin,id_pavillon,reservation.nom_local,prenom,nom,reservation.description FROM reservation
        JOIN membre m
             ON reservation.cip = m.cip
        JOIN local l
             ON reservation.nom_local = l.nom_local
), tab_debut AS (
    SELECT * FROM get_reservation
        FULL JOIN time_series ON (time_series.interval = debut)
    ORDER BY time_series.interval ASC
)
SELECT * FROM tab_debut
    FULL JOIN time_series ON (time_series.interval = fin)
ORDER BY tab_debut.interval ASC;




-- Procedure TABLEAU --
DROP FUNCTION TABLEAU(new_debut TIME, new_fin TIME, new_date DATE, fonction CHAR(4));
CREATE OR REPLACE FUNCTION TABLEAU(new_debut TIME, new_fin TIME, new_date DATE, fonction CHAR(4))
RETURNS TABLE (
                   interval_t TIME,
                   date_t DATE,
                   debut_t TIME,
                   fin_t TIME,
                   id_pav CHAR(2),
                   nom_local_t CHAR(4),
                   prenom_t VARCHAR(20),
                   nom_t VARCHAR(20),
                   description_t VARCHAR(300),
                   id_reserv INT
              )
AS
$$
BEGIN
    RETURN QUERY
    WITH recursive time_series_recursive AS (
        SELECT 30 AS num
        UNION ALL
        SELECT  num + 15
        FROM time_series_recursive
        WHERE num < 16.5 * 60
    ), time_series AS (
        SELECT num * interval '1 MINUTE' + '7:30'::TIME AS interval
        FROM time_series_recursive
    ), get_reservation AS (
        SELECT date,reservation.debut,reservation.fin,id_pavillon,reservation.nom_local,prenom,nom,reservation.description, reservation.id_reservation
        FROM reservation
                 JOIN membre m
                      ON reservation.cip = m.cip
                 JOIN local l
                      ON reservation.nom_local = l.nom_local
        WHERE date = new_date AND id_fonction = fonction
    )
    SELECT time_series.interval, date,debut,fin,id_pavillon,nom_local,prenom,nom,description, id_reservation FROM get_reservation
        FULL JOIN time_series ON (time_series.interval = debut)
--             WHERE (time_series.interval >= debut AND time_series.interval <= fin)
        ORDER BY time_series.interval ASC;

END
$$
LANGUAGE plpgsql;

SELECT * FROM TABLEAU(TIME'8:00', TIME '00:00', DATE '2021-09-28','0211');





