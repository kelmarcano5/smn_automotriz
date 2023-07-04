select
	case
	when smn_automotriz.smn_origen.ori_tipo='CT' then 'Cita'
	when smn_automotriz.smn_origen.ori_tipo='IG' then 'Ingreso'
	end as ori_tipo_combo,
	smn_automotriz.smn_origen.ori_codigo,
	smn_automotriz.smn_origen.ori_descripcion,
	smn_automotriz.smn_origen.ori_tipo,
	smn_automotriz.smn_origen.ori_fecha_registro,
		smn_automotriz.smn_origen.smn_origen_id
	
from
	smn_automotriz.smn_origen
where
	smn_origen_id is not null
	${filter}
order by
		smn_origen_id
