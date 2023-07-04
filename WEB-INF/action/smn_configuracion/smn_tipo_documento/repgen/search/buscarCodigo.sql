select
		smn_automotriz.smn_tipo_documento.tdc_codigo
from
		smn_automotriz.smn_tipo_documento
where
		upper(smn_automotriz.smn_tipo_documento.tdc_codigo) = upper(${fld:tdc_codigo})
