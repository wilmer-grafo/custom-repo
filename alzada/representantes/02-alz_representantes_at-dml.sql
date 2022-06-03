SELECT c_nombre_representante AS nombre_completo,
       N_Codigo_Subadm_Tri    AS id_subadministracion_tributaria,
       d_fecha_desde          AS fecha_desde,
       d_fecha_hasta          AS fecha_hasta,
       'com'                  AS id_tipo_documento_representante,
       'comaux'               AS numero_documento,
       'doc'                  AS numero_documento,
       'emiPor'               AS emitido_por,
       'cargomae'             AS cargo_emisor,
       'notario'              AS notario,
       n_estado               AS estado,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       'glosa'                AS observaciones,
       'cargoResp'            AS cargo_representante
FROM TSS_REPRESENTANTES_AT
ORDER BY N_Codigo_Subadm_Tri, N_Codigo_Adm_Tri, n_secuencia;
