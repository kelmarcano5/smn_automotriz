UPDATE smn_automotriz.smn_series SET
	sri_codigo=${fld:sri_codigo},
	sri_nombre=${fld:sri_nombre},
	sri_estatus=${fld:sri_estatus},
	sri_ultimo_numero=${fld:sri_ultimo_numero},
	sri_reinicio=${fld:sri_reinicio},
	ctm_idioma='${def:locale}',
	ctm_usuario_id='${def:user}',
	ctm_fecha_registro={d '${def:date}'},
	ctm_hora='${def:time}'

WHERE
	smn_series_id=${fld:id}

