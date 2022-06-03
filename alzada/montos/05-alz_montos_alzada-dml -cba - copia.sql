SELECT * 
FROM (SELECT (CASE
           
    END
           )                               AS id_acto_impugnado,
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
WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%') AS gg
WHERE gg.id_acto_impugnado IS NOT NULL;
