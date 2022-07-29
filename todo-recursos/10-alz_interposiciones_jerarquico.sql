SELECT (SELECT r.id
        FROM recursos r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(RA.C_Nro_Expediente)))               id_recurso_alzada,
       (CASE WHEN IR.N_Codigo_Destinatario = 3 THEN 2 ELSE IR.N_Codigo_Destinatario END) id_tipo_demandante,
       CAST(SUBSTRING(CONVERT(varchar, IR.D_Fecha_Interpone, 120), 1, 10) +
            SUBSTRING(CONVERT(varchar, IR.D_Hora_Interpone, 120), 11, 9) AS DATETIME) AS fecha_interpone,
       LTRIM(RTRIM(IR.c_Nota_Remision))                                                  cite_remision,
       IR.D_Fecha_Remision_STG                                                           fecha_remision,
       IR.d_Fecha_Recepcion_STG                                                          fecha_recepcion_agit,
       LTRIM(RTRIM(IR.C_antecedente_SP_REG))                                             antecedentes_sp_regional,
       LTRIM(RTRIM(IR.C_antecedente_Admin_REG))                                          antecedentes_at_regional,
       LTRIM(RTRIM(IR.C_antecedente_Otros_REG))                                          antecedentes_otros_regional,
       LTRIM(RTRIM(IR.C_antecedente_SP_STG))                                             antecedentes_sp_agit,
       LTRIM(RTRIM(IR.C_antecedente_Admin_STG))                                          antecedentes_at_agit,
       LTRIM(RTRIM(IR.C_antecedente_Otros_STG))                                          antecedentes_otros_agit,
       (SELECT rj.id
        FROM recursos_jerarquicos rj
        WHERE rj.numero_recurso_jerarquico = LTRIM(RTRIM(IR.C_Nro_Expediente_Jer)))      id_recurso_jerarquico,
       (CASE WHEN IR.n_Estado = 0 THEN 0 ELSE 20 END)                                    estado,
       1                                                                                 id_usuario_registra,
       GETDATE()                                                                         fecha_registra,
       NULL                                                                              id_usuario_modifica,
       NULL                                                                              fecha_modifica,
       (SELECT TOP 1 rep.id
        FROM representantes rep
        WHERE rep.nombre_representante_at = LTRIM(RTRIM(RA.c_Nombre_Representante_AT)))  id_representante_at,
       NULL                                                                              observaciones,
       NULL                                                                              id_memorial,
       NULL                                                                              observaciones_antecedentes
FROM TSS_INTERPONE_REC_JER IR
         INNER JOIN TSS_RECURSOS_ALZADA RA ON LTRIM(RTRIM(RA.C_Nro_Expediente)) = LTRIM(RTRIM(IR.C_Nro_Expediente))
WHERE LTRIM(RTRIM(IR.C_Nro_Expediente_Jer)) LIKE '%2021%';
