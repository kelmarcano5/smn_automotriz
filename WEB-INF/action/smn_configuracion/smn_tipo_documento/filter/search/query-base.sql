select
	case
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='AF' then '${lbl:b_afiliacion}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='CI' then '${lbl:b_citas}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='PR' then '${lbl:b_presupuesto}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='IN' then '${lbl:b_ingreso}'
	end as tdc_naturaleza_combo,
	smn_automotriz.smn_tipo_documento.tdc_codigo,
	smn_automotriz.smn_tipo_documento.tdc_nombre,
	smn_automotriz.smn_tipo_documento.tdc_naturaleza,
	smn_automotriz.smn_tipo_documento.tdc_fecha_registro,
		smn_automotriz.smn_tipo_documento.smn_tipo_documento_id
	
from
	smn_automotriz.smn_tipo_documento
where
	smn_tipo_documento_id is not null
	${filter}
order by
		smn_tipo_documento_id
