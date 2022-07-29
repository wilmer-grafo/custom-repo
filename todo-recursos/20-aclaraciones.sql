Actualizar fecha recepcion en memoriales

EJECUTAR LA CONSULTA Y GENERAR CSV, LUEGO IMPORTAR; previa creacion de la tabla memoriales_jer_temp y la creacion del index 


select concat(aux.numero_recurso_jerarquico),
       aux.id
from (select (select ra.numero_recurso_jerarquico
              from jerarquico.jer_recursos_jerarquicos ra
              where ra.id = m.id_recurso_jerarquico
             ) as numero_recurso_jerarquico,
             m.id
      from comunes.memoriales m
      where id_motivo_memorial in (15, 29)
        and id_recurso_alzada is null) as aux
order by aux.id;



OBTENER EL CSV SQL SERVER
-------------------------

SELECT *
FROM (SELECT aux.id_recurso_alzada,
             (SELECT TOP 1 t.id
              FROM memoriales_jer_temp t
              WHERE t.numero_recurso_alzada = aux.id_memorial) AS id_memorial,
             numero_auto_motivado,
             fecha_liberacion,
             estado,
             fecha_entrega
      FROM (SELECT (CASE
                        WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                            (SELECT id
                             FROM recursos_jer_calidad AS r
                             WHERE r.numero_recurso_alzada =
                                   SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))))
                        ELSE
                            (SELECT id
                             FROM recursos_jer_calidad AS r
                             WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ct.id_exp)))
          END)                                                AS id_recurso_alzada,
                   ((CASE
                         WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                             SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp))))
                         ELSE
                             LTRIM(RTRIM(ct.id_exp))
                       END))                                  AS id_memorial,
                   ('ARIT-RA-' + (
                       CASE
                           WHEN LEN(LTRIM(RTRIM(ct.correlativo))) = 1 THEN '000' + LTRIM(RTRIM(ct.correlativo))
                           WHEN LEN(LTRIM(RTRIM(ct.correlativo))) = 2 THEN '00' + LTRIM(RTRIM(ct.correlativo))
                           WHEN LEN(LTRIM(RTRIM(ct.correlativo))) = 3 THEN '0' + LTRIM(RTRIM(ct.correlativo))
                           WHEN LEN(LTRIM(RTRIM(ct.correlativo))) = 4 THEN LTRIM(RTRIM(ct.correlativo))
                           END
                       ) + '/' + CAST(ct.gestion AS VARCHAR)) as numero_auto_motivado,
                   (CASE
                        WHEN ct.f_liberacion = '1900-01-01 00:00:00.000' THEN NULL
                        ELSE ct.f_liberacion
                       END)                                   AS fecha_liberacion,
                   20                                         AS estado,
                   ct.f_registro                              AS fecha_entrega,
                   ct.id
            FROM reg_aclaracion AS ct
            WHERE SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) LIKE
                  'AGIT/%/2021') AS aux) AS temp
WHERE temp.id_memorial IS NOT NULL;
