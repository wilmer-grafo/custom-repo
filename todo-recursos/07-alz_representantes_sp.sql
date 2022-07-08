SELECT LTRIM(RTRIM(C_Representante))            AS nombre_completo,
       CONVERT(VARCHAR(10), RIGHT(NEWID(), 10)) AS ci,
       1                                        AS id_usuario_registra,
       GETDATE()                                AS fecha_registra,
       NULL                                     AS id_usuario_modifica,
       NULL                                     AS fecha_modifica,
       20                                       AS estado,
       NULL                                     AS id_region
FROM TSS_RECURSOS_ALZADA
WHERE LEN(LTRIM(RTRIM(C_Representante))) > 1
ORDER BY LTRIM(RTRIM(C_Representante));


GENERAR CSV E IMPORTAR