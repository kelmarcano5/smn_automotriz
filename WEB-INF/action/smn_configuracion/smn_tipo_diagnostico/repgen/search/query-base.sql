select
		smn_automotriz.smn_tipo_diagnostico.smn_tipo_diagnostico_id,
	${field}
from
	smn_automotriz.smn_tipo_diagnostico
where
		smn_automotriz.smn_tipo_diagnostico.smn_tipo_diagnostico_id is not null
	${filter}
	
	
