UPDATE smn_automotriz.smn_diagnostico_det_estruc_item SET
	smn_diagnostico_det_auto_id=${fld:smn_diagnostico_det_auto_id},
	smn_componentes_rf=${fld:smn_componentes_rf},
	smn_item_rf=${fld:smn_item_rf},
	smn_servicio_rf=${fld:smn_servicio_rf},
	dde_cantidad=${fld:dde_cantidad}

WHERE
	smn_diagnostico_det_estruc_item_id=${fld:id}

