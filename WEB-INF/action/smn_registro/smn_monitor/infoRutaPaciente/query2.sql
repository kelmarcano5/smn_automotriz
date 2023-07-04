select DISTINCT smn_automotriz.smn_ruta_paciente.rta_numero_documento_identidad as rta_numero_documento_identidad,
smn_automotriz.smn_ruta_paciente.rta_ticket as rta_ticket, 
smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf_combo,

smn_base.smn_auxiliar.aux_nombres || ' - ' ||  smn_base.smn_auxiliar.aux_apellidos as smn_auxiliar_rf_combo,
smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf_combo,
smn_base.smn_unidades_servicios.uns_descripcion  as smn_unidad_servicio_rf,
smn_automotriz.smn_ruta_paciente.rta_fecha_registro as rta_fecha_registro,
0 as saldo_ea, 0 as frecuencia, smn_automotriz.smn_ruta_paciente.smn_serie_id as serie,
(select smn_automotriz.smn_balance_capacidad.bcp_saldo from smn_automotriz.smn_balance_capacidad
 where smn_automotriz.smn_balance_capacidad.smn_unidades_servicios_rf= smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf
 and smn_automotriz.smn_ruta_paciente.smn_area_servicio_rf = ${fld:smn_areas_servicios}   and smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf=${fld:smn_unidad_servicios}
	and upper(smn_automotriz.smn_ruta_paciente.rta_estatus) = 'PE'
	order by smn_automotriz.smn_ruta_paciente.rta_ticket
	limit 1) as saldo,
(select case
	when smn_automotriz.smn_ruta_paciente.smn_grupo_prestador_rf is not null then (select gps_frecuencia from smn_base.smn_grupo_prestador_servicio_frecuencia where smn_grupos_prestadores_id = smn_automotriz.smn_ruta_paciente.smn_grupo_prestador_rf and gps_frecuencia is not null) 
	when smn_automotriz.smn_ruta_paciente.smn_prestador_servicio_rf is not null then (select gps_frecuencia from smn_base.smn_grupo_prestador_servicio_frecuencia where smn_prestadores_servicios_id = smn_automotriz.smn_ruta_paciente.smn_prestador_servicio_rf and gps_frecuencia is not null)
	end as frecuencia
	from smn_automotriz.smn_ruta_paciente
	where smn_automotriz.smn_ruta_paciente.smn_area_servicio_rf = ${fld:smn_areas_servicios}  and smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf=${fld:smn_unidad_servicios}
	and upper(smn_automotriz.smn_ruta_paciente.rta_estatus) = 'PE'
	order by smn_automotriz.smn_ruta_paciente.rta_ticket
	limit 1)
from smn_automotriz.smn_ruta_paciente
left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf
left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_ruta_paciente.smn_clase_auxiliar_rf
left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_automotriz.smn_ruta_paciente.smn_entidad_rf
left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf
left outer join smn_automotriz.smn_balance_capacidad on smn_automotriz.smn_balance_capacidad.smn_unidades_servicios_rf = smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf
where smn_automotriz.smn_ruta_paciente.smn_area_servicio_rf = ${fld:smn_areas_servicios} and smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf=${fld:smn_unidad_servicios}
and upper(smn_automotriz.smn_ruta_paciente.rta_estatus) = 'PE' AND smn_automotriz.smn_ruta_paciente.rta_fecha_registro='${def:date}'
order by smn_automotriz.smn_ruta_paciente.rta_ticket desc limit 5