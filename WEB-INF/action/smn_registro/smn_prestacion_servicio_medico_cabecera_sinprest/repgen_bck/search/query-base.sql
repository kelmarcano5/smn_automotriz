select
		smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id,
	${field}
from
	smn_automotriz.smn_prestacion_servicio_medico_cabecera
where
		smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id is not null
	${filter}
	
	
