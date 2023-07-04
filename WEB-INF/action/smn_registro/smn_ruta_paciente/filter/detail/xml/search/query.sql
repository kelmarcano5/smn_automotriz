select
	smn_automotriz.smn_ruta_paciente.*
from
	smn_automotriz.smn_ruta_paciente
where
	smn_ruta_id = ${fld:id}
