INSERT INTO smn_automotriz.smn_diagnostico_det_auto
(
	smn_diagnostico_det_auto_id,
	smn_diagnostico_cab_auto_id,
	smn_servicio_rf,
	did_observacion,
	did_fecha_registro
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_diagnostico_det_auto},
	?,
	?,
	?,
	{d '${def:date}'}
)
