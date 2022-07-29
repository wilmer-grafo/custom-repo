CASO RUTA PRO
=============

EJECUTAR LA CONSULTA Y GENERAR CSV, LUEGO IMPORTAR; previa creacion de la tabla documentos_jer_aux y la creacion del index

en migracion update fechas

select concat(aux.numero_recurso_jerarquico, ';', aux.id_usuario_origen, ';', aux.id_usuario_destino, ';',
              to_char(aux.fecha_recepcion, 'YYYY-MM-DD HH24:MI:SS')) as dato,
       aux.id                                                        as valor
from (select (select ra.numero_recurso_jerarquico
              from jerarquico.jer_recursos_jerarquicos ra
              where ra.id = rds.id_recurso_jerarquico) as numero_recurso_jerarquico,
             rds.id_usuario_origen,
             rds.id_usuario_destino,
             rds.fecha_recepcion,
             rds.id
      from jerarquico.jer_registros_documentales_sustantivos rds) aux
order by aux.id;


EXCEL

SELECT (SELECT TOP 1 da.id
        FROM documentos_jer_aux da
        WHERE da.numero_recurso_alzada = temp.id_registro_documental_sustantivo) AS id_registro_documental_sustantivo,
       ruta_documento,
       nombre_documento,
       estado,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica
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
             REPLACE(LTRIM(RTRIM(ct.ruta_pro)), '../documentos/', 'expedientes/informes-ra/') AS ruta_documento,
             LTRIM(RTRIM(ct.ruta_inf))                                                        as nombre_documento,
             20                                                                               AS estado,
             1                                                                                AS id_usuario_registra,
             GETDATE()                                                                        AS fecha_registra,
             NULL                                                                             AS id_usuario_modifica,
             NULL                                                                             AS fecha_modifica,
             ct.id                                                                            AS id
      FROM control_tiempo ct
      WHERE (LEN(ct.ruta_pro) > 0 AND LEN(ct.ruta_inf) = 0)
        AND SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) LIKE 'AGIT/%/2021') as temp
ORDER BY temp.id;

--------
carpeta: control-cambio-anexos

EL EXCEL EXPORTADO CAMBIAR DE NOMBRE A:
Resultado: Transformacion-cambios-anexos.xls OUT

USAR: 03-ctrl-cambios-anexos-ruta-pro.ktr
Excel: Transformacion-cambios-anexos.xls IN
SALIDA
CSV: archivo-anexos-ruta-pro OUT
