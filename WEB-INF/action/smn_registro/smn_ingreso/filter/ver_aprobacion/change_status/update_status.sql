UPDATE smn_automotriz.smn_ruta_paciente SET
  	rta_estatus='IN',
  	rta_fecha_registro={d '${def:date}'}
WHERE
	rta_ticket=${fld:ticket}
	and smn_unidad_servicio_rf = ${fld:unidad} and rta_secuencia=1
