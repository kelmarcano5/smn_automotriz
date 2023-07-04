INSERT INTO smn_automotriz.smn_rel_diagnostico_servicio
(
	smn_rel_diagnostico_servicio_id,
	smn_diagnostico_det_auto_id,
	smn_servicio_rf
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_rel_diagnostico_servicio},
	${seq:currval@smn_automotriz.seq_smn_diagnostico_det_auto},
	${fld:smn_servicios_id}
)
