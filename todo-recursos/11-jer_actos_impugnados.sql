SELECT AIR.N_Codigo_Acto                                                             id_tipo_acto,
       LTRIM(RTRIM(AIR.C_Numero))                                                    numero_acto,
       NULL                                                                          cite_acto,
       AIR.D_Fecha_Emision                                                           fecha_emision,
       AIR.D_Fecha_Notificacion                                                      fecha_notificacion,
       20                                                                            estado,
       1                                                                             id_usuario_registra,
       GETDATE()                                                                     fecha_registra,
       NULL                                                                          id_usuario_modifica,
       NULL                                                                          fecha_modifica,
       (SELECT rj.id
        FROM recursos_jerarquicos rj
        WHERE rj.numero_recurso_jerarquico = LTRIM(RTRIM(AIR.C_Nro_Expediente_Jer))) id_recurso_jerarquico,
       NULL                                                                          observaciones
FROM TSS_ACTOS_IMPUGNADOS_JER AIR
WHERE LTRIM(RTRIM(AIR.C_Nro_Expediente_Jer)) LIKE '%2021%';
