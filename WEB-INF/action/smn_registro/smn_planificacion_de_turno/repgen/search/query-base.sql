select
		smn_automotriz.smn_planificacion_de_turno.smn_planificacion_de_turno_id,
	${field}
from
	smn_automotriz.smn_planificacion_de_turno
where
		smn_automotriz.smn_planificacion_de_turno.smn_planificacion_de_turno_id is not null
	${filter}
	
	
