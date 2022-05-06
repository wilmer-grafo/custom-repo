--parametricas.par_motivos_feriados
create table parametricas.par_motivos_feriados
(
    id integer generated always as identity
        constraint par_motivos_feriados_pkey
            primary key,
    descripcion varchar(100) not null,
    activo integer default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_motivos_feriados is 'Tabla que almacena los motivos de los feriados';
comment on column parametricas.par_motivos_feriados.id is 'Llave primaria de la tabla';
comment on column parametricas.par_motivos_feriados.descripcion is 'Nombre / descripción del feriado';
comment on column parametricas.par_motivos_feriados.activo is 'Estado del registro 0=INactivo 1=Activo';
comment on column parametricas.par_motivos_feriados.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_motivos_feriados.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_motivos_feriados.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_motivos_feriados.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_motivos_feriados owner to postgres;
-- DML
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ANIVERSARIO DEPARTAMENTAL', 1, 1, '2021-11-09 15:09:03.000000', 2, '2021-11-18 20:14:37.000000');
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('TODOS SANTOS', 1, 1, '2021-11-18 20:12:53.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('AÑO NUEVO ANDINO', 1, 1, '2021-12-03 15:18:19.058860', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ESTADO PLURINACIONAL DE BOLIVIA', 1, 1, '2021-12-23 04:00:00.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EFEMERIDES DEPARTAMENTAL', 1, 1, '2021-12-23 19:50:29.000000', 2, '2021-12-23 20:17:30.000000');
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EMERGENCIA SANITARIA NACIONAL', 1, 1, '2021-12-23 19:50:37.000000', 2, '2021-12-23 20:17:51.000000');
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EFEMERIDES DEPARTAMENTAL PANDO', 1, 1, '2021-12-23 19:50:43.000000', 2, '2021-12-23 20:18:11.000000');
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ANIVERSARIO CIVICO DE POTOSI', 1, 1, '2021-12-23 19:51:38.000000', 2, '2021-12-23 20:18:28.000000');
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DE LA PATRIA', 1, 1, '2021-12-23 20:19:00.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ANIVERSARIO FUNDACION CHUQUISACA', 1, 1, '2021-12-23 20:19:11.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ORDENANZA DEPARTAMENTAL PARADA MILITAR SUCRE', 1, 1, '2021-12-23 20:19:36.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('AMPLIACIÓN AL 6 DE AGOSTO', 1, 1, '2021-12-23 20:19:47.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('TODOS LOS SANTOS', 1, 1, '2021-12-23 20:19:59.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EMERGENCIA REGIONAL', 1, 1, '2021-12-23 20:20:10.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('FERIADO CIVICO DPTAL.ORURO', 1, 1, '2021-12-23 20:20:25.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CORPUS CRISTI', 1, 1, '2021-12-23 20:20:38.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EMERGENCIA SANITARIA NACIONAL DS4278', 1, 1, '2021-12-23 20:20:59.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DE ORURO', 1, 1, '2021-12-23 20:21:06.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CORPUS CHRISTI', 1, 1, '2021-12-23 20:21:30.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EFEMERIDES DE SUCRE', 1, 1, '2021-12-23 20:21:42.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('BICENTENARIO', 1, 1, '2021-12-23 20:21:49.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CARNAVAL', 1, 1, '2021-12-23 20:22:23.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DE LA INDEPENDENCIA', 1, 1, '2021-12-23 20:22:33.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CREACIÓN DEL ESTADO PLURINACIONAL', 1, 1, '2021-12-23 20:22:39.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('AÑO NUEVO AYMARA', 1, 1, '2021-12-23 20:22:47.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ENCAPSULAMIENTO', 1, 1, '2021-12-23 20:22:57.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('R.A. AGIT/0038/2010 DE 17/08/2010', 1, 1, '2021-12-23 20:23:20.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CARNAVALES', 1, 1, '2021-12-23 20:23:30.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('VIERNES SANTO', 1, 1, '2021-12-23 20:23:35.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ANIVERSARIO DE CHUQUISACA', 1, 1, '2021-12-23 20:23:43.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ESTADO PLURINACIONAL', 1, 1, '2021-12-23 20:25:13.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('NAVIDAD', 1, 1, '2021-12-23 20:25:19.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DEL TRABAJO', 1, 1, '2021-12-23 20:25:25.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DEL TRABAJADOR', 1, 1, '2021-12-23 20:25:36.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('FERIADO REGIONAL COCHABAMBA', 1, 1, '2021-12-23 20:25:43.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('FERIADO CIVICO DPTAL.', 1, 1, '2021-12-23 20:25:51.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('EMERGENCIA SANITARIA NACIONAL DS4278 DM0018/2020', 1, 1, '2021-12-23 20:49:08.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('VISITA DEL PAPA FRANCISCO', 1, 1, '2021-12-23 20:49:13.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('FERIADO DE NAVIDAD', 1, 1, '2021-12-23 20:49:18.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('AÑO NUEVO', 1, 1, '2021-12-23 20:49:24.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DE LA PAZ', 1, 1, '2021-12-23 20:49:30.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ANIVERSARIO CIVICO DE CHUQUISACA', 1, 1, '2021-12-23 20:49:36.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('CENSO NACIONAL DE PABLACIONES', 1, 1, '2021-12-23 20:49:42.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('DIA DE LOS DIFUNTOS', 1, 1, '2021-12-23 20:49:48.000000', null, null);
INSERT INTO parametricas.par_motivos_feriados (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('PRUEBA', 0, 1, '2022-02-01 04:00:00.000000', null, null);

-- seguridad.seg_regiones
create table seguridad.seg_regiones
(
    id integer generated by default as identity
        constraint regiones_pkey
            primary key,
    descripcion varchar(20) not null,
    abreviatura varchar(10) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    tipo integer,
    orden integer
);
-- COMMENTS
comment on table seguridad.seg_regiones is 'Tabla que almacena la información de las regiones (departamentos) del país';
comment on column seguridad.seg_regiones.id is 'Llave primaria de la tabla';
comment on column seguridad.seg_regiones.descripcion is 'Nombre de la región';
comment on column seguridad.seg_regiones.abreviatura is 'Abreviatura que representa a la región';
comment on column seguridad.seg_regiones.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column seguridad.seg_regiones.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column seguridad.seg_regiones.fecha_registra is 'Fecha en la que se registra la información';
comment on column seguridad.seg_regiones.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column seguridad.seg_regiones.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column seguridad.seg_regiones.tipo is '1 = Regional, 2=Departamental, 3=General';
comment on column seguridad.seg_regiones.orden is 'Orden para las vistas';
-- DDL
alter table seguridad.seg_regiones owner to postgres;
-- DML
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (1, 'CHUQUISACA', 'CHQ', 1, 1, '2021-10-28 21:45:24.000000', null, null, 1, 4);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (2, 'LA PAZ', 'LPZ', 1, 1, '2021-10-28 21:45:24.000000', 2, '2021-11-30 17:55:01.000000', 1, 1);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (3, 'COCHABAMBA', 'CBA', 1, 1, '2021-10-28 21:45:24.000000', null, null, 1, 3);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (4, 'SANTA CRUZ', 'SCZ', 1, 1, '2021-10-29 20:59:51.000000', null, null, 1, 2);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (5, 'POTOSI', 'PTS', 1, 1, '2021-10-28 21:45:24.000000', null, null, 2, 6);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (6, 'ORURO', 'ORU', 1, 1, '2021-11-04 02:39:24.000000', 2, '2021-11-30 17:56:31.000000', 2, 5);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (7, 'TARIJA', 'TJA', 1, 1, '2021-11-04 14:47:27.000000', null, null, 2, 7);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (8, 'BENI', 'BEN', 1, 1, '2021-11-19 00:10:08.000000', 2, '2021-11-22 22:21:56.000000', 2, 9);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (9, 'PANDO', 'PND', 1, 1, '2021-11-30 17:55:43.000000', null, null, 2, 8);
INSERT INTO seguridad.seg_regiones (id, descripcion, abreviatura, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica, tipo, orden) VALUES (10, 'AGIT', 'AGIT', 1, 1, '2021-10-28 21:45:24.000000', null, null, 3, 10);

