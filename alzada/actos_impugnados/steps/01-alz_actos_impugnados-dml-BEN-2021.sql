SELECT ra.N_Codigo_Acto          AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero)) AS numero_acto,
       NULL                   AS cite_acto,
       ra.D_Fecha_Emision        AS fecha_emision,
       ra.D_Fecha_Notificacion   AS fecha_notificacion,
       1                      AS estado,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2021' THEN 13
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2021' THEN 27
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0003/2021' THEN 39
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0004/2021' THEN 51
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0005/2021' THEN 64
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0006/2021' THEN 77
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0007/2021' THEN 90
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0008/2021' THEN 101
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0009/2021' THEN 112
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0010/2021' THEN 123
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0011/2021' THEN 131
           END)               AS id_recurso_alzada,
       NULL                   AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%'
ORDER BY ra.C_Nro_Expediente;


2022

SELECT ra.N_Codigo_Acto          AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero)) AS numero_acto,
       NULL                      AS cite_acto,
       ra.D_Fecha_Emision        AS fecha_emision,
       ra.D_Fecha_Notificacion   AS fecha_notificacion,
       1                         AS estado,
       1                         AS id_usuario_registra,
       GETDATE()                 AS fecha_registra,
       NULL                      AS id_usuario_modifica,
       NULL                      AS fecha_modifica,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0001/2022' THEN 14
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-BEN-0002/2022' THEN 28
           END)                  AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%'
ORDER BY ra.C_Nro_Expediente;

