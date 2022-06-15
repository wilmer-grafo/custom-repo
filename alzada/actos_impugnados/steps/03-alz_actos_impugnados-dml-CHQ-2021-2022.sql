SELECT ra.N_Codigo_Acto          AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero)) AS numero_acto,
       NULL                      AS cite_acto,
       ra.D_Fecha_Emision        AS fecha_emision,
       ra.D_Fecha_Notificacion   AS fecha_notificacion,
       1                         AS estado,
       1                         AS id_usuario_registra,
       GETDATE()                 AS fecha_registra,
       NULL                      AS id_usuario_modifica,
       NULL                      AS fecha_modifica,
       (CASE
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0001/2021' THEN 6350
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0001/2022' THEN 6351
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0002/2021' THEN 6363
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0002/2022' THEN 6364
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0003/2021' THEN 6377
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0003/2022' THEN 6378
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0004/2021' THEN 6390
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0004/2022' THEN 6391
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0005/2021' THEN 6403
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0005/2022' THEN 6404
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0006/2021' THEN 6416
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0006/2022' THEN 6417
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0007/2021' THEN 6430
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0008/2021' THEN 6442
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0009/2021' THEN 6456
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0010/2021' THEN 6468
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0011/2021' THEN 6480
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0012/2021' THEN 6493
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0013/2021' THEN 6506
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0014/2021' THEN 6519
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0015/2021' THEN 6533
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0016/2021' THEN 6546
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0016/2021-1' THEN 6547
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0017/2021' THEN 6562
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0017/2021-1' THEN 6563
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0018/2021' THEN 6578
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0019/2021' THEN 6596
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0020/2021' THEN 6610
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0021/2021' THEN 6624
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0021/2021-1' THEN 6625
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0022/2021' THEN 6639
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0023/2021' THEN 6652
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0024/2021' THEN 6664
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0025/2021' THEN 6677
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0026/2021' THEN 6690
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0026/2021-1' THEN 6691
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0027/2021' THEN 6704
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0027/2021-1' THEN 6705
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0028/2021' THEN 6719
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0029/2021' THEN 6733
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0030/2021' THEN 6746
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0031/2021' THEN 6759
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0032/2021' THEN 6772
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0033/2021' THEN 6788
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0034/2021' THEN 6801
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0034/2021-1' THEN 6802
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-CHQ-0035/2021' THEN 6815
           END)                  AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%')
ORDER BY ra.C_Nro_Expediente;
