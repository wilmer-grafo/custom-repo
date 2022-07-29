SELECT LTRIM(RTRIM(RJ.N_Nro_Fojas))                                                          cuerpos_expediente,
       LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))                                                 numero_recurso_jerarquico,
       LTRIM(RTRIM(RJ.C_Nro_Res_Jerarquica))                                                 numero_res_jerarquico,
       LTRIM(RTRIM(RJ.N_Secuencia_Inf_Representa))                                           numero_informe_representacion_sp,
       LTRIM(RTRIM(RJ.N_Secuencia_Inf_Representa_at))                                        numero_informe_representacion_at,
       (CASE WHEN n_Estado = 0 THEN 0 ELSE 20 END)                                           estado,
       1                                                                                     id_usuario_registra,
       GETDATE()                                                                             fecha_registra,
       NULL                                                                                  id_usuario_modifica,
       NULL                                                                                  fecha_modifica,
       (SELECT TOP 1 aux.FP_Resolucion
        FROM resoluciones_jer aux
        WHERE aux.Expediente_Jerarquico = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer)))             fecha_vencimiento,
       (SELECT TOP 1 LTRIM(RTRIM(EX.C_antecedente_Admin_STG))
        FROM TSS_EXPEDIENTES_ARCHIVO_JER EX
        WHERE LTRIM(RTRIM(ex.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) antecedentes_at,
       (SELECT TOP 1 LTRIM(RTRIM(EX.C_antecedente_SP_STG))
        FROM TSS_EXPEDIENTES_ARCHIVO_JER EX
        WHERE LTRIM(RTRIM(ex.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) antecedentes_sp,
       (SELECT TOP 1 LTRIM(RTRIM(EX.C_antecedente_Otros_STG))
        FROM TSS_EXPEDIENTES_ARCHIVO_JER EX
        WHERE LTRIM(RTRIM(ex.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) antecedentes_otro,
       (SELECT TOP 1 AI.N_Codigo_Tipo_Resol_Jer
        FROM TSS_ACTOS_IMPUGNADOS_JER AI
        WHERE LTRIM(RTRIM(AI.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) id_tipo_resolucion,
       NULL                                                                                  id_resultado_anulacion,
       (SELECT TOP 1 AI.N_Codigo_Tipo_Resol_Fin
        FROM TSS_ACTOS_IMPUGNADOS_JER AI
        WHERE LTRIM(RTRIM(AI.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) id_resultado_segun_destino,
       NULL                                                                                  resumen_tema,
       NULL                                                                                  observaciones_defensa,
       RJ.D_Fecha_Envio_Archivo                                                              fecha_transferencia_archivo,
       (SELECT TOP 1 EX.D_Fecha_Update
        FROM TSS_EXPEDIENTES_ARCHIVO_JER EX
        WHERE LTRIM(RTRIM(ex.C_Nro_Expediente_jer)) = LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer))) fecha_recepcion_archivo,
       (SELECT u.id_value
        FROM usuarios_jer u
        WHERE u.usuario = LTRIM(RTRIM(RJ.C_Usuario)))                                        id_usuario_transferencia_archivo,
       (SELECT u.id_value FROM usuarios_jer u WHERE u.usuario = LTRIM(RTRIM(RJ.C_Usuario)))  id_usuario_recepcion_archivo
FROM TSS_RECURSOS_JERARQUICOS RJ
WHERE LTRIM(RTRIM(RJ.C_Nro_Expediente_Jer)) LIKE '%2021%';
