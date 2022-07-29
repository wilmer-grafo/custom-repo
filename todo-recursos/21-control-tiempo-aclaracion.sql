SELECT temp.id_recurso_jerarquico,
       id_proceso,
       id_tramite,
       temp.id_usuario_origen,
       temp.id_usuario_destino,
       fecha_recepcion,
       fecha_inicio,
       fecha_deriva,
       id_tipo_observacion,
       estado,
       observaciones,
       temp.id_aclaracion
FROM (SELECT (CASE
                  WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                      (SELECT id
                       FROM recursos_jer_calidad AS r
                       WHERE r.numero_recurso_alzada =
                             SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))))
                  ELSE
                      (SELECT id
                       FROM recursos_jer_calidad AS r
                       WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ct.id_exp)))
    END)                                                                                             AS id_recurso_jerarquico,
             (CASE
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'ACAMARA' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'ACAMARA' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'AGRJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'AGRJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'OFDILIG' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'OFDILIG' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO'))
                      THEN 1
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'DEJ' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'DEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'DEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'DEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'DEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECREDEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECREDEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECREDEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECREDEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR'))
                      THEN 58
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'JURIDICO' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'REV'))
                      THEN 50
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'IMPRESOR')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'JURIDICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR'))
                      THEN 51
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'EJ'))
                      THEN 52
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'SECRESUB')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'IMPRESOR' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'SECRESUB')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'IMPRESOR' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ'))
                      THEN 53
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'IMPRESOR' AND
                         ISNULL((SELECT d.cargo FROM usuario AS d WHERE d.id_user = ct.destino), 'ACAMARA') = 'REV')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'IMPRESOR' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'EJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'IMPRESOR' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'IMPRESOR' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO'))
                      THEN 54
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'IMPRESOR' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'DEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'AGRJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'DEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'JURIDICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'DEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'DEJ'))
                      THEN 55
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'SECRESUB' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'SECRESUB')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'SECRESUB' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'SECREDEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'EJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'REV')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO'))
                      THEN 56
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'EJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'JURIDICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'EJ'))
                      THEN 41
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'JURIDICO' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'JURIDICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'AGRJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                          'TECNICO' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'JURIDICO'))
                      THEN 42
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'JURIDICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'TECNICO')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'IMPRESOR'))
                      THEN 43
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') =
                         'JURIDICO' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') = 'SEJ'))
                      THEN 44
                  WHEN ((ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'REV' AND
                         ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                         'SECRESUB')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'EJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'SECREDEJ')
                      OR (ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.origen), 'ACAMARA') = 'SEJ' AND
                          ISNULL((SELECT u.cargo FROM usuario AS u WHERE u.id_user = ct.destino), 'ACAMARA') =
                          'SECRESUB'))
                      THEN 46
                 END)                                                                                AS id_proceso,
             18                                                                                      AS id_tramite,
             (SELECT ori.id_value
              FROM origenes_calidad AS ori
              WHERE ori.usuario_origen = LTRIM(RTRIM(ct.origen)))                                    AS id_usuario_origen,
             (SELECT dest.id_value
              FROM origenes_calidad AS dest
              WHERE dest.usuario_origen = LTRIM(RTRIM(ct.destino)))                                  AS id_usuario_destino,
             (CASE
                  WHEN ct.f_recepcion = '1900-01-01 00:00:00.000' THEN NULL
                  ELSE ct.f_recepcion
                 END)                                                                                AS fecha_recepcion,
             (CASE
                  WHEN ct.f_inicio = '1900-01-01 00:00:00.000' THEN NULL
                  ELSE ct.f_inicio
                 END)                                                                                AS fecha_inicio,
             (CASE
                  WHEN ct.f_deriva = '1900-01-01 00:00:00.000' THEN NULL
                  ELSE ct.f_deriva
                 END)                                                                                AS fecha_deriva,
             NULL                                                                                    AS id_tipo_observacion,
             20                                                                                      AS estado,
             (CASE
                  WHEN LEN(LTRIM(RTRIM(ct.observaciones))) = 0 THEN NULL
                  ELSE LTRIM(RTRIM(ct.observaciones))
                 END)                                                                                AS observaciones,
             (SELECT TOP 1 ac.id
              FROM aclaraciones_jer ac
              WHERE ac.numero_recurso_alzada =
                    SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp))))) AS id_aclaracion,
             ct.id
      FROM control_tiempo_aclaracion AS ct
      WHERE LTRIM(RTRIM(ct.destino)) IS NOT NULL
        AND SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))) LIKE 'AGIT/%/2021') AS temp
WHERE temp.id_aclaracion IS NOT NULL
ORDER BY temp.id;
