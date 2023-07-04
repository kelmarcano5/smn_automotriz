select
	smn_automotriz.smn_rel_cobertura_horario.*,
	smn_automotriz.smn_horario.*
from 
	smn_automotriz.smn_rel_cobertura_horario,
	smn_automotriz.smn_horario
where 
	smn_automotriz.smn_rel_cobertura_horario.smn_coberturas_id = ${fld:id} and
	smn_automotriz.smn_rel_cobertura_horario.smn_horarios_id = smn_automotriz.smn_horario.smn_horarios_id