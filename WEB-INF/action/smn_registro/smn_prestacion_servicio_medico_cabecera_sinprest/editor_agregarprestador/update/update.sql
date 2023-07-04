UPDATE smn_automotriz.smn_prestacion_servicio_medico_cabecera SET
	smn_prestador_servicio_rf=${fld:smn_prestador_servicio_rf}

WHERE
	smn_prestacion_servicio_medico_cabecera_id=${fld:id}

