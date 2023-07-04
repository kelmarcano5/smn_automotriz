select
	smn_automotriz.smn_tipo_documento_afiliado.*
from
	smn_automotriz.smn_tipo_documento_afiliado
where
	smn_tipo_documento_afiliado_id = ${fld:id}
