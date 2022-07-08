Previo correr 01-actos-impugnados.ktr, para poblar recursos

CONSULTA
========


SELECT (SELECT id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ra.C_Nro_Expediente))) AS id_recurso_alzada,
       (CASE

            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 1 AND 38 THEN N_Codigo_Tipo_Auto + 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 39 AND 42 THEN 40
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 43 AND 58 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto = 59 THEN 100
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 60 AND 69 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 70 AND 84 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 86 AND 90 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 92 AND 98 THEN N_Codigo_Tipo_Auto - 2
            WHEN ra.N_Codigo_Tipo_Auto = 100 THEN 97
            WHEN ra.N_Codigo_Tipo_Auto = 101 THEN 98
            WHEN ra.N_Codigo_Tipo_Auto = 102 THEN 99
           END)                                                            AS id_tipo_actuacion,
       ra.D_Fecha_Emision                                                  AS fecha_emision,
       ra.C_Observacion                                                    AS observaciones,
       ra.D_Fecha_Subsanacion                                              AS fecha_subsanacion,
       1                                                                   AS id_usuario_registra,
       GETDATE()                                                           AS fecha_registra,
       NULL                                                                AS id_usuario_modifica,
       NULL                                                                AS fecha_modifica,
       20                                                                  AS estado,
       NULL                                                                AS id_memorial,
       NULL                                                                AS clasificacion_etapa,
       NULL                                                                AS id_interposicion_jerarquico,
       NULL                                                                AS estado_interposicion
FROM TSS_AUTOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-%-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-%-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));



GENERAR CSV E IMPORTAR