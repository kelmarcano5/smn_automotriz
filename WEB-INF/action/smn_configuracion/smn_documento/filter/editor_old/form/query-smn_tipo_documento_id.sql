select smn_automotriz.smn_tipo_documento.smn_tipo_documento_id as id, smn_automotriz.smn_tipo_documento.tdc_codigo|| ' - ' || smn_automotriz.smn_tipo_documento.tdc_nombre as item from smn_automotriz.smn_tipo_documento order by smn_automotriz.smn_tipo_documento.tdc_nombre