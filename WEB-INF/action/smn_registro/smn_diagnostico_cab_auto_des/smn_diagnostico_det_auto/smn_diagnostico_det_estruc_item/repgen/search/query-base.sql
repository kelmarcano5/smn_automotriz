select
		smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_estruc_item_id,
	${field}
from
	smn_automotriz.smn_diagnostico_det_estruc_item
where
		smn_automotriz.smn_diagnostico_det_estruc_item.smn_diagnostico_det_estruc_item_id is not null
	${filter}
	
	
