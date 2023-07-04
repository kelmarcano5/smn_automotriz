UPDATE smn_automotriz.smn_diagnostico_det_auto SET
	smn_diagnostico_cab_auto_id=${fld:smn_diagnostico_cab_auto_id},
	smn_servicio_rf=${fld:smn_servicio_rf},
	did_observacion=${fld:did_observacion},
	did_idioma='${def:locale}',
	did_usuario='${def:user}',
	did_fecha_registro={d '${def:date}'},
	did_hora='${def:time}'

WHERE
	smn_diagnostico_det_auto_id=${fld:id}

