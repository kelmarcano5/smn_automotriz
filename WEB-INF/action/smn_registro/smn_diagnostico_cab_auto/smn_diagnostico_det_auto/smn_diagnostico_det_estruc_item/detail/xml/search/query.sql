select
	smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id,
	smn_automotriz.smn_diagnostico_det_auto.did_observacion as did_observacion_pl0,
select
select
select
	smn_automotriz.smn_diagnostico_det_estruc_item.*
from
	smn_automotriz.smn_diagnostico_det_auto,
	smn_automotriz.smn_diagnostico_det_estruc_item
where
	smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id=smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_auto_id
	and
	smn_diagnostico_det_estruc_item_id = ${fld:id}
