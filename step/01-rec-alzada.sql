SELECT 1                                                                              AS id_tipo_presentacion,
       LTRIM(RTRIM(ra.C_Razon_Social))                                                AS razon_social,
       (CASE
            WHEN ra.N_Codigo_Tipo_Doc = 1 THEN 2
            WHEN ra.N_Codigo_Tipo_Doc = 2 THEN 10
            WHEN ra.N_Codigo_Tipo_Doc = 3 THEN 4
            WHEN ra.N_Codigo_Tipo_Doc = 4 THEN 11
            WHEN ra.N_Codigo_Tipo_Doc = 5 THEN 3
            WHEN ra.N_Codigo_Tipo_Doc = 6 THEN 6
            WHEN ra.N_Codigo_Tipo_Doc = 7 THEN 21
           END)                                                                       AS id_tipo_documento,
       LTRIM(RTRIM(ra.C_Nro_Doc_Identidad))                                           AS numero_documento,
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
           END)                                                                       AS id_region_documento,
       ra.N_Codigo_Subadm_Tri                                                         AS id_subadministracion_tributaria,
       (CASE
            WHEN ra.C_Presentado_Por IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_Presentado_Por))
           END)                                                                       AS nombre_presentante,
       (CASE
            WHEN ra.C_En_Calidad IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_En_Calidad))
           END)                                                                       AS cargo_presentante,
       (CASE
            WHEN ra.N_Codigo_Tipo_Res = 1 THEN 2
            WHEN ra.N_Codigo_Tipo_Res = 2 THEN 1
            WHEN ra.N_Codigo_Tipo_Res = 3 THEN 1
            WHEN ra.N_Codigo_Tipo_Res = 4 THEN 3
            WHEN ra.N_Codigo_Tipo_Res IS NULL THEN NULL
           END)                                                                       AS id_tipo_respuesta_administracion,
       (CASE
            WHEN ra.C_Domicilio IS NULL THEN ''
            ELSE LTRIM(RTRIM(ra.C_Domicilio))
           END)                                                                       AS direccion,
       0                                                                              AS latitud,
       0                                                                              AS longitud,
       (CASE
            WHEN ra.N_Estado = 0 THEN 0
            WHEN ra.N_Estado = 1 THEN 1
            WHEN ra.N_Estado > 1 and ra.N_Estado < 7 THEN 4
            WHEN ra.N_Estado >= 7 THEN 8
           END)                                                                       AS estado,
       LTRIM(RTRIM(ra.C_Nro_Expediente))                                              AS numero_recurso_alzada,
       LTRIM(RTRIM(ra.C_Nro_Res_Alzada))                                              AS numero_res_alzada,
       (SELECT TOP 1 ai.N_Codigo_Tipo_Resol
        FROM TSS_ACTOS_IMPUGNADOS AS ai
        WHERE ai.C_Nro_Expediente = ra.C_Nro_Expediente)                              AS id_tipo_resolucion,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'allanos' THEN 328
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'achinos' OR LTRIM(RTRIM(ra.C_Usuario)) = 'achino' OR
                  LTRIM(RTRIM(ra.C_Usuario)) = 'achino1' OR LTRIM(RTRIM(ra.C_Usuario)) = 'achinot') THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillanes' THEN 330
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'acarrasco' THEN 331
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'alaura' THEN 332
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avera' THEN 333
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'atorricos' THEN 334
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'anarteaga' THEN 335
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avargasm' THEN 336
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amendoza' THEN 123
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'bchura' THEN 337
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalencia' THEN 338
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cuzieda' THEN 339
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccazuriaga' THEN 340
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cgomez' THEN 124
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'cvalle' OR LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleae') THEN 341
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'egonzales' THEN 342
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cherrera' THEN 343
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'czambrana' THEN 344
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'cpradoa' OR LTRIM(RTRIM(ra.C_Usuario)) = 'cprados') THEN 345
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldez' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldezs' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguzman' THEN 125
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cortiz' THEN 126
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguerrero' THEN 347
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drodriguez' THEN 127
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dcaldas' THEN 348
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'driveroa' THEN 349
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros' THEN 350
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ealurralde' THEN 128
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'erojas' THEN 129
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarez' THEN 351
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarezs' THEN 351
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eflores' THEN 352
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'elurici' THEN 353
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman1' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fteran' THEN 131
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fsubieta' THEN 219
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeys' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebey' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmaldonado' THEN 132
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gvallejos' THEN 133
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'arit' THEN 133
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gromero' THEN 134
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsanchez' THEN 355
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gchavez' THEN 356
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrar' THEN 357
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmeriles' THEN 358
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'galarcon' THEN 359
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsoliz' THEN 360
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantoja' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ivela' THEN 362
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iquispe' THEN 135
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmercado' THEN 363
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcastrog' THEN 364
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcoplot' THEN 136
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jjemio' THEN 137
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'jloza' OR LTRIM(RTRIM(ra.C_Usuario)) = 'jlozao' OR
                  LTRIM(RTRIM(ra.C_Usuario)) = 'jlozas' OR LTRIM(RTRIM(ra.C_Usuario)) = 'jloza1' OR
                  LTRIM(RTRIM(ra.C_Usuario)) = 'jlozar') THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez' THEN 234
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'jticonatja' OR LTRIM(RTRIM(ra.C_Usuario)) = 'jticona') THEN 366
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jyañez' THEN 139
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jflores' THEN 367
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlazarte' THEN 140
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcabero' THEN 369
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvaldez' THEN 141
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvillalpando' THEN 369
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kvillegas' THEN 370
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lpachecov' THEN 371
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcaero' THEN 142
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lchavezdelarosa' THEN 143
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'lespada' OR LTRIM(RTRIM(ra.C_Usuario)) = 'lespadacam') THEN 372
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lvargas' THEN 373
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lantezana' THEN 374
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mrivas' THEN 375
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmiranda' THEN 73
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mduarte' THEN 145
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'masalvatierra' THEN 376
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcarpioa' THEN 377
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbravo' THEN 378
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mquiroga' THEN 146
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbarrenechea' THEN 379
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarroa' THEN 380
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mtimm' THEN 381
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mluna' THEN 147
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mibanez' THEN 148
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mruiz' THEN 382
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyas' OR LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaofi' OR
                  LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaa' OR LTRIM(RTRIM(ra.C_Usuario)) = 'mmoya') THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msegales' THEN 384
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msalvatierra' THEN 149
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmedina' THEN 150
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mfernandez' THEN 385
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvillcac' THEN 151
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nherrera' THEN 386
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmolina' THEN 387
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmunozs' THEN 388
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nleigue' THEN 152
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nfuentes' THEN 389
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oceballos' THEN 390
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos' OR LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos1') THEN 153
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcespedes' THEN 154
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'paguilar' THEN 155
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pterceros' THEN 391
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pjimenez' THEN 392
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pfuentes' THEN 156
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pconde' THEN 393
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rnunez' THEN 157
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rguachalla' THEN 158
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ralema' THEN 159
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rquispe' THEN 394
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rduran' THEN 395
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rarana' THEN 160
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrondal' THEN 396
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrivera' THEN 397
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rramos' THEN 398
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'scolque' THEN 399
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'storrico' THEN 161
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sarrien' THEN 162
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'spenarrieta' THEN 400
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaurad' THEN 318
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vcalderon' THEN 401
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vquisbert' THEN 163
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vrivera' THEN 164
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wrocabado' THEN 165
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wvaldez' THEN 402
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsaire' THEN 403
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wmiranda' THEN 404
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvedia' THEN 417
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'japaza' THEN 409
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'klopezsc' THEN 247
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cespinoza' THEN 425
            WHEN (LTRIM(RTRIM(ra.C_Usuario)) = 'cvallea' OR LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleofi') THEN 341
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbarrios' THEN 424
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rteran' THEN 419
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'emoralesofi' THEN 204
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rquispech' THEN 394
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achuma' THEN 167
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jaramayop' THEN 232
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mamezaga' THEN 267
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mamercado' THEN 263
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'zvillca' THEN 421
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeyg' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccorsr' THEN 184
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aestivarizu' THEN 168
            ELSE 322
           END)                                                                       AS id_usuario_registra,
       GETDATE()                                                                      AS fecha_registra,
       NULL                                                                           AS id_usuario_modifica,
       NULL                                                                           AS fecha_modifica,
       (CASE
            WHEN (ra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ra.N_Codigo_Intendencia IS NULL) THEN ra.N_Codigo_Super_Reg
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Super_Reg
            ELSE -4
           END)                                                                       AS id_region_radicatoria,
       CAST(SUBSTRING(CONVERT(varchar, D_Fecha_Presentacion, 120), 1, 10) +
            SUBSTRING(CONVERT(varchar, D_Hora_Presentacion, 120), 11, 9) AS DATETIME) AS fecha_presentacion,
       ra.D_Fecha_Respuesta                                                           AS fecha_respuesta_administracion,
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
        WHERE temp.C_Nro_Expediente = ra.C_Nro_Expediente)                            AS fecha_vencimiento,
       --=========================================--
       --C_antecedente_Admin_REG
       (SELECT TOP 1 irj.C_antecedente_Admin_REG
        FROM TSS_INTERPONE_REC_JER AS irj
        WHERE LEN(irj.C_antecedente_Admin_REG) =
              (SELECT MAX(LEN(C_antecedente_Admin_REG))
               FROM TSS_INTERPONE_REC_JER irj_i
               WHERE irj_i.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND irj.C_Nro_Expediente = ra.C_Nro_Expediente)                             AS antecedentes_at,
       --C_antecedente_SP_REG
       (SELECT TOP 1 ir.C_antecedente_SP_REG
        FROM TSS_INTERPONE_REC_JER AS ir
        WHERE LEN(ir.C_antecedente_SP_REG) =
              (SELECT MAX(LEN(C_antecedente_SP_REG))
               FROM TSS_INTERPONE_REC_JER irj_ii
               WHERE irj_ii.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND ir.C_Nro_Expediente = ra.C_Nro_Expediente)                              AS antecedentes_sp,
       --C_antecedente_Otros_REG
       (SELECT TOP 1 rec.C_antecedente_Otros_REG
        FROM TSS_INTERPONE_REC_JER AS rec
        WHERE rec.C_Nro_Expediente = ra.C_Nro_Expediente)                             AS antecedentes_otro,
       1                                                                              AS estado_revision_alzada_montos,
       --c_expediente_REG
       (SELECT TOP 1 ij.c_expediente_REG
        FROM TSS_INTERPONE_REC_JER AS ij
        WHERE LEN(ij.c_expediente_REG) =
              (SELECT MAX(LEN(c_expediente_REG))
               FROM TSS_INTERPONE_REC_JER ij_ii
               WHERE ij_ii.C_Nro_Expediente = ra.C_Nro_Expediente)
          AND ij.C_Nro_Expediente = ra.C_Nro_Expediente)                              AS cuerpos,
       NULL                                                                           AS id_resultado_anulacion,
       (CASE
            WHEN ((ra.N_Codigo_Tipo_Doc % 2) = 0 OR ra.N_Codigo_Tipo_Doc = 5) THEN 1
            ELSE 0
           END)                                                                       AS tipo_persona,
       1                                                                              AS clasificador_alzada,
       (CASE
            WHEN (ra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ra.N_Codigo_Intendencia IS NULL) THEN ra.N_Codigo_Super_Reg
            WHEN (ISNUMERIC(ra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(ra.N_Codigo_Intendencia) = 1)
                THEN ra.N_Codigo_Intendencia + 4
            ELSE -5
           END)                                                                       AS id_region_recepcion
FROM TSS_RECURSOS_ALZADA AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%')
ORDER BY LTRIM(RTRIM(ra.C_Nro_Expediente));

CSV