SELECT temp.id_actuacion,
       id_tipo_demandante,
       id_tipo_notificacion,
       fecha_hora_notificacion,
       estado,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica,
       fecha_actuacion_registro
FROM (SELECT (CASE

    END)                                                        AS id_actuacion,
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
              WHERE TRA.C_Nro_Expediente = ra.C_Nro_Expediente) AS id_region_radicatoria,
             ra.C_Nro_Expediente
      FROM TSS_NOTIFICACIONES AS ra
      WHERE ra.C_Nro_Expediente LIKE 'ARIT-SCZ-%/2021%'
        AND ra.N_Codigo_Tipo_Auto NOT IN (22, 23)) AS temp
WHERE temp.id_actuacion IS NOT NULL
ORDER BY temp.C_Nro_Expediente;