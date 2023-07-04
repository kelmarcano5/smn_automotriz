UPDATE smn_automotriz.smn_diagnostico_cab_auto SET
	smn_ingresos_id=${fld:smn_ingresos_id},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	dia_estatus=${fld:dia_estatus},
	dia_idioma='${def:locale}',
	dia_usuario='${def:user}',
	dia_fecha_registro={d '${def:date}'},
	dia_hora='${def:time}'

WHERE
	smn_diagnostico_cab_auto_id=${fld:id}

