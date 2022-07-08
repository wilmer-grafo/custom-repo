SELECT (CASE
            WHEN LEN(LTRIM(RTRIM(ct.id_exp))) > 20 THEN
                (SELECT id
                 FROM recursos AS r
                 WHERE r.numero_recurso_alzada =
                       SUBSTRING(LTRIM(RTRIM(ct.id_exp)), 0, CHARINDEX('//', LTRIM(RTRIM(ct.id_exp)))))
            ELSE
                (SELECT id FROM recursos AS r WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ct.id_exp)))
    END)                              AS id_recurso_alzada,
       NULL                           AS id_recurso_jerarquico,
       2                              AS id_region_recepcion,
       (CASE
            WHEN (ct.motivo = 54 OR ct.motivo = 52) THEN 7
            WHEN (ct.motivo = 6 OR
                  ct.motivo = 22 OR
                  ct.motivo = 31 OR
                  ct.motivo = 57 OR
                  ct.motivo = 58
                ) THEN 15
            WHEN (ct.motivo = 24 OR
                  ct.motivo = 61 OR
                  ct.motivo = 15 OR
                  ct.motivo = 60 OR
                  ct.motivo = 75
                ) THEN 29
            WHEN (ct.motivo = 48 OR ct.motivo = 49 OR ct.motivo = 109) THEN 30
            WHEN (ct.motivo = 86 OR ct.motivo = 87 OR ct.motivo = 92) THEN 27
            WHEN (ct.motivo = 23 OR ct.motivo = 97) THEN 10
            WHEN (ct.motivo = 1) THEN 34
            WHEN (ct.motivo = 36) THEN 39
            WHEN (ct.motivo = 21) THEN 40
            WHEN (ct.motivo = 64) THEN 47
            WHEN (ct.motivo = 53 OR
                  ct.motivo = 76 OR
                  ct.motivo = 88 OR
                  ct.motivo = 89 OR
                  ct.motivo = 90 OR
                  ct.motivo = 106
                ) THEN 48
            WHEN (ct.motivo = 38 OR
                  ct.motivo = 26 OR
                  ct.motivo = 29 OR
                  ct.motivo = 32 OR
                  ct.motivo = 42 OR
                  ct.motivo = 43 OR
                  ct.motivo = 44 OR
                  ct.motivo = 47 OR
                  ct.motivo = 56 OR
                  ct.motivo = 59 OR
                  ct.motivo = 70
                ) THEN 50
            WHEN (ct.motivo = 7 OR ct.motivo = 83) THEN 55
            WHEN (ct.motivo = 18 OR
                  ct.motivo = 73 OR
                  ct.motivo = 74 OR
                  ct.motivo = 77
                ) THEN 53
            WHEN (ct.motivo = 8 OR
                  ct.motivo = 40 OR
                  ct.motivo = 46 OR
                  ct.motivo = 78 OR
                  ct.motivo = 82 OR
                  ct.motivo = 98
                ) THEN 54
            WHEN (ct.motivo = 4) THEN 57
            WHEN (ct.motivo = 5) THEN 2
            WHEN (ct.motivo = 45) THEN 59
            WHEN (ct.motivo = 30) THEN 17
            WHEN (ct.motivo = 13) THEN 18
            WHEN (ct.motivo = 16 OR ct.motivo = 34) THEN 1
            WHEN (ct.motivo = 3 OR ct.motivo = 93) THEN 24
            WHEN (ct.motivo = 66) THEN 26
            WHEN (ct.motivo = 81 OR ct.motivo = 91) THEN 9
            WHEN (ct.motivo = 96 OR
                  ct.motivo = 27 OR
                  ct.motivo = 28 OR
                  ct.motivo = 33 OR
                  ct.motivo = 55 OR
                  ct.motivo = 84 OR
                  ct.motivo = 99 OR
                  ct.motivo = 110 OR
                  ct.motivo = 111 OR
                  ct.motivo = 65 OR
                  ct.motivo = 71 OR
                  ct.motivo = 72 OR
                  ct.motivo = 85 OR
                  ct.motivo = 94
                ) THEN 62
            WHEN (ct.motivo = 9) THEN 3
            WHEN (ct.motivo = 41 OR
                  ct.motivo = 62 OR
                  ct.motivo = 63 OR
                  ct.motivo = 67 OR
                  ct.motivo = 68
                ) THEN 6
            WHEN (ct.motivo = 39) THEN 67
            WHEN (ct.motivo = 10) THEN 65
            WHEN (ct.motivo = 69) THEN 68
            WHEN (ct.motivo = 11 OR
                  ct.motivo = 35 OR
                  ct.motivo = 100 OR
                  ct.motivo = 101 OR
                  ct.motivo = 102 OR
                  ct.motivo = 103 OR
                  ct.motivo = 104 OR
                  ct.motivo = 105 OR
                  ct.motivo = 25 OR
                  ct.motivo = 37 OR
                  ct.motivo = 50 OR
                  ct.motivo = 51
                ) THEN 13
            WHEN (ct.motivo = 14) THEN 73
            WHEN (ct.motivo = 79 OR
                  ct.motivo = 80 OR
                  ct.motivo = 95 OR
                  ct.motivo = 107 OR
                  ct.motivo = 108
                ) THEN 74
            WHEN (ct.motivo = 2) THEN 14
            ELSE ct.motivo
           END)                       AS id_motivo_memorial,
       ct.f_recep                     AS fecha_recepcion,
       1                              AS id_medio_recepcion,
       LTRIM(RTRIM(ct.observaciones)) AS observaciones,
       ct.fojas                       AS fojas,
       NULL                           AS ruta_documento,
       LTRIM(RTRIM(ct.codigo))        AS codigo_generado,
       NULL                           AS id_region_destino,
       NULL                           AS fecha_remision,
       NULL                           AS cite_remision,
       NULL                           AS id_actuaciones,
       ct.f_respuesta                 AS fecha_respuesta,
       20                             AS estado,
       1                              AS id_usuario_registra,
       GETDATE()                      AS fecha_registra,
       NULL                           AS id_usuario_modifica,
       NULL                           AS fecha_modifica,
       NULL                           AS qr_nombre,
       NULL                           AS qr_ruta,
       NULL                           AS motivo_edita_elimina,
       NULL                           AS presentado_por,
       NULL                           AS fecha_recepcion_radicatoria,
       NULL                           AS id_usuario_confirma_radicatoria,
       NULL                           AS id_usuario_registra_agit,
       NULL                           AS fecha_registra_agit,
       NULL                           AS observaciones_agit,
       NULL                           AS id_usuario_remite,
       NULL                           AS observaciones_confirma_radicatoria
FROM reg_memorial ct
WHERE (LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2021%' OR
       LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-%-%/2022%')
  AND ct.estado > 0
ORDER BY ct.id;
