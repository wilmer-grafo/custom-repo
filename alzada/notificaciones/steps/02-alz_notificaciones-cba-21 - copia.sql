SELECT (CASE
    END)                               AS id_actuacion,
       ra.N_Codigo_Destinatario                           AS id_tipo_demandante,
       ra.N_Codigo_Tipo_Not                               AS id_tipo_notificacion,
       D_Fecha_Hora_Notificacion                          AS fecha_hora_notificacion,
       1                                                  AS estado,
       1                                                  AS id_usuario_registra,
       GETDATE()                                          AS fecha_registra,
       NULL                                               AS id_usuario_modifica,
       NULL                                               AS fecha_modifica,
       ra.D_Fecha_Emision                                 AS fecha_actuacion_registro,
       (SELECT CASE
                   WHEN (tra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                       THEN tra.N_Codigo_Intendencia + 4
                   WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND tra.N_Codigo_Intendencia IS NULL)
                       THEN tra.N_Codigo_Super_Reg
                   WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                       THEN tra.N_Codigo_Super_Reg
                   END
        FROM TSS_RECURSOS_ALZADA AS TRA
        WHERE TRA.C_Nro_Expediente = ra.C_Nro_Expediente) AS id_region_radicatoria
FROM TSS_NOTIFICACIONES AS ra
WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%'
  AND ra.N_Codigo_Tipo_Auto NOT IN (22, 23)
ORDER BY ra.C_Nro_Expediente;

TOTAL

SELECT *
FROM TSS_NOTIFICACIONES AS ra
         INNER JOIN TSS_RECURSOS_ALZADA TRA ON TRA.C_Nro_Expediente = ra.C_Nro_Expediente
WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%'
  AND TRA.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%'
  AND ra.N_Codigo_Tipo_Auto NOT IN (22, 23);


select ra.numero_recurso_alzada,
       (case
            when ac.id_tipo_actuacion between 1 and 38 then id_tipo_actuacion - 1
            when ac.id_tipo_actuacion between 39 and 42 then 40
            when ac.id_tipo_actuacion between 43 and 58 then id_tipo_actuacion
            when ac.id_tipo_actuacion between 59 and 69 then id_tipo_actuacion + 1
            when ac.id_tipo_actuacion between 70 and 84 then id_tipo_actuacion
            when ac.id_tipo_actuacion between 85 and 90 then id_tipo_actuacion + 1
            when ac.id_tipo_actuacion between 92 and 98 then id_tipo_actuacion + 2
            when ac.id_tipo_actuacion = 97 then 100
            when ac.id_tipo_actuacion = 98 then 101
            when ac.id_tipo_actuacion = 99 then 102
           end) AS id_tipo_actuacion,
       ac.fecha_emision,
       ac.id
from alzada.alz_recursos_alzada as ra
         inner join alzada.alz_actuaciones ac
                    on ra.id = ac.id_recurso_alzada
where numero_recurso_alzada ilike 'ARIT-CBA-%/2021%'
  and ac.id_tipo_actuacion not in (23, 24)
order by ac.id;

--PRIMERO LA FECHA

LTRIM(RTRIM(ra.C_Nro_Expediente))
ra.N_Codigo_Tipo_Auto
ra.D_Fecha_Emision
--TRASNFORMAR A ESTE FORMATO: 00:00:00.000

