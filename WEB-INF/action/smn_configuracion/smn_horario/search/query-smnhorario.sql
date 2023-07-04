select
	case
		when smn_automotriz.smn_horario.hor_status='A' then '${lbl:b_hor_activo}'
		when smn_automotriz.smn_horario.hor_status='I' then '${lbl:b_hor_inactivo}'
	end as hor_status_combo,
	smn_automotriz.smn_horario.hor_codigo,
	smn_automotriz.smn_horario.hor_descripcion,
	smn_automotriz.smn_horario.hor_status,
	smn_automotriz.smn_horario.hor_fecha_registro,
	smn_automotriz.smn_horario.smn_horarios_id as smn_horario_id
	
from
	smn_automotriz.smn_horario
