EXCEL

SELECT ra.N_Codigo_Acto          AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero)) AS numero_acto,
       NULL                      AS cite_acto,
       ra.D_Fecha_Emision        AS fecha_emision,
       ra.D_Fecha_Notificacion   AS fecha_notificacion,
       1                         AS estado,
       1                         AS id_usuario_registra,
       GETDATE()                 AS fecha_registra,
       NULL                      AS id_usuario_modifica,
       NULL                      AS fecha_modifica,
       LTRIM(RTRIM(ra.C_Nro_Expediente))           AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));

3ro montos alzada
EXCEL

SELECT LTRIM(RTRIM(ra.C_Nro_Expediente))                               AS id_acto_impugnado,
       (CASE
            WHEN ra.N_Codigo_Impuesto = 0 THEN CASE
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'S.I.N.' THEN 73
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'ADUANA' THEN 74
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'GOB. MUNICIPALES' THEN 75
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'GOB. DEPARTAMENTALES' THEN 76
                END
            ELSE ra.N_Codigo_Impuesto END) AS id_tipo_impuesto,
       ra.N_Mes                            AS mes,
       ra.N_Gestion                        AS anio,
       ra.N_Monto_Principal                AS monto_principal_admitido,
       ra.N_Monto_Multa                    AS monto_multa_admitido,
       ra.N_Principal_Favor_Adm            AS monto_principal_favor_adm_resuelto,
       ra.N_Multa_Favor_Adm                AS monto_multa_favor_adm_resuelto,
       ra.N_Principal_Favor_Con            AS monto_principal_favor_sp_resuelto,
       ra.N_Multa_Favor_Con                AS monto_multa_favor_sp_resuelto,
       ra.N_Principal_Anula                AS monto_principal_anulatoria_resuelto,
       ra.N_Multa_Anula                    AS monto_multa_anulatoria_resuelto,
       1                                   AS estado,
       1                                   AS id_usuario_registra,
       GETDATE()                           AS fecha_registra,
       NULL                                AS id_usuario_modifica,
       NULL                                AS fecha_modifica,
       1                                   AS tipo_moneda,
       1                                   AS tipo_moneda_resuelto
FROM TSS_MONTOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));

4to actuaciones
EXCEL

SELECT LTRIM(RTRIM(ra.C_Nro_Expediente))                      AS id_recurso_alzada,
       (CASE

            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 1 AND 38 THEN N_Codigo_Tipo_Auto + 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 39 AND 42 THEN 40
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 43 AND 58 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto = 59 THEN 100
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 60 AND 69 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 70 AND 84 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 86 AND 90 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 92 AND 98 THEN N_Codigo_Tipo_Auto - 2
            WHEN ra.N_Codigo_Tipo_Auto = 100 THEN 97
            WHEN ra.N_Codigo_Tipo_Auto = 101 THEN 98
            WHEN ra.N_Codigo_Tipo_Auto = 102 THEN 99
           END)               AS id_tipo_actuacion,
       ra.D_Fecha_Emision     AS fecha_emision,
       ra.C_Observacion       AS observaciones,
       ra.D_Fecha_Subsanacion AS fecha_subsanacion,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       20                     AS estado,
       NULL                   AS id_memorial,
       NULL                   AS clasificacion_etapa,
       NULL                   AS id_interposicion_jerarquico,
       NULL                   AS estado_interposicion
FROM TSS_AUTOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));

5to notificaciones
EXCEL

SELECT (LTRIM(RTRIM(ra.C_Nro_Expediente)) + ';' + CAST(ra.N_Codigo_Tipo_Auto AS varchar) + ';' +
        SUBSTRING(CONVERT(varchar, ra.D_Fecha_Emision, 120), 1, 19)) AS id_actuacion,
       ra.N_Codigo_Destinatario                                      AS id_tipo_demandante,
       ra.N_Codigo_Tipo_Not                                          AS id_tipo_notificacion,
       D_Fecha_Hora_Notificacion                                     AS fecha_hora_notificacion,
       1                                                             AS estado,
       1                                                             AS id_usuario_registra,
       GETDATE()                                                     AS fecha_registra,
       NULL                                                          AS id_usuario_modifica,
       NULL                                                          AS fecha_modifica,
       ra.D_Fecha_Emision                                            AS fecha_actuacion_registro,
       (SELECT CASE
                   WHEN (tra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                       THEN tra.N_Codigo_Intendencia + 4
                   WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND tra.N_Codigo_Intendencia IS NULL)
                       THEN tra.N_Codigo_Super_Reg
                   WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                       THEN tra.N_Codigo_Super_Reg
                   END
        FROM TSS_RECURSOS_ALZADA AS TRA
        WHERE TRA.C_Nro_Expediente = ra.C_Nro_Expediente)            AS id_region_radicatoria
FROM TSS_NOTIFICACIONES AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
  AND ra.N_Codigo_Tipo_Auto NOT IN (22, 23)
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));

