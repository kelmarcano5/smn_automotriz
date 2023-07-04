select
		smn_automotriz.smn_tipo_documento.tdc_nombre
from
		smn_automotriz.smn_tipo_documento
where
		upper(smn_automotriz.smn_tipo_documento.tdc_nombre) = upper(${fld:tdc_nombre})
