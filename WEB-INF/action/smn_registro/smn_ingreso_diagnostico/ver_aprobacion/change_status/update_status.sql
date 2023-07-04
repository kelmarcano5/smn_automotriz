UPDATE smn_automotriz.smn_ruta_paciente SET
  	rta_estatus='IN',
  	rta_fecha_registro={d '${def:date}'}
WHERE
	rta_ticket=${fld:ticket}
	and 
	rta_fecha_registro=${fld:fecha}
	and smn_unidad_servicio_rf = ${fld:unidad}
