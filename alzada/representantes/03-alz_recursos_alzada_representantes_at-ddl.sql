create table alzada.alz_recursos_alzada_representantes_at
(
     id_recurso_alzada integer not null
          constraint alz_recursos_alzada_representantes_at_fk
               references alzada.alz_recursos_alzada,
     id_representante_at integer not null
          constraint "FK_representante_at"
               references alzada.alz_representantes_at,
     fecha_registra timestamp with time zone not null,
     id_usuario_modifica integer,
     fecha_modifica timestamp with time zone,
     estado integer default 1 not null,
     id integer generated always as identity
          constraint alz_recursos_alzada_representantes_at_pkey
               primary key,
     id_usuario_registra integer
);
