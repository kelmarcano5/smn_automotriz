select
		smn_automotriz.smn_tipo_documento_afiliado.tdo_descripcion
from
		smn_automotriz.smn_tipo_documento_afiliado
where
		upper(smn_automotriz.smn_tipo_documento_afiliado.tdo_descripcion) = upper(${fld:tdo_descripcion})
