select
	smn_automotriz.smn_observaciones.obs_descripcion,
	${field}
from
	smn_automotriz.smn_prestacion_servicio_medico_detalle
	left outer join smn_automotriz.smn_observaciones on smn_automotriz.smn_observaciones.smn_observaciones_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_observaciones_rf
where
		smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_detalle_id = ${fld:id}
	
