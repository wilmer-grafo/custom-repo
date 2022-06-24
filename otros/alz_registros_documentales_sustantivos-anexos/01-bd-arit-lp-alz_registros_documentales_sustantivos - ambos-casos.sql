CASO ruta_documento === ruta_pro

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
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) > 0)
  AND LEN(id_exp) <= 20
ORDER BY ct.id;


SELECT (SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) + ';' + (
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
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) > 0)
  AND LEN(id_exp) > 20
ORDER BY ct.id;



CASO nombre_documento === ruta_inf

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
                ELSE LTRIM(RTRIM(ct.destino))
                END
            ) + ';' + SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))          AS id_registro_documental_sustantivo,
       ''                                                                               AS ruta_documento,
       REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) > 0)
  AND LEN(id_exp) <= 20
ORDER BY ct.id;


CASO nombre_documento === ruta_inf


SELECT (SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) + ';' + (
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
                ELSE LTRIM(RTRIM(ct.destino))
                END
            ) + ';' + SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))          AS id_registro_documental_sustantivo,
       ''                                                                               as ruta_documento,
       REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) > 0)
  AND LEN(id_exp) > 20
ORDER BY ct.id;




OTROS

SELECT * FROM (SELECT *
FROM control_tiempo
WHERE id_exp LIKE 'ARIT-LPZ-0233/2016%'
AND (LEN(ruta_pro) > 0 AND  LEN(ruta_inf) > 0)
UNION ALL
SELECT *
FROM control_tiempo
WHERE id_exp LIKE 'ARIT-LPZ-0233/2016%'
AND (LEN(ruta_pro) > 0 AND  LEN(ruta_inf) > 0 )) as fd
ORDER BY fd.id;


SELECT origen FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND  LEN(ruta_inf) > 0)
AND LEN(id_exp) <= 20
GROUP BY origen
ORDER BY origen;

SELECT destino FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) > 0 AND  LEN(ruta_inf) > 0)
AND LEN(id_exp) <= 20
GROUP BY destino
ORDER BY destino;