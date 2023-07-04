select
		smn_automotriz.smn_observaciones.smn_observaciones_id,
	case
	when smn_automotriz.smn_observaciones.obs_tipo='OC' then '${lbl:b_obscita}'
	when smn_automotriz.smn_observaciones.obs_tipo='OI' then '${lbl:b_obsingreso}'
	end as obs_tipo_combo,
	smn_automotriz.smn_observaciones.obs_codigo,
	smn_automotriz.smn_observaciones.obs_descripcion,
	smn_automotriz.smn_observaciones.obs_tipo,
	smn_automotriz.smn_observaciones.obs_fecha_registro
	
from
	smn_automotriz.smn_observaciones
