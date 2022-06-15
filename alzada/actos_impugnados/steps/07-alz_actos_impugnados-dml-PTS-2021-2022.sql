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
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0001/2021' THEN 25751
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0001/2022' THEN 25752
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0002/2021' THEN 25766
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0002/2022' THEN 25767
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0003/2021' THEN 25779
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0003/2022' THEN 25780
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0004/2021' THEN 25793
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0004/2022' THEN 25794
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0005/2021' THEN 25808
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0005/2022' THEN 25809
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0006/2021' THEN 25822
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0006/2022' THEN 25823
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0007/2021' THEN 25835
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0007/2022' THEN 25836
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0008/2021' THEN 25849
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0008/2022' THEN 25850
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0009/2021' THEN 25863
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0009/2022' THEN 25864
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0010/2021' THEN 25877
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0010/2022' THEN 25878
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0011/2021' THEN 25891
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0011/2022' THEN 25892
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0012/2021' THEN 25904
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0012/2022' THEN 25905
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0013/2021' THEN 25918
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0013/2022' THEN 25919
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0014/2021' THEN 25932
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0014/2022' THEN 25933
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0015/2021' THEN 25946
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0015/2022' THEN 25947
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0016/2021' THEN 25959
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0016/2022' THEN 25960
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0017/2021' THEN 25972
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0017/2021-1' THEN 25973
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0017/2022' THEN 25974
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0018/2021' THEN 25986
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0018/2022' THEN 25987
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0019/2021' THEN 26000
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0019/2022' THEN 26001
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0020/2021' THEN 26015
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0020/2022' THEN 26016
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0021/2021' THEN 26029
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0021/2022' THEN 26030
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0022/2021' THEN 26043
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0022/2022' THEN 26044
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0023/2021' THEN 26058
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0023/2022' THEN 26059
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0024/2021' THEN 26071
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0024/2022' THEN 26072
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0025/2021' THEN 26086
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0025/2022' THEN 26087
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0026/2021' THEN 26101
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0026/2022' THEN 26102
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0027/2021' THEN 26115
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0027/2022' THEN 26116
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0028/2021' THEN 26129
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0028/2022' THEN 26130
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0029/2021' THEN 26143
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0029/2022' THEN 26144
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0030/2021' THEN 26157
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0030/2022' THEN 26158
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0031/2021' THEN 26171
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0031/2022' THEN 26172
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0032/2021' THEN 26185
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0032/2022' THEN 26186
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0033/2021' THEN 26199
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0033/2022' THEN 26200
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0034/2021' THEN 26213
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0034/2022' THEN 26214
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0035/2021' THEN 26228
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0035/2022' THEN 26229
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0036/2021' THEN 26247
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0036/2022' THEN 26248
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0037/2021' THEN 26261
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0037/2022' THEN 26262
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0038/2021' THEN 26277
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0038/2022' THEN 26278
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0039/2021' THEN 26291
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0039/2022' THEN 26292
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0040/2021' THEN 26305
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0040/2022' THEN 26306
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0041/2021' THEN 26320
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0041/2021-1' THEN 26321
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0041/2022' THEN 26322
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0042/2021' THEN 26337
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0042/2022' THEN 26338
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0043/2021' THEN 26351
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0043/2022' THEN 26352
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0044/2021' THEN 26366
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0044/2021-1' THEN 26367
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0044/2022' THEN 26368
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0045/2021' THEN 26380
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0045/2022' THEN 26381
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0046/2021' THEN 26395
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0046/2022' THEN 26396
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0047/2021' THEN 26409
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0047/2022' THEN 26410
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0048/2021' THEN 26421
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0048/2022' THEN 26422
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0049/2021' THEN 26434
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0049/2022' THEN 26435
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0050/2021' THEN 26450
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0051/2021' THEN 26463
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0052/2021' THEN 26474
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0053/2021' THEN 26486
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0054/2021' THEN 26498
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0055/2021' THEN 26510
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0056/2021' THEN 26522
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0057/2021' THEN 26535
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0058/2021' THEN 26547
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0059/2021' THEN 26561
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0060/2021' THEN 26574
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0061/2021' THEN 26585
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0062/2021' THEN 26596
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0063/2021' THEN 26607
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0064/2021' THEN 26620
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0065/2021' THEN 26631
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0066/2021' THEN 26644
            WHEN LTRIM(RTRIM(ra.C_Nro_Expediente)) = 'ARIT-PTS-0067/2021' THEN 26657
           END)                  AS id_recurso_alzada,
       NULL                      AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%')
ORDER BY ra.C_Nro_Expediente;
