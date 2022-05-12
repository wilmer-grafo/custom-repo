TRUNCATE TABLE parametricas.par_administraciones_tributarias RESTART IDENTITY CASCADE;
TRUNCATE TABLE parametricas.par_subadministraciones_tributarias RESTART IDENTITY CASCADE;

select count(id) from parametricas.par_administraciones_tributarias;
select count(id) from parametricas.par_subadministraciones_tributarias;

ALTER SEQUENCE <table name>_<column name>_seq RESTART WITH <reset id>;

--https://stackoverflow.com/questions/14630984/how-do-i-do-multiple-case-when-conditions-using-sql-server-2008
--http://www.sublimetext.com/docs/1/selection

create schema parametricas AUTHORIZATION postgres;

--check null values
SELECT column_name, is_nullable, data_type
  FROM information_schema.columns
 WHERE table_schema = 'alzada'
   AND table_name   = 'alz_recursos_alzada'
   AND is_nullable = 'YES';

MIGRACION DE USUARIOS
-- [dbo].[TSS_FUNCIONARIOS]
-- seguridad.seg_personas
-- seguridad.seg_usuarios
