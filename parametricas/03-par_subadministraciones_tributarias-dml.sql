-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE parametricas.par_subadministraciones_tributarias RESTART IDENTITY CASCADE;

-- verficar la secuencia, esto en SQL SERVER
--=================================================================================================================--
SELECT (SELECT isnull(max([N_Codigo_Subadm_Tri]) + 1, 1)
        FROM [TSS_SUBADMINISTRACIONES_TRIBUTARIAS]
        WHERE [N_Codigo_Subadm_Tri] < md.[N_Codigo_Subadm_Tri]) AS [de],
       md.[N_Codigo_Subadm_Tri] - 1                        AS [hasta]
FROM [TSS_SUBADMINISTRACIONES_TRIBUTARIAS] md
WHERE md.[N_Codigo_Subadm_Tri] != 1
  AND NOT exists(
        SELECT 1 FROM [TSS_SUBADMINISTRACIONES_TRIBUTARIAS] md2 WHERE md2.[N_Codigo_Subadm_Tri] = md.[N_Codigo_Subadm_Tri] - 1);
--=================================================================================================================--
-- tras la ejecucion se tiene como resultado:
15  15
18  18
36  36
78  80
89  89
92  92
102 102
105 105
126 126
-- ejcutar la consulta y exportar en csv, esto en SQL SERVER
--=================================================================================================================--
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
       GETDATE()                     AS fecha_registra,
       NULL                          AS id_usuario_modifica,
       NULL                          AS fecha_modifica
FROM [dbo].[TSS_SUBADMINISTRACIONES_TRIBUTARIAS]
WHERE N_Codigo_Subadm_Tri < 15;
--=================================================================================================================--
-- importar los 14 primeros del csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 15, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "15", por lo que ignorara ese valor, pasando al proximo que seria 16

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (18), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 16 - 17; 18
WHERE N_Codigo_Subadm_Tri > 15 AND N_Codigo_Subadm_Tri < 18;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 18, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "18", por lo que ignorara ese valor, pasando al proximo que seria 19

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (36), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 19 - 35; 36
WHERE N_Codigo_Subadm_Tri > 18 AND N_Codigo_Subadm_Tri < 36;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 36, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "36", por lo que ignorara ese valor, pasando al proximo que seria 37

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (78), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 37 - 77; *** ignore 78, 79, 80 = total 3
WHERE N_Codigo_Subadm_Tri > 36 AND N_Codigo_Subadm_Tri < 80;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 78 hasta el 80, esto en Postgres, especificar la el esquema y la tabla (PK)
-- sumar el total de ignorados
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 3 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "80", por lo que ignorara ese valor, pasando al proximo que seria 81

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (89), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 81 - 88; 89
WHERE N_Codigo_Subadm_Tri > 80 AND N_Codigo_Subadm_Tri < 89;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 89, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "89", por lo que ignorara ese valor, pasando al proximo que seria 90

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (92), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 90 - 91; 92
WHERE N_Codigo_Subadm_Tri > 89 AND N_Codigo_Subadm_Tri < 92;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 92, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "92", por lo que ignorara ese valor, pasando al proximo que seria 93

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (102), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 93 - 101; 102
WHERE N_Codigo_Subadm_Tri > 92 AND N_Codigo_Subadm_Tri < 102;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 102, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "102", por lo que ignorara ese valor, pasando al proximo que seria 103

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (105), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 103 - 104; 105
WHERE N_Codigo_Subadm_Tri > 102 AND N_Codigo_Subadm_Tri < 105;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 105, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "105", por lo que ignorara ese valor, pasando al proximo que seria 106

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (126), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 106 - 125; 126
WHERE N_Codigo_Subadm_Tri > 105 AND N_Codigo_Subadm_Tri < 126;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 126, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_subadministraciones_tributarias', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_subadministraciones_tributarias));
--=================================================================================================================--
-- la consulta anterior retorna "126", por lo que ignorara ese valor, pasando al proximo que seria 127

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (126), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 127 - 184; el resto
WHERE N_Codigo_Subadm_Tri > 126;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- vericar cantidad de registro importados
--=================================================================================================================--
SELECT COUNT(*) AS Total FROM [dbo].[TSS_SUBADMINISTRACIONES_TRIBUTARIAS];
SELECT count(id) AS total FROM parametricas.par_subadministraciones_tributarias;
--=================================================================================================================--

-- contrastar resultado
-- SQL SERVER
--=================================================================================================================--
SELECT sa.N_Codigo_Subadm_Tri,
       sa.C_Descripcion,
       sa.C_Autoridad,
       sa.N_Codigo_Adm_Tri,
       (SELECT at.C_Descripcion
        FROM TSS_ADMINISTRACIONES_TRIBUTARIAS AS at
        WHERE at.N_Codigo_Adm_Tri = sa.N_Codigo_Adm_Tri) AS descripcion,
       sa.C_Articulo,
       sa.C_Preposicion,
       sa.C_Ubicado_en
FROM [dbo].[TSS_SUBADMINISTRACIONES_TRIBUTARIAS] AS sa
WHERE N_Codigo_Subadm_Tri = 143;
--=================================================================================================================--
-- POSTGRES
--=================================================================================================================--
SELECT sa.id,
       sa.descripcion,
       sa.nombre_autoridad,
       sa.id_administracion_tributaria,
       (SELECT at.descripcion
        FROM parametricas.par_administraciones_tributarias AS at
        WHERE at.id = sa.id_administracion_tributaria) AS descripcion,
       (SELECT ta.descripcion
        FROM parametricas.par_tipos_articulos AS ta
        WHERE ta.id = sa.id_articulo)                  AS articulo,
       (SELECT tp.descripcion
        FROM parametricas.par_tipos_preposicion AS tp
        WHERE tp.id = sa.id_preposicion)               AS preposicion,
       sa.direccion
FROM parametricas.par_subadministraciones_tributarias AS sa
WHERE id = 143;
--=================================================================================================================--

CONSULTA

SELECT te.descripcion,
       nombre_autoridad,
       id_administracion_tributaria,
       direccion,
       latitud,
       longitud,
       activo,
       id_articulo,
       id_preposicion,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica
FROM (SELECT TOP 4 LTRIM(RTRIM([C_Descripcion])) AS descripcion,
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
                       END)                      AS id_articulo,
                   (CASE
                        WHEN [C_Preposicion] LIKE 'del' THEN 1
                        WHEN [C_Preposicion] LIKE 'de la' THEN 2
                       END)                      AS id_preposicion,
                   1                             AS id_usuario_registra,
                   GETDATE()                     AS fecha_registra,
                   NULL                          AS id_usuario_modifica,
                   NULL                          AS fecha_modifica,
                   N_Codigo_Subadm_Tri
      FROM [dbo].[TSS_SUBADMINISTRACIONES_TRIBUTARIAS]
      ORDER BY N_Codigo_Subadm_Tri DESC) AS te
ORDER BY N_Codigo_Subadm_Tri;
