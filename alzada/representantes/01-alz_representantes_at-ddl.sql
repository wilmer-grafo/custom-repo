create table alzada.alz_representantes_at
(
     id integer generated always as identity
          constraint alz_representantes_at_pkey
               primary key,
     nombre_completo varchar(200) not null,
     id_subadministracion_tributaria integer not null
          constraint "FK_representantes_at_subadministraciones_tributarias"
               references parametricas.par_subadministraciones_tributarias,
     fecha_desde timestamp with time zone not null,
     fecha_hasta timestamp with time zone,
     id_tipo_documento_representante integer not null
          constraint "FK_representantes_at_tipos_documentos"
               references parametricas.par_tipos_documentos,
     numero_documento varchar(30) not null,
     emitido_por varchar(200),
     cargo_emisor varchar(200),
     notario varchar(200),
     estado integer default 1 not null,
     id_usuario_registra integer not null,
     fecha_registra timestamp with time zone not null,
     id_usuario_modifica integer,
     fecha_modifica timestamp with time zone,
     observaciones text,
     cargo_representante varchar(200)
);
