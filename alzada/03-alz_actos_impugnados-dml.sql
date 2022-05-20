SELECT N_Codigo_Acto        AS id_tipo_acto,
       C_Numero             AS numero_acto,
       NULL                 AS cite_acto,
       D_Fecha_Emision      AS fecha_emision,
       D_Fecha_Notificacion AS fecha_notificacion,
       1                    AS estado,
       1                    AS id_usuario_registra,
       GETDATE()            AS fecha_registra,
       NULL                 AS id_usuario_modifica,
       NULL                 AS fecha_modifica,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'acarrasco' THEN 331
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino' THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino1' THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinos' THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinot' THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aibieta' THEN 5
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillanes' THEN 330
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amendoza' THEN 123
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'anarteaga' THEN 335
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'arit' THEN 133
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'atorricos' THEN 334
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avargasm' THEN 336
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avera' THEN 333
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccazuriaga' THEN 340
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguerrero' THEN 347
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguzman' THEN 125
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cocampo' THEN 19
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cortiz' THEN 126
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cuzieda' THEN 339
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldez' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldezs' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleofi' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'czambrana' THEN 344
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dcaldas' THEN 348
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmolina' THEN 194
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros' THEN 350
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros1' THEN 350
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'driveroa' THEN 349
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drodriguez' THEN 127
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ealurralde' THEN 128
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eflores' THEN 352
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'elurici' THEN 353
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarez' THEN 351
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarezs' THEN 351
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebey' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeys' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman1' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmaldonado' THEN 132
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fsubieta' THEN 219
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fteran' THEN 131
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'galarcon' THEN 359
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrab' THEN 357
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrar' THEN 357
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmedinacelli' THEN 44
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsanchez' THEN 355
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gvallejos' THEN 133
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantoja' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantojab' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantojao' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iquispe' THEN 135
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez' THEN 234
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jaramayo' THEN 323
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcastrog' THEN 364
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcoplot' THEN 136
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jflores' THEN 367
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jjemio' THEN 137
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlazarte' THEN 140
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza1' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozao' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozar' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozas' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmercado' THEN 363
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticona' THEN 366
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticonatja' THEN 366
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvaldez' THEN 141
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvillalpando' THEN 369
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jyañez' THEN 139
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kvillegas' THEN 370
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcaero' THEN 142
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lchavezdelarosa' THEN 143
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lespadacam' THEN 372
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lpachecov' THEN 371
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lvargas' THEN 373
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarroa' THEN 380
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'masalvatierra' THEN 376
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbarrenechea' THEN 379
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbravo' THEN 378
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcarpioa' THEN 377
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mchavez' THEN 77
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mduarte' THEN 145
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mibanez' THEN 148
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mluna' THEN 147
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmedina' THEN 150
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmiranda' THEN 73
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaa' THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaofi' THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyas' THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msalvatierra' THEN 149
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nfuentes' THEN 389
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nleigue' THEN 152
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmolina' THEN 387
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oceballos' THEN 390
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'paguilar' THEN 155
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos' THEN 153
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos1' THEN 153
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcespedes' THEN 154
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pconde' THEN 393
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pfuentes' THEN 156
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pjimenez' THEN 392
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pterceros' THEN 391
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rarana' THEN 160
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rcabrera' THEN 98
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rnunez' THEN 157
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rquispe' THEN 394
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrondal' THEN 396
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rsalcedo' THEN 101
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'scolque' THEN 399
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'shuaylla' THEN 108
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'storrico' THEN 161
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'tmurillo' THEN 314
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'VCALDERON' THEN 401
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vescobar' THEN 319
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vrivera' THEN 164
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsaire' THEN 403
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'YMIRANDA' THEN 326
           END)             AS id_recurso_alzada,
       NULL                 AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE LTRIM(RTRIM(ra.C_Usuario)) != '';
