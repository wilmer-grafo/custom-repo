Previo correr 01-actos-impugnados.ktr, para poblar recursos

CONSULTA
========

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
            WHEN LEN(LTRIM(RTRIM(ra.C_Nro_Expediente))) > 20 THEN
                (SELECT id
                 FROM recursos AS r
                 WHERE r.numero_recurso_alzada =
                       SUBSTRING(LTRIM(RTRIM(ra.C_Nro_Expediente)), 0,
                                 CHARINDEX('//', LTRIM(RTRIM(ra.C_Nro_Expediente)))))
            ELSE
                (SELECT id FROM recursos AS r WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ra.C_Nro_Expediente)))
           END)                  AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));



GENERAR CSV E IMPORTAR
