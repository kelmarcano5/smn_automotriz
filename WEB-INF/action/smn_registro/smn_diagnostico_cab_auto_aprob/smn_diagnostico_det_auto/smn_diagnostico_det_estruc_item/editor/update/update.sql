UPDATE smn_automotriz.smn_diagnostico_det_estruc_item SET
	smn_diagnostico_det_auto_id=${fld:smn_diagnostico_det_auto_id},
	smn_componentes_rf=${fld:smn_componentes_rf},
	smn_item_rf=${fld:smn_item_rf},
	smn_servicios_rf=${fld:smn_servicio_rf},
	dde_cantidad=${fld:dde_cantidad},
	smn_tipo_componente=${fld:smn_tipo_componente},
	smn_forma_calculo_rf=${fld:smn_forma_calculo_rf},
	smn_visible_rf=${fld:smn_visible_rf},
	cmp_porcentaje=${fld:cmp_porcentaje},
	smn_grupo_prestador_rf=${fld:smn_grupo_prestador_rf},
	smn_nivel_estructura_rf=${fld:smn_nivel_estructura_rf}
WHERE
	smn_diagnostico_det_estruc_item_id=${fld:id}

