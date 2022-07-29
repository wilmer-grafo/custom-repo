EXCEL

SELECT aux.id_registro_documental_sustantivo,
       aux.ruta_documento,
       nombre_documento,
       estado,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica
FROM (SELECT (SELECT TOP 1 da.id
              FROM documentos_jer_aux da
              WHERE da.numero_recurso_alzada = temp.id_registro_documental_sustantivo) AS id_registro_documental_sustantivo,
             ruta_documento,
             nombre_documento,
             estado,
             id_usuario_registra,
             fecha_registra,
             id_usuario_modifica,
             fecha_modifica,
             temp.id
      FROM (SELECT ((CASE
                         WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                             SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp))))
                         ELSE
                             LTRIM(RTRIM(ct.id_exp))
          END)
          + ';' + (
                        CAST((SELECT ori.id_value
                              FROM origenes_calidad AS ori
                              WHERE ori.usuario_origen = LTRIM(RTRIM(ct.origen))) as VARCHAR)
                        ) + ';' + (
                        CAST((SELECT dest.id_value
                              FROM origenes_calidad AS dest
                              WHERE dest.usuario_origen = LTRIM(RTRIM(ct.destino))) as VARCHAR)
                        ) + ';' +
                    SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                        AS id_registro_documental_sustantivo,
                   LTRIM(RTRIM(ct.ruta_pro))                                                        as ruta_documento,
                   REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
                   20                                                                               AS estado,
                   1                                                                                AS id_usuario_registra,
                   GETDATE()                                                                        AS fecha_registra,
                   NULL                                                                             AS id_usuario_modifica,
                   NULL                                                                             AS fecha_modifica,
                   ct.id                                                                            AS id
            FROM control_tiempo ct
            WHERE (LEN(ruta_pro) = 0 AND LEN(ruta_inf) > 0)
              AND SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) LIKE
                  'AGIT/%/2021') as temp) as aux
WHERE aux.id_registro_documental_sustantivo IS NOT NULL
ORDER BY aux.id;


carpeta: control-cambio-anexos-ruta-inf

EL EXCEL EXPORTADO CAMBIAR DE NOMBRE A:
Resultado: Transformacion-anexos-ruta-inf.xls OUT

USAR: 05-ctrl-cambios-anexos-ruta-inf.ktr
Excel: Transformacion-anexos-ruta-inf.xls IN
CSV: archivo-anexos-ruta-inf OUT

