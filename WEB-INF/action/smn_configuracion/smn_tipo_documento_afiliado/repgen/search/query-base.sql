select
		smn_automotriz.smn_tipo_documento_afiliado.smn_tipo_documento_afiliado_id,
	${field}
from
	smn_automotriz.smn_tipo_documento_afiliado
where
		smn_automotriz.smn_tipo_documento_afiliado.smn_tipo_documento_afiliado_id is not null
	${filter}
	
	
