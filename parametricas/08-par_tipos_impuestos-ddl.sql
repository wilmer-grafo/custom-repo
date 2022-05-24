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

comment on table parametricas.par_tipos_super_administracion is 'Tabla que almacena las agrupaciones de administraciones tributarias';
comment on column parametricas.par_tipos_super_administracion.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_super_administracion.descripcion is 'Nombre / descripción del tipo de super administración (grupo de administraciones tributarias)';
comment on column parametricas.par_tipos_super_administracion.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_super_administracion.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_super_administracion.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';

alter table parametricas.par_tipos_super_administracion owner to postgres;

INSERT INTO parametricas.par_tipos_super_administracion (descripcion, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('S.I.N.', 1, now(), null, null);
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ADUANA', 1, now(), null, null);
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS MUNICIPALES', 1, now(), null, null);
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS DEPARTAMENTALES', 1, now(), null, null);

-- TSS_IMPUESTOS
create table parametricas.par_tipos_impuestos
(
    id integer generated always as identity
        constraint par_tipos_impuestos_pkey
            primary key,
    descripcion varchar(100) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    id_super_administracion integer not null
        constraint "FK_tipos_impuesto_super_administracion"
            references parametricas.par_tipos_super_administracion
);

comment on table parametricas.par_tipos_impuestos is 'Nombre / descripción del tipo de impuesto';
comment on column parametricas.par_tipos_impuestos.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_impuestos.descripcion is 'Nombre / descripción del tipo de impuesto';
comment on column parametricas.par_tipos_impuestos.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_impuestos.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_impuestos.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_impuestos.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_impuestos.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column parametricas.par_tipos_impuestos.id_super_administracion is 'llave foranea con la tabla par_tipos_super_administracion';

alter table parametricas.par_tipos_impuestos owner to postgres;

TRUNCATE TABLE parametricas.par_tipos_impuestos RESTART IDENTITY CASCADE;

INSERT INTO parametricas.par_tipos_impuestos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, id_super_administracion) VALUES ('(MULTAS)', 1, 1, '2022-05-24 09:12:31.014000 -04:00', null, null, 2);
INSERT INTO parametricas.par_tipos_impuestos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, id_super_administracion) VALUES ('(MULTAS)', 1, 1, '2022-05-24 09:13:06.798000 -04:00', null, null, 3);
INSERT INTO parametricas.par_tipos_impuestos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, id_super_administracion) VALUES ('(MULTAS)', 1, 1, '2022-05-24 09:14:02.260000 -04:00', null, null, 4);

