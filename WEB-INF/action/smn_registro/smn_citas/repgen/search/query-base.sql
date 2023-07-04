select
	smn_base.smn_auxiliar_persona_natural.ant_apellidos,
	smn_base.smn_clase_auxiliar.cla_nombre,
		smn_automotriz.smn_citas.smn_citas_id,
	${field}
from
	smn_base.smn_auxiliar_persona_natural,
	smn_base.smn_clase_auxiliar,
	smn_automotriz.smn_citas
where
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_automotriz.smn_citas.cts_auxiliar and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_citas.cts_clase_auxiliar and
		smn_automotriz.smn_citas.smn_citas_id is not null
	${filter}
	
	
