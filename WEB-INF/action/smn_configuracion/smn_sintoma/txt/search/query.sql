select
		smn_automotriz.smn_sintoma.stm_codigo,
	smn_automotriz.smn_sintoma.stm_descripcion,
	smn_automotriz.smn_sintoma.stm_fecha_registro
from 
	smn_automotriz.smn_sintoma
order by 
	smn_automotriz.smn_sintoma.smn_sintoma_id
