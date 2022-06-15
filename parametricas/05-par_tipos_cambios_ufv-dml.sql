-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE parametricas.par_tipos_cambios_ufv RESTART IDENTITY CASCADE;

-- ejcutar la consulta y exportar en csv, esto en SQL SERVER
--=================================================================================================================--
SELECT [D_Fecha_Tipo_Cambio] AS fecha,
       [N_UFV]               AS ufv,
       1                     AS id_usuario_registra,
       [D_Fecha_Update]      AS fecha_registra,
       NULL                  AS id_usuario_modifica,
       NULL                  AS fecha_modifica,
       1                     AS activo
FROM [dbo].[TSS_TIPOS_CAMBIOS_UFV]
ORDER BY D_Fecha_Tipo_Cambio;
--=================================================================================================================--
-- importar el csv en parametricas.par_subadministraciones_tributarias, esto en Postgres

-- vericar cantidad de registro importados
--=================================================================================================================--
SELECT COUNT(*) AS Total FROM [dbo].[TSS_TIPOS_CAMBIOS_UFV];
SELECT count(id) AS total FROM parametricas.par_tipos_cambios_ufv;
--=================================================================================================================--

-- contrastar resultado
-- SQL SERVER
--=================================================================================================================--
-- año-dia-mes
SELECT *
FROM [dbo].[TSS_TIPOS_CAMBIOS_UFV]
WHERE [D_Fecha_Tipo_Cambio] BETWEEN '2020-01-01' AND '2020-05-01';
--=================================================================================================================--
-- POSTGRES
--=================================================================================================================--
-- año-mes-dia
SELECT *
FROM parametricas.par_tipos_cambios_ufv
WHERE fecha BETWEEN  '2020-01-01' AND '2020-01-05';
--=================================================================================================================--

