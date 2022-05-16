SELECT LTRIM(RTRIM([C_Nombre]))           AS nombres,
       LTRIM(RTRIM([C_Apellido_Paterno])) AS ap_paterno,
       LTRIM(RTRIM([C_Apellido_Materno])) AS ap_materno,
       NULL                               AS ci,
       1                                  AS sexo,
       NULL                               AS telefono,
       NULL                               AS num_celular,
       ([C_Login] + '@ait.gob.bo')        AS email,
       NULL                               AS fecha_nacimiento,
       NULL                               AS zona_domicilio,
       NULL                               AS calle_domicilio,
       NULL                               AS numero_domicilio,
       NULL                               AS ruta_fotografia,
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
           END)                           AS id_region,
       9                                  AS id_cargo,
       1                                     id_usuario_registra,
       GETDATE()                          AS fecha_registra,
       NULL                               AS id_usuario_modifica,
       NULL                               AS fecha_modifica,
       [C_Estado]                         AS activo
FROM [dbo].[TSS_FUNCIONARIOS]
WHERE C_Login NOT IN
      ('achinos',
       'achino1',
       'achinot',
       'acarrascor ',
       'aillaneslr',
       'ccazuriagar',
       'csalasa',
       'cvalle1',
       'cvalleae',
       'cvalleofi',
       'cpradoa',
       'cprados',
       'cvaldezs',
       'casturizagat',
       'casturizagag',
       'casturizagas',
       'cmorar',
       'dmolinar',
       'driveroa',
       'dmartinezr',
       'dmartinezri',
       'dontiveros1',
       'dzapataa',
       'eochoat',
       'esuarezo',
       'esuarezs',
       'emariñoC',
       'achucatinyr',
       'fsubieta1',
       'facebeyn',
       'facebeys',
       'gcoimbrab',
       'gcoimbrao',
       'gcoimbrar',
       'gtrujillot',
       'hpantojab',
       'hpantojaa',
       'hpantojan',
       'jlozas',
       'jlozao',
       'jloza1',
       'jlozar',
       'jsantallat',
       'jticonatja',
       'jzabalai',
       'kvillegas.tja',
       'korellanar',
       'lpachecov',
       'lleonr',
       'lespadacam',
       'mcarpioa',
       'moportor',
       'manibarroj',
       'manibarroa',
       'manibarros',
       'mmoyaa',
       'mmoyas',
       'mmoyaofi',
       'nmunozs',
       'nvasquezi',
       'oserranoi',
       'pbarrientos1',
       'parodrigo',
       'pcondes',
       'pcondet',
       'pcondeor',
       'rparavicinit',
       'rhuancaj',
       'smercadot',
       'ttogot',
       'ttogos',
       'vaescobars',
       'vlaurad',
       'vlaurac',
       'vlaurari',
       'vescobarm',
       'vescobarr',
       'vescobars',
       'vicamperor',
       'zarcer',
       'gvallejos',
       'arit',
       'jalvarez1',
       'jalvarez2',
       'vptributaria',
       'hugovpt',
       'bchura',
       'gperales',
       'gyanique',
       'mchavez',
       'rosinaga',
       'fsubieta'
          );