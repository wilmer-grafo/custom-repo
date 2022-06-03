create table alzada.alz_recursos_alzada_representantes_sp
(
     id_recurso_alzada integer not null
          constraint "FK_recursos_alzada_representantes_sp"
               references alzada.alz_recursos_alzada,
     id_representante_legal_sp integer not null
          constraint "FK_representantes_sp"
               references alzada.alz_representantes_sp,
     id_usuario_registra integer not null,
     id_usuario_modifica integer,
     fecha_modifica timestamp with time zone,
     estado integer default 1 not null,
     fecha_registra timestamp with time zone not null,
     id integer generated always as identity
          constraint alz_recursos_alzada_representantes_sp_pkey
               primary key,
     cargo_representante varchar(200),
     numero_documento varchar(200),
     fecha_documento timestamp(0) with time zone,
     id_tipo_documento_representante integer
);

TRUNCATE TABLE alzada.alz_recursos_alzada_representantes_sp RESTART IDENTITY;