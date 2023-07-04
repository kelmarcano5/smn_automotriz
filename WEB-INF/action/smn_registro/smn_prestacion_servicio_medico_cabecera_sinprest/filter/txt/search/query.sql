select
		smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id,
	smn_automotriz.smn_ingresos.smn_ingresos_id,
	smn_automotriz.smn_ingresos.igs_num_ingreso as igs_num_ingreso_pl0,
	case
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='PE' then '${lbl:b_pending}'
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='EA' then '${lbl:b_in_atention}'
	when smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_estatus='AT' then '${lbl:b_atending}'
	end as psc_estatus,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_mov_caja_cabecera_id,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_unidades_servicios_rf,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.psc_fecha_registro
	
from
	smn_automotriz.smn_ingresos,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id
