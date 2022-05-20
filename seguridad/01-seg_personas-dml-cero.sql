SELECT UPPER(LTRIM(RTRIM([C_Nombre])))           AS nombres,
       UPPER(LTRIM(RTRIM([C_Apellido_Paterno]))) AS ap_paterno,
       UPPER(LTRIM(RTRIM([C_Apellido_Materno]))) AS ap_materno,
       NULL                                      AS ci,
       1                                         AS sexo,
       NULL                                      AS telefono,
       NULL                                      AS num_celular,
       (CASE
            WHEN (LTRIM(RTRIM(C_Login)) = 'mmiranda') THEN 'mmirandas@ait.gob.bo'
            WHEN (LTRIM(RTRIM(C_Login)) = 'pbarrientos1') THEN 'pbarrientos@ait.gob.bo'
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
                              WHERE C_Estado = 0
                              GROUP BY LTRIM(RTRIM(C_Login))) AS fun
                        INTERSECT
                        SELECT temp.test
                        FROM (SELECT LTRIM(RTRIM(C_Usuario)) AS test
                              FROM TSS_RECURSOS_ALZADA
                              GROUP BY LTRIM(RTRIM(C_Usuario))) AS temp) AS usuarios
                  WHERE usuarios.test NOT IN
                        ('achinos', 'achino1', 'bchura', 'fsubieta', 'fguzman1', 'jlozao',
                         'jlozas', 'jlozar', 'jloza1', 'jticonatja', 'lespada', 'pbarrientos', 'vlaurad'))
  AND C_Estado = 0
ORDER BY C_Nombre, C_Apellido_Paterno, C_Apellido_Materno;
