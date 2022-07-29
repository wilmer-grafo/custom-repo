SELECT (SELECT TOP 1 aux.id
        FROM actos_jer aux
        WHERE aux.numero_recurso_jerarquico = temp.id_acto_impugnado) id_acto_impugnado,
       id_tipo_impuesto,
       mes,
       anio,
       monto_principal_admitido,
       monto_multa_admitido,
       monto_principal_favor_adm_resuelto,
       monto_multa_favor_adm_resuelto,
       monto_principal_favor_sp_resuelto,
       monto_multa_favor_sp_resuelto,
       monto_principal_anulatoria_resuelto,
       monto_multa_anulatoria_resuelto,
       estado,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica,
       tipo_moneda,
       tipo_moneda_resuelto
FROM (SELECT (LTRIM(RTRIM(MR.C_Nro_Expediente_Jer)) + ';' + CAST(MR.N_Codigo_Acto AS VARCHAR) + ';' +
              LTRIM(RTRIM(MR.C_Numero)))            id_acto_impugnado,
--              MR.N_Codigo_Impuesto        id_tipo_impuesto,
             (CASE
                  WHEN MR.N_Codigo_Impuesto = 0 THEN CASE
                                                         WHEN (
                                                                  SELECT DISTINCT temp.C_Super_Adm_Tri
                                                                  FROM (
                                                                           SELECT g.C_Super_Adm_Tri
                                                                           FROM (SELECT TAT.C_Super_Adm_Tri,
                                                                                        TRJ.C_Nro_Expediente_Jer
                                                                                 FROM TSS_MONTOS AS m
                                                                                          INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                          INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                                     ON TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                          INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                                     ON TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri
                                                                                          INNER JOIN TSS_INTERPONE_REC_JER TRJ ON TRJ.C_Nro_Expediente = TRA.C_Nro_Expediente) AS g
                                                                           WHERE g.C_Nro_Expediente_Jer = MR.C_Nro_Expediente_Jer
                                                                       ) as temp
                                                              ) = 'S.I.N.' THEN 73
                                                         WHEN (
                                                                  SELECT DISTINCT temp.C_Super_Adm_Tri
                                                                  FROM (
                                                                           SELECT g.C_Super_Adm_Tri
                                                                           FROM (SELECT TAT.C_Super_Adm_Tri,
                                                                                        TRJ.C_Nro_Expediente_Jer
                                                                                 FROM TSS_MONTOS AS m
                                                                                          INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                          INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                                     on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                          INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                                     on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri
                                                                                          INNER JOIN TSS_INTERPONE_REC_JER TRJ ON TRJ.C_Nro_Expediente = TRA.C_Nro_Expediente) AS g
                                                                           WHERE g.C_Nro_Expediente_Jer = MR.C_Nro_Expediente_Jer
                                                                       ) as temp
                                                              ) = 'ADUANA' THEN 74
                                                         WHEN (
                                                                  SELECT DISTINCT temp.C_Super_Adm_Tri
                                                                  FROM (
                                                                           SELECT g.C_Super_Adm_Tri
                                                                           FROM (SELECT TAT.C_Super_Adm_Tri,
                                                                                        TRJ.C_Nro_Expediente_Jer
                                                                                 FROM TSS_MONTOS AS m
                                                                                          INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                          INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                                     on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                          INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                                     on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri
                                                                                          INNER JOIN TSS_INTERPONE_REC_JER TRJ ON TRJ.C_Nro_Expediente = TRA.C_Nro_Expediente) AS g
                                                                           WHERE g.C_Nro_Expediente_Jer = MR.C_Nro_Expediente_Jer
                                                                       ) as temp
                                                              ) = 'GOB. MUNICIPALES' THEN 75
                                                         WHEN (
                                                                  SELECT DISTINCT temp.C_Super_Adm_Tri
                                                                  FROM (
                                                                           SELECT g.C_Super_Adm_Tri
                                                                           FROM (SELECT TAT.C_Super_Adm_Tri,
                                                                                        TRJ.C_Nro_Expediente_Jer
                                                                                 FROM TSS_MONTOS AS m
                                                                                          INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                          INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                                     on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                          INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                                     on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri
                                                                                          INNER JOIN TSS_INTERPONE_REC_JER TRJ ON TRJ.C_Nro_Expediente = TRA.C_Nro_Expediente) AS g
                                                                           WHERE g.C_Nro_Expediente_Jer = MR.C_Nro_Expediente_Jer
                                                                       ) as temp
                                                              ) = 'GOB. DEPARTAMENTALES' THEN 76
                      END
                  ELSE MR.N_Codigo_Impuesto END) AS id_tipo_impuesto,
             MR.N_Mes                               mes,
             MR.N_Gestion                           anio,
             MR.N_Monto_Principal                   monto_principal_admitido,
             MR.N_Monto_Multa                       monto_multa_admitido,
             MR.N_Principal_Favor_Adm               monto_principal_favor_adm_resuelto,
             MR.N_Multa_Favor_Adm                   monto_multa_favor_adm_resuelto,
             MR.N_Principal_Favor_Con               monto_principal_favor_sp_resuelto,
             MR.N_Multa_Favor_Con                   monto_multa_favor_sp_resuelto,
             MR.N_Principal_Anula                   monto_principal_anulatoria_resuelto,
             MR.N_Multa_Anula                       monto_multa_anulatoria_resuelto,
             20                                     estado,
             1                                      id_usuario_registra,
             GETDATE()                              fecha_registra,
             NULL                                   id_usuario_modifica,
             NULL                                   fecha_modifica,
             2                                      tipo_moneda,
             2                                      tipo_moneda_resuelto
      FROM TSS_MONTOS_JER MR
      WHERE LTRIM(RTRIM(MR.C_Nro_Expediente_Jer)) LIKE '%2021%') AS temp;
