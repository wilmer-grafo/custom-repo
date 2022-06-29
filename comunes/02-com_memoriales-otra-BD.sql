SELECT (CASE
    END)                              AS id_recurso_alzada,
       NULL                           AS id_recurso_jerarquico,
       2                              AS id_region_recepcion,
       (CASE
            WHEN (ct.motivo = 22 OR ct.motivo = 90 OR ct.motivo = 163) THEN 7
            WHEN (ct.motivo = 6 OR ct.motivo = 82) THEN 15
            WHEN (ct.motivo = 15 OR ct.motivo = 39 OR ct.motivo = 56) THEN 29
            WHEN (ct.motivo = 218 OR ct.motivo = 219 OR ct.motivo = 220 OR ct.motivo = 221 OR ct.motivo = 222 OR
                  ct.motivo = 223 OR ct.motivo = 224 OR ct.motivo = 96 OR ct.motivo = 145 OR ct.motivo = 139) THEN 30
            WHEN (ct.motivo = 85) THEN 31
            WHEN (ct.motivo = 135) THEN 33
            WHEN (ct.motivo = 171 OR ct.motivo = 216 OR ct.motivo = 235 OR ct.motivo = 199) THEN 33
            WHEN (ct.motivo = 1 OR ct.motivo = 61 OR ct.motivo = 144 OR ct.motivo = 146 OR ct.motivo = 148 OR
                  ct.motivo = 149 OR ct.motivo = 165 OR ct.motivo = 166 OR ct.motivo = 167 OR ct.motivo = 187 OR
                  ct.motivo = 188 OR ct.motivo = 189 OR ct.motivo = 194 OR ct.motivo = 195 OR ct.motivo = 196 OR
                  ct.motivo = 234) THEN 34
            WHEN (ct.motivo = 246) THEN 35
            WHEN (ct.motivo = 84 OR ct.motivo = 150) THEN 36
            WHEN (ct.motivo = 112 OR ct.motivo = 116) THEN 38
            WHEN (ct.motivo = 160 OR ct.motivo = 123 OR ct.motivo = 213 OR ct.motivo = 138) THEN 39
            WHEN (ct.motivo = 33) THEN 40
            WHEN (ct.motivo = 18) THEN 41
            WHEN (ct.motivo = 100) THEN 42
            WHEN (ct.motivo = 58 OR ct.motivo = 142) THEN 43
            WHEN (ct.motivo = 243) THEN 44
            WHEN (ct.motivo = 35 OR ct.motivo = 97) THEN 45
            WHEN (ct.motivo = 94) THEN 46
            WHEN (ct.motivo = 129 OR ct.motivo = 128 OR ct.motivo = 86 OR ct.motivo = 155) THEN 48
            WHEN (ct.motivo = 41 OR ct.motivo = 49 OR ct.motivo = 69 OR ct.motivo = 71 OR ct.motivo = 73 OR
                  ct.motivo = 76 OR ct.motivo = 79 OR ct.motivo = 81 OR ct.motivo = 109 OR ct.motivo = 233 OR
                  ct.motivo = 147 OR ct.motivo = 111 OR ct.motivo = 130
                ) THEN 49
            WHEN (ct.motivo = 157 OR ct.motivo = 158 OR ct.motivo = 159 OR ct.motivo = 173 OR ct.motivo = 208 OR
                  ct.motivo = 92 OR ct.motivo = 98 OR ct.motivo = 101 OR ct.motivo = 140 OR ct.motivo = 113 OR
                  ct.motivo = 114 OR ct.motivo = 248 OR ct.motivo = 211 OR ct.motivo = 244 OR ct.motivo = 212 OR
                  ct.motivo = 102) THEN 50
            WHEN (ct.motivo = 110) THEN 51
            WHEN (ct.motivo = 32 OR ct.motivo = 34) THEN 52
            WHEN (ct.motivo = 7) THEN 55
            WHEN (ct.motivo = 17) THEN 53
            WHEN (ct.motivo = 8 OR ct.motivo = 64) THEN 54
            WHEN (ct.motivo = 120 OR ct.motivo = 247) THEN 56
            WHEN (ct.motivo = 28 OR ct.motivo = 117 OR ct.motivo = 124) THEN 11
            WHEN (ct.motivo = 29 OR ct.motivo = 4 OR ct.motivo = 74 OR ct.motivo = 77 OR ct.motivo = 80 OR
                  ct.motivo = 112 OR ct.motivo = 134 OR ct.motivo = 162) THEN 57
            WHEN (ct.motivo = 21) THEN 58
            WHEN (ct.motivo = 5 OR ct.motivo = 20 OR ct.motivo = 23 OR ct.motivo = 26 OR ct.motivo = 66 OR
                  ct.motivo = 68 OR ct.motivo = 72 OR ct.motivo = 40) THEN 2
            WHEN (ct.motivo = 31 OR ct.motivo = 70 OR ct.motivo = 83 OR ct.motivo = 202 OR ct.motivo = 118) THEN 59
            WHEN (ct.motivo = 24) THEN 17
            WHEN (ct.motivo = 13 OR ct.motivo = 25 OR ct.motivo = 65) THEN 18
            WHEN (ct.motivo = 16) THEN 1
            WHEN (ct.motivo = 175 OR ct.motivo = 176 OR ct.motivo = 177 OR ct.motivo = 178) THEN 20
            WHEN (ct.motivo = 190) THEN 21
            WHEN (ct.motivo = 87) THEN 22
            WHEN (ct.motivo = 95 OR ct.motivo = 136) THEN 23
            WHEN (ct.motivo = 3 OR ct.motivo = 137 OR ct.motivo = 169 OR ct.motivo = 170) THEN 24
            WHEN (ct.motivo = 99) THEN 25
            WHEN (ct.motivo = 133) THEN 26
            WHEN (ct.motivo = 245) THEN 60
            WHEN (ct.motivo = 44 OR ct.motivo = 48 OR ct.motivo = 156) THEN 9
            WHEN (ct.motivo = 105 OR ct.motivo = 126 OR ct.motivo = 191 OR ct.motivo = 89) THEN 61
            WHEN (ct.motivo = 19 OR ct.motivo = 36 OR ct.motivo = 47 OR ct.motivo = 67 OR ct.motivo = 121 OR
                  ct.motivo = 51 OR ct.motivo = 57 OR ct.motivo = 59 OR ct.motivo = 60 OR ct.motivo = 182 OR
                  ct.motivo = 198 OR ct.motivo = 226 OR ct.motivo = 227 OR ct.motivo = 228 OR ct.motivo = 229 OR
                  ct.motivo = 230 OR ct.motivo = 231 OR ct.motivo = 232 OR ct.motivo = 236 OR ct.motivo = 237 OR
                  ct.motivo = 238 OR ct.motivo = 239 OR ct.motivo = 240 OR ct.motivo = 241 OR ct.motivo = 242 OR
                  ct.motivo = 108 OR ct.motivo = 225 OR ct.motivo = 88 OR ct.motivo = 107 OR ct.motivo = 115 OR
                  ct.motivo = 192
                ) THEN 62
            WHEN (ct.motivo = 52 OR ct.motivo = 131) THEN 63
            WHEN (ct.motivo = 62) THEN 85
            WHEN (ct.motivo = 9 OR ct.motivo = 45 OR ct.motivo = 161 OR ct.motivo = 172 OR ct.motivo = 181 OR
                  ct.motivo = 186 OR ct.motivo = 217) THEN 3
            WHEN (ct.motivo = 46 OR ct.motivo = 93 OR ct.motivo = 104 OR ct.motivo = 127 OR ct.motivo = 153 OR
                  ct.motivo = 154 OR ct.motivo = 164) THEN 6
            WHEN (ct.motivo = 214) THEN 66
            WHEN (ct.motivo = 50 OR ct.motivo = 75) THEN 67
            WHEN (ct.motivo = 214) THEN 66
            WHEN (ct.motivo = 215 OR ct.motivo = 10 OR ct.motivo = 141) THEN 65
            WHEN (ct.motivo = 103 OR ct.motivo = 174 OR ct.motivo = 197 OR ct.motivo = 125) THEN 68
            WHEN (ct.motivo = 168) THEN 8
            WHEN (ct.motivo = 78) THEN 70
            WHEN (ct.motivo = 180) THEN 69
            WHEN (ct.motivo = 201 OR ct.motivo = 132 OR ct.motivo = 151) THEN 71
            WHEN (ct.motivo = 11 OR ct.motivo = 27 OR ct.motivo = 38 OR ct.motivo = 179 OR ct.motivo = 183 OR
                  ct.motivo = 210 OR ct.motivo = 203 OR ct.motivo = 204 OR ct.motivo = 205 OR ct.motivo = 206 OR
                  ct.motivo = 207 OR ct.motivo = 200) THEN 13
            WHEN (ct.motivo = 63) THEN 72
            WHEN (ct.motivo = 55 OR ct.motivo = 14) THEN 73
            WHEN (ct.motivo = 152) THEN 74
            WHEN (ct.motivo = 2 OR ct.motivo = 30 OR ct.motivo = 42 OR ct.motivo = 43 OR ct.motivo = 209 OR
                  ct.motivo = 193 OR ct.motivo = 185 OR ct.motivo = 143) THEN 4
            WHEN (ct.motivo = 2 OR ct.motivo = 30 OR ct.motivo = 42 OR ct.motivo = 43 OR ct.motivo = 91) THEN 14
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
WHERE (LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2021%' OR
       LTRIM(RTRIM(ct.id_exp)) LIKE 'ARIT-LPZ-%/2022%')
  AND ct.estado > 0
ORDER BY LTRIM(RTRIM(ct.id_exp));