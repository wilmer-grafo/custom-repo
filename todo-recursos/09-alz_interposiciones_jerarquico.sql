Cargar recursos y los representantes at.

SELECT (SELECT r.id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(TRA.C_Nro_Expediente)))                AS id_recurso_alzada,
       rec_jer.N_Codigo_Destinatario                                                       AS id_tipo_demandante,
       CAST(SUBSTRING(CONVERT(varchar, rec_jer.D_Fecha_Interpone, 120), 1, 10) +
            SUBSTRING(CONVERT(varchar, rec_jer.D_Hora_Interpone, 120), 11, 9) AS DATETIME) AS fecha_interpone,
       LTRIM(RTRIM(rec_jer.c_Nota_Remision))                                               AS cite_remision,
       rec_jer.D_Fecha_Remision_STG                                                        AS fecha_remision,
       rec_jer.d_Fecha_Recepcion_STG                                                       AS fecha_recepcion_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_SP_REG))                                          AS antecedentes_sp_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_Admin_REG))                                       AS antecedentes_at_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_Otros_REG))                                       AS antecedentes_otros_regional,
       LTRIM(RTRIM(rec_jer.C_antecedente_SP_STG))                                          AS antecedentes_sp_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_Admin_STG))                                       AS antecedentes_at_agit,
       LTRIM(RTRIM(rec_jer.C_antecedente_Otros_STG))                                       AS antecedentes_otros_agit,
       NULL                                                                                AS id_recurso_jerarquico,
       20                                                                                  AS estado,
       1                                                                                   AS id_usuario_registra,
       GETDATE()                                                                           AS fecha_registra,
       NULL                                                                                AS id_usuario_modifica,
       NULL                                                                                AS fecha_modifica,
       (SELECT TOP 1 rep.id
        FROM representantes rep
        WHERE rep.nombre_representante_at = LTRIM(RTRIM(TRA.c_Nombre_Representante_AT)))   AS id_representante_at,
       NULL                                                                                AS observaciones,
       NULL                                                                                AS id_memorial,
       NULL                                                                                AS observaciones_antecedentes
FROM TSS_INTERPONE_REC_JER AS rec_jer
         INNER JOIN TSS_RECURSOS_ALZADA TRA on TRA.C_Nro_Expediente = rec_jer.C_Nro_Expediente
WHERE rec_jer.C_Nro_Expediente_Jer IS NULL
ORDER BY LTRIM(RTRIM(TRA.C_Nro_Expediente));


SET DATEFORMAT 'YMD';

5145,ARIT-CBA-0388/2018-1,3,2019-11-05 15:00:16.000,ARITCBA-SC- JER -0248/2019,2019-11-15 00:00:00.000,,"16 carpetas EMPASTADAS: I: 01-344( Perforado en la parte superior  fs. 19-25-63-114-122-164-294-295-297; Perforado en la parte inferior: 30 a 34 a 39, del 46 a 5 y 139 a 14;Perforado lado dcho. fs. 79 a 82, 152 a 159; boletas pequeñas a fs. 242-283-285-299; fs. 284 al revés y perforado a lado dcho.;  Existe una foja sin foliar entre 34 y 35- 141 y 142- 155 y 156-159 y 160;. 291 y 292 -337 y 338; a fs. 288 y 289; existe perforaciones al lado dcho. E inferior;); II: 01-273(Existe 1A,146A-160A,171A, 198A,216A; Perforado en la parte inferior a fs. 8-9-29-30-41-42-47-48-60-61-del 93 a 95- del 113 al 115;  Perforado a lado derecho a fs. 11 y 12- de fs. 261 a 263-264; rota en la parte superior a fs. 268); III: 01-304(Existe fs. 1A,46A,47A,169A-y perforado en la parte superior-,209A,209B; fs. 78 se encuentra al reverso de fs. 77);IV: 01-331( fs. 22A,22B,240A,242A,244A, 256A,262A,268A, fs- 274 en blanco);V:01-375 ( fs. 46A, 231A; fs. 86 en blanco) VI:01-349 (24A,27A,55A; una hoja en blanco entre fs. 81 y 82, 146 y 147","17 Carpetas: Algunas carpetas se encuentran deterioradas en sus tapas y contratapas.  Así como algunas de sus hojas se encuentran rayadas con lapiz rojo y/o negro y/o resaltador:  I: 01-200 (existe 1CD engrapado al reverso de fs. 1; fs. 32, 73, 87, 164, 200 deterioradas); II: 201-400 (deteriorados en su borde superior fs. 271 y 321); III: 401-600 (deterioradas en su bordes a fs. 463, 483, 560 y 583); IV: 601-800 (fs. 739, 740,760,768,787,788 y 800 perforado a lado derecho; fs. 800 rota); V: 801-1000 (perforado a lado derecho a fs. 827, 837 y 846; fs. 909, 945 deterioradas en su borde dcho.; fs. 980 deteriorada en su borde superior); VI: 1001-1200 (fs. 1059 rota); VII: 1201-1400 (fs. 1236 deteriorada en su borde dcho., fs. 1399 deteriorada en su borde superior); VIII: 1401-1600 (fs. 1572,1574 y 1578 manchadas, fs. 1575, 1600 rotas en sus bordes); IX: 1601-1800 (fs. 1679, 1684 y 1800 rotas en su bordes; perforado lado dcho. Fs 1649, 1680,existe fs. 1691A, a fs 1690 y 1725 cursa 1CD; fs 1690 deteriorado en la pa",No Existen Antecedentes Otros,,,,,20,1,2022-07-08 10:55:41.090,,,27,,,
16573,ARIT-LPZ-0658/2012,3,2012-12-04 16:46:50.000,,,,,,,,,,,20,1,2022-07-08 10:55:41.090,,,,,,
30541,ARIT-SCZ-0210/2019,3,2019-09-17 16:42:01.000,ARITSCZ-SCR-JER-0252/2019,2019-09-26 00:00:00.000,,"52 Cuerpos: I: 1-200; II: 201-400  Observaciones:  foja  226 rota; III: 401-600  Observaciones:  foja 401 manchada; IV: 601-800; V: 801-1000  Observaciones:  a fs 806,","38 Cuerpos: I: 1-200  Observaciones: a fs 6 hojas rotas; II: 201-400  Observaciones:   a fs 400 hoja rota; III: 401-600; IV: 601-800  Observaciones:   a fs 740,742 hojas manchadas; a fs 790,800 hojas rotas; V:",No Existen Antecedentes Otros,,,,,20,1,2022-07-08 10:55:41.090,,,41,,,
