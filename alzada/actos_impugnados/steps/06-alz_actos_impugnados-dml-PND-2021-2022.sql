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
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0001/2021' THEN 25268
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0001/2022' THEN 25269
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0002/2021' THEN 25283
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0002/2022' THEN 25284
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0003/2021' THEN 25297
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0003/2021-1' THEN 25298
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0003/2022' THEN 25299
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0004/2021' THEN 25311
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0004/2022' THEN 25312
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0005/2021' THEN 25323
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0005/2022' THEN 25324
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0006/2021' THEN 25335
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0006/2022' THEN 25336
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PND-0007/2022' THEN 25347
           END)                  AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2022%')
ORDER BY ra.C_Nro_Expediente;
