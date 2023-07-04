select
		smn_automotriz.smn_tipo_consulta.smn_tipo_consulta_id,
	${field}
from
	smn_automotriz.smn_tipo_consulta
where
		smn_automotriz.smn_tipo_consulta.smn_tipo_consulta_id is not null
	${filter}
	
	
