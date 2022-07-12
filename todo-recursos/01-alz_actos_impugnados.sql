Drop recursos en SQL - server
Luego correr 01-actos-impugnados.ktr, para poblar recursos
O importar el CSV mucho tarda.

CONSULTA
========

SELECT ra.N_Codigo_Acto                                                                                 AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero))                                                                        AS numero_acto,
       NULL                                                                                             AS cite_acto,
       ra.D_Fecha_Emision                                                                               AS fecha_emision,
       ra.D_Fecha_Notificacion                                                                          AS fecha_notificacion,
       1                                                                                                AS estado,
       1                                                                                                AS id_usuario_registra,
       GETDATE()                                                                                        AS fecha_registra,
       NULL                                                                                             AS id_usuario_modifica,
       NULL                                                                                             AS fecha_modifica,
       (SELECT id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ra.C_Nro_Expediente)))                              AS id_recurso_alzada,
       NULL                                                                                             AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));




GENERAR CSV E IMPORTAR