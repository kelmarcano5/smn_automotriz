select	
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id, 
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus as psc_estatus_pl0,
	smn_automotriz.smn_ingresos_mov.smn_ingresos_mov_id, 
	smn_automotriz.smn_ingresos_mov.inm_localidad as inm_localidad_pl1,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.*
from
	smn_automotriz.smn_prestacion_servicio_medico_cabecera,
	smn_automotriz.smn_ingresos_mov,
	smn_automotriz.smn_prestacion_servicio_medico_detalle 
where
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id=smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id and
	smn_automotriz.smn_ingresos_mov.smn_ingresos_mov_id=smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_ingresos_mov_id and
	smn_prestacion_servicio_medico_detalle_id = ${fld:id} 
	


