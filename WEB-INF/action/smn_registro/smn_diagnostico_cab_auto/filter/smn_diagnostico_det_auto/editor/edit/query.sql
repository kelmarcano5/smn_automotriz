select	
	smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	smn_automotriz.smn_diagnostico_det_auto.*,
	smn_automotriz.smn_ingresos.*
from 
	smn_automotriz.smn_diagnostico_det_auto
	inner  join smn_automotriz.smn_diagnostico_cab_auto on smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id = smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id
	left outer join smn_automotriz.smn_rel_diagnostico_servicio on smn_automotriz.smn_rel_diagnostico_servicio.smn_diagnostico_det_auto_id = smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.igs_num_ingreso = smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id
where 
	smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_det_auto_id = ${fld:id}


