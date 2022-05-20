-- parametricas.par_tipos_articulos
INSERT INTO parametricas.par_tipos_articulos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('el', 1, 1, '2021-11-03 04:00:00.000000', 2, '2021-11-26 20:12:14.000000');
INSERT INTO parametricas.par_tipos_articulos (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('la', 1, 1, '2021-11-08 21:07:39.000000', 2, '2021-11-26 20:12:20.000000');

-- parametricas.par_tipos_preposicion
INSERT INTO parametricas.par_tipos_preposicion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('del', 1, 1, current_timestamp, 2, '2021-11-26 16:14:07');
INSERT INTO parametricas.par_tipos_preposicion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('de la', 1, 1, current_timestamp, 2, '2021-11-26 16:14:19');

-- parametricas.par_tipos_super_administracion
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('S.I.N.', 1, 1, '2021-11-03 04:00:00.000000', 2, '2021-11-26 20:06:53.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS MUNICIPALES', 1, 1, '2021-11-11 21:03:40.000000', 2, '2021-11-26 20:07:33.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('ADUANA', 1, 1, '2021-11-08 20:40:19.000000', 2, '2021-11-26 20:10:55.000000');
INSERT INTO parametricas.par_tipos_super_administracion (descripcion, activo, id_usuario_registra, fecha_registra, id_usuario_modifica, fecha_modifica) VALUES ('GOBIERNOS DEPARTAMENTALES', 1, 1, '2021-11-18 21:11:15.000000', 2, '2021-11-26 20:07:45.000000');


SELECT
    fk.name 'FK Name',
    tp.name 'Parent table',
    cp.name, cp.column_id,
    tr.name 'Refrenced table',
    cr.name, cr.column_id
FROM 
    sys.foreign_keys fk
INNER JOIN 
    sys.tables tp ON fk.parent_object_id = tp.object_id
INNER JOIN 
    sys.tables tr ON fk.referenced_object_id = tr.object_id
INNER JOIN 
    sys.foreign_key_columns fkc ON fkc.constraint_object_id = fk.object_id
INNER JOIN 
    sys.columns cp ON fkc.parent_column_id = cp.column_id AND fkc.parent_object_id = cp.object_id
INNER JOIN 
    sys.columns cr ON fkc.referenced_column_id = cr.column_id AND fkc.referenced_object_id = cr.object_id
	WHERE tp.name = 'TSS_RECURSOS_ALZADA'
ORDER BY
    tp.name, cp.column_id;