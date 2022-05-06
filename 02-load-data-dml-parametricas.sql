-- DML

-- parametricas.par_tipos_articulos
INSERT INTO parametricas.par_tipos_articulos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('el', 1, 1, '2021-11-03 04:00:00.000000', 2, '2021-11-26 20:12:14.000000');
INSERT INTO parametricas.par_tipos_articulos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('la', 1, 1, '2021-11-08 21:07:39.000000', 2, '2021-11-26 20:12:20.000000');

-- parametricas.par_tipos_preposicion
INSERT INTO parametricas.par_tipos_preposicion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('del', 1, 1, current_timestamp, 2, '2021-11-26 16:14:07');
INSERT INTO parametricas.par_tipos_preposicion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('de la', 1, 1, current_timestamp, 2, '2021-11-26 16:14:19');

-- parametricas.par_tipos_super_administracion
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('S.I.N.', 1, 1, '2021-11-03 04:00:00.000000', 2, '2021-11-26 20:06:53.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS MUNICIPALES', 1, 1, '2021-11-11 21:03:40.000000', 2, '2021-11-26 20:07:33.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ADUANA', 1, 1, '2021-11-08 20:40:19.000000', 2, '2021-11-26 20:10:55.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS DEPARTAMENTALES', 1, 1, '2021-11-18 21:11:15.000000', 2, '2021-11-26 20:07:45.000000');

-- parametricas.par_administraciones_tributarias
-- export data from SQL SERVER in csv, using this query
SELECT LTRIM(RTRIM([C_Descripcion])) AS descripcion,
       (CASE
            WHEN [C_Articulo] LIKE 'el' THEN 1
            WHEN [C_Articulo] LIKE 'la' THEN 2
            ELSE -1
           END)                      AS id_articulo,
       (CASE
            WHEN [C_Preposicion] LIKE 'del' THEN 1
            WHEN [C_Preposicion] LIKE 'de la' THEN 2
            ELSE -2
           END)                      AS id_preposicion,
       (CASE
            WHEN [C_Super_Adm_Tri] LIKE 'S.I.N.' THEN 1
            WHEN [C_Super_Adm_Tri] LIKE 'ADUANA' THEN 2
            WHEN [C_Super_Adm_Tri] LIKE 'GOB. MUNICIPALES' THEN 3
            WHEN [C_Super_Adm_Tri] LIKE 'GOB. DEPARTAMENTALES' THEN 4
            ELSE -3
           END)                      AS id_tipo_super_administracion,
       [N_Estado]                    AS activo,
       1                             AS id_usuario_registra,
       [D_Fecha_Update]              AS fecha_registra,
       0                             AS id_usuario_modifica,
       GETDATE()                     AS fecha_modifica
FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS];

-- import the csv file into parametricas.par_administraciones_tributarias

-- parametricas.par_subadministraciones_tributarias
-- export data from SQL SERVER in csv, using this query
SELECT LTRIM(RTRIM([C_Descripcion])) AS descripcion,
       LTRIM(RTRIM([C_Autoridad]))   AS nombre_autoridad,
       [N_Codigo_Adm_Tri]            AS id_administracion_tributaria,
       (CASE
            WHEN [C_Ubicado_en] IS NOT NULL THEN REPLACE([C_Ubicado_en], NCHAR(160), ' ')
            ELSE ''
           END)                      AS direccion,
       0                             AS latitud,
       0                             AS longitud,
       [N_Estado]                    AS activo,
       (CASE
            WHEN [C_Articulo] LIKE 'el' THEN 1
            WHEN [C_Articulo] LIKE 'la' THEN 2
            ELSE -1
           END)                      AS id_articulo,
       (CASE
            WHEN [C_Preposicion] LIKE 'del' THEN 1
            WHEN [C_Preposicion] LIKE 'de la' THEN 2
            ELSE -2
           END)                      AS id_preposicion,
       1                             AS id_usuario_registra,
       [D_Fecha_Update]              AS fecha_registra,
       0                             AS id_usuario_modifica,
       GETDATE()                     AS fecha_modifica
FROM [dbo].[TSS_SUBADMINISTRACIONES_TRIBUTARIAS];

-- import the csv file into parametricas.par_subadministraciones_tributarias

-- parametricas.par_tipos_cambios_ufv
-- export data from SQL SERVER in csv, using this query
SELECT [D_Fecha_Tipo_Cambio] AS fecha,
       [N_UFV]               AS ufv,
       1                     AS id_usuario_registra,
       [D_Fecha_Update]      AS fecha_registra,
       0                     AS id_usuario_modifica,
       GETDATE()             AS fecha_modifica,
       1                     AS activo
FROM [dbo].[TSS_TIPOS_CAMBIOS_UFV];

-- import the csv file into parametricas.par_tipos_cambios_ufv

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