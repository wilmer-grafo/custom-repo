--New Tables
--parametricas.par_tipos_articulos
--parametricas.par_tipos_preposicion
--parametricas.par_tipos_super_administracion

TRUNCATE TABLE parametricas.par_administraciones_tributarias RESTART IDENTITY CASCADE;
TRUNCATE TABLE parametricas.par_subadministraciones_tributarias RESTART IDENTITY CASCADE;

select count(id) from parametricas.par_administraciones_tributarias;
select count(id) from parametricas.par_subadministraciones_tributarias;

ALTER SEQUENCE <table name>_<column name>_seq RESTART WITH <reset id>;


--TSS_ADMINISTRACIONES_TRIBUTARIAS
--TSS_SUBADMINISTRACIONES_TRIBUTARIAS

--TSS_FERIADOS
--TSS_TIPOS_CAMBIOS_UFV


--https://stackoverflow.com/questions/14630984/how-do-i-do-multiple-case-when-conditions-using-sql-server-2008
--http://www.sublimetext.com/docs/1/selection


MIGRACION DE PARAMETRICAS
-- TSS_ADMINISTRACIONES_TRIBUTARIAS;
-- TSS_SUBADMINISTRACIONES_TRIBUTARIAS;
-- TSS_FERIADOS;
-- TSS_TIPOS_CAMBIOS_UFV

-- schema parametricas
-- [C_Articulo]
-- parametricas.par_tipos_articulos
-- [C_Preposicion]
-- parametricas.par_tipos_preposicion
-- [C_Super_Adm_Tri]
-- parametricas.par_tipos_super_administracion
-- TSS_ADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion]; [C_Super_Adm_Tri]
-- parametricas.par_administraciones_tributarias
-- TSS_SUBADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion];
-- parametricas.par_subadministraciones_tributarias

-- VALORES DEFINIDOS 
-- parametricas.par_motivos_feriados; 
-- seguridad.seg_regiones
-- TSS_FERIADOS; [N_Codigo_Oficina] y [N_Codigo_Reg_Int] en Postgres equivale a [id_region]
-- comunes.feriados
-- TSS_TIPOS_CAMBIOS_UFV
-- parametricas.par_tipos_cambios_ufv

MIGRACION DE USUARIOS
-- [dbo].[TSS_FUNCIONARIOS]
-- seguridad.seg_personas
-- seguridad.seg_usuarios







