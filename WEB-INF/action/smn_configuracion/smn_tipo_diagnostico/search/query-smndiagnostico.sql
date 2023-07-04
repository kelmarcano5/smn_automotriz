select
		smn_automotriz.smn_tipo_diagnostico.smn_tipo_diagnostico_id,
	case
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='1' then '${lbl:b_cie10}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='2' then '${lbl:b_procedimientos}'
	when smn_automotriz.smn_tipo_diagnostico.dgn_tipo='3' then '${lbl:b_otra}'
	end as dgn_tipo_combo,
	smn_automotriz.smn_tipo_diagnostico.dgn_codigo,
	smn_automotriz.smn_tipo_diagnostico.dgn_descripcion,
	smn_automotriz.smn_tipo_diagnostico.dgn_tipo,
	smn_automotriz.smn_tipo_diagnostico.dgn_idioma,
	smn_automotriz.smn_tipo_diagnostico.dgn_usuario,
	smn_automotriz.smn_tipo_diagnostico.dgn_fecha_registro,
	smn_automotriz.smn_tipo_diagnostico.dgn_hora
	
from
	smn_automotriz.smn_tipo_diagnostico
