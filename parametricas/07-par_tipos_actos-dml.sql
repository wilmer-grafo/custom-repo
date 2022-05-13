-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE parametricas.par_tipos_actos RESTART IDENTITY CASCADE;

-- verficar la secuencia, esto en SQL SERVER
--=================================================================================================================--
SELECT (SELECT isnull(max([N_Codigo_Acto]) + 1, 1)
        FROM [TSS_ACTOS]
        WHERE [N_Codigo_Acto] < md.[N_Codigo_Acto]) AS [de],
       md.[N_Codigo_Acto] - 1                        AS [hasta]
FROM [TSS_ACTOS] md
WHERE md.[N_Codigo_Acto] != 1
  AND NOT exists(
        SELECT 1 FROM [TSS_ACTOS] md2 WHERE md2.[N_Codigo_Acto] = md.[N_Codigo_Acto] - 1);
--=================================================================================================================--
-- tras la ejecucion se tiene como resultado:
11,12
14,14
93,102
184,184
-- ejcutar la consulta y exportar en csv, esto en SQL SERVER
--=================================================================================================================--
SELECT LTRIM(RTRIM([C_Descripcion])) AS descripcion,
       (CASE
            WHEN LTRIM(RTRIM(C_Preposicion)) LIKE 'del' THEN 1
            WHEN LTRIM(RTRIM(C_Preposicion)) LIKE 'de' THEN 1
            WHEN LTRIM(RTRIM(C_Preposicion)) LIKE 'de la' THEN 2
            WHEN LTRIM(RTRIM(C_Preposicion)) LIKE 'de lla' THEN 2
            WHEN C_Preposicion IS NULL THEN 1
           END)                      AS id_preposicion,
       [N_Estado]                    AS activo,
       1                             AS id_usuario_registra,
       GETDATE()                     AS fecha_registra,
       NULL                          AS id_usuario_modifica,
       NULL                          AS fecha_modifica,
       (CASE
            WHEN LTRIM(RTRIM(C_Articulo)) LIKE 'el' THEN 1
            WHEN LTRIM(RTRIM(C_Articulo)) LIKE 'la' THEN 2
            WHEN C_Articulo IS NULL THEN 1
           END)                      AS id_articulo
FROM TSS_ACTOS
WHERE N_Codigo_Acto < 11;
--=================================================================================================================--
-- importar los 10 primeros del csv en parametricas.par_tipos_actos, esto en Postgres

-- modificar la secuencia, para omitir el valor 11 al 12, esto en Postgres, especificar la el esquema y la tabla (PK)
-- 12-11=1, entonces 1 + 1 = 2
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_tipos_actos', 'id'),
              (SELECT max(id) + 2 FROM parametricas.par_tipos_actos));
--=================================================================================================================--
-- la consulta anterior retorna "12", por lo que ignorara ese valor, pasando al proximo que seria 13

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (14), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 13
WHERE N_Codigo_Acto > 12 AND N_Codigo_Acto < 14;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 14, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_tipos_actos', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_tipos_actos));
--=================================================================================================================--
-- la consulta anterior retorna "14", por lo que ignorara ese valor, pasando al proximo que seria 15

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (93-102), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 15 hasta la 92
WHERE N_Codigo_Acto > 14 AND N_Codigo_Acto < 93;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor (93-102), esto en Postgres, especificar la el esquema y la tabla (PK)
-- 102-93=9, entonces 9 + 1 = 10
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_tipos_actos', 'id'),
              (SELECT max(id) + 10 FROM parametricas.par_tipos_actos));
--=================================================================================================================--
-- la consulta anterior retorna "102", por lo que ignorara ese valor, pasando al proximo que seria 103

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (184), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- 93 hasta la 183
WHERE N_Codigo_Acto > 92 AND N_Codigo_Acto < 184;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- modificar la secuencia, para omitir el valor 184, esto en Postgres, especificar la el esquema y la tabla (PK)
--=================================================================================================================--
SELECT setval(pg_get_serial_sequence('parametricas.par_tipos_actos', 'id'),
              (SELECT max(id) + 1 FROM parametricas.par_tipos_actos));
--=================================================================================================================--
-- la consulta anterior retorna "184", por lo que ignorara ese valor, pasando al proximo que seria 185

-- ahora ejecutar la misma consulta, para obtener los demas registros, para la siguiente secuencia (185), esto en SQL SERVER
-- modificando el intervalo en la clausula WHERE y exportar en csv
-- del 185 en adelante
WHERE N_Codigo_Acto > 184;
-- importar el resultado en csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- vericar cantidad de registro importados
--=================================================================================================================--
SELECT COUNT(*) AS Total FROM [dbo].[TSS_ACTOS];
SELECT count(id) AS total FROM parametricas.par_tipos_actos;
--=================================================================================================================--

-- contrastar resultado
-- SQL SERVER
--=================================================================================================================--
SELECT N_Codigo_Acto, C_Descripcion, C_Articulo, C_Preposicion, N_Estado
FROM [dbo].[TSS_ACTOS]
WHERE N_Codigo_Acto = 33;
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
       par_at.activo
FROM parametricas.par_tipos_actos AS par_at
WHERE par_at.id = 33;
--=================================================================================================================--








