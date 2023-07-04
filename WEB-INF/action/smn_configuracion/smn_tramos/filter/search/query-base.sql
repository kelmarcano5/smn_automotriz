select
	case
	when smn_automotriz.smn_tramos.trm_dia_semana='LU' then '${lbl:b_trm_lunes}'
	when smn_automotriz.smn_tramos.trm_dia_semana='MA' then '${lbl:b_trm_martes}'
	when smn_automotriz.smn_tramos.trm_dia_semana='MI' then '${lbl:b_trm_miercoles}'
	when smn_automotriz.smn_tramos.trm_dia_semana='JU' then '${lbl:b_trm_jueves}'
	when smn_automotriz.smn_tramos.trm_dia_semana='VI' then '${lbl:b_trm_viernes}'
	when smn_automotriz.smn_tramos.trm_dia_semana='SA' then '${lbl:b_trm_sabado}'
	when smn_automotriz.smn_tramos.trm_dia_semana='DO' then '${lbl:b_trm_domingo}'
	end as trm_dia_semana_combo,
		smn_automotriz.smn_tramos.smn_tramos_id,
	smn_automotriz.smn_tramos.trm_codigo,
	smn_automotriz.smn_tramos.trm_descripcion,
	smn_automotriz.smn_tramos.trm_dia_semana,
	smn_automotriz.smn_tramos.trm_hora_inicio,
	smn_automotriz.smn_tramos.trm_hora_fin,
	smn_automotriz.smn_tramos.trm_fecha_registro
	
from
	smn_automotriz.smn_tramos
