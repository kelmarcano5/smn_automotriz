select
	case
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='AF' then '${lbl:b_afiliacion}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='CI' then '${lbl:b_citas}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='PR' then '${lbl:b_presupuesto}'
	when smn_automotriz.smn_tipo_documento.tdc_naturaleza='IN' then '${lbl:b_ingreso}'
	end as tdc_naturaleza_combo,
	smn_automotriz.smn_tipo_documento.*
from
	smn_automotriz.smn_tipo_documento
where
	smn_tipo_documento_id = ${fld:id}
