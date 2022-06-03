create table alzada.alz_interposiciones_jerarquico
(
	id integer generated always as identity
		constraint alz_interposiciones_jerarquico_pkey
			primary key,
	id_recurso_alzada integer not null
		constraint "FK_interposicion_jer_recurso_alzada"
			references alzada.alz_recursos_alzada,
	id_tipo_demandante integer not null
		constraint "FK_interposicion_tipo_demandante"
			references parametricas.par_tipos_demandante,
	fecha_interpone timestamp with time zone not null,
	cite_remision varchar(100),
	fecha_remision timestamp with time zone,
	fecha_recepcion_agit timestamp with time zone,
	antecedentes_sp_regional text,
	antecedentes_at_regional text,
	antecedentes_otros_regional text,
	antecedentes_sp_agit text,
	antecedentes_at_agit text,
	antecedentes_otros_agit text,
	id_recurso_jerarquico integer,
	estado integer default 1 not null,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	id_representante_at integer,
	observaciones text,
	id_memorial integer
		constraint "FK_interposicion_memorial"
			references comunes.memoriales,
	observaciones_antecedentes text
);
