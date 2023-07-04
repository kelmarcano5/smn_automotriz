UPDATE smn_automotriz.smn_prestacion_servicio_medico_detalle SET
	psd_estatus='AP'

WHERE
	smn_prestacion_servicio_medico_detalle_id=${fld:id_prestacion}
