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

            WHEN (ct.motivo = 6 OR
                  ct.motivo = 253 OR
                  ct.motivo = 254 OR
                  ct.motivo = 258 OR
                  ct.motivo = 273 OR
                  ct.motivo = 283 OR
                  ct.motivo = 284 OR
                  ct.motivo = 310 OR
                  ct.motivo = 312 OR
                  ct.motivo = 318 OR
                  ct.motivo = 324 OR
                  ct.motivo = 370 OR
                  ct.motivo = 433 OR
                  ct.motivo = 499 OR
                  ct.motivo = 522 OR
                  ct.motivo = 538
                ) THEN 15
            WHEN (ct.motivo = 15 OR
                  ct.motivo = 31 OR
                  ct.motivo = 44 OR
                  ct.motivo = 63 OR
                  ct.motivo = 73 OR
                  ct.motivo = 81 OR
                  ct.motivo = 110 OR
                  ct.motivo = 184 OR
                  ct.motivo = 106
                ) THEN 29
            WHEN (
                    ct.motivo = 134 OR
                    ct.motivo = 138 OR
                    ct.motivo = 293 OR
                    ct.motivo = 386 OR
                    ct.motivo = 456 OR
                    ct.motivo = 463 OR
                    ct.motivo = 486 OR
                    ct.motivo = 496 OR
                    ct.motivo = 554 OR
                    ct.motivo = 569 OR
                    ct.motivo = 570
                ) THEN 27


            WHEN (ct.motivo = 1 OR
                  ct.motivo = 62 OR
                  ct.motivo = 105 OR
                  ct.motivo = 163 OR
                  ct.motivo = 195 OR
                  ct.motivo = 215 OR
                  ct.motivo = 316 OR
                  ct.motivo = 375 OR
                  ct.motivo = 395 OR
                  ct.motivo = 405 OR
                  ct.motivo = 434 OR
                  ct.motivo = 435 OR
                  ct.motivo = 442 OR
                  ct.motivo = 444 OR
                  ct.motivo = 461 OR
                  ct.motivo = 468 OR
                  ct.motivo = 474 OR
                  ct.motivo = 493 OR
                  ct.motivo = 498 OR
                  ct.motivo = 501 OR
                  ct.motivo = 531 OR
                  ct.motivo = 543 OR
                  ct.motivo = 568 OR
                  ct.motivo = 571 OR
                  ct.motivo = 584 OR
                  ct.motivo = 583
                ) THEN 10


            WHEN (ct.motivo = 366 OR
                  ct.motivo = 21 OR
                  ct.motivo = 22 OR
                  ct.motivo = 34 OR
                  ct.motivo = 42 OR
                  ct.motivo = 43 OR
                  ct.motivo = 147 OR
                  ct.motivo = 174 OR
                  ct.motivo = 192 OR
                  ct.motivo = 200 OR
                  ct.motivo = 272 OR
                  ct.motivo = 291 OR
                  ct.motivo = 327 OR
                  ct.motivo = 368 OR
                  ct.motivo = 426 OR
                  ct.motivo = 429 OR
                  ct.motivo = 471 OR
                  ct.motivo = 599 OR
                  ct.motivo = 157
                ) THEN 39
            WHEN (ct.motivo = 76 OR ct.motivo = 502) THEN 46

            WHEN (ct.motivo = 588 OR
                  ct.motivo = 589 OR
                  ct.motivo = 590 OR
                  ct.motivo = 591 OR
                  ct.motivo = 592 OR
                  ct.motivo = 593 OR
                  ct.motivo = 594 OR
                  ct.motivo = 595 OR
                  ct.motivo = 596 OR
                  ct.motivo = 597 OR
                  ct.motivo = 329 OR
                  ct.motivo = 126 OR
                  ct.motivo = 181 OR
                  ct.motivo = 182 OR
                  ct.motivo = 540 OR
                  ct.motivo = 562
                ) THEN 48


            WHEN (ct.motivo = 504 OR
                  ct.motivo = 505 OR
                  ct.motivo = 506 OR
                  ct.motivo = 507 OR
                  ct.motivo = 508 OR
                  ct.motivo = 509 OR
                  ct.motivo = 510 OR
                  ct.motivo = 511 OR
                  ct.motivo = 512 OR
                  ct.motivo = 513 OR
                  ct.motivo = 514 OR
                  ct.motivo = 515 OR
                  ct.motivo = 516 OR
                  ct.motivo = 517 OR
                  ct.motivo = 518 OR
                  ct.motivo = 519 OR
                  ct.motivo = 520 OR
                  ct.motivo = 521 OR
                  ct.motivo = 20 OR
                  ct.motivo = 27 OR
                  ct.motivo = 36 OR
                  ct.motivo = 41 OR
                  ct.motivo = 54 OR
                  ct.motivo = 57 OR
                  ct.motivo = 60 OR
                  ct.motivo = 75 OR
                  ct.motivo = 82 OR
                  ct.motivo = 83 OR
                  ct.motivo = 84 OR
                  ct.motivo = 85 OR
                  ct.motivo = 86 OR
                  ct.motivo = 104 OR
                  ct.motivo = 108 OR
                  ct.motivo = 112 OR
                  ct.motivo = 113 OR
                  ct.motivo = 129 OR
                  ct.motivo = 133 OR
                  ct.motivo = 142 OR
                  ct.motivo = 146 OR
                  ct.motivo = 173 OR
                  ct.motivo = 183 OR
                  ct.motivo = 188 OR
                  ct.motivo = 197 OR
                  ct.motivo = 212 OR
                  ct.motivo = 214 OR
                  ct.motivo = 216 OR
                  ct.motivo = 220 OR
                  ct.motivo = 231 OR
                  ct.motivo = 232 OR
                  ct.motivo = 241 OR
                  ct.motivo = 245 OR
                  ct.motivo = 247 OR
                  ct.motivo = 259 OR
                  ct.motivo = 263 OR
                  ct.motivo = 264 OR
                  ct.motivo = 266 OR
                  ct.motivo = 267 OR
                  ct.motivo = 269 OR
                  ct.motivo = 274 OR
                  ct.motivo = 277 OR
                  ct.motivo = 281 OR
                  ct.motivo = 282 OR
                  ct.motivo = 285 OR
                  ct.motivo = 292 OR
                  ct.motivo = 294 OR
                  ct.motivo = 299 OR
                  ct.motivo = 302 OR
                  ct.motivo = 320 OR
                  ct.motivo = 331 OR
                  ct.motivo = 372 OR
                  ct.motivo = 389 OR
                  ct.motivo = 393 OR
                  ct.motivo = 397 OR
                  ct.motivo = 409 OR
                  ct.motivo = 410 OR
                  ct.motivo = 430 OR
                  ct.motivo = 464 OR
                  ct.motivo = 465 OR
                  ct.motivo = 467 OR
                  ct.motivo = 472 OR
                  ct.motivo = 527 OR
                  ct.motivo = 536 OR
                  ct.motivo = 541 OR
                  ct.motivo = 542 OR
                  ct.motivo = 557 OR
                  ct.motivo = 558 OR
                  ct.motivo = 559 OR
                  ct.motivo = 561 OR
                  ct.motivo = 600
                ) THEN 49


            WHEN (ct.motivo = 307 OR
                  ct.motivo = 18 OR
                  ct.motivo = 39 OR
                  ct.motivo = 47 OR
                  ct.motivo = 51 OR
                  ct.motivo = 53 OR
                  ct.motivo = 77 OR
                  ct.motivo = 78 OR
                  ct.motivo = 79 OR
                  ct.motivo = 111 OR
                  ct.motivo = 132 OR
                  ct.motivo = 155 OR
                  ct.motivo = 202 OR
                  ct.motivo = 230 OR
                  ct.motivo = 234 OR
                  ct.motivo = 249 OR
                  ct.motivo = 278 OR
                  ct.motivo = 321 OR
                  ct.motivo = 338 OR
                  ct.motivo = 359 OR
                  ct.motivo = 402 OR
                  ct.motivo = 432 OR
                  ct.motivo = 495 OR
                  ct.motivo = 524 OR
                  ct.motivo = 525 OR
                  ct.motivo = 526 OR
                  ct.motivo = 627 OR
                  ct.motivo = 528 OR
                  ct.motivo = 529 OR
                  ct.motivo = 564
                ) THEN 50
            WHEN (ct.motivo = 313 OR ct.motivo = 198 OR ct.motivo = 579) THEN 52
            WHEN (ct.motivo = 7) THEN 55
            WHEN (ct.motivo = 17 OR
                  ct.motivo = 144 OR
                  ct.motivo = 145 OR
                  ct.motivo = 165 OR
                  ct.motivo = 219 OR
                  ct.motivo = 223 OR
                  ct.motivo = 224 OR
                  ct.motivo = 298
                ) THEN 53
            WHEN (ct.motivo = 8 OR
                  ct.motivo = 153 OR
                  ct.motivo = 154 OR
                  ct.motivo = 162 OR
                  ct.motivo = 169 OR
                  ct.motivo = 201 OR
                  ct.motivo = 203 OR
                  ct.motivo = 311 OR
                  ct.motivo = 330 OR
                  ct.motivo = 385
                ) THEN 54

            WHEN (ct.motivo = 250) THEN 56
            WHEN (ct.motivo = 89 OR
                  ct.motivo = 137 OR
                  ct.motivo = 149 OR
                  ct.motivo = 150 OR
                  ct.motivo = 158 OR
                  ct.motivo = 170 OR
                  ct.motivo = 218 OR
                  ct.motivo = 229 OR
                  ct.motivo = 268 OR
                  ct.motivo = 271 OR
                  ct.motivo = 379 OR
                  ct.motivo = 488 OR
                  ct.motivo = 539
                ) THEN 11


            WHEN (ct.motivo = 4 OR
                  ct.motivo = 52 OR
                  ct.motivo = 66 OR
                  ct.motivo = 74 OR
                  ct.motivo = 175 OR
                  ct.motivo = 177 OR
                  ct.motivo = 178 OR
                  ct.motivo = 179 OR
                  ct.motivo = 265 OR
                  ct.motivo = 279 OR
                  ct.motivo = 286 OR
                  ct.motivo = 301 OR
                  ct.motivo = 341 OR
                  ct.motivo = 342 OR
                  ct.motivo = 343 OR
                  ct.motivo = 344 OR
                  ct.motivo = 345 OR
                  ct.motivo = 346 OR
                  ct.motivo = 347 OR
                  ct.motivo = 348 OR
                  ct.motivo = 349 OR
                  ct.motivo = 350 OR
                  ct.motivo = 351 OR
                  ct.motivo = 352 OR
                  ct.motivo = 353 OR
                  ct.motivo = 354 OR
                  ct.motivo = 355 OR
                  ct.motivo = 356 OR
                  ct.motivo = 357 OR
                  ct.motivo = 448 OR
                  ct.motivo = 449 OR
                  ct.motivo = 450 OR
                  ct.motivo = 451 OR
                  ct.motivo = 452 OR
                  ct.motivo = 462 OR
                  ct.motivo = 573 OR
                  ct.motivo = 574 OR
                  ct.motivo = 575 OR
                  ct.motivo = 90 OR
                  ct.motivo = 91 OR
                  ct.motivo = 92 OR
                  ct.motivo = 93 OR
                  ct.motivo = 94 OR
                  ct.motivo = 95 OR
                  ct.motivo = 96 OR
                  ct.motivo = 97
                ) THEN 57


            WHEN (ct.motivo = 5 OR
                  ct.motivo = 19 OR
                  ct.motivo = 24 OR
                  ct.motivo = 30 OR
                  ct.motivo = 33 OR
                  ct.motivo = 46 OR
                  ct.motivo = 55 OR
                  ct.motivo = 68 OR
                  ct.motivo = 69 OR
                  ct.motivo = 287 OR
                  ct.motivo = 305 OR
                  ct.motivo = 362 OR
                  ct.motivo = 473 OR
                  ct.motivo = 475 OR
                  ct.motivo = 478 OR
                  ct.motivo = 479 OR
                  ct.motivo = 480 OR
                  ct.motivo = 481 OR
                  ct.motivo = 489
                ) THEN 2

            WHEN (ct.motivo = 191 OR
                  ct.motivo = 199 OR
                  ct.motivo = 204 OR
                  ct.motivo = 206 OR
                  ct.motivo = 209 OR
                  ct.motivo = 308 OR
                  ct.motivo = 337 OR
                  ct.motivo = 398 OR
                  ct.motivo = 399 OR
                  ct.motivo = 446 OR
                  ct.motivo = 586 
                ) THEN 59
            WHEN (ct.motivo = 288) THEN 17
            WHEN (ct.motivo = 13 OR
                  ct.motivo = 64 OR
                  ct.motivo = 135 OR
                  ct.motivo = 148 OR
                  ct.motivo = 156 OR
                  ct.motivo = 193 OR
                  ct.motivo = 196 OR
                  ct.motivo = 261 OR
                  ct.motivo = 270 OR
                  ct.motivo = 300 OR
                  ct.motivo = 322 OR
                  ct.motivo = 334
                ) THEN 18
            WHEN (ct.motivo = 16) THEN 1
            WHEN (ct.motivo = 101) THEN 22

            WHEN (ct.motivo = 29 OR
                  ct.motivo = 38 OR
                  ct.motivo = 45 OR
                  ct.motivo = 50 OR
                  ct.motivo = 61 OR
                  ct.motivo = 102 OR
                  ct.motivo = 190 OR
                  ct.motivo = 213 OR
                  ct.motivo = 315 OR
                  ct.motivo = 392 OR
                  ct.motivo = 431 OR
                  ct.motivo = 447 OR
                  ct.motivo = 553 OR
                  ct.motivo = 566 OR
                  ct.motivo = 567
                ) THEN 23

            WHEN (ct.motivo = 71 OR
                  ct.motivo = 123 OR
                  ct.motivo = 131 OR
                  ct.motivo = 225 OR
                  ct.motivo = 376
                ) THEN 26

            WHEN (ct.motivo = 485 OR
                  ct.motivo = 28 OR
                  ct.motivo = 58 OR
                  ct.motivo = 72 OR
                  ct.motivo = 100 OR
                  ct.motivo = 152 OR
                  ct.motivo = 171 OR
                  ct.motivo = 235 OR
                  ct.motivo = 236 OR
                  ct.motivo = 243 OR
                  ct.motivo = 246 OR
                  ct.motivo = 248 OR
                  ct.motivo = 260 OR
                  ct.motivo = 280 OR
                  ct.motivo = 290 OR
                  ct.motivo = 306 OR
                  ct.motivo = 309 OR
                  ct.motivo = 325 OR
                  ct.motivo = 340 OR
                  ct.motivo = 361 OR
                  ct.motivo = 371 OR
                  ct.motivo = 374 OR
                  ct.motivo = 377 OR
                  ct.motivo = 383 OR
                  ct.motivo = 391 OR
                  ct.motivo = 407 OR
                  ct.motivo = 408 OR
                  ct.motivo = 425 OR
                  ct.motivo = 440 OR
                  ct.motivo = 453 OR
                  ct.motivo = 494 OR
                  ct.motivo = 503 OR
                  ct.motivo = 534 OR
                  ct.motivo = 544 OR
                  ct.motivo = 555 OR
                  ct.motivo = 556 OR
                  ct.motivo = 572 OR
                  ct.motivo = 580 OR
                  ct.motivo = 582 OR
                  ct.motivo = 587 OR
                  ct.motivo = 598 OR
                  ct.motivo = 601 OR
                  ct.motivo = 109 OR
                  ct.motivo = 114 OR
                  ct.motivo = 130 OR
                  ct.motivo = 139 OR
                  ct.motivo = 238 OR
                  ct.motivo = 251 OR
                  ct.motivo = 276 OR
                  ct.motivo = 296 OR
                  ct.motivo = 369 OR
                  ct.motivo = 427 OR
                  ct.motivo = 483 OR
                  ct.motivo = 484 OR
                  ct.motivo = 530 OR
                  ct.motivo = 560
                ) THEN 62

            WHEN (ct.motivo = 117 OR
                  ct.motivo = 438 OR
                  ct.motivo = 441 OR
                  ct.motivo = 443 OR
                  ct.motivo = 459 OR
                  ct.motivo = 460
                ) THEN 85

            WHEN (ct.motivo = 9 OR
                  ct.motivo = 469 OR
                  ct.motivo = 470 OR
                  ct.motivo = 476 OR
                  ct.motivo = 477 OR
                  ct.motivo = 482 OR
                  ct.motivo = 577 OR
                  ct.motivo = 578
                ) THEN 3

            WHEN (ct.motivo = 40 OR
                  ct.motivo = 48 OR
                  ct.motivo = 59 OR
                  ct.motivo = 99 OR
                  ct.motivo = 107 OR
                  ct.motivo = 122 OR
                  ct.motivo = 314 OR
                  ct.motivo = 394 OR
                  ct.motivo = 404 OR
                  ct.motivo = 411 OR
                  ct.motivo = 412 OR
                  ct.motivo = 413 OR
                  ct.motivo = 414 OR
                  ct.motivo = 415 OR
                  ct.motivo = 416 OR
                  ct.motivo = 417 OR
                  ct.motivo = 418 OR
                  ct.motivo = 419 OR
                  ct.motivo = 420 OR
                  ct.motivo = 421 OR
                  ct.motivo = 422 OR
                  ct.motivo = 423 OR
                  ct.motivo = 424 OR
                  ct.motivo = 428 OR
                  ct.motivo = 436 OR
                  ct.motivo = 437 OR
                  ct.motivo = 143 OR
                  ct.motivo = 240 OR
                  ct.motivo = 304 OR
                  ct.motivo = 563
                ) THEN 6

            WHEN (ct.motivo = 11 OR
                  ct.motivo = 23 OR
                  ct.motivo = 70 OR
                  ct.motivo = 118 OR
                  ct.motivo = 119 OR
                  ct.motivo = 128 OR
                  ct.motivo = 161 OR
                  ct.motivo = 185 OR
                  ct.motivo = 187 OR
                  ct.motivo = 211 OR
                  ct.motivo = 317 OR
                  ct.motivo = 364 OR
                  ct.motivo = 388 OR
                  ct.motivo = 401 OR
                  ct.motivo = 445 OR
                  ct.motivo = 458 OR
                  ct.motivo = 535
                ) THEN 67
            WHEN (ct.motivo = 244 OR
                  ct.motivo = 295 OR
                  ct.motivo = 10 OR
                  ct.motivo = 115 OR
                  ct.motivo = 323 OR
                  ct.motivo = 360 OR
                  ct.motivo = 373 OR
                  ct.motivo = 390 OR
                  ct.motivo = 490 OR
                  ct.motivo = 491 OR
                  ct.motivo = 492
                ) THEN 65
            WHEN (ct.motivo = 35 OR
                  ct.motivo = 121 OR
                  ct.motivo = 124 OR
                  ct.motivo = 160 OR
                  ct.motivo = 168 OR
                  ct.motivo = 176 OR
                  ct.motivo = 189 OR
                  ct.motivo = 207 OR
                  ct.motivo = 208 OR
                  ct.motivo = 210 OR
                  ct.motivo = 221 OR
                  ct.motivo = 222 OR
                  ct.motivo = 227 OR
                  ct.motivo = 239 OR
                  ct.motivo = 319 OR
                  ct.motivo = 326 OR
                  ct.motivo = 396 OR
                  ct.motivo = 403 OR
                  ct.motivo = 454 OR
                  ct.motivo = 497 OR
                  ct.motivo = 500 OR
                  ct.motivo = 523 OR
                  ct.motivo = 585
                ) THEN 68
            WHEN (ct.motivo = 166 OR ct.motivo = 382) THEN 8
            WHEN (ct.motivo = 167 OR
                  ct.motivo = 233 OR
                  ct.motivo = 339 OR
                  ct.motivo = 545 OR
                  ct.motivo = 546 OR
                  ct.motivo = 547 OR
                  ct.motivo = 548 OR
                  ct.motivo = 549 OR
                  ct.motivo = 550 OR
                  ct.motivo = 551 OR
                  ct.motivo = 552
                ) THEN 71
            WHEN (ct.motivo = 14 OR
                  ct.motivo = 228 OR
                  ct.motivo = 242 OR
                  ct.motivo = 252 OR
                  ct.motivo = 336 OR
                  ct.motivo = 363
                ) THEN 73
            WHEN (ct.motivo = 26 OR
                  ct.motivo = 98 OR
                  ct.motivo = 136 OR
                  ct.motivo = 140 OR
                  ct.motivo = 194 OR
                  ct.motivo = 226 OR
                  ct.motivo = 255 OR
                  ct.motivo = 262 OR
                  ct.motivo = 303 OR
                  ct.motivo = 335 OR
                  ct.motivo = 466 OR
                  ct.motivo = 565
                ) THEN 4
            WHEN (ct.motivo = 2 OR ct.motivo = 49) THEN 14

            WHEN (ct.motivo = 32 OR
                  ct.motivo = 80 OR
                  ct.motivo = 87 OR
                  ct.motivo = 88 OR
                  ct.motivo = 103 OR
                  ct.motivo = 120 OR
                  ct.motivo = 180 OR
                  ct.motivo = 217 OR
                  ct.motivo = 257 OR
                  ct.motivo = 297 OR
                  ct.motivo = 533
                ) THEN 75
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
