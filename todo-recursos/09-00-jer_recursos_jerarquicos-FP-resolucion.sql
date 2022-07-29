SELECT num_jer,
       expediente_jerarquico,
       C_Razon_Social,
       administracion_tributaria,
       CONVERT(DATETIME, dbo.f_FechaJerPlazoSAMP(fecha_pro, N'MBLANCO'), 103) AS FP_resolucion
FROM (SELECT DISTINCT dbo.f_JerExp(rjer.C_Nro_Expediente_Jer, ralz.C_Nro_Expediente)                      AS expediente_jerarquico,
                      'CONTRIBUYENTE Y ADMINISTRACION TRIBUTARIA'                                         AS recurrente,
                      ralz.C_Razon_Social,
                      CASE
                          WHEN rtrim(atri.c_descripcion) = rtrim(admt.c_descripcion) THEN rtrim(atri.c_descripcion)
                          ELSE rtrim(atri.c_descripcion) + ' - ' + rtrim(admt.c_descripcion) END          AS administracion_tributaria,
                      dbo.f_FechaPlazoJer(CONVERT(nvarchar, dbo.f_ObtieneFechaNotifPrev(ralz.C_Nro_Expediente, 31,
                                                                                        inter.N_Codigo_Destinatario),
                                                            103), 10, 1)                                  AS fecha_pro,
                      inter.d_Fecha_Recepcion_STG,
                      dbo.f_ObtieneFechaNotifPrev(ralz.C_Nro_Expediente, 31,
                                                  inter.N_Codigo_Destinatario)                            AS fecha_notif_Admi,
                      4                                                                                   AS n_codigo_destinatario,
                      rjer.C_Nro_Expediente_Jer AS num_jer,
                      proy.C_Nro_Res_Jerarquica,
                      admt.C_Super_Adm_Tri
      FROM dbo.TSS_SUBADMINISTRACIONES_TRIBUTARIAS AS atri
               INNER JOIN
           dbo.TSS_RECURSOS_ALZADA AS ralz ON atri.N_Codigo_Subadm_Tri = ralz.N_Codigo_Subadm_Tri
               INNER JOIN
           dbo.TSS_ADMINISTRACIONES_TRIBUTARIAS AS admt ON atri.N_Codigo_Adm_Tri = admt.N_Codigo_Adm_Tri
               INNER JOIN
           dbo.TSS_INTERPONE_REC_JER AS inter ON ralz.C_Nro_Expediente = inter.C_Nro_Expediente
               INNER JOIN
           dbo.TSS_RECURSOS_JERARQUICOS AS rjer ON inter.C_Nro_Expediente_Jer = rjer.C_Nro_Expediente_Jer
               LEFT OUTER JOIN
           dbo.TSS_BAR_GENERADOS AS proy ON rjer.C_Nro_Expediente_Jer = proy.C_Nro_Expediente_Jer
      WHERE (inter.n_Estado = 4)
        AND (inter.C_Nro_Expediente_Jer NOT IN
             (SELECT C_Nro_Expediente_Jer
              FROM dbo.TSS_AUTOS_JER
              WHERE (N_Codigo_Tipo_Auto IN (65))
                AND (n_recurrente = 4)
                AND (n_estado > 1)))
        AND (rjer.n_Estado > 0)
        AND (inter.D_Fecha_Interpone > '01/01/2014')
        AND (inter.D_Fecha_Interpone =
             (SELECT MAX(D_Fecha_Interpone) AS Expr1
              FROM dbo.TSS_INTERPONE_REC_JER AS i
              WHERE (C_Nro_Expediente_Jer = inter.C_Nro_Expediente_Jer)))
      UNION
      SELECT dbo.f_JerExp(rjer.C_Nro_Expediente_Jer, ralz.C_Nro_Expediente)                                     AS expediente_jerarquico,
             dest.C_Descripcion                                                                                 AS recurrente,
             ralz.C_Razon_Social,
             CASE
                 WHEN rtrim(atri.c_descripcion) = rtrim(admt.c_descripcion)
                     THEN rtrim(atri.c_descripcion)
                 ELSE rtrim(atri.c_descripcion) + ' - ' + rtrim(admt.c_descripcion) END                         AS administracion_tributaria,
             dbo.f_FechaPlazoJer(CONVERT(nvarchar,
                                         dbo.f_ObtieneFechaNotifPrev(ralz.C_Nro_Expediente, 31,
                                                                     inter.N_Codigo_Destinatario), 103), 10,
                                 1)                                                                             AS fecha_pro,
             inter.d_Fecha_Recepcion_STG,
             dbo.f_ObtieneFechaNotifPrev(ralz.C_Nro_Expediente, 31,
                                         inter.N_Codigo_Destinatario)                                           AS fecha_notif_aa,
             inter.N_Codigo_Destinatario,
             rjer.C_Nro_Expediente_Jer AS num_jer,
             proy.C_Nro_Res_Jerarquica,
             admt.C_Super_Adm_Tri
      FROM dbo.TSS_RECURSOS_JERARQUICOS AS rjer
               INNER JOIN
           dbo.TSS_SUBADMINISTRACIONES_TRIBUTARIAS AS atri
               INNER JOIN
           dbo.TSS_RECURSOS_ALZADA AS ralz ON atri.N_Codigo_Subadm_Tri = ralz.N_Codigo_Subadm_Tri
               INNER JOIN
           dbo.TSS_ADMINISTRACIONES_TRIBUTARIAS AS admt ON atri.N_Codigo_Adm_Tri = admt.N_Codigo_Adm_Tri
               INNER JOIN
           dbo.TSS_INTERPONE_REC_JER AS inter
               INNER JOIN
           dbo.TSS_DESTINATARIOS AS dest ON inter.N_Codigo_Destinatario = dest.N_Codigo_Destinatario
           ON ralz.C_Nro_Expediente = inter.C_Nro_Expediente ON
               rjer.C_Nro_Expediente_Jer = inter.C_Nro_Expediente_Jer
               LEFT OUTER JOIN
           dbo.TSS_BAR_GENERADOS AS proy ON rjer.C_Nro_Expediente_Jer = proy.C_Nro_Expediente_Jer
      WHERE (rjer.n_Estado > 0)
        AND (inter.n_Estado <> 4)
        AND (inter.D_Fecha_Interpone > '01/01/2014')
        AND (inter.C_Nro_Expediente_Jer NOT IN
             (SELECT C_Nro_Expediente_Jer
              FROM dbo.TSS_AUTOS_JER AS TSS_AUTOS_JER_1
              WHERE (N_Codigo_Tipo_Auto = 65)
                AND (n_recurrente <> inter.N_Codigo_Destinatario)
                AND (n_estado > 1)))) AS a
WHERE (1 = 1)
