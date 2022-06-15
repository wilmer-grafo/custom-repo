SELECT c_nombre_representante AS nombre_completo,
       N_Codigo_Subadm_Tri    AS id_subadministracion_tributaria,
       d_fecha_desde          AS fecha_desde,
       d_fecha_hasta          AS fecha_hasta,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/com]', c_documento_asignacion))
               ,
                   CHARINDEX('[com]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/com]', c_documento_asignacion))
                       ) + 5,
                   CHARINDEX('[com]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/com]', c_documento_asignacion))
                       ) + 5)
           )                  AS id_tipo_documento_representante,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/doc]', c_documento_asignacion))
               ,
                   CHARINDEX('[doc]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/doc]', c_documento_asignacion))
                       ) + 5,
                   CHARINDEX('[doc]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/doc]', c_documento_asignacion))
                       ) + 5)
           )                  AS numero_documento,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/emiPor]', c_documento_asignacion))
               ,
                   CHARINDEX('[emiPor]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/emiPor]', c_documento_asignacion))
                       ) + 8,
                   CHARINDEX('[emiPor]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/emiPor]', c_documento_asignacion))
                       ) + 8)
           )                  AS emitido_por,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/cargomae]', c_documento_asignacion))
               ,
                   CHARINDEX('[cargomae]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/cargomae]', c_documento_asignacion))
                       ) + 10,
                   CHARINDEX('[cargomae]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/cargomae]', c_documento_asignacion))
                       ) + 10)
           )                  AS cargo_emisor,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/notario]', c_documento_asignacion))
               ,
                   CHARINDEX('[notario]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/notario]', c_documento_asignacion))
                       ) + 9,
                   CHARINDEX('[notario]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/notario]', c_documento_asignacion))
                       ) + 9)
           )                  AS notario,
       n_estado               AS estado,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/glosa]', c_documento_asignacion))
               ,
                   CHARINDEX('[glosa]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/glosa]', c_documento_asignacion))
                       ) + 7,
                   CHARINDEX('[glosa]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/glosa]', c_documento_asignacion))
                       ) + 7)
           )                  AS observaciones,
       (
           substring(
                   substring(c_documento_asignacion, 0,
                             charindex('[/cargoResp]', c_documento_asignacion))
               ,
                   CHARINDEX('[cargoResp]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/cargoResp]', c_documento_asignacion))
                       ) + 11,
                   CHARINDEX('[cargoResp]',
                             substring(c_documento_asignacion, 0,
                                       charindex('[/cargoResp]', c_documento_asignacion))
                       ) + 11)
           )                  AS cargo_representante
FROM TSS_REPRESENTANTES_AT
ORDER BY N_Codigo_Subadm_Tri, N_Codigo_Adm_Tri, n_secuencia;