select
		smn_automotriz.smn_presupuesto.smn_presupuesto_id,
	${field}
from
	smn_automotriz.smn_presupuesto
where
		smn_automotriz.smn_presupuesto.smn_presupuesto_id is not null
	${filter}
	
	
