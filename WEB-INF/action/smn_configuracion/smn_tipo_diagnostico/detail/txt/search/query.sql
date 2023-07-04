select
	case
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='1' then '${lbl:b_cie10}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='2' then '${lbl:b_procedimientos}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='3' then '${lbl:b_otra}'
	end as dgn_tipo_combo,
	smn_automotriz.smn_tipo_diagnostico.*
from
	smn_automotriz.smn_tipo_diagnostico
where
	smn_tipo_diagnostico_id = ${fld:id}
