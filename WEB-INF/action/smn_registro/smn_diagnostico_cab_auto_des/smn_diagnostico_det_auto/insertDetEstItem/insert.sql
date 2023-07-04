INSERT INTO smn_automotriz.smn_diagnostico_det_estruc_item
(
	smn_diagnostico_det_estruc_item_id,
	smn_diagnostico_det_auto_id,
	smn_componentes_rf,
	smn_servicios_rf,
	dde_cantidad,
	smn_tipo_componente,
	smn_forma_calculo_rf,
	smn_visible_rf,
	cmp_porcentaje,
	smn_grupo_prestador_rf,
	smn_nivel_estructura_rf,
	dde_estatus
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_diagnostico_det_estruc_item},
	${fld:id_det},
	${fld:comp_id},
	${fld:serv},
	${fld:cant},
	${fld:tipo},
	${fld:forma},
	${fld:vis},
	${fld:por},
	${fld:prest},
	${fld:nivel},
	'GE'

);


UPDATE smn_automotriz.smn_diagnostico_det_auto SET
	did_estatus='GE'
WHERE
	smn_diagnostico_det_auto_id=${fld:id_det}


