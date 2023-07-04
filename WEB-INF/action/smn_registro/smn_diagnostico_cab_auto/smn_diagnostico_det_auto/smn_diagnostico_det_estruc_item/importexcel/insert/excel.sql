INSERT INTO smn_automotriz.smn_diagnostico_det_estruc_item
(
	smn_diagnostico_det_estruc_item_id,
	smn_diagnostico_det_auto_id,
	smn_componentes_rf,
	smn_item_rf
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_diagnostico_det_estruc_item},
	?,
	?,
	?
)
