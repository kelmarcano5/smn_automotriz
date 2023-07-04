UPDATE smn_automotriz.smn_diagnostico_cab_auto SET
	dia_estatus='DI',
	dia_idioma='${def:locale}',
	dia_usuario='${def:user}',
	dia_fecha_registro={d '${def:date}'},
	dia_hora='${def:time}'

WHERE
	smn_diagnostico_cab_auto_id=${fld:id}