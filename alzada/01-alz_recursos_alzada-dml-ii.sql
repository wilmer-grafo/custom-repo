SELECT 1                                                              AS id_tipo_presentacion,
       LTRIM(RTRIM(ra.C_Razon_Social))                                AS razon_social,
       (CASE
            WHEN ra.N_Codigo_Tipo_Doc = 1 THEN 2
            WHEN ra.N_Codigo_Tipo_Doc = 2 THEN 10
            WHEN ra.N_Codigo_Tipo_Doc = 3 THEN 4
            WHEN ra.N_Codigo_Tipo_Doc = 4 THEN 11
            WHEN ra.N_Codigo_Tipo_Doc = 5 THEN 3
            WHEN ra.N_Codigo_Tipo_Doc = 6 THEN 6
            WHEN ra.N_Codigo_Tipo_Doc = 7 THEN 21
            ELSE -1
           END)                                                       AS id_tipo_documento,
       LTRIM(RTRIM(ra.C_Nro_Doc_Identidad))                           AS numero_documento,
       (CASE
            WHEN ra.C_Proc_Doc_Identidad = 'TJ' THEN 7
            WHEN ra.C_Proc_Doc_Identidad = 'PN' THEN 9
            WHEN ra.C_Proc_Doc_Identidad = 'SC' THEN 4
            WHEN ra.C_Proc_Doc_Identidad = 'LP' THEN 2
            WHEN ra.C_Proc_Doc_Identidad = 'OR' THEN 6
            WHEN ra.C_Proc_Doc_Identidad = 'BN' THEN 8
            WHEN ra.C_Proc_Doc_Identidad = 'CB' THEN 3
            WHEN ra.C_Proc_Doc_Identidad = 'CH' THEN 1
            WHEN ra.C_Proc_Doc_Identidad = 'PT' THEN 5
            ELSE 10
           END)                                                       AS id_region_documento,
       ra.N_Codigo_Subadm_Tri                                         AS id_subadministracion_tributaria,
--        ra.C_Presentado_Por                                            AS nombre_presentante,
       (CASE
            WHEN ra.C_Presentado_Por IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_Presentado_Por))
           END)                                                       AS nombre_presentante,
--        ra.C_En_Calidad                                                AS cargo_presentante,
       (CASE
            WHEN ra.C_En_Calidad IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_En_Calidad))
           END)                                                       AS cargo_presentante,
       (CASE
            WHEN ra.N_Codigo_Tipo_Res = 1 THEN 2
            WHEN ra.N_Codigo_Tipo_Res = 2 THEN 1
            WHEN ra.N_Codigo_Tipo_Res = 3 THEN 1
            WHEN ra.N_Codigo_Tipo_Res = 4 THEN 3
            WHEN ra.N_Codigo_Tipo_Res IS NULL THEN NULL
           END)                                                       AS id_tipo_respuesta_administracion,
--        ra.C_Domicilio                                                 AS direccion,
       (CASE
            WHEN ra.C_Domicilio IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_Domicilio))
           END)                                                       AS direccion,
       0                                                              AS latitud,
       0                                                              AS longitud,
       (CASE
            WHEN ra.N_Estado = 0 THEN 0
            WHEN ra.N_Estado = 1 THEN 1
            WHEN ra.N_Estado > 1 and ra.N_Estado < 7 THEN 4
            WHEN ra.N_Estado >= 7 THEN 8
            ELSE -3
           END)                                                       AS estado,
       LTRIM(RTRIM(ra.C_Nro_Expediente))                              AS numero_recurso_alzada,
       LTRIM(RTRIM(ra.C_Nro_Res_Alzada))                              AS numero_res_alzada,
       (SELECT TOP 1 ai.N_Codigo_Tipo_Resol
        FROM TSS_ACTOS_IMPUGNADOS AS ai
        WHERE ai.C_Nro_Expediente = ra.C_Nro_Expediente)              AS id_tipo_resolucion,
--        ra.C_Usuario                                                   AS id_usuario_registra,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'acarrasco' THEN 152
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino' THEN 245
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino1' THEN 245
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinos' THEN 245
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinot' THEN 245
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillanes' THEN 60
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'alaura' THEN 131
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'allanos' THEN 192
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amendoza' THEN 63
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'anarteaga' THEN 185
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'arit' THEN 350
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'atorricos' THEN 236
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avargasm' THEN 235
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avera' THEN 10
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'bchura' THEN 413
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccazuriaga' THEN 20
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cgomez' THEN 213
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguerrero' THEN 143
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguzman' THEN 105
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cherrera' THEN 17
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cortiz' THEN 86
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cpradoa' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cprados' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cuzieda' THEN 203
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldez' THEN 347
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldezs' THEN 347
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalencia' THEN 254
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalle' THEN 287
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleae' THEN 287
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'czambrana' THEN 87
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dcaldas' THEN 268
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros' THEN 234
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'driveroa' THEN 367
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drodriguez' THEN 139
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ealurralde' THEN 364
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eflores' THEN 155
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'egonzales' THEN 186
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'elurici' THEN 322
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'erojas' THEN 260
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarez' THEN 267
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarezs' THEN 267
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebey' THEN 144
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeys' THEN 144
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman' THEN 239
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman1' THEN 239
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmaldonado' THEN 154
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fsubieta' THEN 412
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fteran' THEN 52
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'galarcon' THEN 381
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gchavez' THEN 184
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrar' THEN 304
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmeriles' THEN 281
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gromero' THEN 18
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsanchez' THEN 243
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsoliz' THEN 188
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gvallejos' THEN 265
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantoja' THEN 170
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iquispe' THEN 149
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ivela' THEN 215
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez' THEN 341
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcabero' THEN 330
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcastrog' THEN 368
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcoplot' THEN 134
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jflores' THEN 183
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jjemio' THEN 50
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlazarte' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza1' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozao' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozar' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozas' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmercado' THEN 83
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticona' THEN 253
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticonatja' THEN 253
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvaldez' THEN 118
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvillalpando' THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jyañez' THEN 101
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kvillegas' THEN 278
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lantezana' THEN 217
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcaero' THEN 114
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lchavezdelarosa' THEN 97
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lespada' THEN 160
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lespadacam' THEN 160
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lpachecov' THEN 324
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lvargas' THEN 13
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarroa' THEN 261
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'masalvatierra' THEN 206
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbarrenechea' THEN 9
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbravo' THEN 348
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcarpioa' THEN 290
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mduarte' THEN 69
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mfernandez' THEN 255
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mibanez' THEN 338
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mluna' THEN 24
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmedina' THEN 78
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmiranda' THEN 277
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoya' THEN 289
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaa' THEN 289
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaofi' THEN 289
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyas' THEN 289
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mquiroga' THEN 100
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mrivas' THEN 282
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mruiz' THEN 14
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msalvatierra' THEN 92
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msegales' THEN 308
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mtimm' THEN 85
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvillcac' THEN 306
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nfuentes' THEN 47
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nherrera' THEN 179
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nleigue' THEN 157
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmolina' THEN 369
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmunozs' THEN 370
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oceballos' THEN 67
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'paguilar' THEN 55
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos' THEN 279
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos1' THEN 279
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcespedes' THEN 136
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pconde' THEN 204
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pjimenez' THEN 81
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pterceros' THEN 299
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ralema' THEN 132
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rarana' THEN 171
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rduran' THEN 168
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rnunez' THEN 102
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rquispe' THEN 302
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rramos' THEN 212
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrivera' THEN 129
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrondal' THEN 379
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sarrien' THEN 2
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'scolque' THEN 332
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'spenarrieta' THEN 124
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'storrico' THEN 27
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vcalderon' THEN 321
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaurad' THEN 270
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vquisbert' THEN 151
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vrivera' THEN 148
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wmiranda' THEN 246
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wrocabado' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsaire' THEN 360
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wvaldez' THEN 214
           END)                                                       AS id_usuario_registra,
       ra.D_Fecha_Update                                              AS fecha_registra,
       1                                                              AS id_usuario_modifica,
       ra.D_Fecha_Update                                              AS fecha_modifica,
       (CASE
            WHEN (ra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ra.N_Codigo_Intendencia IS NULL) THEN ra.N_Codigo_Super_Reg
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Super_Reg
            ELSE -4
           END)                                                       AS id_region_radicatoria,
       (SUBSTRING(CONVERT(varchar, D_Fecha_Presentacion, 120), 1, 10) +
        SUBSTRING(CONVERT(varchar, D_Hora_Presentacion, 120), 11, 9)) AS fecha_presentacion,
       ra.D_Fecha_Respuesta                                           AS fecha_respuesta_administracion,
       --=========================================--
       (SELECT TOP 1 temp.fecha_vencimiento_plazo
        FROM (SELECT DISTINCT ralz.C_Nro_Expediente,
                              CONVERT(DATETIME,
                                      dbo.f_FechaPlazo(CONVERT(NVARCHAR, noti.D_Fecha_Hora_Notificacion, 103), 60, 0,
                                                       ralz.C_Usuario), 103) AS fecha_vencimiento_plazo
              FROM dbo.TSS_RECURSOS_ALZADA AS ralz
                       INNER JOIN
                   dbo.TSS_AUTOS AS autos ON ralz.C_Nro_Expediente = autos.C_Nro_Expediente
                       INNER JOIN
                   dbo.TSS_NOTIFICACIONES AS noti
                   ON autos.C_Nro_Expediente = noti.C_Nro_Expediente AND
                      autos.N_Codigo_Tipo_Auto = noti.N_Codigo_Tipo_Auto AND
                      autos.D_Fecha_Emision = noti.D_Fecha_Emision
                       CROSS JOIN
                   dbo.TSS_FUNCIONARIOS AS func
              WHERE (CASE WHEN ralz.N_Codigo_Super_Reg IS NULL THEN 1 ELSE 2 END = func.N_Codigo_Oficina)
                AND (CASE
                         WHEN ralz.N_Codigo_Super_Reg IS NULL THEN ralz.N_Codigo_Intendencia
                         ELSE ralz.N_Codigo_Super_Reg END = func.N_Codigo_Reg_Int)
                AND (ralz.N_Estado > 0)
                AND (ralz.C_Expediente_Acumulado IS NULL)
                AND (ralz.C_Nro_Expediente NOT IN
                     (SELECT C_Nro_Expediente
                      FROM dbo.TSS_AUTOS
                      WHERE (N_Codigo_Tipo_Auto = 13)))
                AND (autos.N_Codigo_Tipo_Auto IN (7, 8, 5, 6))) AS temp
        WHERE temp.C_Nro_Expediente = ra.C_Nro_Expediente)            AS fecha_vencimiento,
       --=========================================--
       --C_antecedente_Admin_REG
       (SELECT TOP 1 irj.C_antecedente_Admin_REG
        FROM TSS_INTERPONE_REC_JER AS irj
        WHERE LEN(irj.C_antecedente_Admin_REG) =
              (SELECT MAX(LEN(C_antecedente_Admin_REG))
               FROM TSS_INTERPONE_REC_JER irj_i
               WHERE irj_i.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND irj.C_Nro_Expediente = ra.C_Nro_Expediente)             AS antecedentes_at,
       --C_antecedente_SP_REG
       (SELECT TOP 1 ir.C_antecedente_SP_REG
        FROM TSS_INTERPONE_REC_JER AS ir
        WHERE LEN(ir.C_antecedente_SP_REG) =
              (SELECT MAX(LEN(C_antecedente_SP_REG))
               FROM TSS_INTERPONE_REC_JER irj_ii
               WHERE irj_ii.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND ir.C_Nro_Expediente = ra.C_Nro_Expediente)              AS antecedentes_sp,
       --C_antecedente_Otros_REG
       (SELECT TOP 1 rec.C_antecedente_Otros_REG
        FROM TSS_INTERPONE_REC_JER AS rec
        WHERE rec.C_Nro_Expediente = ra.C_Nro_Expediente)             AS antecedentes_otro,
       1                                                              AS estado_revision_alzada_montos,
       --c_expediente_REG
       (SELECT TOP 1 ij.c_expediente_REG
        FROM TSS_INTERPONE_REC_JER AS ij
        WHERE LEN(ij.c_expediente_REG) =
              (SELECT MAX(LEN(c_expediente_REG))
               FROM TSS_INTERPONE_REC_JER ij_ii
               WHERE ij_ii.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND ij.C_Nro_Expediente = ra.C_Nro_Expediente)              AS cuerpos,
       NULL                                                           AS id_resultado_anulacion,
       (CASE
            WHEN ((ra.N_Codigo_Tipo_Doc % 2) = 0 OR ra.N_Codigo_Tipo_Doc = 5) THEN 1
            ELSE 0
           END)                                                       AS tipo_persona,
       1                                                              AS clasificador_alzada,
       (CASE
            WHEN (ra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ra.N_Codigo_Intendencia IS NULL) THEN ra.N_Codigo_Super_Reg
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            ELSE -5
           END)                                                       AS id_region_recepcion
FROM TSS_RECURSOS_ALZADA AS ra;
