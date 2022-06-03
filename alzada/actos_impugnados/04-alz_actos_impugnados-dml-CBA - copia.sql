SELECT *
FROM (SELECT N_Codigo_Acto        AS id_tipo_acto,
             C_Numero             AS numero_acto,
             NULL                 AS cite_acto,
             D_Fecha_Emision      AS fecha_emision,
             D_Fecha_Notificacion AS fecha_notificacion,
             1                    AS estado,
             1                    AS id_usuario_registra,
             GETDATE()            AS fecha_registra,
             NULL                 AS id_usuario_modifica,
             NULL                 AS fecha_modifica,
             (CASE
                 END)             AS id_recurso_alzada,
             NULL                 AS observaciones
      FROM TSS_ACTOS_IMPUGNADOS AS ra
      WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%') AS temp
WHERE temp.id_recurso_alzada IS NOT NULL;
