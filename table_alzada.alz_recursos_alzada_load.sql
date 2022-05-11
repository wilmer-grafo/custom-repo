SELECT 1                                                              AS id_tipo_presentacion,
       LTRIM(RTRIM(ra.C_Razon_Social))                                              AS razon_social,
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
       LTRIM(RTRIM(ra.C_Nro_Doc_Identidad))                                        AS numero_documento,
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
       LTRIM(RTRIM(ra.C_Nro_Expediente))                                            AS numero_recurso_alzada,
       LTRIM(RTRIM(ra.C_Nro_Res_Alzada))                                           AS numero_res_alzada,
       (SELECT TOP 1 ai.N_Codigo_Tipo_Resol
        FROM TSS_ACTOS_IMPUGNADOS AS ai
        WHERE ai.C_Nro_Expediente = ra.C_Nro_Expediente)              AS id_tipo_resolucion,
--        ra.C_Usuario                                                   AS id_usuario_registra,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'acarrasco' THEN 184
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oceballos' THEN 87
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rsoliz' THEN 477
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'atorricos' THEN 273
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticonatja' THEN 394
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmendoza' THEN 51
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avargasm' THEN 272
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jjemio' THEN 70
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'margandona' THEN 190
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcarpio' THEN 350
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mesoto' THEN 278
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrar' THEN 424
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcondet' THEN 406
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'curdininea' THEN 176
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vaescobars' THEN 309
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ratahuichi' THEN 292
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'agonzales' THEN 509
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros' THEN 271
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmaita' THEN 22
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mgemio' THEN 156
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'consultacont' THEN 417
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hlima' THEN 475
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsanchez' THEN 282
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguerrero' THEN 173
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dcontreras' THEN 269
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'glopez' THEN 261
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'steran' THEN 502
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aticona' THEN 42
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nleigue' THEN 189
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ovillarroel' THEN 161
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsarmiento' THEN 117
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vnarvaez' THEN 257
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jyañez' THEN 125
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msalvatierra' THEN 113
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gperales' THEN 40
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mluna' THEN 43
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avargas' THEN 120
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'tconcha' THEN 440
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoya' THEN 349
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eflores' THEN 187
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'casturizaga' THEN 57
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sarrien' THEN 19
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ralema' THEN 160
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'raraujo' THEN 506
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'svalda' THEN 508
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msoto' THEN 357
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'masalvatierra' THEN 242
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'etolin' THEN 331
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'flandaeta' THEN 266
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'erojas' THEN 315
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vvelasquez' THEN 366
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguerrerov' THEN 307
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmurillo' THEN 91
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez1' THEN 305
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rosinaga' THEN 54
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jguzman' THEN 29
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iquispe' THEN 181
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lparedes' THEN 96
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmarin' THEN 466
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gromero' THEN 35
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'czambrana' THEN 107
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'acarrascor' THEN 446
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'anarteaga' THEN 220
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jolmos' THEN 86
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oorellana' THEN 400
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gchavez' THEN 219
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jhvega' THEN 241
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'abellot' THEN 175
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmamani' THEN 363
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dontiveros1' THEN 285
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'moporto' THEN 50
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'marperez' THEN 231
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ttogo' THEN 66
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmartinezri' THEN 512
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmeriles' THEN 340
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hlujan' THEN 523
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeys' THEN 356
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amercado' THEN 391
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aestivariz' THEN 487
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ghilari' THEN 458
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrao' THEN 414
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ttogos' THEN 368
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'analistaagit' THEN 246
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'paguilar' THEN 75
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rparavicini' THEN 128
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcespedes' THEN 166
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rvargasc' THEN 344
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mpeñaranda' THEN 142
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nramos' THEN 410
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'spenarrieta' THEN 152
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'viriarte' THEN 428
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos1' THEN 355
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'egonzales' THEN 222
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fdelgado' THEN 381
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gvallejos' THEN 38
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaurad' THEN 359
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mlira' THEN 193
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hugovpt' THEN 164
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aritchq' THEN 453
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'csalazar' THEN 217
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmaldonado' THEN 186
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'csanchez' THEN 47
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aleon' THEN 501
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'itorrico' THEN 177
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vandia' THEN 182
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mblanco' THEN 18
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'prodrigo' THEN 110
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvaldez' THEN 145
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'avera' THEN 27
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ablanco' THEN 143
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalverde' THEN 496
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achucatiny' THEN 58
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'allanos' THEN 228
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'maruquipa' THEN 485
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbulucua' THEN 294
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'bzapata' THEN 229
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrondal' THEN 481
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gtrujillot' THEN 304
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gtrujillo' THEN 52
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez' THEN 438
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'erubindecelis' THEN 382
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sapaza' THEN 258
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'receprj' THEN 378
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinos' THEN 341
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jaramayo' THEN 483
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aritlpz' THEN 450
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dzapata' THEN 405
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmontenegro' THEN 84
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcussi' THEN 170
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lespada' THEN 192
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmolinar' THEN 276
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cpradoa' THEN 513
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pjimenez' THEN 101
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'driveroa' THEN 473
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvera' THEN 69
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'larce' THEN 379
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman1' THEN 320
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvillcac' THEN 375
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'elanchipa' THEN 115
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarezo' THEN 415
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'csalas' THEN 97
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mduran' THEN 108
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lespadacam' THEN 408
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gjimenez' THEN 59
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vicampero' THEN 127
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaurari' THEN 522
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarroj' THEN 329
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rlafuente' THEN 44
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarros' THEN 401
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'clazcano' THEN 153
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'erivas' THEN 507
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'zarcer' THEN 279
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nherrera' THEN 214
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'navendano' THEN 419
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mflores' THEN 457
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lnavarro' THEN 85
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'clozano' THEN 281
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vgarcia' THEN 95
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'psalas' THEN 259
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'marancibia' THEN 519
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ttogot' THEN 302
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aferreyra' THEN 172
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lpacheco' THEN 409
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lvargas' THEN 30
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wmiranda' THEN 288
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vjimenez' THEN 21
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dorellana' THEN 521
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantojaa' THEN 324
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaofi' THEN 398
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cgomez' THEN 249
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vvila' THEN 255
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jquisbert' THEN 388
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'parodrigo' THEN 165
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcuevas' THEN 56
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccors' THEN 151
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lleonr' THEN 296
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ririvera' THEN 209
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aamurrio' THEN 74
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jespada' THEN 138
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cherrera' THEN 34
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcabero' THEN 418
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'secretarioagit' THEN 245
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantoja' THEN 205
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nfuentes' THEN 67
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozar' THEN 407
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'olaura' THEN 325
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mnavamorales' THEN 90
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmaturano' THEN 443
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'morellana' THEN 387
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'galarcon' THEN 484
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achucatinyr' THEN 334
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ymercado' THEN 144
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cteran' THEN 39
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlazarte' THEN 168
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmunoz' THEN 471
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmercados' THEN 526
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'tmurillo' THEN 393
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'casturizagas' THEN 287
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmunozs' THEN 524
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ealurralde' THEN 464
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'moportor' THEN 312
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vaescobar' THEN 167
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ctorres' THEN 498
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fguzman' THEN 277
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rperez' THEN 290
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'emorales' THEN 494
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyaa' THEN 469
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'smercadot' THEN 300
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aalvarez' THEN 118
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'krodriguez' THEN 317
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'korellanar' THEN 284
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mrivas' THEN 342
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eamador' THEN 488
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rnunez' THEN 126
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'bchura' THEN 194
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebeyn' THEN 360
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oserrano' THEN 463
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcamacho' THEN 476
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmolina' THEN 99
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dchambi' THEN 367
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aexterna' THEN 374
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dortiz' THEN 41
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mdaza' THEN 439
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rarana' THEN 206
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'storrico' THEN 46
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gsoliz' THEN 224
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vsilva' THEN 53
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'agarcia' THEN 32
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmiranda' THEN 336
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'idavezies' THEN 318
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ecardenas' THEN 275
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'htola' THEN 247
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mamezaga' THEN 260
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cmorar' THEN 423
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rloayza' THEN 136
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vcuellar' THEN 442
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino1' THEN 354
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'klopezc' THEN 479
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dtorrez' THEN 293
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mgarron' THEN 411
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmoyas' THEN 425
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sarias' THEN 495
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vescobar' THEN 154
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ihervas' THEN 234
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarro' THEN 316
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kprado' THEN 474
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vcalderon' THEN 403
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcondeor' THEN 256
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'crodas' THEN 332
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ealtamirano' THEN 33
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eochoat' THEN 422
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jsantalla' THEN 264
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'shuaylla' THEN 185
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'krivera' THEN 380
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'alcarrascoq' THEN 215
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'emarino' THEN 130
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jomendoza' THEN 270
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mguardia' THEN 23
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvillalpando' THEN 486
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mibanez' THEN 435
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gyanique' THEN 384
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'plinares' THEN 351
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcondes' THEN 116
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmartinez' THEN 314
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantojab' THEN 386
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'daguirre' THEN 431
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rfernandez' THEN 426
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lteran' THEN 433
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vvargas' THEN 364
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nvasquezi' THEN 491
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcastro' THEN 462
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rparavicinit' THEN 299
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drodriguez' THEN 169
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'frojas' THEN 345
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'liparedes' THEN 92
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lrivera' THEN 436
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vrivera' THEN 180
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'alinares' THEN 437
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oarnez' THEN 236
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'bbelmonte' THEN 263
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vmamani' THEN 197
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aberazain' THEN 135
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rfigueroa' THEN 493
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmolina' THEN 470
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rantelo' THEN 454
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lpachecov' THEN 482
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvelez' THEN 227
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jzabalai' THEN 500
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vvidal' THEN 478
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'srios' THEN 149
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'macarapi' THEN 311
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rsalcedo' THEN 73
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drabaza' THEN 505
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmercado' THEN 103
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rvargas' THEN 280
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cuzieda' THEN 239
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aarancibia' THEN 88
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'scolque' THEN 420
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'varauco' THEN 188
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cprado' THEN 461
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pconde' THEN 240
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'agit' THEN 328
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jagreda' THEN 525
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ymiranda' THEN 196
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmercado' THEN 291
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvelasco' THEN 226
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dsalazar' THEN 210
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'igaspar' THEN 48
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcanaviri' THEN 447
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalencia' THEN 298
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hjimenez' THEN 81
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'klopez' THEN 61
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvillca' THEN 244
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcastrog' THEN 468
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ivela' THEN 251
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aibieta' THEN 204
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fcastro' THEN 104
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'asol' THEN 171
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cmontano' THEN 456
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achinot' THEN 397
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleofi' THEN 427
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalle' THEN 347
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lleon' THEN 283
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'csalasa' THEN 179
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccazuriagar' THEN 297
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hpantojan' THEN 361
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nvasquez' THEN 321
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'casturizagat' THEN 303
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mtimm' THEN 105
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcarpioa' THEN 402
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nsilva' THEN 472
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldez' THEN 444
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbravo' THEN 445
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dvaldivia' THEN 233
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cgutierrez' THEN 93
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mduarte' THEN 89
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbra' THEN 373
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mvalenzuela' THEN 252
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsoruco' THEN 343
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mruiz' THEN 31
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'drivero' THEN 467
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'manibarroa' THEN 327
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lantezana' THEN 253
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rhuancaj' THEN 497
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kvillegas.tja' THEN 109
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lvalda' THEN 155
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hcamara' THEN 133
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarezs' THEN 416
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcalvi' THEN 195
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rbuitrago' THEN 199
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozas' THEN 372
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rquispe' THEN 369
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oespada' THEN 441
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'smoya' THEN 339
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ssosa' THEN 243
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmontan' THEN 335
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jvelasquez' THEN 383
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'haranibar' THEN 230
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jsantallat' THEN 301
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achuma' THEN 503
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mlipa' THEN 254
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msegales' THEN 377
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mfernandez_' THEN 78
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'alaura' THEN 159
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dzapataa' THEN 432
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wvaldez' THEN 250
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccastanon' THEN 20
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillanesl' THEN 319
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dvasquez' THEN 76
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vescobarm' THEN 517
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cortiz' THEN 106
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mchavez' THEN 178
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cguzman' THEN 129
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rduran' THEN 203
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mllano' THEN 455
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sllano' THEN 346
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jlozao' THEN 370
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'nmoreno' THEN 71
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sapazar' THEN 267
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'slarrea' THEN 68
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillaneslr' THEN 448
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmiranda0' THEN 146
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aillanes' THEN 80
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza1' THEN 396
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'econde' THEN 511
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jcoplot' THEN 162
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jtarquino' THEN 132
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cprados' THEN 514
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'esuarez' THEN 322
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jnina' THEN 330
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rseveriche' THEN 237
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aritscz' THEN 451
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jtorrez' THEN 262
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dcaldas' THEN 323
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wacapa' THEN 348
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'kvillegas' THEN 337
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amamani' THEN 114
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vicamperor' THEN 504
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rhuanca' THEN 60
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalleae' THEN 399
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcondori' THEN 238
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ugutierrez' THEN 112
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ptroche' THEN 518
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'eochoa' THEN 289
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mferaudy.agit' THEN 268
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'zarce' THEN 65
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mquiroga' THEN 124
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'aritcba' THEN 452
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mmedina' THEN 98
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mcussii' THEN 490
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hvillalta' THEN 235
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gmedinacelli' THEN 82
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lchavezdelarosa' THEN 119
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mfernandez' THEN 306
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'achino' THEN 286
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sferreira' THEN 376
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cocampo' THEN 147
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'frivadeneyra' THEN 480
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pbarrientos' THEN 338
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fapaza' THEN 202
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'msea' THEN 358
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vquinteros' THEN 412
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cogutierrez' THEN 79
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mbarrenechea' THEN 26
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fteran' THEN 72
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rbaspineiro' THEN 510
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsantacruz' THEN 232
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cbuitrago' THEN 77
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jloza' THEN 131
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'larcec' THEN 198
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'arit' THEN 17
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'crojas' THEN 310
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'carze' THEN 212
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ccazuriaga' THEN 37
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rcabrera' THEN 28
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'elurici' THEN 404
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rlinares' THEN 353
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'maranda' THEN 489
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaurac' THEN 515
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fvaldivia' THEN 225
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'amendoza' THEN 83
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mferaudy' THEN 333
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'smercado' THEN 63
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dquiroz' THEN 516
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvalle1' THEN 395
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mzambrana' THEN 216
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'facebey' THEN 174
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'info' THEN 45
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jticona' THEN 295
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fmenacho' THEN 213
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rmeza' THEN 134
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'posina' THEN 274
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'taranda' THEN 163
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'tborda' THEN 223
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jgeisser' THEN 352
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rmendoza' THEN 36
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cmora' THEN 362
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jalvarez2' THEN 221
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vescobarr' THEN 430
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lguardia' THEN 102
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wrocabado' THEN 158
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'wsaire' THEN 460
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jzabala' THEN 499
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mamercado' THEN 265
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fpacheco' THEN 111
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cnina' THEN 459
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'mrios' THEN 207
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gaguilar' THEN 62
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'hperez' THEN 123
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vlaura' THEN 326
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'gcoimbrab' THEN 385
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ebosque' THEN 371
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'oserranoi' THEN 492
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pterceros' THEN 365
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rrivera' THEN 157
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ggamarra' THEN 413
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vescobars' THEN 308
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vquisbert' THEN 183
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iramos' THEN 100
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'fsubieta' THEN 313
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vptributaria' THEN 150
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'casturizagag' THEN 421
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rramos' THEN 248
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'emariñoC' THEN 137
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cmaturana' THEN 208
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'ecordova' THEN 392
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rvergara' THEN 24
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'sluque' THEN 191
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'llima' THEN 429
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pcastro' THEN 25
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'lcaero' THEN 141
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'iescalante' THEN 94
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jflores' THEN 218
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'dmartinezr' THEN 434
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'korellana' THEN 49
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rsoria' THEN 211
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'itorricos' THEN 465
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cvaldezs' THEN 449
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'cmoram' THEN 520
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jbernal' THEN 64
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'efischmann' THEN 55
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'jmurillo' THEN 148
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'pfuentes' THEN 38
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'rguachalla' THEN 214
            WHEN LTRIM(RTRIM(ra.C_Usuario)) = 'vcampero' THEN 127
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
