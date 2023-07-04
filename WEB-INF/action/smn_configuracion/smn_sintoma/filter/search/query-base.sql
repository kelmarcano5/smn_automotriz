select
	smn_automotriz.smn_sintoma.stm_codigo,
	smn_automotriz.smn_sintoma.stm_descripcion,
	smn_automotriz.smn_sintoma.stm_idioma,
	smn_automotriz.smn_sintoma.stm_usuario,
	smn_automotriz.smn_sintoma.stm_fecha_registro,
	smn_automotriz.smn_sintoma.stm_hora,
		smn_automotriz.smn_sintoma.smn_sintoma_id
	
from
	smn_automotriz.smn_sintoma
where
	smn_sintoma_id is not null
	${filter}
order by
		smn_sintoma_id
