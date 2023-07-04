select
	smn_base.smn_auxiliar_persona_natural.ant_apellidos,
	smn_base.smn_clase_auxiliar.cla_nombre,
		smn_automotriz.smn_citas.smn_citas_id,
	smn_automotriz.smn_citas.smn_documento_id,
	smn_automotriz.smn_citas.cts_num_control,
	smn_automotriz.smn_citas.cts_numero_ticket,
	smn_automotriz.smn_citas.cts_auxiliar,
	smn_automotriz.smn_citas.cts_fecha_registro
	
from

	smn_base.smn_auxiliar_persona_natural,
	smn_base.smn_clase_auxiliar,
	smn_automotriz.smn_citas
where
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_automotriz.smn_citas.cts_auxiliar and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_citas.cts_clase_auxiliar
