-- TSS_ACTOS_IMPUGNADOS
create table alzada.alz_actos_impugnados
(
    id integer generated always as identity
        constraint alz_actos_impugnados_pkey
            primary key,
    id_tipo_acto integer not null
        constraint "FK_actos_tipos_actos"
            references parametricas.par_tipos_actos,
    numero_acto varchar(100) not null,
    cite_acto varchar(100),
    fecha_emision timestamp with time zone,
    fecha_notificacion timestamp with time zone,
    estado integer default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    id_recurso_alzada integer not null
        constraint "FK_recursos_actos"
            references alzada.alz_recursos_alzada,
    observaciones text
);

comment on table alzada.alz_actos_impugnados is 'Tabla que almacena los actos impugnados en un recurso de alzada';
comment on column alzada.alz_actos_impugnados.id is 'Llave primaria de la tabla';
comment on column alzada.alz_actos_impugnados.id_tipo_acto is 'Identificador del tipo de acto impugnado';
comment on column alzada.alz_actos_impugnados.numero_acto is 'Numero del acto impugnado';
comment on column alzada.alz_actos_impugnados.cite_acto is 'Cite que se presenta en algunos actos impugnados';
comment on column alzada.alz_actos_impugnados.fecha_emision is 'Fecha de emisión del acto impugnado';
comment on column alzada.alz_actos_impugnados.fecha_notificacion is 'Fecha de notificación del acto impugnado';
comment on column alzada.alz_actos_impugnados.estado is 'Estado del acto impugnado';
comment on column alzada.alz_actos_impugnados.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column alzada.alz_actos_impugnados.fecha_registra is 'Fecha en la que se registra la información';
comment on column alzada.alz_actos_impugnados.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column alzada.alz_actos_impugnados.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';

alter table alzada.alz_actos_impugnados owner to postgres;

