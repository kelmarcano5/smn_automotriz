select
		smn_automotriz.smn_horario.smn_horarios_id,
	${field}
from
	smn_automotriz.smn_horario
where
		smn_automotriz.smn_horario.smn_horarios_id is not null
	${filter}
	
	
