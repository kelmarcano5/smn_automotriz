select	
	smn_automotriz.smn_ingresos.smn_ingresos_id, 
	smn_automotriz.smn_ingresos.igs_num_ingreso as igs_num_ingreso_pl0,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.*
from
	smn_automotriz.smn_ingresos,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera 
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id and
	smn_prestacion_servicio_medico_cabecera_id = ${fld:id} 
	


