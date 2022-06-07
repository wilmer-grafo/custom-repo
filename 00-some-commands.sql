TRUNCATE TABLE parametricas.par_administraciones_tributarias RESTART IDENTITY CASCADE;
TRUNCATE TABLE parametricas.par_subadministraciones_tributarias RESTART IDENTITY CASCADE;

select count(id) from parametricas.par_administraciones_tributarias;
select count(id) from parametricas.par_subadministraciones_tributarias;

ALTER SEQUENCE <table name>_<column name>_seq RESTART WITH <reset id>;

create schema parametricas AUTHORIZATION postgres;

--check null values
SELECT column_name, is_nullable, data_type
  FROM information_schema.columns
 WHERE table_schema = 'alzada'
   AND table_name   = 'alz_recursos_alzada'
   AND is_nullable = 'YES';

SET TIMEZONE='America/La_Paz';
SHOW datestyle;
SHOW TIMEZONE;

--
UPDATE alzada.alz_actos_impugnados
SET fecha_emision =
  (fecha_emision AT TIME ZONE 'UTC') AT TIME ZONE 'America/La_Paz';

UPDATE alzada.alz_actos_impugnados
SET fecha_notificacion =
  (fecha_notificacion AT TIME ZONE 'UTC') AT TIME ZONE 'America/La_Paz';

--SQL SERVER
--La conversión del tipo de datos char a datetime produjo un valor datetime fuera de intervalo
SET DATEFORMAT 'YMD';
 
