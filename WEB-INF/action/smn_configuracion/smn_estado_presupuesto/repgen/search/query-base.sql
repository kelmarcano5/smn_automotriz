select
		smn_automotriz.smn_estado_presupuesto.smn_estado_presupuesto_id,
	${field}
from
	smn_automotriz.smn_estado_presupuesto
where
		smn_automotriz.smn_estado_presupuesto.smn_estado_presupuesto_id is not null
	${filter}
	
	
