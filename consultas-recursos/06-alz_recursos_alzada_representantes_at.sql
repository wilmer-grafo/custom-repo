Cargar recursos y los representantes at.

SELECT (SELECT id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ra.C_Nro_Expediente)))              AS id_recurso_alzada,
       (SELECT TOP 1 rep.id
        FROM representantes rep
        WHERE rep.nombre_representante_at = LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) AS id_representante_at,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica,
       1                                                                                AS estado,
       1                                                                                AS id_usuario_registra
FROM TSS_REPRESENTANTES_AT rat
         INNER JOIN TSS_RECURSOS_ALZADA ra ON
    (LTRIM(RTRIM(rat.c_nombre_representante)) = LTRIM(RTRIM(ra.c_Nombre_Representante_AT))
        AND ra.N_Codigo_Subadm_Tri = rat.N_Codigo_Subadm_Tri)
WHERE LEN(LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) > 1
  AND (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));
