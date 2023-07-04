select
	case
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='1' then '${lbl:b_cie10}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='2' then '${lbl:b_procedimientos}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='3' then '${lbl:b_otra}'
	end as dgn_tipo_combo,
	smn_automotriz.smn_tipo_diagnostico.dgn_codigo,
	smn_automotriz.smn_tipo_diagnostico.dgn_descripcion,
	smn_automotriz.smn_tipo_diagnostico.dgn_tipo,
	smn_automotriz.smn_tipo_diagnostico.dgn_fecha_registro,
		smn_automotriz.smn_tipo_diagnostico.smn_tipo_diagnostico_id
	
from
	smn_automotriz.smn_tipo_diagnostico
where
	smn_tipo_diagnostico_id is not null
	${filter}
order by
		smn_tipo_diagnostico_id
