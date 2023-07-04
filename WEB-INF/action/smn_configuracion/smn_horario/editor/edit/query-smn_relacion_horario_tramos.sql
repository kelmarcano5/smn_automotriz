select
	smn_automotriz.smn_relacion_horario_tramos.*,
	smn_automotriz.smn_tramos.*
from 
	smn_automotriz.smn_relacion_horario_tramos,
	smn_automotriz.smn_tramos
where 
	smn_automotriz.smn_relacion_horario_tramos.smn_horarios_id = ${fld:id} and
	smn_automotriz.smn_relacion_horario_tramos.smn_tramos_id = smn_automotriz.smn_tramos.smn_tramos_id