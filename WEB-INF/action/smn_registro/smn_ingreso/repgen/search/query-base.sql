select
		smn_automotriz.smn_ingreso.smn_ingreso_id,
	${field}
from
	smn_automotriz.smn_ingreso
where
		smn_automotriz.smn_ingreso.smn_ingreso_id is not null
	${filter}
	
	
