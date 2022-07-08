Cargar recursos y los representantes at.

SELECT (SELECT r.id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(TRA.C_Nro_Expediente)))                AS id_recurso_alzada,
       rec_jer.N_Codigo_Destinatario                                                       AS id_tipo_demandante,
       CAST(SUBSTRING(CONVERT(varchar, rec_jer.D_Fecha_Interpone, 120), 1, 10) +
            SUBSTRING(CONVERT(varchar, rec_jer.D_Hora_Interpone, 120), 11, 9) AS DATETIME) AS fecha_interpone,
       LTRIM(RTRIM(rec_jer.c_Nota_Remision))                                               AS cite_remision,
       rec_jer.D_Fecha_Remision_STG                                                        AS fecha_remision,
       rec_jer.d_Fecha_Recepcion_STG                                                       AS fecha_recepcion_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_SP_REG))                                          AS antecedentes_sp_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_Admin_REG))                                       AS antecedentes_at_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_Otros_REG))                                       AS antecedentes_otros_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_SP_STG))                                          AS antecedentes_sp_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_Admin_STG))                                       AS antecedentes_at_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_Otros_STG))                                       AS antecedentes_otros_agit,
       NULL                                                                                AS id_recurso_jerarquico,
       20                                                                                  AS estado,
       1                                                                                   AS id_usuario_registra,
       GETDATE()                                                                           AS fecha_registra,
       NULL                                                                                AS id_usuario_modifica,
       NULL                                                                                AS fecha_modifica,
       (SELECT TOP 1 rep.id
        FROM representantes rep
        WHERE rep.nombre_representante_at = LTRIM(RTRIM(TRA.c_Nombre_Representante_AT)))   AS id_representante_at,
       NULL                                                                                AS observaciones,
       NULL                                                                                AS id_memorial,
       NULL                                                                                AS observaciones_antecedentes
FROM TSS_INTERPONE_REC_JER AS rec_jer
         INNER JOIN TSS_RECURSOS_ALZADA TRA on TRA.C_Nro_Expediente = rec_jer.C_Nro_Expediente
WHERE rec_jer.C_Nro_Expediente_Jer IS NULL
  AND (TRA.C_Nro_Expediente LIKE 'ARIT-%-%/2021%' OR
       TRA.C_Nro_Expediente LIKE 'ARIT-%-%/2022%')
ORDER BY TRA.C_Nro_Expediente;
