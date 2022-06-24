SELECT (ct.id_exp + ';' + (
    CASE
        WHEN LTRIM(RTRIM(ct.origen)) = 'averas' THEN 'avera'
        WHEN LTRIM(RTRIM(ct.origen)) = 'jmamanig' THEN 'achuma'
        WHEN LTRIM(RTRIM(ct.origen)) = 'lespadacam' THEN 'lespada'
        WHEN LTRIM(RTRIM(ct.origen)) = 'mgemior' THEN 'mgemio'
        WHEN LTRIM(RTRIM(ct.origen)) = 'mmarinm' THEN 'mmarin'
        WHEN LTRIM(RTRIM(ct.origen)) = 'mrivasr' THEN 'mrivas'
        WHEN LTRIM(RTRIM(ct.origen)) = 'pcondet' THEN 'pconde'
        WHEN LTRIM(RTRIM(ct.origen)) = 'tpenarrieta' THEN 'spenarrieta'
        WHEN LTRIM(RTRIM(ct.origen)) = 'wvaldezr' THEN 'wvaldez'
        WHEN LTRIM(RTRIM(ct.origen)) = 'cherrerar' THEN 'cherrera'
        WHEN LTRIM(RTRIM(ct.origen)) = 'lvargasr' THEN 'lvargas'
        WHEN LTRIM(RTRIM(ct.origen)) = 'rquispech' THEN 'rquispe'
        WHEN LTRIM(RTRIM(ct.origen)) = 'tpenarrieta' THEN 'spenarrieta'
        WHEN LTRIM(RTRIM(ct.origen)) = 'vquisbertr' THEN 'vquisbert'
        ELSE LTRIM(RTRIM(ct.origen))
        END
    ) + ';' + (
            CASE
                WHEN LTRIM(RTRIM(ct.destino)) = 'averas' THEN 'avera'
                WHEN LTRIM(RTRIM(ct.destino)) = 'jmamanig' THEN 'achuma'
                WHEN LTRIM(RTRIM(ct.destino)) = 'lespadacam' THEN 'lespada'
                WHEN LTRIM(RTRIM(ct.destino)) = 'mgemior' THEN 'mgemio'
                WHEN LTRIM(RTRIM(ct.destino)) = 'mmarinm' THEN 'mmarin'
                WHEN LTRIM(RTRIM(ct.destino)) = 'mrivasr' THEN 'mrivas'
                WHEN LTRIM(RTRIM(ct.destino)) = 'pcondet' THEN 'pconde'
                WHEN LTRIM(RTRIM(ct.destino)) = 'tpenarrieta' THEN 'spenarrieta'
                WHEN LTRIM(RTRIM(ct.destino)) = 'wvaldezr' THEN 'wvaldez'
                WHEN LTRIM(RTRIM(ct.destino)) = 'cherrerar' THEN 'cherrera'
                WHEN LTRIM(RTRIM(ct.destino)) = 'lvargasr' THEN 'lvargas'
                WHEN LTRIM(RTRIM(ct.destino)) = 'mrivasr' THEN 'mrivas'
                WHEN LTRIM(RTRIM(ct.destino)) = 'tpenarrieta' THEN 'spenarrieta'
                WHEN LTRIM(RTRIM(ct.destino)) = 'vquisbertr' THEN 'vquisbert'
                ELSE LTRIM(RTRIM(ct.destino))
                END
            ) + ';' + SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))          AS id_registro_documental_sustantivo,
       REPLACE(LTRIM(RTRIM(ct.ruta_pro)), '../documentos/', 'expedientes/informes-ra/') AS ruta_documento,
       ''                                                                               as nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo_aclaracion ct
WHERE (LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%' OR
       LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2022%')
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) = 0)
  AND LEN(id_exp) <= 20
  AND LTRIM(RTRIM(ct.destino)) IS NOT NULL
ORDER BY ct.id;
