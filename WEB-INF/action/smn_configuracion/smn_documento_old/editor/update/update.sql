UPDATE smn_automotriz.smn_documento SET
	smn_tipo_documento_id=${fld:smn_tipo_documento_id},
	smn_transaccion_general_rf=${fld:smn_transaccion_general_rf},
	doc_codigo=${fld:doc_codigo},
	doc_nombre=${fld:doc_nombre},
	doc_idioma='${def:locale}',
	doc_usuario_id='${def:user}',
	doc_fecha_registro={d '${def:date}'},
	doc_hora='${def:time}'

WHERE
	smn_documento_id=${fld:id}

