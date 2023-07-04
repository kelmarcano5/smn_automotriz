select
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_estruc_item_id,
	smn_automotriz.smn_diagnostico_det_auto.did_observacion as did_observacion_pl0,
	smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_auto_id,
	smn_base.smn_componentes.cmp_codigo||' - '|| smn_base.smn_componentes.cmp_descripcion smn_componentes_rf,
	smn_base.smn_item.itm_codigo ||' - '|| smn_base.smn_item.itm_nombre as smn_item_rf,
	smn_automotriz.smn_diagnostico_det_estruc_item.dde_cantidad
	
from
	smn_automotriz.smn_diagnostico_det_estruc_item
	left outer join smn_automotriz.smn_diagnostico_det_auto on smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id = smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_auto_id
	left outer join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_automotriz.smn_diagnostico_det_estruc_item.smn_item_rf
	left outer join smn_base.smn_componentes on smn_base.smn_componentes.smn_item_rf = 	smn_automotriz.smn_diagnostico_det_estruc_item.smn_componentes_rf	
	
where
	smn_diagnostico_det_estruc_item_id = ${fld:id}
