INSERT INTO smn_automotriz.smn_citas
(
	smn_citas_id,
	smn_documento_id,
	cts_num_control,
	smn_origen_id,
	cts_clase_auxiliar,
	cts_auxiliar,
	smn_condicion_financiera_rf,
	smn_contratante_id,
	smn_observaciones_id,
	smn_estatus_citas_id,
	cts_idioma,
	cts_usuario,
	cts_fecha_registro,
	cts_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_citas},
	${fld:smn_documento_id},
	${seq:currval@smn_automotriz.seq_smn_citas_num_control},
	1,
	${fld:cts_clase_auxiliar},
	${fld:cts_auxiliar},
	${fld:smn_condicion_financiera_rf},
	${fld:smn_contratante_id},
	${fld:smn_observaciones_id},
	3,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
