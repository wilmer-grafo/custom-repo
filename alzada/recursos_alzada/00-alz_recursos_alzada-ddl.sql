-- !important
SET DATEFORMAT 'YMD';

--parametricas.par_medios_recepcion
--parametricas.par_tipos_demandante
--parametricas.par_tipos_documentos
--seguridad.seg_regiones
--parametricas.par_subadministraciones_tributarias
--parametricas.par_tipos_respuestas_administracion
--parametricas.par_tipos_resoluciones
--parametricas.par_tipos_procesos_centrales
--parametricas.par_resultados_anulacion

create table alzada.alz_recursos_alzada
(
	id integer generated always as identity
		constraint alz_recursos_alzada_pkey
			primary key,
	id_tipo_presentacion integer default 1 not null
		constraint "FK_recursos_alzada_tipo_presentacion"
			references parametricas.par_medios_recepcion,
	razon_social varchar(1000) not null,
	id_tipo_documento integer not null
		constraint "FK_recursos_alzada_tipo_documento"
			references parametricas.par_tipos_documentos,
	numero_documento varchar(20) not null,
	id_region_documento integer
		constraint "FK_recursos_alzada_regiones"
			references seguridad.seg_regiones,
	id_subadministracion_tributaria integer not null
		constraint "FK_recursos_alzada_subadministracion"
			references parametricas.par_subadministraciones_tributarias,
	nombre_presentante varchar(200) not null,
	cargo_presentante varchar(200) not null,
	id_tipo_respuesta_administracion integer
		constraint "FK_recursos_alzada_respuesta_administracion"
			references parametricas.par_tipos_respuestas_administracion,
	direccion varchar(300) not null,
	latitud numeric,
	longitud numeric,
	estado integer default 1 not null,
	numero_recurso_alzada varchar(30) not null
		constraint unq_numero_alzada
			unique,
	numero_res_alzada varchar(30),
	id_tipo_resolucion integer
		constraint "FK_recursos_alzada_tipos_resolucion"
			references parametricas.par_tipos_resoluciones,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	id_region_radicatoria integer not null,
	fecha_presentacion timestamp with time zone not null,
	fecha_respuesta_administracion timestamp with time zone,
	fecha_vencimiento timestamp,
	antecedentes_at text,
	antecedentes_sp text,
	antecedentes_otro text,
	estado_revision_alzada_montos integer,
	cuerpos varchar(2500),
	id_resultado_anulacion integer
		constraint "FK_recursos_alzada_anulacion"
			references parametricas.par_resultados_anulacion,
	tipo_persona integer,
	clasificador_alzada integer default 1,
	id_region_recepcion integer not null
);

--=================================================================================================================--
TRUNCATE TABLE alzada.alz_recursos_alzada RESTART IDENTITY CASCADE;
