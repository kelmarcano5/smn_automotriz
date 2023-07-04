UPDATE smn_automotriz.smn_contratante SET
	smn_documento_id=${fld:smn_documento_id},
	cnt_numero_control=${fld:cnt_numero_control},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	smn_plan_id=${fld:smn_plan_id},
	cnt_fecha_de_inicio=${fld:cnt_fecha_de_inicio},
	cnt_cantidad_citas=${fld:cnt_cantidad_citas},
	cnt_idioma='${def:locale}',
	cnt_usuario_id='${def:user}',
	cnt_fecha_registro={d '${def:date}'},
	cnt_hora='${def:time}'

WHERE
	smn_contratante_id=${fld:id}

