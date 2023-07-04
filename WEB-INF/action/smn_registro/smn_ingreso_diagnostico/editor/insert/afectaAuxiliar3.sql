select
	smn_base.smn_auxiliar.aux_maneja_sucursal as maneja_sucursal
from 
	smn_base.smn_auxiliar
	inner join smn_automotriz.smn_contratante on 
		smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_contratante.smn_auxiliar_rf and
		smn_base.smn_auxiliar.smn_clase_auxiliar_rf = smn_automotriz.smn_contratante.smn_clase_auxiliar_rf
where 
	smn_automotriz.smn_contratante.smn_contratante_id = ${fld:smn_contratante_id}
and smn_base.smn_auxiliar.aux_maneja_sucursal = 'SI' and '${fld:smn_auxilia_unidad_servicio_rf}' = 'NULL'
