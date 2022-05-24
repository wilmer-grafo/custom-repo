SELECT C_Descripcion AS descripcion,
       1             AS activo,
       1             AS id_usuario_registra,
       GETDATE()     AS fecha_registra,
       NULL          AS id_usuario_modifica,
       NULL          AS fecha_modifica,
       (CASE
            WHEN (LTRIM(RTRIM(C_Origen)) = 'A') THEN 2
            WHEN (LTRIM(RTRIM(C_Origen)) = 'I') THEN 1
            WHEN (LTRIM(RTRIM(C_Origen)) = 'M') THEN 3
           END)      AS id_super_administracion
FROM TSS_IMPUESTOS
WHERE N_Codigo_Impuesto > 0
UNION ALL
SELECT C_Descripcion AS descripcion,
       1             AS activo,
       1             AS id_usuario_registra,
       GETDATE()     AS fecha_registra,
       NULL          AS id_usuario_modifica,
       NULL          AS fecha_modifica,
       (CASE
            WHEN (LTRIM(RTRIM(C_Origen)) = 'N') THEN 1
           END)      AS id_super_administracion
FROM TSS_IMPUESTOS
WHERE N_Codigo_Impuesto = 0;
