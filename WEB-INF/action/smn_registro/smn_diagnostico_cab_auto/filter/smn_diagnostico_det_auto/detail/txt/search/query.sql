select	
	smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id, 
	smn_automotriz.smn_diagnostico_cab_auto.dia_estatus as dia_estatus_pl0,
	(select smn_automotriz.smn_diagnostico_cab_auto.smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id  from  smn_automotriz.smn_diagnostico_cab_auto where smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id is not null  and smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id=smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id) as smn_diagnostico_cab_auto_id_combo,
	(select smn_base.smn_servicios.svc_codigo || ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_automotriz.smn_diagnostico_det_auto.smn_servicio_rf  order by smn_base.smn_servicios.svc_descripcion ) as smn_servicio_rf_combo,
	smn_automotriz.smn_diagnostico_det_auto.*
from
	smn_automotriz.smn_diagnostico_cab_auto,
	smn_automotriz.smn_diagnostico_det_auto 
where
	smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id=smn_automotriz.smn_diagnostico_det_auto.smn_diagnostico_cab_auto_id 
 and 
	smn_diagnostico_det_auto_id = ${fld:id}
