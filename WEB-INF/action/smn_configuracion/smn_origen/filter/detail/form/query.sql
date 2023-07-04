select
	case
	when smn_automotriz.smn_origen.ori_tipo='CT' then 'Cita'
	when smn_automotriz.smn_origen.ori_tipo='IG' then 'Ingreso'
	end as ori_tipo_combo,
	smn_automotriz.smn_origen.*
from
	smn_automotriz.smn_origen
where
	smn_origen_id = ${fld:id}
