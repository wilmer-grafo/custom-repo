SELECT (SELECT rj.id
        FROM recursos_jerarquicos rj
        WHERE rj.numero_recurso_jerarquico = LTRIM(RTRIM(AR.C_Nro_Expediente_Jer)))                 id_recurso_jerarquico,
       (CASE
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 1 AND 38 THEN N_Codigo_Tipo_Auto + 1
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 39 AND 41 THEN 40
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 42 AND 58 THEN N_Codigo_Tipo_Auto
            WHEN AR.N_Codigo_Tipo_Auto = 59 THEN 100
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 60 AND 69 THEN N_Codigo_Tipo_Auto - 1
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 70 AND 84 THEN N_Codigo_Tipo_Auto
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 86 AND 90 THEN N_Codigo_Tipo_Auto - 1
            WHEN AR.N_Codigo_Tipo_Auto BETWEEN 92 AND 98 THEN N_Codigo_Tipo_Auto - 2
            WHEN AR.N_Codigo_Tipo_Auto = 100 THEN 97
            WHEN AR.N_Codigo_Tipo_Auto = 101 THEN 98
            WHEN AR.N_Codigo_Tipo_Auto = 102 THEN 99
           END)                                                                                     id_tipo_actuacion,
       AR.D_Fecha_Emision                                                                           fecha_emision,
       AR.C_Observacion                                                                             observaciones,
       1                                                                                            id_usuario_registra,
       GETDATE()                                                                                    fecha_registra,
       NULL                                                                                         id_usuario_modifica,
       NULL                                                                                         fecha_modifica,
       20                                                                                           estado,
       NULL                                                                                         id_memorial,
       NULL                                                                                         clasificacion_etapa,
       (CASE
            WHEN AR.N_Codigo_Tipo_Auto = 34 THEN (SELECT TOP 1 ij.id
                                                  FROM interposiciones_jer ij
                                                  WHERE ij.numero_recurso_jerarquico =
                                                        LTRIM(RTRIM(AR.C_Nro_Expediente_Jer))) END) id_interposicion_jerarquico
FROM TSS_AUTOS_JER AR
WHERE LTRIM(RTRIM(AR.C_Nro_Expediente_Jer)) LIKE '%2021%'
ORDER BY AR.D_Fecha_Emision;
