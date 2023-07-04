INSERT INTO smn_automotriz.smn_diagnostico_det_estruc_item
(
	smn_diagnostico_det_estruc_item_id,
	smn_diagnostico_det_auto_id,
	smn_componentes_rf,
	smn_item_rf,
	smn_servicio_rf
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_diagnostico_det_estruc_item},
	${fld:smn_diagnostico_det_auto_id},
	${fld:smn_componentes_rf},
	${fld:smn_item_rf},
	${fld:smn_servicio_rf}
)
