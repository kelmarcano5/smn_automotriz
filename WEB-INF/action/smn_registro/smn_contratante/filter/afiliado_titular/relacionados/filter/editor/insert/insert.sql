INSERT INTO smn_automotriz.smn_relacionados
(
	smn_relacionado_id,
	smn_afiliados_id,
	smn_documento_id,
	rel_numero_control,
	smn_clase_rf,
	smn_auxiliar_rf,
	smn_parentesco_rf,
	smn_numero_hijo,
	rel_idioma,
	rel_usuario_id,
	rel_fecha_registro,
	rel_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_relacionados},
	${fld:smn_afiliados_id},
	${fld:smn_documento_id},
	${fld:rel_numero_control},
	${fld:smn_clase_rf},
	${fld:smn_auxiliar_rf},
	${fld:smn_parentesco_rf},
	${fld:smn_numero_hijo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)