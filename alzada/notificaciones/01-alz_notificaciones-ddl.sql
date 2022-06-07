select *
from (SELECT (CASE
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-05 00:00:00.000' THEN 1
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-01-25 00:00:00.000' THEN 2
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-03-26 00:00:00.000' THEN 3
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-04-08 00:00:00.000' THEN 5
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 6
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2011-08-22 00:00:00.000' THEN 7
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 8
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0001/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-06-16 00:00:00.000' THEN 9
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-11 00:00:00.000' THEN 10
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-01-29 00:00:00.000' THEN 11
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 12
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 13
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 14
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0002/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-03-10 00:00:00.000' THEN 15
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0003/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-08 00:00:00.000' THEN 16
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0003/2010' and ra.N_Codigo_Tipo_Auto = 6 and
                       ra.D_Fecha_Emision = '2010-01-29 00:00:00.000' THEN 17
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0003/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-03-11 00:00:00.000' THEN 18
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0003/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-04-07 00:00:00.000' THEN 19
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0004/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-08 00:00:00.000' THEN 20
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0004/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-01-29 00:00:00.000' THEN 21
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0004/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 22
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-08 00:00:00.000' THEN 23
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-01-29 00:00:00.000' THEN 24
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 25
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 26
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-01-15 00:00:00.000' THEN 27
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 28
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0005/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-03-17 00:00:00.000' THEN 29
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-12 00:00:00.000' THEN 30
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-01 00:00:00.000' THEN 31
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-01 00:00:00.000' THEN 32
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-01-15 00:00:00.000' THEN 33
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 34
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 35
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-04-21 00:00:00.000' THEN 36
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-16 00:00:00.000' THEN 37
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-02-23 00:00:00.000' THEN 38
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0006/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 39
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0007/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-01-21 00:00:00.000' THEN 40
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0007/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-01-12 00:00:00.000' THEN 41
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-19 00:00:00.000' THEN 42
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-10 00:00:00.000' THEN 43
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 44
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-03-16 00:00:00.000' THEN 45
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-03-01 00:00:00.000' THEN 46
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 28 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 47
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 48
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-01 00:00:00.000' THEN 49
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 50
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 51
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-10 00:00:00.000' THEN 52
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0008/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 53
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0009/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-01-19 00:00:00.000' THEN 54
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0009/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-02-10 00:00:00.000' THEN 55
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0009/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 56
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-21 00:00:00.000' THEN 57
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-10 00:00:00.000' THEN 58
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-08 00:00:00.000' THEN 59
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-05-06 00:00:00.000' THEN 60
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 61
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0010/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 63
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0011/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-02-04 00:00:00.000' THEN 64
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0011/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-01-21 00:00:00.000' THEN 65
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-26 00:00:00.000' THEN 66
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-12 00:00:00.000' THEN 67
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-15 00:00:00.000' THEN 68
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 69
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-03-15 00:00:00.000' THEN 70
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 71
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 26 and
                       ra.D_Fecha_Emision = '2010-02-26 00:00:00.000' THEN 72
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 49 and
                       ra.D_Fecha_Emision = '2010-05-05 00:00:00.000' THEN 73
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 74
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-02-23 00:00:00.000' THEN 75
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-02-26 00:00:00.000' THEN 76
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 77
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-04-06 00:00:00.000' THEN 78
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0012/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-03-15 00:00:00.000' THEN 79
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-26 00:00:00.000' THEN 80
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-18 00:00:00.000' THEN 81
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 82
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 83
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 85
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0013/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2018-04-23 00:00:00.000' THEN 86
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-01-28 00:00:00.000' THEN 87
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-12 00:00:00.000' THEN 88
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-16 00:00:00.000' THEN 89
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 90
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 91
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0014/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-02-08 00:00:00.000' THEN 92
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-02 00:00:00.000' THEN 93
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 94
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 95
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 96
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-03-16 00:00:00.000' THEN 97
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0015/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 98
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0016/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-04 00:00:00.000' THEN 99
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0016/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-02-24 00:00:00.000' THEN 100
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0016/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 101
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0016/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 102
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0016/2010' and ra.N_Codigo_Tipo_Auto = 57 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 103
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-02-04 00:00:00.000' THEN 104
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 105
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 106
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 107
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 109
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0017/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-03-24 00:00:00.000' THEN 110
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0018/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-09 00:00:00.000' THEN 111
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0018/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 112
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0018/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 113
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-10 00:00:00.000' THEN 115
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 116
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-29 00:00:00.000' THEN 117
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 118
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-02-17 00:00:00.000' THEN 119
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-03-31 00:00:00.000' THEN 120
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-03-16 00:00:00.000' THEN 121
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 122
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2012-01-12 00:00:00.000' THEN 123
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0019/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 124
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0020/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-18 00:00:00.000' THEN 125
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0020/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 126
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0020/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-04-27 00:00:00.000' THEN 127
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0020/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 128
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0020/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2014-03-28 00:00:00.000' THEN 129
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-02-18 00:00:00.000' THEN 130
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 131
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-07 00:00:00.000' THEN 132
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 133
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-04-08 00:00:00.000' THEN 134
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 135
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-06-23 00:00:00.000' THEN 136
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-04-18 00:00:00.000' THEN 137
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0021/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-26 00:00:00.000' THEN 138
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-02-26 00:00:00.000' THEN 139
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 140
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 141
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 142
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 144
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0022/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-03-24 00:00:00.000' THEN 145
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 146
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 147
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 148
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-04-26 00:00:00.000' THEN 149
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 151
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0023/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 152
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 153
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 154
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 155
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 156
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 157
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 158
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0024/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 159
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 160
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 161
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 162
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 163
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 164
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-03-29 00:00:00.000' THEN 165
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0025/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 166
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0026/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-03-02 00:00:00.000' THEN 167
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0026/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 168
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0026/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-03-17 00:00:00.000' THEN 169
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0026/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 170
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0027/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-05 00:00:00.000' THEN 171
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0027/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 172
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0027/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-13 00:00:00.000' THEN 173
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0027/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 174
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0027/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-03-09 00:00:00.000' THEN 175
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-19 00:00:00.000' THEN 176
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 177
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-28 00:00:00.000' THEN 178
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 179
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 180
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 181
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 182
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 183
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0028/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 184
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 185
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-12 00:00:00.000' THEN 186
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-05-28 00:00:00.000' THEN 187
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 188
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-03-26 00:00:00.000' THEN 189
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 190
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 191
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 192
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 193
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0029/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-26 00:00:00.000' THEN 194
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-23 00:00:00.000' THEN 195
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 196
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 197
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 198
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 200
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 201
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 202
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0030/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 203
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0031/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 204
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0031/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-04-08 00:00:00.000' THEN 205
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 206
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-06 00:00:00.000' THEN 207
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 208
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 209
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 211
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 212
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0032/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 213
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 214
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 215
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 216
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-18 00:00:00.000' THEN 217
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 218
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 219
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 220
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0033/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 221
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 222
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-08 00:00:00.000' THEN 223
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-27 00:00:00.000' THEN 224
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 225
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-07-08 00:00:00.000' THEN 226
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 228
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0034/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 229
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 230
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 231
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 232
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 233
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 234
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 235
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 236
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0035/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 237
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 238
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 239
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 240
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 241
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 242
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 243
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 244
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 245
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 246
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0036/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 247
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 248
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 249
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 250
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 251
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 252
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 253
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 254
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0037/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 255
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-25 00:00:00.000' THEN 256
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 257
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-04-22 00:00:00.000' THEN 258
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 259
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 261
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 262
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 263
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0038/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 264
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 265
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-07 00:00:00.000' THEN 266
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 267
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 268
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 270
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 271
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 272
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0039/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 273
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 274
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-06 00:00:00.000' THEN 275
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-28 00:00:00.000' THEN 276
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 277
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 278
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-04-12 00:00:00.000' THEN 279
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 280
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 281
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0040/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 282
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0041/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 283
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0041/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-05 00:00:00.000' THEN 284
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0041/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 285
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0041/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 286
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0041/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 287
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0042/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 289
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0042/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-03-30 00:00:00.000' THEN 290
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-01 00:00:00.000' THEN 291
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 292
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-18 00:00:00.000' THEN 293
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 294
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 295
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 296
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0043/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-07-07 00:00:00.000' THEN 297
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0044/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 298
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0045/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-09 00:00:00.000' THEN 299
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0045/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-04-26 00:00:00.000' THEN 300
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0045/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 301
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0045/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 302
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0045/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 304
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 305
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 306
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-02 00:00:00.000' THEN 307
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 308
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-06-04 00:00:00.000' THEN 309
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 310
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 311
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 312
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 313
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 314
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0046/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 315
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 316
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-19 00:00:00.000' THEN 317
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-06 00:00:00.000' THEN 318
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-08 00:00:00.000' THEN 319
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-04 00:00:00.000' THEN 320
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0047/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-04 00:00:00.000' THEN 321
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0048/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 322
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-13 00:00:00.000' THEN 323
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-20 00:00:00.000' THEN 324
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 325
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-01 00:00:00.000' THEN 326
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 327
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 328
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-06-04 00:00:00.000' THEN 329
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 330
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 331
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-05-26 00:00:00.000' THEN 332
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 333
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 334
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 335
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 336
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 337
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-22 00:00:00.000' THEN 338
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 339
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-17 00:00:00.000' THEN 340
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0049/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 341
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-16 00:00:00.000' THEN 342
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-26 00:00:00.000' THEN 343
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 344
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-12 00:00:00.000' THEN 345
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-04 00:00:00.000' THEN 346
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2011-01-12 00:00:00.000' THEN 348
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 349
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0050/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 350
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-16 00:00:00.000' THEN 351
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-04-27 00:00:00.000' THEN 352
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 353
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-16 00:00:00.000' THEN 354
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-04-30 00:00:00.000' THEN 356
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 357
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-23 00:00:00.000' THEN 358
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0051/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 359
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0052/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-05-07 00:00:00.000' THEN 360
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0052/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-23 00:00:00.000' THEN 361
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0052/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-05-20 00:00:00.000' THEN 362
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-29 00:00:00.000' THEN 363
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-11 00:00:00.000' THEN 364
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 365
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 366
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 367
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 368
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-23 00:00:00.000' THEN 370
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0053/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 371
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-04-29 00:00:00.000' THEN 372
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-11 00:00:00.000' THEN 373
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 374
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 375
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 376
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 378
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-23 00:00:00.000' THEN 379
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0054/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 380
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-04 00:00:00.000' THEN 381
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 382
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 383
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 384
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-06-29 00:00:00.000' THEN 385
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-05-06 00:00:00.000' THEN 387
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0055/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 388
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-11 00:00:00.000' THEN 389
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 390
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-22 00:00:00.000' THEN 391
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 392
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 394
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-22 00:00:00.000' THEN 395
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0056/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 396
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-11 00:00:00.000' THEN 397
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-05-31 00:00:00.000' THEN 398
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-23 00:00:00.000' THEN 399
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 400
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 401
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-23 00:00:00.000' THEN 402
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 403
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 404
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 405
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-04 00:00:00.000' THEN 406
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-29 00:00:00.000' THEN 407
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0057/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-07-07 00:00:00.000' THEN 408
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0058/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-05-28 00:00:00.000' THEN 409
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0058/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 410
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0059/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-05-27 00:00:00.000' THEN 411
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0059/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-05-14 00:00:00.000' THEN 412
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 413
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 414
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 415
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 416
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 417
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 418
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 419
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 420
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0060/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-07 00:00:00.000' THEN 421
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 422
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 423
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 424
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 425
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 426
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0061/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 427
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 428
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 429
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 430
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 431
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 432
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0062/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 433
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 434
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 435
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 436
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 437
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 438
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0063/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 439
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 440
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 441
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 442
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 443
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 444
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0064/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 445
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 446
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 447
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 448
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 449
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 450
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0065/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 451
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 452
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 453
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 454
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 455
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 456
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0066/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 457
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 458
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 459
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 460
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 461
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 462
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0067/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 463
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 464
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 465
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 466
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 467
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 468
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0068/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 469
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 470
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 471
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 472
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 473
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 474
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0069/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 475
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 476
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 477
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 478
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 479
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 480
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0070/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 481
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 482
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 483
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 484
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 485
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 486
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0071/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 487
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 488
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 489
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 490
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 491
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 492
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0072/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 493
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 494
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 495
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 496
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 497
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 498
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0073/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 499
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 500
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 501
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 502
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 503
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 504
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0074/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 505
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 506
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 507
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 508
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 509
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 510
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0075/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 511
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 512
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 513
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 514
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 515
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 516
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0076/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 517
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 518
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 519
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 520
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 521
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 522
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0077/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 523
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 524
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 525
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 526
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 527
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 528
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0078/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 529
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 530
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 531
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 532
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 533
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 534
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0079/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 535
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 536
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 537
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 538
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 539
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 540
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0080/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 541
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-21 00:00:00.000' THEN 542
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 543
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 544
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 545
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 546
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0081/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 547
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 548
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 549
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 550
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 551
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 552
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0082/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 553
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 554
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 555
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 556
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 557
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 558
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0083/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 559
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 560
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 561
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 562
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 563
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 564
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0084/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 565
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 566
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 567
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 568
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 569
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 570
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0085/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 571
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 572
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 573
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 574
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 575
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 576
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0086/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 577
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 578
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 579
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 580
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 581
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 582
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0087/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 583
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 584
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 585
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 586
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 587
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 588
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0088/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 589
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 590
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 591
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 592
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 593
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 594
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0089/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 595
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 596
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 597
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 598
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 599
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 600
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0090/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 601
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 602
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 603
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 604
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 605
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 606
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0091/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 607
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 608
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 609
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 610
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 611
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 612
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0092/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 613
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-24 00:00:00.000' THEN 614
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 615
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 616
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 617
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 618
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0093/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 619
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 620
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 621
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 622
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 623
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 624
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 625
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0094/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 626
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 627
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-04 00:00:00.000' THEN 628
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-22 00:00:00.000' THEN 629
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-11 00:00:00.000' THEN 630
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-09-01 00:00:00.000' THEN 631
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 633
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0095/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 634
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-05-25 00:00:00.000' THEN 635
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 636
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 637
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 638
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-09-01 00:00:00.000' THEN 639
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 640
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0096/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 641
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0097/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 642
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0097/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 643
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0097/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2012-11-15 00:00:00.000' THEN 644
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0098/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-06-11 00:00:00.000' THEN 645
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0098/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-05-28 00:00:00.000' THEN 646
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 647
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 648
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 649
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 650
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 651
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-06-30 00:00:00.000' THEN 653
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 654
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 655
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0099/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 656
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 657
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 658
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 659
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 660
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 661
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0100/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 662
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 663
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-14 00:00:00.000' THEN 664
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 665
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 666
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-07-15 00:00:00.000' THEN 667
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 668
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 669
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2012-06-19 00:00:00.000' THEN 670
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0101/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 671
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 672
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 673
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-23 00:00:00.000' THEN 674
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 675
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 676
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 677
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 678
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 49 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 679
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 50 and
                       ra.D_Fecha_Emision = '2011-12-06 00:00:00.000' THEN 680
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-09-27 00:00:00.000' THEN 681
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 682
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 683
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 684
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-21 00:00:00.000' THEN 685
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-08-26 00:00:00.000' THEN 686
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0102/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 687
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-01 00:00:00.000' THEN 688
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 689
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 690
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 691
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 692
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0103/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 693
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0104/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 694
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0104/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-06-07 00:00:00.000' THEN 695
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0104/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-06-22 00:00:00.000' THEN 696
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 697
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 698
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 699
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 700
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-01 00:00:00.000' THEN 701
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-11 00:00:00.000' THEN 702
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0105/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 703
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 704
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 705
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 706
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 707
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 708
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 710
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 711
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0106/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-09 00:00:00.000' THEN 712
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-10 00:00:00.000' THEN 713
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 714
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-03 00:00:00.000' THEN 715
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 716
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 717
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-06-17 00:00:00.000' THEN 718
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 719
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-07-15 00:00:00.000' THEN 720
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0107/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 721
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0108/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-06-15 00:00:00.000' THEN 722
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0108/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-06-22 00:00:00.000' THEN 723
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0109/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-18 00:00:00.000' THEN 724
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0109/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-08 00:00:00.000' THEN 725
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0109/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 726
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0109/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 727
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-18 00:00:00.000' THEN 728
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 729
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 730
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-06-28 00:00:00.000' THEN 732
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-04 00:00:00.000' THEN 733
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0110/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 734
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 735
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 736
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 737
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 738
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-01 00:00:00.000' THEN 739
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0111/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-11 00:00:00.000' THEN 740
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0112/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 741
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0112/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-15 00:00:00.000' THEN 742
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0112/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 743
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0112/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 744
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0113/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 745
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0113/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-15 00:00:00.000' THEN 746
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0113/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 747
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0113/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 748
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0113/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 749
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0114/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-06-24 00:00:00.000' THEN 750
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0114/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-09 00:00:00.000' THEN 751
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-25 00:00:00.000' THEN 752
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 753
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 754
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 755
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 757
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 758
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 759
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0115/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 760
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0116/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-25 00:00:00.000' THEN 761
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0116/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-15 00:00:00.000' THEN 762
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0116/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 763
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0116/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 764
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0117/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-06-29 00:00:00.000' THEN 766
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0117/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-21 00:00:00.000' THEN 767
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0117/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 768
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0117/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 770
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 771
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 772
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 773
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 774
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 775
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 776
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0118/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2014-04-02 00:00:00.000' THEN 777
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0119/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 778
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0119/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 779
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0119/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-24 00:00:00.000' THEN 780
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0119/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 781
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0120/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 782
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0120/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-28 00:00:00.000' THEN 783
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0120/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 784
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0120/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 785
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-05 00:00:00.000' THEN 786
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-14 00:00:00.000' THEN 787
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 788
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 789
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 790
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-30 00:00:00.000' THEN 791
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0121/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-09-24 00:00:00.000' THEN 792
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 793
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 794
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-02 00:00:00.000' THEN 795
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 796
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 797
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 798
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 799
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0122/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 800
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 801
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 802
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-02 00:00:00.000' THEN 803
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-27 00:00:00.000' THEN 804
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 805
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 806
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 807
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0123/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 808
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-06 00:00:00.000' THEN 809
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 810
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 811
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 812
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 814
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0124/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 815
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-09 00:00:00.000' THEN 816
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 817
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 818
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 819
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 821
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 26 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 822
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0125/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-07 00:00:00.000' THEN 823
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-09 00:00:00.000' THEN 824
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 825
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-01 00:00:00.000' THEN 826
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 827
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 828
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-10-19 00:00:00.000' THEN 829
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 830
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0126/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 831
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-12 00:00:00.000' THEN 832
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 833
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-24 00:00:00.000' THEN 834
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 835
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 836
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 837
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 838
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0127/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 839
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 840
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 841
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 842
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 843
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 844
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 845
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0128/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 846
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 847
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-02 00:00:00.000' THEN 848
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-01 00:00:00.000' THEN 849
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 850
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 851
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 852
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0129/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 853
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 854
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-02 00:00:00.000' THEN 855
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 856
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 857
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 858
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 859
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0130/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 860
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-13 00:00:00.000' THEN 861
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 862
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 863
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 864
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 865
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 866
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0131/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 867
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-16 00:00:00.000' THEN 868
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 869
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 870
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 871
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-30 00:00:00.000' THEN 873
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 874
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0132/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 875
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-16 00:00:00.000' THEN 876
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 877
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 878
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 879
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 880
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 881
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 882
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0133/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-31 00:00:00.000' THEN 883
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-16 00:00:00.000' THEN 884
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 885
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 886
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 887
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 888
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 889
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 890
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 891
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-08-27 00:00:00.000' THEN 892
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0134/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 893
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-16 00:00:00.000' THEN 894
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-27 00:00:00.000' THEN 895
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 896
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 897
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 898
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0135/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 899
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0136/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 900
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0136/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-09 00:00:00.000' THEN 901
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0136/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 902
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0136/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 903
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0136/2010' and ra.N_Codigo_Tipo_Auto = 49 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 905
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0137/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-19 00:00:00.000' THEN 906
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0137/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 907
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0137/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 908
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0137/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-09-01 00:00:00.000' THEN 910
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 911
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 912
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 913
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 914
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 915
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 916
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0138/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 917
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0139/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 918
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0139/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 919
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0139/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 920
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0139/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 922
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0140/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 923
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0140/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 924
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0140/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 925
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0140/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 927
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0141/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-20 00:00:00.000' THEN 928
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0141/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 929
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0141/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 930
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0141/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 931
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0141/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 932
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 933
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-09 00:00:00.000' THEN 934
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 935
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-12-16 00:00:00.000' THEN 936
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 937
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0142/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-11-09 00:00:00.000' THEN 938
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0143/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-08-09 00:00:00.000' THEN 939
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0143/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 940
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-26 00:00:00.000' THEN 941
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 942
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 943
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 944
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-07 00:00:00.000' THEN 945
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-09-07 00:00:00.000' THEN 946
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2010-09-07 00:00:00.000' THEN 947
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-08-27 00:00:00.000' THEN 948
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0144/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 949
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 950
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 951
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 952
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 953
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 11 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 954
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 955
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-19 00:00:00.000' THEN 956
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-09-27 00:00:00.000' THEN 957
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2010-09-27 00:00:00.000' THEN 958
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-27 00:00:00.000' THEN 959
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 960
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 961
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 962
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2012-05-08 00:00:00.000' THEN 963
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 964
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0145/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 965
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 966
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 967
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 968
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 969
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 971
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 972
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0146/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2011-11-15 00:00:00.000' THEN 973
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0147/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-29 00:00:00.000' THEN 974
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0147/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 975
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0147/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 976
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0147/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 977
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0147/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 979
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0148/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 980
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0148/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 981
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0148/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 982
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0148/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 983
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0148/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 985
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 986
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-13 00:00:00.000' THEN 987
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 988
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-21 00:00:00.000' THEN 989
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 990
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 991
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 992
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0149/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-01-10 00:00:00.000' THEN 993
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 994
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 995
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 996
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 997
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 999
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1000
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2011-05-30 00:00:00.000' THEN 1001
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1002
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1003
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1004
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-04-20 00:00:00.000' THEN 1005
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-05-04 00:00:00.000' THEN 1006
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-05-09 00:00:00.000' THEN 1007
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-05-20 00:00:00.000' THEN 1008
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-06-09 00:00:00.000' THEN 1009
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0150/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-01-28 00:00:00.000' THEN 1010
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0151/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 1011
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0151/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1012
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0151/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1013
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0151/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1015
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0151/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 1016
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0152/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 1017
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0152/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1018
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0152/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1019
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0152/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1021
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0153/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 1022
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0153/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1023
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0153/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1024
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0153/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1026
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-07-30 00:00:00.000' THEN 1027
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1028
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1029
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1030
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1031
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1033
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0154/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 1034
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1035
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 1036
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1037
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1038
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1039
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1040
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0155/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1041
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1042
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-09 00:00:00.000' THEN 1043
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1044
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1045
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1046
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1047
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1048
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0156/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-11-30 00:00:00.000' THEN 1049
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1050
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-10 00:00:00.000' THEN 1051
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 1052
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1053
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1054
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0157/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1055
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0158/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1056
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-03 00:00:00.000' THEN 1057
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-08-25 00:00:00.000' THEN 1058
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1059
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-09-07 00:00:00.000' THEN 1060
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1062
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0159/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1063
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0160/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-08-17 00:00:00.000' THEN 1064
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0160/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-04 00:00:00.000' THEN 1065
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0160/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1066
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0161/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-08-05 00:00:00.000' THEN 1067
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-12 00:00:00.000' THEN 1068
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-26 00:00:00.000' THEN 1069
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1070
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1071
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-01 00:00:00.000' THEN 1073
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1074
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1075
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0162/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-04-01 00:00:00.000' THEN 1076
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0163/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2011-02-22 00:00:00.000' THEN 1077
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 1078
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1079
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1080
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1081
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1082
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1083
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0164/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1084
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 1085
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 1086
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1087
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-23 00:00:00.000' THEN 1089
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1090
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-08-18 00:00:00.000' THEN 1091
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0165/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1092
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-16 00:00:00.000' THEN 1093
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-27 00:00:00.000' THEN 1094
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1095
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 1096
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-01 00:00:00.000' THEN 1098
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1099
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0166/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1100
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0167/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1101
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0167/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1102
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0167/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1103
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0167/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-12-15 00:00:00.000' THEN 1104
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0167/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1105
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1106
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 1107
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 1108
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1109
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1110
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0168/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1111
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0169/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1112
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0169/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1113
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0169/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1114
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0169/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-12-09 00:00:00.000' THEN 1115
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0169/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1116
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1117
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-30 00:00:00.000' THEN 1118
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-20 00:00:00.000' THEN 1119
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 9 and
                       ra.D_Fecha_Emision = '2010-11-24 00:00:00.000' THEN 1120
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-21 00:00:00.000' THEN 1121
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1122
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1123
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-11-30 00:00:00.000' THEN 1124
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-03-15 00:00:00.000' THEN 1125
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1126
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0170/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 1127
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-08-24 00:00:00.000' THEN 1128
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-13 00:00:00.000' THEN 1129
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-11 00:00:00.000' THEN 1130
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-08-27 00:00:00.000' THEN 1132
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1133
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1134
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1135
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0171/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 1136
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1137
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1138
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1139
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-10-26 00:00:00.000' THEN 1140
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1141
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1142
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0172/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1143
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0173/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-09-20 00:00:00.000' THEN 1144
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0173/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-09-02 00:00:00.000' THEN 1145
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0174/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-09-09 00:00:00.000' THEN 1146
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0174/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-03-18 00:00:00.000' THEN 1147
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0175/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-10 00:00:00.000' THEN 1148
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0175/2010' and ra.N_Codigo_Tipo_Auto = 6 and
                       ra.D_Fecha_Emision = '2010-10-01 00:00:00.000' THEN 1149
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0175/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-11 00:00:00.000' THEN 1150
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0175/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2010-12-09 00:00:00.000' THEN 1151
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0175/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-20 00:00:00.000' THEN 1152
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-13 00:00:00.000' THEN 1153
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1154
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-03 00:00:00.000' THEN 1155
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1156
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1157
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1158
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0176/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1159
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-13 00:00:00.000' THEN 1160
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1161
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-03 00:00:00.000' THEN 1162
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1163
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-11-24 00:00:00.000' THEN 1164
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-21 00:00:00.000' THEN 1166
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1167
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 1168
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0177/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-04 00:00:00.000' THEN 1169
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1170
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1171
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1172
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-24 00:00:00.000' THEN 1173
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-19 00:00:00.000' THEN 1174
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1175
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 1176
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-17 00:00:00.000' THEN 1177
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1178
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 1179
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0178/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1180
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0179/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1181
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0179/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1182
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0180/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-09-16 00:00:00.000' THEN 1183
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0181/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-17 00:00:00.000' THEN 1184
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0181/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 1185
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0181/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1186
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0181/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1187
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-20 00:00:00.000' THEN 1188
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 1189
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-03 00:00:00.000' THEN 1190
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1191
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-03 00:00:00.000' THEN 1193
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1194
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-01-05 00:00:00.000' THEN 1195
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0182/2010' and ra.N_Codigo_Tipo_Auto = 57 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1196
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0183/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1197
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0183/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-08 00:00:00.000' THEN 1198
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0183/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1199
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0183/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1200
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-09-23 00:00:00.000' THEN 1202
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1203
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-26 00:00:00.000' THEN 1204
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-20 00:00:00.000' THEN 1205
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-12 00:00:00.000' THEN 1206
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-10-13 00:00:00.000' THEN 1208
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0184/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1209
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-24 00:00:00.000' THEN 1210
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 1211
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-16 00:00:00.000' THEN 1212
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-12 00:00:00.000' THEN 1213
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1214
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1216
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1217
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1218
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0185/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 1219
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-27 00:00:00.000' THEN 1220
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 1221
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1222
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1223
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1225
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1226
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1227
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-09 00:00:00.000' THEN 1228
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0186/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-03-17 00:00:00.000' THEN 1229
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0187/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1230
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0187/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1231
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0187/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-20 00:00:00.000' THEN 1232
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0187/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1233
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0187/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1234
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0188/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-09-30 00:00:00.000' THEN 1235
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0188/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1236
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0188/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-05 00:00:00.000' THEN 1237
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0188/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1238
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0188/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1240
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0189/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-01 00:00:00.000' THEN 1241
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0189/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1242
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0189/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-17 00:00:00.000' THEN 1243
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0189/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-12 00:00:00.000' THEN 1244
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-04 00:00:00.000' THEN 1246
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-14 00:00:00.000' THEN 1247
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-08 00:00:00.000' THEN 1248
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1249
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1250
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0190/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-10-26 00:00:00.000' THEN 1251
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0191/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1252
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0191/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1253
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0191/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1254
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0191/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-14 00:00:00.000' THEN 1255
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0191/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1257
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1258
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1259
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-31 00:00:00.000' THEN 1260
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1261
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-10-12 00:00:00.000' THEN 1262
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1263
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0192/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1264
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1265
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-26 00:00:00.000' THEN 1266
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-11-24 00:00:00.000' THEN 1267
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-19 00:00:00.000' THEN 1268
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1269
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2011-07-19 00:00:00.000' THEN 1270
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1271
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1272
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1273
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1274
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0193/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-07-19 00:00:00.000' THEN 1275
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1276
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-21 00:00:00.000' THEN 1277
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-24 00:00:00.000' THEN 1278
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1279
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1280
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 28 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1281
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2012-11-19 00:00:00.000' THEN 1282
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2015-02-27 00:00:00.000' THEN 1283
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0194/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1284
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0195/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-07 00:00:00.000' THEN 1285
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0195/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-25 00:00:00.000' THEN 1286
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0195/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1287
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0195/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-01-19 00:00:00.000' THEN 1288
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0195/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1290
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 1291
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1292
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-30 00:00:00.000' THEN 1293
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 1294
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1295
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0196/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1296
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-15 00:00:00.000' THEN 1297
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1298
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2010-12-30 00:00:00.000' THEN 1299
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1300
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-11-15 00:00:00.000' THEN 1301
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-04-07 00:00:00.000' THEN 1302
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0197/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2010-11-30 00:00:00.000' THEN 1303
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0198/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-11-05 00:00:00.000' THEN 1304
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0198/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1305
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0199/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1306
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0199/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1307
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0199/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1308
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0199/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1309
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0199/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-19 00:00:00.000' THEN 1311
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0200/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1312
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0200/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1313
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0200/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1314
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0200/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1315
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0200/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-19 00:00:00.000' THEN 1317
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0201/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1318
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0201/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1319
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0201/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1320
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0201/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1321
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0201/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-19 00:00:00.000' THEN 1323
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0202/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1324
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0202/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1325
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0202/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1326
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0202/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-03 00:00:00.000' THEN 1327
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0202/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-19 00:00:00.000' THEN 1329
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0203/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-22 00:00:00.000' THEN 1330
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0203/2010' and ra.N_Codigo_Tipo_Auto = 8 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1331
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0203/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1332
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0203/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-03 00:00:00.000' THEN 1333
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0203/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2010-11-19 00:00:00.000' THEN 1335
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1336
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1337
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-21 00:00:00.000' THEN 1338
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1339
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1340
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1342
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-08 00:00:00.000' THEN 1343
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2013-12-12 00:00:00.000' THEN 1344
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0204/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1345
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0205/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1346
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0205/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1347
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0205/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-14 00:00:00.000' THEN 1348
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0205/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1349
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0206/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1350
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0206/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1351
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0206/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1352
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0206/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1354
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0206/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1355
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-28 00:00:00.000' THEN 1356
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1357
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1358
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1360
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1361
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0207/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 1362
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1363
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1364
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1365
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1366
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1368
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0208/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1369
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0209/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1370
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0210/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 1371
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0210/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1372
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0211/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-11-12 00:00:00.000' THEN 1373
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0211/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1374
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0211/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1375
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1376
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1377
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1378
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1379
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1380
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-12-06 00:00:00.000' THEN 1381
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0212/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1382
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1383
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1384
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1385
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1386
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1387
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0213/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-01-11 00:00:00.000' THEN 1388
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-10-29 00:00:00.000' THEN 1389
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1390
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1391
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-28 00:00:00.000' THEN 1392
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1393
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-11 00:00:00.000' THEN 1395
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1396
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1397
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0214/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1398
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1399
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1400
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 1401
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-09-19 00:00:00.000' THEN 1402
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1404
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2011-10-06 00:00:00.000' THEN 1405
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0215/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2011-08-09 00:00:00.000' THEN 1406
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0216/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-04 00:00:00.000' THEN 1407
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0216/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1408
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0216/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1409
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0216/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1410
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1412
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1413
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1414
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1415
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1416
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1418
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-03-15 00:00:00.000' THEN 1419
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0217/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1420
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0218/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1421
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0218/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1422
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0218/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 1423
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0218/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-07 00:00:00.000' THEN 1424
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0218/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1425
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0219/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-08 00:00:00.000' THEN 1426
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0219/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1427
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0219/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1428
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0219/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-11 00:00:00.000' THEN 1429
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-09 00:00:00.000' THEN 1430
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1431
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1432
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-07 00:00:00.000' THEN 1433
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1434
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1435
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-11-25 00:00:00.000' THEN 1436
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-01-05 00:00:00.000' THEN 1437
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-04-12 00:00:00.000' THEN 1438
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0220/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-03-04 00:00:00.000' THEN 1439
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-09 00:00:00.000' THEN 1440
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1441
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1442
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-03 00:00:00.000' THEN 1443
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1444
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-17 00:00:00.000' THEN 1445
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0221/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1447
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-10 00:00:00.000' THEN 1448
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-11-29 00:00:00.000' THEN 1449
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-01-28 00:00:00.000' THEN 1450
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 11 and
                       ra.D_Fecha_Emision = '2011-02-15 00:00:00.000' THEN 1451
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-14 00:00:00.000' THEN 1452
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1453
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1454
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1455
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-16 00:00:00.000' THEN 1456
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0222/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-03-15 00:00:00.000' THEN 1457
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1458
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1459
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1460
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-10 00:00:00.000' THEN 1461
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-18 00:00:00.000' THEN 1462
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2015-03-17 00:00:00.000' THEN 1464
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2015-03-10 00:00:00.000' THEN 1465
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0223/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-07-21 00:00:00.000' THEN 1466
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0224/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-16 00:00:00.000' THEN 1467
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0224/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-10 00:00:00.000' THEN 1468
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0224/2010' and ra.N_Codigo_Tipo_Auto = 13 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1469
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0224/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-19 00:00:00.000' THEN 1470
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0224/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2010-12-17 00:00:00.000' THEN 1472
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-18 00:00:00.000' THEN 1473
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1474
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 9 and
                       ra.D_Fecha_Emision = '2011-02-04 00:00:00.000' THEN 1475
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-18 00:00:00.000' THEN 1476
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-04-13 00:00:00.000' THEN 1477
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1478
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0225/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-02-10 00:00:00.000' THEN 1479
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0226/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-11-30 00:00:00.000' THEN 1480
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0226/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-11-22 00:00:00.000' THEN 1481
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-24 00:00:00.000' THEN 1482
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-16 00:00:00.000' THEN 1483
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-18 00:00:00.000' THEN 1484
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1485
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1487
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0227/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-11 00:00:00.000' THEN 1488
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-11-24 00:00:00.000' THEN 1489
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-17 00:00:00.000' THEN 1490
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-09-19 00:00:00.000' THEN 1491
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-10-17 00:00:00.000' THEN 1492
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1493
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1494
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2011-01-11 00:00:00.000' THEN 1495
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1496
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-11-10 00:00:00.000' THEN 1497
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-09-27 00:00:00.000' THEN 1498
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0228/2010' and ra.N_Codigo_Tipo_Auto = 67 and
                       ra.D_Fecha_Emision = '2011-08-09 00:00:00.000' THEN 1499
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0229/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1500
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0229/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1501
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0229/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1502
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0230/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1503
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0230/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1504
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0230/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-18 00:00:00.000' THEN 1505
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0230/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1506
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1507
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1508
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 9 and
                       ra.D_Fecha_Emision = '2011-02-23 00:00:00.000' THEN 1509
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-04-01 00:00:00.000' THEN 1510
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-01-31 00:00:00.000' THEN 1511
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1512
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0231/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1513
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-01 00:00:00.000' THEN 1514
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1515
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1516
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-16 00:00:00.000' THEN 1517
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1518
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1520
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0232/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1521
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0233/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1522
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0233/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1523
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0233/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1524
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0233/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1525
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0233/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-16 00:00:00.000' THEN 1526
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1527
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1528
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-24 00:00:00.000' THEN 1529
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1530
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-01-18 00:00:00.000' THEN 1532
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0234/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1533
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0235/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-07 00:00:00.000' THEN 1534
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0235/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2010-12-29 00:00:00.000' THEN 1535
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0235/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-10-17 00:00:00.000' THEN 1536
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0235/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1537
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0235/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-09-01 00:00:00.000' THEN 1538
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1539
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-05 00:00:00.000' THEN 1540
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-04 00:00:00.000' THEN 1541
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-03-31 00:00:00.000' THEN 1542
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 30 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1544
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 52 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1545
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0236/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-01-11 00:00:00.000' THEN 1546
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0237/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2011-01-03 00:00:00.000' THEN 1547
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0237/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-14 00:00:00.000' THEN 1548
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0238/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2010-12-16 00:00:00.000' THEN 1549
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-16 00:00:00.000' THEN 1550
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1551
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1552
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-17 00:00:00.000' THEN 1553
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1554
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1555
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2011-04-08 00:00:00.000' THEN 1556
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0239/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-22 00:00:00.000' THEN 1557
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-17 00:00:00.000' THEN 1558
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1559
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-10 00:00:00.000' THEN 1560
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-04-11 00:00:00.000' THEN 1561
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-02-18 00:00:00.000' THEN 1562
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0240/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1564
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1565
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1566
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1567
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-18 00:00:00.000' THEN 1568
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 1569
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1571
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1572
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0241/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1573
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0242/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1574
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0242/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-30 00:00:00.000' THEN 1575
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0242/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-19 00:00:00.000' THEN 1576
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0242/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-16 00:00:00.000' THEN 1577
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0242/2010' and ra.N_Codigo_Tipo_Auto = 12 and
                       ra.D_Fecha_Emision = '2011-04-13 00:00:00.000' THEN 1578
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0243/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-22 00:00:00.000' THEN 1580
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0243/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1581
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0243/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-17 00:00:00.000' THEN 1582
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0243/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-02-09 00:00:00.000' THEN 1583
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0243/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2011-02-11 00:00:00.000' THEN 1584
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0244/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1585
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0244/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1586
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0244/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1587
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0244/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-31 00:00:00.000' THEN 1588
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1589
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-13 00:00:00.000' THEN 1590
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-18 00:00:00.000' THEN 1591
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1592
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2011-01-10 00:00:00.000' THEN 1593
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 53 and
                       ra.D_Fecha_Emision = '2011-07-26 00:00:00.000' THEN 1594
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0245/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-03-01 00:00:00.000' THEN 1595
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1596
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-29 00:00:00.000' THEN 1597
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1598
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-27 00:00:00.000' THEN 1599
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-31 00:00:00.000' THEN 1600
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0246/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1601
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-23 00:00:00.000' THEN 1602
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1603
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-09 00:00:00.000' THEN 1604
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2011-02-04 00:00:00.000' THEN 1605
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1606
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-01-31 00:00:00.000' THEN 1607
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0247/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-01-26 00:00:00.000' THEN 1608
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1609
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-05 00:00:00.000' THEN 1610
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-20 00:00:00.000' THEN 1611
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-24 00:00:00.000' THEN 1612
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 18 and
                       ra.D_Fecha_Emision = '2011-02-11 00:00:00.000' THEN 1613
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1614
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-02-07 00:00:00.000' THEN 1615
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2011-02-07 00:00:00.000' THEN 1616
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 56 and
                       ra.D_Fecha_Emision = '2011-02-04 00:00:00.000' THEN 1617
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-14 00:00:00.000' THEN 1618
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0248/2010' and ra.N_Codigo_Tipo_Auto = 64 and
                       ra.D_Fecha_Emision = '2011-02-18 00:00:00.000' THEN 1619
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0249/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1620
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0249/2010' and ra.N_Codigo_Tipo_Auto = 3 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1621
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2010-12-28 00:00:00.000' THEN 1622
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-17 00:00:00.000' THEN 1623
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-18 00:00:00.000' THEN 1624
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 27 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1626
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1627
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 47 and
                       ra.D_Fecha_Emision = '2011-02-22 00:00:00.000' THEN 1628
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-28 00:00:00.000' THEN 1629
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0250/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1630
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1631
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1632
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-24 00:00:00.000' THEN 1633
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 20 and
                       ra.D_Fecha_Emision = '2011-03-14 00:00:00.000' THEN 1634
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-02-14 00:00:00.000' THEN 1635
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 48 and
                       ra.D_Fecha_Emision = '2011-02-01 00:00:00.000' THEN 1636
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0251/2010' and ra.N_Codigo_Tipo_Auto = 57 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1637
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0252/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1638
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0252/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1639
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0252/2010' and ra.N_Codigo_Tipo_Auto = 71 and
                       ra.D_Fecha_Emision = '2011-03-24 00:00:00.000' THEN 1640
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0253/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1641
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0253/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1642
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0253/2010' and ra.N_Codigo_Tipo_Auto = 46 and
                       ra.D_Fecha_Emision = '2012-09-07 00:00:00.000' THEN 1643
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0253/2010' and ra.N_Codigo_Tipo_Auto = 68 and
                       ra.D_Fecha_Emision = '2011-05-23 00:00:00.000' THEN 1644
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0253/2010' and ra.N_Codigo_Tipo_Auto = 71 and
                       ra.D_Fecha_Emision = '2011-03-24 00:00:00.000' THEN 1645
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0254/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1646
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0254/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-24 00:00:00.000' THEN 1647
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0254/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-03-24 00:00:00.000' THEN 1648
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0254/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-05-10 00:00:00.000' THEN 1650
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0255/2010' and ra.N_Codigo_Tipo_Auto = 2 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1651
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0255/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-01-07 00:00:00.000' THEN 1652
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 4 and
                       ra.D_Fecha_Emision = '2011-01-04 00:00:00.000' THEN 1653
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 7 and
                       ra.D_Fecha_Emision = '2011-01-25 00:00:00.000' THEN 1654
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 9 and
                       ra.D_Fecha_Emision = '2011-03-23 00:00:00.000' THEN 1655
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 10 and
                       ra.D_Fecha_Emision = '2011-05-06 00:00:00.000' THEN 1656
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 19 and
                       ra.D_Fecha_Emision = '2011-03-02 00:00:00.000' THEN 1657
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 23 and
                       ra.D_Fecha_Emision = '2011-01-11 00:00:00.000' THEN 1659
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 24 and
                       ra.D_Fecha_Emision = '2011-02-08 00:00:00.000' THEN 1660
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 25 and
                       ra.D_Fecha_Emision = '2011-02-17 00:00:00.000' THEN 1661
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 29 and
                       ra.D_Fecha_Emision = '2011-02-07 00:00:00.000' THEN 1662
                  WHEN ra.C_Nro_Expediente = 'ARIT-CBA-0256/2010' and ra.N_Codigo_Tipo_Auto = 63 and
                       ra.D_Fecha_Emision = '2011-02-18 00:00:00.000' THEN 1663
    END)                               AS id_actuacion,
             ra.N_Codigo_Destinatario  AS id_tipo_demandante,
             ra.N_Codigo_Tipo_Not      AS id_tipo_notificacion,
             D_Fecha_Hora_Notificacion AS fecha_hora_notificacion,
             1                         AS estado,
             1                         AS id_usuario_registra,
             GETDATE()                 AS fecha_registra,
             NULL                      AS id_usuario_modifica,
             NULL                      AS fecha_modifica,
             ra.D_Fecha_Emision        AS fecha_actuacion_registro,
             (CASE
                  WHEN (tra.N_Codigo_Super_Reg IS NULL AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                      THEN tra.N_Codigo_Intendencia + 4
                  WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND tra.N_Codigo_Intendencia IS NULL)
                      THEN tra.N_Codigo_Super_Reg
                  WHEN (ISNUMERIC(tra.N_Codigo_Super_Reg) = 1 AND ISNUMERIC(tra.N_Codigo_Intendencia) = 1)
                      THEN tra.N_Codigo_Super_Reg
                  ELSE -4
                 END)                  AS id_region_radicatoria

      FROM TSS_NOTIFICACIONES AS ra
               inner join TSS_RECURSOS_ALZADA TRA on TRA.C_Nro_Expediente = ra.C_Nro_Expediente
      WHERE ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2010'
        and TRA.C_Nro_Expediente LIKE 'ARIT-CBA-%/2010'
        and ra.N_Codigo_Tipo_Auto not in (22, 23)) as dd
where dd.id_actuacion is not null;
-- order by dd.id_actuacion;
