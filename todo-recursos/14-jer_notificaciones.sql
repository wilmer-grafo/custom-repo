ACTUALIZAR FECHAS, fecha_emision en la tabla anterior "jer_actuaciones"

update jerarquico.jer_actuaciones
set fecha_emision = fecha_emision + interval '4 hours';

EJECUTAR LA CONSULTA Y GENERAR CSV, LUEGO IMPORTAR; previa creacion de la tabla notificaciones_jer y la creacion del index

select concat(aux.numero_recurso_jerarquico, ';', aux.id_tipo_actuacion, ';',
              to_char(aux.fecha_emision, 'YYYY-MM-DD HH24:MI:SS')) as numero_recurso_jerarquico,
       aux.id                                                      as id
from (select (select ra.numero_recurso_jerarquico
              from jerarquico.jer_recursos_jerarquicos ra
              where ra.id = ac.id_recurso_jerarquico) as numero_recurso_jerarquico,
             (case
                  when ac.id_tipo_actuacion between 1 and 38 then id_tipo_actuacion - 1
                  when ac.id_tipo_actuacion = 39 then id_tipo_actuacion - 1
                  when ac.id_tipo_actuacion between 40 and 42 then 40
                  when ac.id_tipo_actuacion between 43 and 58 then id_tipo_actuacion
                  when ac.id_tipo_actuacion between 59 and 69 then id_tipo_actuacion + 1
                  when ac.id_tipo_actuacion between 70 and 84 then id_tipo_actuacion
                  when ac.id_tipo_actuacion between 85 and 90 then id_tipo_actuacion + 1
                  when ac.id_tipo_actuacion between 92 and 98 then id_tipo_actuacion + 2
                  when ac.id_tipo_actuacion = 97 then 100
                  when ac.id_tipo_actuacion = 98 then 101
                  when ac.id_tipo_actuacion = 99 then 102
                  when ac.id_tipo_actuacion = 100 then 59
                 end)                                 as id_tipo_actuacion,
             ac.fecha_emision,
             ac.id
      from jerarquico.jer_actuaciones ac
      where id_tipo_actuacion not in (23, 24)) as aux
order by aux.id;


EJECUTAR LA CONSULTA Y GENERAR CSV, LUEGO IMPORTAR EL ARCHIVO GENERADO

SELECT (SELECT TOP 1 id
        FROM notificaciones_jer
        WHERE numero_recurso_jerarquico =
              (LTRIM(RTRIM(ra.C_Nro_Expediente_Jer)) + ';' + (
                  CASE
                      WHEN ra.N_Codigo_Tipo_Auto = 39 OR ra.N_Codigo_Tipo_Auto = 41 OR ra.N_Codigo_Tipo_Auto = 42
                          THEN CAST(40 as varchar)
                      ELSE CAST(ra.N_Codigo_Tipo_Auto AS varchar) END) + ';' +
               SUBSTRING(CONVERT(varchar, ra.D_Fecha_Emision, 120), 1, 19))) AS id_actuacion,
       ra.N_Codigo_Destinatario                                              AS id_tipo_demandante,
       ra.N_Codigo_Tipo_Not                                                  AS id_tipo_notificacion,
       ra.D_Fecha_Hora_Notificacion                                          AS fecha_hora_notificacion,
       20                                                                    AS estado,
       1                                                                     AS id_usuario_registra,
       GETDATE()                                                             AS fecha_registra,
       NULL                                                                  AS id_usuario_modifica,
       NULL                                                                  AS fecha_modifica,
       (SELECT JER.D_Fecha_Emision
        FROM TSS_AUTOS_JER JER
        WHERE (LTRIM(RTRIM(JER.C_Nro_Expediente_Jer)) =
               LTRIM(RTRIM(ra.C_Nro_Expediente_Jer)))
          AND JER.N_Codigo_Tipo_Auto = ra.N_Codigo_Tipo_Auto
          AND JER.D_Fecha_Emision = ra.D_Fecha_Emision
          AND JER.n_recurrente = ra.n_recurrente)                            AS fecha_actuacion_registro,
       10                                                                    AS id_region_notifica
FROM TSS_NOTIFICACIONES_JER AS ra
WHERE ra.N_Codigo_Tipo_Auto NOT IN (22, 23)
  AND LTRIM(RTRIM(ra.C_Nro_Expediente_Jer)) LIKE 'AGIT/%/2021'
ORDER BY ra.D_Fecha_Emision;

