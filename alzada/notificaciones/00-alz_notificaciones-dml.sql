create table alzada.alz_notificaciones
(
	id integer generated always as identity
		constraint alz_notificaciones_pkey
			primary key,
	id_actuacion integer not null
		constraint "FK_notificaciones_actuaciones"
			references alzada.alz_actuaciones,
	id_tipo_demandante integer not null
		constraint "FK_notificaciones_tipo_demandante"
			references parametricas.par_tipos_demandante,
	id_tipo_notificacion integer not null
		constraint "FK_notificaciones_tipo_notificacion"
			references parametricas.par_tipos_notificaciones,
	fecha_hora_notificacion timestamp with time zone not null,
	estado integer not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	fecha_actuacion_registro timestamp(0) with time zone,
	id_region_notifica integer
);
