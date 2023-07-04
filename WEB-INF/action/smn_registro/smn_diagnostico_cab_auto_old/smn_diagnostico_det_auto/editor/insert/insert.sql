INSERT INTO smn_automotriz.smn_diagnostico_det_auto
(
	smn_diagnostico_det_auto_id,
	smn_diagnostico_cab_auto_id,
	smn_servicio_rf,
	did_observacion,
	did_idioma,
	did_usuario,
	did_fecha_registro,
	did_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_diagnostico_det_auto},
	${fld:smn_diagnostico_cab_auto_id},
	${fld:smn_servicio_rf},
	${fld:did_observacion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
