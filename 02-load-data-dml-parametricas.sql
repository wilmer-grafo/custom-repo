-- seguridad.seg_personas
-- export data from SQL SERVER in csv, using this query

SELECT LTRIM(RTRIM([C_Nombre]))           AS nombres,
       LTRIM(RTRIM([C_Apellido_Paterno])) AS ap_paterno,
       LTRIM(RTRIM([C_Apellido_Materno])) AS ap_materno,
       ''                                 AS ci,
       1                                  AS sexo,
       ''                                 AS telefono,
       ''                                 AS num_celular,
       ([C_Login] + '@ait.gob.bo')        AS email,
       GETDATE()                          AS fecha_nacimiento,
       ''                                 AS zona_domicilio,
       ''                                 AS calle_domicilio,
       ''                                 AS numero_domicilio,
       ''                                 AS ruta_fotografia,
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
       0                                  AS id_usuario_modifica,
       [D_Fecha_Update]                   AS fecha_modifica,
       [C_Estado]                         AS activo
FROM [dbo].[TSS_FUNCIONARIOS];

-- import the csv file into seguridad.seg_personas
