select
		smn_automotriz.smn_tipo_documento_afiliado.tdo_codigo,
	smn_automotriz.smn_tipo_documento_afiliado.tdo_descripcion,
	smn_automotriz.smn_tipo_documento_afiliado.tdo_fecha_registro
from
	smn_automotriz.smn_tipo_documento_afiliado 
where
	smn_automotriz.smn_tipo_documento_afiliado.smn_tipo_documento_afiliado_id = ${fld:id}