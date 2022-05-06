-- DDL
create schema parametricas AUTHORIZATION postgres;

-- [C_Articulo]
-- parametricas.par_tipos_articulos
create table if not exists parametricas.par_tipos_articulos
(
	id integer generated always as identity
		constraint pat_tipos_articulos_pkey
			primary key,
	descripcion varchar(10) not null,
	activo smallint default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_tipos_articulos is 'Tabla que almacena los tipos de articulos para la formación de textos.';
comment on column parametricas.par_tipos_articulos.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_articulos.descripcion is 'Nombre / descripción de los articulos';
comment on column parametricas.par_tipos_articulos.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_articulos.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_articulos.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_articulos.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_articulos.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_articulos owner to postgres;

-- [C_Preposicion]
-- parametricas.par_tipos_preposicion
create table parametricas.par_tipos_preposicion
(
	id integer generated always as identity
		constraint par_tipos_preposicion_pkey
			primary key,
	descripcion varchar(10) not null,
	activo smallint default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra varchar not null,
	id_usuario_modifica integer,
	fecha_modifica varchar
);
-- COMMENTS
comment on table parametricas.par_tipos_preposicion is 'Tabla que almacena los tipos de preposiciones para generar textos';
comment on column parametricas.par_tipos_preposicion.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_preposicion.descripcion is 'Nombre / descripción del tipo de preposición';
comment on column parametricas.par_tipos_preposicion.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_preposicion.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_preposicion.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_preposicion.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_preposicion.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_preposicion owner to postgres;

-- [C_Super_Adm_Tri]
-- parametricas.par_tipos_super_administracion
create table parametricas.par_tipos_super_administracion
(
	id integer generated always as identity
		constraint par_tipos_super_administracion_pkey
			primary key,
	descripcion varchar(50) not null,
	activo smallint default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_tipos_super_administracion is 'Tabla que almacena las agrupaciones de administraciones tributarias';
comment on column parametricas.par_tipos_super_administracion.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_super_administracion.descripcion is 'Nombre / descripción del tipo de super administración (grupo de administraciones tributarias)';
comment on column parametricas.par_tipos_super_administracion.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_super_administracion.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_super_administracion.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_super_administracion owner to postgres;

--TSS_ADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion]; [C_Super_Adm_Tri]
--parametricas.par_administraciones_tributarias
create table parametricas.par_administraciones_tributarias
(
	id integer generated always as identity
		constraint par_administraciones_tributarias_pkey
			primary key,
	descripcion varchar(200) not null,
	id_articulo integer not null
		constraint "FK_administraciones_articulos"
			references parametricas.par_tipos_articulos,
	id_preposicion integer not null
		constraint "FK_administraciones_preposicion"
			references parametricas.par_tipos_preposicion,
	id_tipo_super_administracion integer not null
		constraint "FK_administraciones_super_adm"
			references parametricas.par_tipos_super_administracion,
	activo smallint default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_administraciones_tributarias is 'Tabla que almacena la información de las administraciones tributarias';
comment on column parametricas.par_administraciones_tributarias.id is 'Llave primaria de la tabla';
comment on column parametricas.par_administraciones_tributarias.descripcion is 'Nombre / descripción de la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_articulo is 'Id del artículo al ser usado para citar a la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_preposicion is 'Id de la presposición a ser usada por la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_tipo_super_administracion is 'Id del tipo de super administración a la que pertenece la administración';
comment on column parametricas.par_administraciones_tributarias.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_administraciones_tributarias.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_administraciones_tributarias.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_administraciones_tributarias.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_administraciones_tributarias.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_administraciones_tributarias owner to postgres;

--TSS_SUBADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion];
--parametricas.par_subadministraciones_tributarias
create table parametricas.par_subadministraciones_tributarias
(
	id integer generated always as identity
		constraint par_subadministraciones_tributarias_pkey
			primary key,
	descripcion varchar(200) not null,
	nombre_autoridad varchar(200) not null,
	id_administracion_tributaria integer not null
		constraint "FK_subadministracion_administracion"
			references parametricas.par_administraciones_tributarias,
	direccion varchar(300) not null,
	latitud numeric,
	longitud numeric,
	activo smallint default 1 not null,
	id_articulo integer not null
		constraint "FK_subadministracion_articulo"
			references parametricas.par_tipos_articulos,
	id_preposicion integer not null
		constraint "FK_subadministracion_preposicion"
			references parametricas.par_tipos_preposicion,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_subadministraciones_tributarias is 'Tabla que almacena la información de las subadministraciones tributarias';
comment on column parametricas.par_subadministraciones_tributarias.id is 'Llave primaria de la tabla';
comment on column parametricas.par_subadministraciones_tributarias.descripcion is 'Nombre / descripción de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.nombre_autoridad is 'Nombre de la autoridad representante de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.id_administracion_tributaria is 'Identificador de la administración tributaria a la que pertenece la subadministración.';
comment on column parametricas.par_subadministraciones_tributarias.direccion is 'Dirección de las oficinas de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.latitud is 'LAtitud de la georeferenciación';
comment on column parametricas.par_subadministraciones_tributarias.longitud is 'Longitud de la georeferenciacion';
comment on column parametricas.par_subadministraciones_tributarias.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_subadministraciones_tributarias.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_subadministraciones_tributarias.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_subadministraciones_tributarias.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_subadministraciones_tributarias owner to postgres;

--INCLUDE DDL
--parametricas.par_motivos_feriados; VALORES CORRECTOS
--INCLUDE DDL
--seguridad.seg_regiones

--TSS_FERIADOS; [N_Codigo_Oficina] y [N_Codigo_Reg_Int] en Postgres solo [id_region]
--comunes.feriados
create table comunes.feriados
(
	id integer generated always as identity
		constraint feriados_pkey
			primary key,
	id_motivo_feriado integer not null
		constraint "FK_motivos_feriados_feriados"
			references parametricas.par_motivos_feriados,
	fecha timestamp with time zone not null,
	id_region integer not null
		constraint "FK_feriados_regiones"
			references seguridad.seg_regiones,
	suspende_plazo integer default 0 not null,
	estado integer default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	gestion integer not null
);
-- COMMENTS
comment on table comunes.feriados is 'Tabla que almacena los feriados por region y si los mismos se constituyen en interruptores de plazos';
comment on column comunes.feriados.id is 'Llave primaria de la tabla';
comment on column comunes.feriados.id_motivo_feriado is 'Identificador del motivo de los feriado.';
comment on column comunes.feriados.fecha is 'Fecha del feriado';
comment on column comunes.feriados.id_region is 'Identificador de la región del cual será feriado';
comment on column comunes.feriados.suspende_plazo is 'Identificador que indica si el feriado considera la suspensión de plazo durante esa fecha (en el caso de plazos corridos) 0=no 1=si';
comment on column comunes.feriados.estado is 'Estado del registro 0=Eliminado 1= Activo';
comment on column comunes.feriados.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column comunes.feriados.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column comunes.feriados.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table comunes.feriados owner to postgres;

-- TSS_TIPOS_CAMBIOS_UFV
-- parametricas.par_tipos_cambios_ufv
create table parametricas.par_tipos_cambios_ufv
(
	id integer generated always as identity
		constraint par_tipos_cambios_ufv_pkey
			primary key,
	fecha timestamp with time zone not null
		constraint unq_fecha_ufv
			unique,
	ufv numeric not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	activo integer default 1 not null
);
-- COMMENTS
comment on table parametricas.par_tipos_cambios_ufv is 'Tabla que almacena los tipos de cambio de UFV.';
comment on column parametricas.par_tipos_cambios_ufv.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_cambios_ufv.fecha is 'Fecha del tipo de cambio de la UFV';
comment on column parametricas.par_tipos_cambios_ufv.ufv is 'Tipo de cambio de la UFV en bolivianos';
comment on column parametricas.par_tipos_cambios_ufv.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_cambios_ufv.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_cambios_ufv.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_cambios_ufv.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column parametricas.par_tipos_cambios_ufv.activo is 'Indicador si el registro está activo=1 o inactivo=0';
-- DDL
alter table parametricas.par_tipos_cambios_ufv owner to postgres;

-- [dbo].[TSS_FUNCIONARIOS]
-- seguridad.seg_personas
create table seguridad.seg_personas
(
	id integer generated by default as identity
		constraint seg_personas_pkey
			primary key,
	nombres varchar(100) not null,
	ap_paterno varchar(50) not null,
	ap_materno varchar(50),
	ci varchar(10),
	sexo smallint not null,
	telefono varchar(45),
	num_celular varchar(45),
	email varchar(50),
	fecha_nacimiento timestamp with time zone,
	zona_domicilio varchar(100),
	calle_domicilio varchar(100),
	numero_domicilio varchar(50),
	ruta_fotografia varchar(100),
	id_region integer
		constraint fk_regiones_personas
			references seguridad.seg_regiones,
	id_cargo integer
		constraint fk_cargos_personas
			references seguridad.seg_cargos,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	activo smallint default 1 not null
);
-- COMMENTS
comment on table seguridad.seg_personas is 'Tabla que almacena la información de las personas que podrán o no acceder al sistema.';
comment on column seguridad.seg_personas.id is 'Llave primaria de la tabla';
comment on column seguridad.seg_personas.nombres is 'Nombres de la persona';
comment on column seguridad.seg_personas.ap_paterno is 'Apellido paterno de la persona';
comment on column seguridad.seg_personas.ap_materno is 'Apellido materno de la persona';
comment on column seguridad.seg_personas.ci is 'Cédula de identidad de la persona';
comment on column seguridad.seg_personas.sexo is 'Sexo de la persona 1=Masculino 0=Femenino';
comment on column seguridad.seg_personas.telefono is 'Nümero(s) de teléfono(s) fijo(s) de la persona';
comment on column seguridad.seg_personas.num_celular is 'Nümero(s) de teléfono(s) celular(es) de la persona';
comment on column seguridad.seg_personas.email is 'COrreo electrónico de la persona';
comment on column seguridad.seg_personas.fecha_nacimiento is 'Fecha de nacimiento de la persona';
comment on column seguridad.seg_personas.zona_domicilio is 'Descripción de la zona donde vive la persona';
comment on column seguridad.seg_personas.calle_domicilio is 'Nombre de la calle donde vive la persona';
comment on column seguridad.seg_personas.numero_domicilio is 'Número del domicilio de la persona';
comment on column seguridad.seg_personas.ruta_fotografia is 'Ruta donde se almacena la fotografía de la persona';
comment on column seguridad.seg_personas.id_region is 'Identificador de la región donde vive la persona';
comment on column seguridad.seg_personas.id_cargo is 'Identificador del cargo de la persona';
comment on column seguridad.seg_personas.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column seguridad.seg_personas.fecha_registra is 'Fecha en la que se registra la información';
comment on column seguridad.seg_personas.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column seguridad.seg_personas.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column seguridad.seg_personas.activo is 'Estado del registro 1=Activo 0= Inactivo';
-- DDL
alter table seguridad.seg_personas owner to postgres;

-- seguridad.seg_usuarios
create table seguridad.seg_usuarios
(
	id integer generated by default as identity
		constraint seg_usuarios_pkey
			primary key,
	password varchar(256) not null,
	login varchar(50) not null
		constraint login
			unique,
	activo smallint default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	id_persona integer not null
		constraint fk_personas_usuarios
			references seguridad.seg_personas
);
-- COMMENTS
comment on table seguridad.seg_usuarios is 'Tabla que almacena a los usuarios que tendrán acceso al sistema según su estado.';
comment on column seguridad.seg_usuarios.id is 'Llave primaria de la tabla';
comment on column seguridad.seg_usuarios.password is 'Contraseña encriptada';
comment on column seguridad.seg_usuarios.login is 'Login del usuario para acceder';
comment on column seguridad.seg_usuarios.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column seguridad.seg_usuarios.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column seguridad.seg_usuarios.fecha_registra is 'Fecha en la que se registra la información';
comment on column seguridad.seg_usuarios.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column seguridad.seg_usuarios.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column seguridad.seg_usuarios.id_persona is 'Identificador de la persona a la que correponde el usuario';
-- DDL
alter table seguridad.seg_usuarios owner to postgres;
-- FUN
CREATE OR REPLACE FUNCTION seguridad.seg_fun_insertar_usuario()
    RETURNS trigger AS
$$
DECLARE
    vClaveTemporal TEXT;
BEGIN
    vClaveTemporal :=
            'eyJpdiI6ImNLNGZwT1RZMWk1bWxOZGpWelJrSlE9PSIsInZhbHVlIjoieS9xN1llTzFzcGZhc29PeW0zL0lydz09IiwibWFjIjoiODI0NWZlMDc2YTE1NTI5OWJhNjFmODhjYjhlOWU2ZTQ4NjVhZTExMDU5ODQxNDdhNmRiMjc0MzYyMzY5OTA4ZSIsInRhZyI6IiJ9';
    INSERT INTO seguridad.seg_usuarios(password, login, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, id_persona)
    VALUES (vClaveTemporal, split_part(NEW.email, '@', 1), NEW.activo, 1, current_date, 1, current_date, NEW.id);
    RETURN NEW;
END;
$$
    LANGUAGE 'plpgsql';
-- TRIGGER
CREATE TRIGGER agregar_usuario
  AFTER INSERT
  ON seguridad.seg_personas
  FOR EACH ROW
  EXECUTE PROCEDURE seguridad.seg_fun_insertar_usuario();




