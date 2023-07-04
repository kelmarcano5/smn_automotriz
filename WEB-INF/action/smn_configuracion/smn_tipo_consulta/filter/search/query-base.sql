select
	smn_automotriz.smn_tipo_consulta.tcs_codigo,
	smn_automotriz.smn_tipo_consulta.tcs_nombre,
	smn_automotriz.smn_tipo_consulta.tcs_fecha_registro,
		smn_automotriz.smn_tipo_consulta.smn_tipo_consulta_id
	
from
	smn_automotriz.smn_tipo_consulta
where
	smn_tipo_consulta_id is not null
	${filter}
order by
		smn_tipo_consulta_id
