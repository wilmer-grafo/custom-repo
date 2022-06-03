select *
from (SELECT (CASE
    WHEN ra.C_Nro_Expediente='ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto=4 and ra.D_Fecha_Emision='2010-01-05 00:00:00.000' THEN 1

    END)                              AS id_actuacion,
             ra.N_Codigo_Destinatario AS id_tipo_demandante,
             ra.N_Codigo_Tipo_Not     AS id_tipo_notificacion,
             D_Fecha_Hora_Notificacion AS fecha_hora_notificacion,
             1                        AS estado,
             1                        AS id_usuario_registra,
             GETDATE()                AS fecha_registra,
             NULL                     AS id_usuario_modifica,
             NULL                     AS fecha_modifica,
             ra.D_Fecha_Emision       AS fecha_actuacion_registro,
             (CASE
                  WHEN (tra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                      THEN tra.N_Codigo_Intendencia + 4
                  WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND tra.N_Codigo_Intendencia IS NULL)
                      THEN tra.N_Codigo_Super_Reg
                  WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                      THEN tra.N_Codigo_Super_Reg
                  ELSE -4
                 END)                 AS id_region_radicatoria

      FROM TSS_NOTIFICACIONES AS ra
               inner join TSS_RECURSOS_ALZADA TRA on TRA.C_Nro_Expediente = ra.C_Nro_Expediente
      WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2010'
        and TRA.C_Nro_Expediente LIKE 'ARIT-CBA-%/2010'
        and ra.N_Codigo_Tipo_Auto not in (22, 23)) as dd
where dd.id_actuacion is not null;
-- order by dd.id_actuacion;
