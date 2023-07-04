INSERT INTO smn_automotriz.smn_citas
(
	smn_citas_id,
	smn_documento_id,
	cts_num_control,
	smn_entidades_rf,
	smn_sucursales_rf,
	cts_numero_ticket,
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
	4,
	${seq:currval@smn_automotriz.seq_ctm_num_control_cita},
	0,
	${fld:smn_sedes},
	0,
	3,
	26,
	${fld:cts_auxiliar_name},
	0,
	${fld:smn_contratante_id},
	0,
	3,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
);
