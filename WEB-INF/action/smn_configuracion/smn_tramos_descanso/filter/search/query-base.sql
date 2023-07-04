select
		smn_automotriz.smn_tramos_descanso.smn_tramo_descanso_id,
	(select smn_automotriz.smn_tramos.trm_codigo|| ' - ' || smn_automotriz.smn_tramos.trm_descripcion from  smn_automotriz.smn_tramos where smn_automotriz.smn_tramos.smn_tramos_id is not null  and smn_automotriz.smn_tramos.smn_tramos_id=smn_automotriz.smn_tramos_descanso.smn_tramos_id) as smn_tramos_id_combo,
	smn_automotriz.smn_tramos_descanso.trd_hora_descanso_desde,
	smn_automotriz.smn_tramos_descanso.trd_hora_descanso_hasta,
	smn_automotriz.smn_tramos_descanso.trd_fecha_registro
	
from
	smn_automotriz.smn_tramos_descanso
where
	smn_tramo_descanso_id is not null
	${filter}
order by
		smn_tramo_descanso_id
