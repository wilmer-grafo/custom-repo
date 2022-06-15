SELECT (CASE
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2021' AND ra.N_Codigo_Tipo_Auto = 2 AND
                 ra.D_Fecha_Emision = '2021-02-11 00:00:00.000' THEN 1
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-02-02 00:00:00.000' THEN 2
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2022' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2022-04-18 00:00:00.000' THEN 3
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2022' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2022-05-06 00:00:00.000' THEN 4
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2022' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2022-06-06 00:00:00.000' THEN 5
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2021' AND ra.N_Codigo_Tipo_Auto = 2 AND
                 ra.D_Fecha_Emision = '2021-03-19 00:00:00.000' THEN 6
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-03-04 00:00:00.000' THEN 7
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2022' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2022-04-26 00:00:00.000' THEN 8
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2022' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2022-05-05 00:00:00.000' THEN 9
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2022' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2022-05-24 00:00:00.000' THEN 10
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-04-26 00:00:00.000' THEN 12
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-05-07 00:00:00.000' THEN 13
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-05-24 00:00:00.000' THEN 14
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2021-07-26 00:00:00.000' THEN 15
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 12 AND
                 ra.D_Fecha_Emision = '2021-08-18 00:00:00.000' THEN 16
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-06-18 00:00:00.000' THEN 17
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' AND ra.N_Codigo_Tipo_Auto = 63 AND
                 ra.D_Fecha_Emision = '2021-09-07 00:00:00.000' THEN 19
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-06-15 00:00:00.000' THEN 20
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-07-06 00:00:00.000' THEN 21
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2021-09-02 00:00:00.000' THEN 22
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' AND ra.N_Codigo_Tipo_Auto = 12 AND
                 ra.D_Fecha_Emision = '2021-09-29 00:00:00.000' THEN 23
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-07-29 00:00:00.000' THEN 24
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-07-06 00:00:00.000' THEN 25
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-07-13 00:00:00.000' THEN 26
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-08-02 00:00:00.000' THEN 27
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2021-10-01 00:00:00.000' THEN 28
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-08-26 00:00:00.000' THEN 29
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 20 AND
                 ra.D_Fecha_Emision = '2021-09-08 00:00:00.000' THEN 30
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' AND ra.N_Codigo_Tipo_Auto = 88 AND
                 ra.D_Fecha_Emision = '2021-08-23 00:00:00.000' THEN 33
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-07-09 00:00:00.000' THEN 34
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-07-26 00:00:00.000' THEN 35
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-08-11 00:00:00.000' THEN 36
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2021-10-06 00:00:00.000' THEN 37
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 12 AND
                 ra.D_Fecha_Emision = '2021-10-27 00:00:00.000' THEN 38
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-09-07 00:00:00.000' THEN 39
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0007/2021' AND ra.N_Codigo_Tipo_Auto = 2 AND
                 ra.D_Fecha_Emision = '2021-07-29 00:00:00.000' THEN 40
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 3 AND
                 ra.D_Fecha_Emision = '2021-11-08 00:00:00.000' THEN 41
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-11-19 00:00:00.000' THEN 42
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-12-07 00:00:00.000' THEN 43
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2022-02-07 00:00:00.000' THEN 44
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-12-31 00:00:00.000' THEN 45
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 24 AND
                 ra.D_Fecha_Emision = '2021-12-29 00:00:00.000' THEN 47
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' AND ra.N_Codigo_Tipo_Auto = 63 AND
                 ra.D_Fecha_Emision = '2022-01-24 00:00:00.000' THEN 48
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 4 AND
                 ra.D_Fecha_Emision = '2021-11-19 00:00:00.000' THEN 49
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 7 AND
                 ra.D_Fecha_Emision = '2021-12-07 00:00:00.000' THEN 50
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 10 AND
                 ra.D_Fecha_Emision = '2022-02-07 00:00:00.000' THEN 51
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 14 AND
                 ra.D_Fecha_Emision = '2021-12-31 00:00:00.000' THEN 52
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 24 AND
                 ra.D_Fecha_Emision = '2021-12-29 00:00:00.000' THEN 54
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' AND ra.N_Codigo_Tipo_Auto = 63 AND
                 ra.D_Fecha_Emision = '2022-01-24 00:00:00.000' THEN 55
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0010/2021' AND ra.N_Codigo_Tipo_Auto = 2 AND
                 ra.D_Fecha_Emision = '2021-12-17 00:00:00.000' THEN 56
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0011/2021' AND ra.N_Codigo_Tipo_Auto = 2 AND
                 ra.D_Fecha_Emision = '2022-01-03 00:00:00.000' THEN 57
    END)                                                  AS id_actuacion,
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
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%')
  AND ra.N_Codigo_Tipo_Auto NOT IN (22, 23)
ORDER BY ra.C_Nro_Expediente;
