CASO ruta_documento

SELECT (ct.id_exp + ';' + ct.origen + ';' + ct.destino + ';' +SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                                                                                  AS id_registro_documental_sustantivo,
       REPLACE(LTRIM(RTRIM(ct.ruta_pro)), '../documentos/', 'expedientes/informes-ra/') AS ruta_documento,
        LTRIM(RTRIM(ct.ruta_inf)) as nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ct.ruta_pro) > 0 AND LEN(ct.ruta_inf) = 0)
AND LEN(id_exp) <= 20
ORDER BY ct.id;

CASO ruta_documento

SELECT (SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) + ';' + ct.origen + ';' + ct.destino + ';' +SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                                                                                  AS id_registro_documental_sustantivo,
       REPLACE(LTRIM(RTRIM(ct.ruta_pro)), '../documentos/', 'expedientes/informes-ra/') AS ruta_documento,
        LTRIM(RTRIM(ct.ruta_inf)) as nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ct.ruta_pro) > 0 AND LEN(ct.ruta_inf) = 0)
AND LEN(id_exp) > 20
ORDER BY ct.id;

CASO nombre_documento

SELECT (ct.id_exp + ';' + ct.origen + ';' + ct.destino + ';' +SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                                                                                  AS id_registro_documental_sustantivo,
       LTRIM(RTRIM(ct.ruta_pro)) as ruta_documento,
       REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) = 0 AND  LEN(ruta_inf) > 0)
AND LEN(id_exp) <= 20
ORDER BY ct.id;

CASO nombre_documento

SELECT (SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) + ';' + ct.origen + ';' + ct.destino + ';' +SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                                                                                  AS id_registro_documental_sustantivo,
       LTRIM(RTRIM(ct.ruta_pro)) as ruta_documento,
        REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo ct
WHERE LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%'
  AND (LEN(ruta_pro) = 0 AND  LEN(ruta_inf) > 0)
AND LEN(id_exp) > 20
ORDER BY ct.id;

