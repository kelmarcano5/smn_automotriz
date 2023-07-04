select
		smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	${field}
from
	smn_automotriz.smn_diagnostico_cab_auto
where
		smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id is not null
	${filter}
	
	
