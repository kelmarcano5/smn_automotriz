select
		smn_automotriz.smn_ruta_paciente.smn_ruta_id,
	smn_automotriz.smn_ruta_paciente.smn_ingreso_cola_virtual_id,
	smn_automotriz.smn_ruta_paciente.smn_clase_auxiliar_rf,
	smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf,
	smn_automotriz.smn_ruta_paciente.rta_numero_documento_identidad,
	smn_automotriz.smn_ruta_paciente.smn_serie_id,
	smn_automotriz.smn_ruta_paciente.rta_ticket,
	smn_automotriz.smn_ruta_paciente.rta_fecha_registro
from
	smn_automotriz.smn_ruta_paciente 
where
	smn_automotriz.smn_ruta_paciente.smn_ruta_id = ${fld:id}
