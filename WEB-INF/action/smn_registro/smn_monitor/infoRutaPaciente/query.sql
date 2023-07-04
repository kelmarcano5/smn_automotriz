select smn_automotriz.smn_ruta_paciente.smn_ruta_id as smn_ruta_id_ea, 
smn_automotriz.smn_ruta_paciente.rta_numero_documento_identidad as rta_numero_documento_identidad_ea,
smn_automotriz.smn_ruta_paciente.rta_ticket as rta_ticket_ea, 
smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf_combo_ea,
smn_base.smn_auxiliar.aux_nombres || ' - ' ||  smn_base.smn_auxiliar.aux_apellidos as smn_auxiliar_rf_combo_ea,
smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf_combo_ea,
smn_base.smn_unidades_servicios.uns_descripcion  as smn_unidad_servicio_rf_ea,
smn_automotriz.smn_ruta_paciente.rta_fecha_registro as rta_fecha_registro_ea,
0 as saldo_ea, 0 as frecuencia_ea, smn_automotriz.smn_ruta_paciente.smn_serie_id as serie
from smn_automotriz.smn_ruta_paciente
left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf
left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_ruta_paciente.smn_clase_auxiliar_rf
left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_automotriz.smn_ruta_paciente.smn_entidad_rf
left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf
where smn_automotriz.smn_ruta_paciente.smn_area_servicio_rf = ${fld:smn_areas_servicios} and smn_automotriz.smn_ruta_paciente.smn_unidad_servicio_rf=${fld:smn_unidad_servicios}
and upper(smn_automotriz.smn_ruta_paciente.rta_estatus) = 'EA' and smn_automotriz.smn_ruta_paciente.rta_fecha_registro='${def:date}' 
order by smn_automotriz.smn_ruta_paciente.rta_ticket asc limit 1