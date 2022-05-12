-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE comunes.feriados RESTART IDENTITY CASCADE;

-- ejcutar la consulta y exportar en csv, esto en SQL SERVER
--=================================================================================================================--
SELECT (CASE
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'AMPLIACIÓN AL 6 DE AGOSTO' THEN 12
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ANIVERSARIO CIVICO DE CHUQUISACA' THEN 42
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ANIVERSARIO CIVICO DE POTOSI' THEN 8
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ANIVERSARIO DE CHUQUISACA' THEN 30
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ANIVERSARIO DEPARTAMENTAL' THEN 1
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ANIVERSARIO FUNDACION CHUQUISACA' THEN 10
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'AÑO NUEVO' THEN 40
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'AÑO NUEVO ANDINO' THEN 3
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'AÑO NUEVO AYMARA' THEN 25
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'BICENTENARIO' THEN 21
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CARNAVAL' THEN 22
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CARNAVALES' THEN 28
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CENSO NACIONAL DE PABLACIONES' THEN 43
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CORPUS CHRISTI' THEN 19
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CORPUS CRISTI' THEN 16
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'CREACIÓN DEL ESTADO PLURINACIONAL' THEN 24
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DE LA INDEPENDENCIA' THEN 23
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DE LA PATRIA' THEN 9
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DE LA PAZ' THEN 41
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DE LOS DIFUNTOS' THEN 44
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DE ORURO' THEN 18
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DEL TRABAJADOR' THEN 34
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'DIA DEL TRABAJO' THEN 33
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EFEMERIDES DE SUCRE' THEN 20
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EFEMERIDES DEPARTAMENTAL' THEN 5
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EFEMERIDES DEPARTAMENTAL PANDO' THEN 7
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EMERGENCIA REGIONAL' THEN 14
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EMERGENCIA SANITARIA NACIONAL' THEN 6
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EMERGENCIA SANITARIA NACIONAL DS4278' THEN 17
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'EMERGENCIA SANITARIA NACIONAL DS4278 DM0018/2020' THEN 37
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ENCAPSULAMIENTO' THEN 26
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ESTADO PLURINACIONAL' THEN 31
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ESTADO PLURINACIONAL DE BOLIVIA' THEN 4
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'FERIADO CIVICO DPTAL.' THEN 36
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'FERIADO CIVICO DPTAL.ORURO' THEN 15
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'FERIADO DE NAVIDAD' THEN 39
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'FERIADO REGIONAL COCHABAMBA' THEN 35
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'NAVIDAD' THEN 32
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'ORDENANZA DEPARTAMENTAL PARADA MILITAR SUCRE' THEN 11
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'R.A. AGIT/0038/2010 DE 17/08/2010' THEN 27
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'TODOS LOS SANTOS' THEN 13
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'TODOS SANTOS' THEN 2
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'VIERNES SANTO' THEN 29
            WHEN LTRIM(RTRIM([C_Descripcion])) LIKE 'VISITA DEL PAPA FRANCISCO' THEN 38
            ELSE -10
    END)                       AS id_motivo_feriado,
       [D_Fecha_Feriado]       AS fecha,
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
           END)                AS id_region,
       0                       AS suspende_plazo,
       1                          estado,
       1                          id_usuario_registra,
       GETDATE()               AS fecha_registra,
       NULL                    AS id_usuario_modifica,
       NULL                    AS fecha_modifica,
       YEAR([D_Fecha_Feriado]) AS gestion
FROM [dbo].[TSS_FERIADOS];
--=================================================================================================================--
-- importar el csv en comunes.feriados, esto en Postgres

-- vericar cantidad de registro importados
--=================================================================================================================--
SELECT COUNT(*) AS Total FROM [dbo].[TSS_FERIADOS];
SELECT count(id) AS total FROM comunes.feriados;
--=================================================================================================================--

-- contrastar resultado
-- SQL SERVER
--=================================================================================================================--
SELECT C_Descripcion, D_Fecha_Feriado, N_Codigo_Oficina, N_Codigo_Reg_Int
FROM [dbo].[TSS_FERIADOS]
WHERE (N_Codigo_Oficina = 0 AND N_Codigo_Reg_Int = 0)
  AND YEAR(D_Fecha_Feriado) = 2021;
--=================================================================================================================--
-- POSTGRES
--=================================================================================================================--
SELECT com_f.id_motivo_feriado,
       (SELECT par_mf.descripcion
        FROM parametricas.par_motivos_feriados AS par_mf
        WHERE par_mf.id = com_f.id_motivo_feriado)                                                   AS descripcion,
       com_f.fecha,
       com_f.id_region,
       (SELECT seg_r.descripcion FROM seguridad.seg_regiones seg_r WHERE seg_r.id = com_f.id_region) AS region
FROM comunes.feriados AS com_f
WHERE com_f.id_region = 10
  AND com_f.gestion = 2021;
--=================================================================================================================--