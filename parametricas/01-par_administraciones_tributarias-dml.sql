-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE parametricas.par_administraciones_tributarias RESTART IDENTITY CASCADE;

-- verficar la secuencia, esto en SQL SERVER
--=================================================================================================================--
SELECT (SELECT ISNULL(MAX(N_Codigo_Adm_Tri) + 1, 1)
        FROM [TSS_ADMINISTRACIONES_TRIBUTARIAS]
        WHERE N_Codigo_Adm_Tri < md.N_Codigo_Adm_Tri) AS [de],
       md.N_Codigo_Adm_Tri - 1                        AS [hasta]
FROM [TSS_ADMINISTRACIONES_TRIBUTARIAS] md
WHERE md.N_Codigo_Adm_Tri != 1
  AND NOT EXISTS(
        SELECT 1 FROM [TSS_ADMINISTRACIONES_TRIBUTARIAS] md2 WHERE md2.N_Codigo_Adm_Tri = md.N_Codigo_Adm_Tri - 1);
--=========================================--
-- tras la ejecucion se tiene "9" como resultado

-- ejcutar la consulta y exportar en csv: TOP = 9 - 1 = 8, esto en SQL SERVER
--=================================================================================================================--
SELECT TOP 8 LTRIM(RTRIM([C_Descripcion])) AS descripcion,
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
             GETDATE()              AS fecha_registra,
             NULL                             AS id_usuario_modifica,
             NULL                     AS fecha_modifica
FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS];
--=================================================================================================================--
-- importar los 8 primeros del csv en parametricas.par_administraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 9, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_administraciones_tributarias', 'id'),
              (SELECT MAX(id) + 1 FROM parametricas.par_administraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "9", por lo que ignorara ese valor, pasando al proximo que seria 10

-- ahora ejecutar la consulta, para obtener los demas registros, menos los 8, esto en SQL SERVER
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
       GETDATE()                     AS fecha_registra,
       NULL                          AS id_usuario_modifica,
       NULL                          AS fecha_modifica
FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS]
WHERE [N_Codigo_Adm_Tri] NOT IN (SELECT TOP 8 [N_Codigo_Adm_Tri]
                                 FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS]);
--=================================================================================================================--
-- importar el csv en parametricas.par_administraciones_tributarias, esto en Postgres

-- vericar cantidad de registro importados
--=================================================================================================================--
SELECT COUNT(*) AS Total FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS];
SELECT count(id) AS total FROM parametricas.par_administraciones_tributarias;
--=================================================================================================================--

-- contrastar resultado
-- SQL SERVER
--=================================================================================================================--
SELECT N_Codigo_Adm_Tri, C_Descripcion, C_Articulo, C_Preposicion, C_Super_Adm_Tri
FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS]
WHERE N_Codigo_Adm_Tri = 33;
--=================================================================================================================--
-- POSTGRES
--=================================================================================================================--
SELECT par_at.id,
       par_at.descripcion,
       (SELECT par_ta.descripcion
        FROM parametricas.par_tipos_articulos AS par_ta
        WHERE par_ta.id = par_at.id_articulo)                   AS articulo,
       (SELECT par_tp.descripcion
        FROM parametricas.par_tipos_preposicion AS par_tp
        WHERE par_tp.id = par_at.id_preposicion)                AS preposicion,
       (SELECT par_tsa.descripcion
        FROM parametricas.par_tipos_super_administracion AS par_tsa
        WHERE par_tsa.id = par_at.id_tipo_super_administracion) AS super_administracion
FROM parametricas.par_administraciones_tributarias AS par_at
WHERE par_at.id = 33;
--=================================================================================================================--

CONSULTA 

SELECT te.descripcion,
       id_articulo,
       id_preposicion,
       id_tipo_super_administracion,
       activo,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica
FROM (SELECT TOP 2 LTRIM(RTRIM([C_Descripcion])) AS descripcion,
             (CASE
                  WHEN [C_Articulo] LIKE 'el' THEN 1
                  WHEN [C_Articulo] LIKE 'la' THEN 2
                 END)                      AS id_articulo,
             (CASE
                  WHEN [C_Preposicion] LIKE 'del' THEN 1
                  WHEN [C_Preposicion] LIKE 'de la' THEN 2
                 END)                      AS id_preposicion,
             (CASE
                  WHEN [C_Super_Adm_Tri] LIKE 'S.I.N.' THEN 1
                  WHEN [C_Super_Adm_Tri] LIKE 'ADUANA' THEN 2
                  WHEN [C_Super_Adm_Tri] LIKE 'GOB. MUNICIPALES' THEN 3
                  WHEN [C_Super_Adm_Tri] LIKE 'GOB. DEPARTAMENTALES' THEN 4
                 END)                      AS id_tipo_super_administracion,
             [N_Estado]                    AS activo,
             1                             AS id_usuario_registra,
             GETDATE()              AS fecha_registra,
             NULL                             AS id_usuario_modifica,
             NULL                     AS fecha_modifica,
             N_Codigo_Adm_Tri
FROM [dbo].[TSS_ADMINISTRACIONES_TRIBUTARIAS]
ORDER BY N_Codigo_Adm_Tri DESC) AS te
ORDER BY te.N_Codigo_Adm_Tri;
