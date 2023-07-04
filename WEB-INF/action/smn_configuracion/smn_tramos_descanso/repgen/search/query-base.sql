select
		smn_automotriz.smn_tramos_descanso.smn_tramo_descanso_id,
	${field}
from
	smn_automotriz.smn_tramos_descanso
where
		smn_automotriz.smn_tramos_descanso.smn_tramo_descanso_id is not null
	${filter}
	
	
