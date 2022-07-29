truncate table jerarquico.jer_recursos_jerarquicos restart identity;

select pg_get_serial_sequence('jerarquico.jer_recursos_jerarquicos', 'id');

select setval('jerarquico.jer_recursos_jerarquicos_id_seq', 1);
alter sequence jerarquico.jer_recursos_jerarquicos_id_seq restart with 1;



delete from jerarquico.jer_recursos_jerarquicos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_recursos_jerarquicos', 'id'), 1);

delete from jerarquico.jer_solicitudes_procesos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_solicitudes_procesos', 'id'), 1);

delete from jerarquico.jer_trazabilidad_solicitudes_procesos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_trazabilidad_solicitudes_procesos', 'id'), 1);

delete from jerarquico.jer_solicitudes_procesos_motivos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_solicitudes_procesos_motivos', 'id'), 1);

delete from jerarquico.jer_registros_documentales_sustantivos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_registros_documentales_sustantivos', 'id'), 1);

delete from jerarquico.jer_numeros_proyectados
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_numeros_proyectados', 'id'), 1);

delete from jerarquico.jer_reasignaciones
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_reasignaciones', 'id'), 1);

delete from jerarquico.jer_pedidos_expedientes_jerarquico
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_pedidos_expedientes_jerarquico', 'id'), 1);

delete from jerarquico.jer_notas
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_notas', 'id'), 1);

delete from jerarquico.jer_actuaciones
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_actuaciones', 'id'), 1);

delete from jerarquico.jer_notificaciones
where id > 0;

delete from jerarquico.jer_actuaciones_documentos
where id > 0;

-----------------------------------------
-- jerarquico.jer_recursos_jerarquicos --
-----------------------------------------

update jerarquico.jer_recursos_jerarquicos
set fecha_vencimiento = fecha_vencimiento + interval '4 hours';

update jerarquico.jer_recursos_jerarquicos
set fecha_transferencia_archivo = fecha_transferencia_archivo + interval '4 hours';

update jerarquico.jer_recursos_jerarquicos
set fecha_recepcion_archivo = fecha_recepcion_archivo + interval '4 hours';

-------------------------------------------
-- alzada.alz_interposiciones_jerarquico --
-------------------------------------------

delete from alzada.alz_interposiciones_jerarquico
where id > 0;

SELECT setval(pg_get_serial_sequence('alzada.alz_interposiciones_jerarquico', 'id'), 1);

update alzada.alz_interposiciones_jerarquico
set fecha_interpone = fecha_interpone + interval '4 hours';

update alzada.alz_interposiciones_jerarquico
set fecha_remision = fecha_remision + interval '4 hours';

update alzada.alz_interposiciones_jerarquico
set fecha_recepcion_agit = fecha_recepcion_agit + interval '4 hours';


-------------------------------------
-- jerarquico.jer_actos_impugnados --
-------------------------------------

update jerarquico.jer_actos_impugnados
set fecha_emision = fecha_emision + interval '4 hours';

update jerarquico.jer_actos_impugnados
set fecha_notificacion = fecha_notificacion + interval '4 hours';


--------------------------------------
-- jerarquico.jer_montos_jerarquico --
--------------------------------------

delete from jerarquico.jer_montos_jerarquico
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_montos_jerarquico', 'id'), 1);


delete from jerarquico.jer_actuaciones
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_actuaciones', 'id'), 1);



-----------------------------------
-- jerarquico.jer_notificaciones --
-----------------------------------

-- DELETE

delete from jerarquico.jer_notificaciones
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_notificaciones', 'id'), 1);

-- UPDATE

update jerarquico.jer_notificaciones
set fecha_hora_notificacion = fecha_hora_notificacion + interval '4 hours';

update jerarquico.jer_notificaciones
set fecha_actuacion_registro = fecha_actuacion_registro + interval '4 hours';

-------------------------------------------------------
-- jerarquico.jer_registros_documentales_sustantivos --
-------------------------------------------------------

-- DELETE

delete from jerarquico.jer_registros_documentales_sustantivos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_registros_documentales_sustantivos', 'id'), 1);

-- UPDATE

update jerarquico.jer_registros_documentales_sustantivos
set fecha_recepcion = fecha_recepcion + interval '4 hours';

update jerarquico.jer_registros_documentales_sustantivos
set fecha_inicio = fecha_inicio + interval '4 hours';

update jerarquico.jer_registros_documentales_sustantivos
set fecha_deriva = fecha_deriva + interval '4 hours';

-- ANEXOS

delete from jerarquico.jer_registros_documentales_sustantivos_anexos
where id > 0;

SELECT setval(pg_get_serial_sequence('jerarquico.jer_registros_documentales_sustantivos_anexos', 'id'), 1);

------------------------
-- comunes.memoriales --
------------------------

update comunes.memoriales
set fecha_recepcion             = fecha_recepcion + interval '4 hours',
    fecha_remision              = fecha_remision + interval '4 hours',
    fecha_respuesta             = fecha_respuesta + interval '4 hours',
    fecha_recepcion_radicatoria = fecha_recepcion_radicatoria + interval '4 hours',
    fecha_registra_agit         = fecha_registra_agit + interval '4 hours'
where id_recurso_alzada is null;


---------------------------------
-- jerarquico.jer_aclaraciones --
---------------------------------

update jerarquico.jer_aclaraciones
set fecha_liberacion = fecha_liberacion + interval '4 hours',
    fecha_entrega    = fecha_entrega + interval '4 hours';



