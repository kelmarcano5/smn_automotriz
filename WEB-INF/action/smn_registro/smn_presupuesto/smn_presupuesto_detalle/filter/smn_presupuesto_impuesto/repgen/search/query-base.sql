select
		smn_automotriz.smn_presupuesto_impuesto.smn_presupuesto_impuesto_id,
	${field}
from
	smn_automotriz.smn_presupuesto_impuesto
where
		smn_automotriz.smn_presupuesto_impuesto.smn_presupuesto_impuesto_id is not null
	${filter}
	
	
