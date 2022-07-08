ACTUALIZAR FECHAS, en la tabla anterior control tiempo
--------------------------------------
fecha_recepcion, fecha_inicio, fecha_deriva

Ya deberia de estar actualizado

====================================
ACA EL EXCEL DE POSTGRES SE MANTIENE
====================================

select concat(aux.numero_recurso_alzada, ';', aux.id_usuario_origen, ';', aux.id_usuario_destino, ';',
              to_char(aux.fecha_recepcion, 'YYYY-MM-DD HH24:MI:SS')) as dato,
       aux.id                                                        as valor
from (select (select ra.numero_recurso_alzada
              from alzada.alz_recursos_alzada ra
              where ra.id = rds.id_recurso_alzada)         as numero_recurso_alzada,
             (select u.id
              from seguridad.seg_usuarios u
              where u.id_persona = rds.id_usuario_origen)  as id_usuario_origen,
             (select d.id
              from seguridad.seg_usuarios d
              where d.id_persona = rds.id_usuario_destino) as id_usuario_destino,
             rds.fecha_recepcion,
             rds.id
      from alzada.alz_registros_documentales_sustantivos as rds
      where rds.id_recurso_alzada in
            (select id
             from alzada.alz_recursos_alzada
             where id in (
                 select temp.id
                 from (select numero_recurso_alzada,
                              id
                       from alzada.alz_recursos_alzada
                       where (numero_recurso_alzada ilike 'ARIT-CHQ-%/2021%' or
                              numero_recurso_alzada ilike 'ARIT-CHQ-%/2022%')
                       order by numero_recurso_alzada) as temp
             ))) as aux
order by aux.id;


EXCEL

SELECT ((CASE
             WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                 SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp))))
             ELSE
                 LTRIM(RTRIM(ct.id_exp)) END)
    + ';' + (
            CAST((SELECT ori.id_value
                  FROM origenes AS ori
                  WHERE ori.usuario_origen = LTRIM(RTRIM(ct.origen))) as VARCHAR)
            ) + ';' + (
            CAST((SELECT dest.id_value
                  FROM origenes AS dest
                  WHERE dest.usuario_origen = LTRIM(RTRIM(ct.destino))) as VARCHAR)
            ) + ';' +
        SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                        AS id_registro_documental_sustantivo,
       REPLACE(LTRIM(RTRIM(ct.ruta_pro)), '../documentos/', 'expedientes/informes-ra/') AS ruta_documento,
       LTRIM(RTRIM(ct.ruta_inf))                                                        as nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo_aclaracion ct
WHERE (LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2021%' OR
       LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2022%')
  AND (LEN(ruta_pro) > 0 AND LEN(ruta_inf) = 0)
  AND LTRIM(RTRIM(ct.destino)) IS NOT NULL
ORDER BY ct.id;



OPCIONAL

SELECT ((CASE
             WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                 SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp))))
             ELSE
                 LTRIM(RTRIM(ct.id_exp)) END)
    + ';' + (
            CAST((SELECT ori.id_value
                  FROM origenes AS ori
                  WHERE ori.usuario_origen = LTRIM(RTRIM(ct.origen))) as VARCHAR)
            ) + ';' + (
            CAST((SELECT dest.id_value
                  FROM origenes AS dest
                  WHERE dest.usuario_origen = LTRIM(RTRIM(ct.destino))) as VARCHAR)
            ) + ';' +
        SUBSTRING(CONVERT(varchar, ct.f_recepcion, 120), 1, 19))                        AS id_registro_documental_sustantivo,
       LTRIM(RTRIM(ct.ruta_pro))                                                        as ruta_documento,
       REPLACE(LTRIM(RTRIM(ct.ruta_inf)), '../documentos/', 'expedientes/informes-ra/') AS nombre_documento,
       20                                                                               AS estado,
       1                                                                                AS id_usuario_registra,
       GETDATE()                                                                        AS fecha_registra,
       NULL                                                                             AS id_usuario_modifica,
       NULL                                                                             AS fecha_modifica
FROM control_tiempo_aclaracion ct
WHERE (LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2021%' OR
       LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2022%')
  AND (LEN(ruta_pro) = 0 AND LEN(ruta_inf) > 0)
  AND LTRIM(RTRIM(ct.destino)) IS NOT NULL
ORDER BY ct.id;