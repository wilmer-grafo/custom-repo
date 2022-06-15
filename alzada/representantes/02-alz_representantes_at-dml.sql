--[nombre_notario]

--[emiPor]=8
select substring(
    substring('[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]', 0,
    charindex('[/emiPor]', '[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]'))
    ,
    CHARINDEX('[emiPor]',
        substring('[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]', 0,
    charindex('[/emiPor]', '[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]'))
        )+8,
    CHARINDEX('[emiPor]',
        substring('[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]', 0,
    charindex('[/emiPor]', '[com]3[/com][doc]470/2020[/doc][emiPor]KARINA LILIANA SERRUDO MIRANDA[/emiPor]'))
        )+8);
-- replace
select replace('[glosa]por ELIANA RAQUEL ZEBALLOS YUGAR, en su condición de ADMINISTRACIÓN ADUANA AEROPUERTO EL ALTO de LA ADUANA NACIONAL,conforme personería acreditada mediante Testimonio de Poder Nº 270/2016, de 20 de Junio de 2017, otorgado por Notario de Fe Pública [nombre_notario],[/glosa]',
    '[nombre_notario]', '');