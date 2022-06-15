EJEMPLO

SELECT (CASE
    END
           )                               AS id_acto_impugnado,
       (CASE
            WHEN ra.N_Codigo_Impuesto = 0 THEN CASE
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'S.I.N.' THEN 73
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'ADUANA' THEN 74
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'GOB. MUNICIPALES' THEN 75
                                                   WHEN (
                                                            SELECT DISTINCT temp.C_Super_Adm_Tri
                                                            FROM (
                                                                     SELECT g.C_Super_Adm_Tri
                                                                     FROM (SELECT TAT.C_Super_Adm_Tri, m.C_Nro_Expediente
                                                                           FROM TSS_MONTOS AS m
                                                                                    INNER JOIN TSS_RECURSOS_ALZADA TRA on m.C_Nro_Expediente = TRA.C_Nro_Expediente
                                                                                    INNER JOIN TSS_SUBADMINISTRACIONES_TRIBUTARIAS TST
                                                                                               on TST.N_Codigo_Subadm_Tri = TRA.N_Codigo_Subadm_Tri
                                                                                    INNER JOIN TSS_ADMINISTRACIONES_TRIBUTARIAS TAT
                                                                                               on TAT.N_Codigo_Adm_Tri = TST.N_Codigo_Adm_Tri) AS g
                                                                     WHERE g.C_Nro_Expediente = ra.C_Nro_Expediente
                                                                 ) as temp
                                                        ) = 'GOB. DEPARTAMENTALES' THEN 76
                END
            ELSE ra.N_Codigo_Impuesto END) AS id_tipo_impuesto,
       ra.N_Mes                            AS mes,
       ra.N_Gestion                        AS anio,
       ra.N_Monto_Principal                AS monto_principal_admitido,
       ra.N_Monto_Multa                    AS monto_multa_admitido,
       ra.N_Principal_Favor_Adm            AS monto_principal_favor_adm_resuelto,
       ra.N_Multa_Favor_Adm                AS monto_multa_favor_adm_resuelto,
       ra.N_Principal_Favor_Con            AS monto_principal_favor_sp_resuelto,
       ra.N_Multa_Favor_Con                AS monto_multa_favor_sp_resuelto,
       ra.N_Principal_Anula                AS monto_principal_anulatoria_resuelto,
       ra.N_Multa_Anula                    AS monto_multa_anulatoria_resuelto,
       1                                   AS estado,
       1                                   AS id_usuario_registra,
       GETDATE()                           AS fecha_registra,
       NULL                                AS id_usuario_modifica,
       NULL                                AS fecha_modifica,
       1                                   AS tipo_moneda,
       1                                   AS tipo_moneda_resuelto
FROM TSS_MONTOS AS ra
WHERE C_Nro_Expediente LIKE 'ARIT-SCZ-%/2022%'
ORDER BY ra.C_Nro_Expediente;


1ro get, C_Nro_Expediente, OPCIONAL A MANERA DE VERIFICAR
-------------------------

SELECT temp.C_Nro_Expediente,
       1 AS C_Nro
FROM (SELECT C_Nro_Expediente, N_Codigo_Acto, C_Numero, N_Codigo_Impuesto, N_Mes, N_Gestion
      FROM TSS_MONTOS
      WHERE C_Nro_Expediente LIKE 'ARIT-SCZ-%/2022%'
      GROUP BY C_Nro_Expediente, N_Codigo_Acto, C_Numero, N_Codigo_Impuesto, N_Mes, N_Gestion) AS temp
ORDER BY temp.C_Nro_Expediente;

2do get C_Nro_Expediente y valores en PG, PASO DIRECTO
----------------------------------------
ARMAR CASE:
LTRIM(RTRIM(ra.C_Nro_Expediente))

select (select ra.numero_recurso_alzada
        from alzada.alz_recursos_alzada ra
        where ra.id = temp.id_recurso_alzada) as numero_recurso_alzada,
       temp.id                                as id_acto_impugnado
from (select id_recurso_alzada, id
      from alzada.alz_actos_impugnados
      where id_recurso_alzada in (
          select id
          from alzada.alz_recursos_alzada
          where numero_recurso_alzada ilike 'ARIT-SCZ-%/2022%'
      )) AS temp
order by numero_recurso_alzada;

