create table alzada.alz_representantes_sp
(
     id integer generated always as identity
          constraint alz_representantes_sp_pkey
               primary key,
     nombre_completo varchar(200) not null,
     ci varchar(12) not null
          constraint unq_ci
               unique,
     id_usuario_registra integer not null,
     fecha_registra timestamp with time zone not null,
     id_usuario_modifica integer,
     fecha_modifica timestamp with time zone,
     estado integer default 1 not null,
     id_region integer
          constraint "FK_representantes_sp_regiones"
               references seguridad.seg_regiones
);

TRUNCATE TABLE alzada.alz_representantes_sp RESTART IDENTITY CASCADE;