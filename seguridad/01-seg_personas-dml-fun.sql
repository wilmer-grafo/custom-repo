SELECT UPPER(LTRIM(RTRIM([C_Nombre])))           AS nombres,
       UPPER(LTRIM(RTRIM([C_Apellido_Paterno]))) AS ap_paterno,
       UPPER(LTRIM(RTRIM([C_Apellido_Materno]))) AS ap_materno,
       NULL                                      AS ci,
       1                                         AS sexo,
       NULL                                      AS telefono,
       NULL                                      AS num_celular,
       (CASE
            WHEN (LTRIM(RTRIM(C_Login)) = 'alcarrascoq') THEN 'acarrascoq@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'csalasa') THEN 'csalas@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'cvalle1') THEN 'cvalle@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'cmoram') THEN 'cmora@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'fmercados') THEN 'fmercado@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'fsubieta1') THEN 'fsubieta@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'hpantojab') THEN 'hpantoja@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'jalvarez2') THEN 'jalvarez@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'klopezc') THEN 'klopezl@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'lleonr') THEN 'lleon@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'liparedes') THEN 'lparedes@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'rhuancaj') THEN 'rhuanca@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'vlaurac') THEN 'vlaura@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'vicampero') THEN 'vcampero@ait.gob.bo'
            ELSE LTRIM(RTRIM(C_Login)) + '@ait.gob.bo'
           END)                                  AS email,
       NULL                                      AS fecha_nacimiento,
       NULL                                      AS zona_domicilio,
       NULL                                      AS calle_domicilio,
       NULL                                      AS numero_domicilio,
       NULL                                      AS ruta_fotografia,
       (CASE
            WHEN ([N_Codigo_Oficina] = 0 AND [N_Codigo_Reg_Int] = 0) THEN 10
            WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 1) THEN 5
            WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 2) THEN 6
            WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 3) THEN 7
            WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 4) THEN 8
            WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 5) THEN 9
            WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 1) THEN 1
            WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 2) THEN 2
            WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 3) THEN 3
            WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 4) THEN 4
            WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 5) THEN 9
            ELSE -1
           END)                                  AS id_region,
       9                                         AS id_cargo,
       1                                            id_usuario_registra,
       GETDATE()                                 AS fecha_registra,
       NULL                                      AS id_usuario_modifica,
       NULL                                      AS fecha_modifica,
       [C_Estado]                                AS activo
FROM TSS_FUNCIONARIOS
WHERE C_Login IN (SELECT usuarios.test
                  FROM (SELECT fun.test
                        FROM (SELECT LTRIM(RTRIM(C_Login)) AS test
                              FROM [dbo].[TSS_FUNCIONARIOS]
                              WHERE C_Estado = 1
                              GROUP BY LTRIM(RTRIM(C_Login))) AS fun
                            EXCEPT
                        SELECT temp.test
                        FROM (SELECT LTRIM(RTRIM(C_Usuario)) AS test
                              FROM TSS_RECURSOS_ALZADA
                              GROUP BY LTRIM(RTRIM(C_Usuario))) AS temp) AS usuarios
                  WHERE usuarios.test NOT IN
                        ('acarrascor', 'aillaneslr', 'analistaagit', 'aritcba', 'aritchq',
                         'aritlpz', 'aritscz', 'aexterna', 'cvalle1', 'cvalleofi', 'consultacont',
                         'dmartinezr', 'dmartinezri', 'dontiveros1', 'drivero', 'dzapataa', 'eochoat', 'esuarezo',
                         'achucatinyr', 'facebeyn', 'gcoimbra', 'gcoimbrab', 'gcoimbrao', 'hpantojab',
                         'hpantojan', 'hpantojaa', 'jzabalai', 'kvillegas.tja', 'larcec', 'lpacheco', 'manibarro', 'mcarpio', 'mcussii',
                         'nvasquezi', 'oserranoi', 'pcondet', 'pcondeor', 'receprj', 'secretarioagit',
                         'ttogos', 'ttogot', 'vlaurari', 'hugovpt', 'vptributaria',
                         'vescobars', 'vescobarm', 'vescobarr', 'vicamperor', 'agit'))
  AND C_Estado = 1
  AND (LTRIM(RTRIM(C_Nombre)) NOT LIKE 'GUSTAVO OLI%')
ORDER BY C_Nombre, C_Apellido_Paterno, C_Apellido_Materno;
