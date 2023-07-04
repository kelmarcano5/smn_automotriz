SELECT smn_documento_id_caja from (SELECT 
	case 
	when aux_condicion_financiera_rf != 0 AND
           CASE WHEN dos_multiples_pagador = 'S' then true end
        then 'credito' 
	when aux_condicion_financiera_rf = 0 AND
           CASE WHEN dos_multiples_pagador = 'N' then true end
	then 'contado'
	end as ver,	
	smn_documento_id as smn_documento_id_caja
FROM smn_caja.smn_documento, smn_base.smn_documentos_generales, smn_base.smn_auxiliar
WHERE  smn_caja.smn_documento.smn_documento_general_rf = smn_base.smn_documentos_generales.smn_documentos_generales_id and
smn_base.smn_documentos_generales.dcg_codigo = 'AUT_SEME'
and 
smn_auxiliar_id = ${fld:auxiliar} and 
smn_clase_auxiliar_rf = ${fld:smn_clase_auxiliar_rf}) as foo
where ver != '' limit 1

--(select smn_base.smn_documentos_generales.dcg_codigo from smn_automotriz.smn_documento
--inner join smn_base.smn_documentos_generales on smn_base.smn_documentos_generales.smn_documentos_generales_id = smn_automotriz.smn_documento.smn_documento_general_rf inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_documento_id = smn_automotriz.smn_documento.smn_documento_id where smn_automotriz.smn_ingresos.smn_ingresos_id=${fld:id_ingreso})
--smn_base.smn_documentos_generales.dcg_codigo = 'ADVH'