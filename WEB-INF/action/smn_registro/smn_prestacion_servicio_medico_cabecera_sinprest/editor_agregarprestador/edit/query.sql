select
	smn_base.smn_auxiliar.aux_codigo as smn_auxiliar_rf,
	smn_automotriz.smn_ingresos.smn_ingresos_id, 
	smn_automotriz.smn_ingresos.igs_num_ingreso as igs_num_ingreso_pl0,
	smn_base.smn_grupos_prestadores.gpp_codigo ||' - '|| smn_base.smn_grupos_prestadores.gpp_descripcion as smn_grupo_prestador_rf_rf,
	smn_automotriz.smn_prestacion_servicio_medico_cabecera.*
from
	smn_automotriz.smn_prestacion_servicio_medico_cabecera 
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id =	smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_ingresos.smn_auxiliar_rf
	inner join smn_base.smn_grupos_prestadores on smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_grupo_prestador_rf
where
	smn_automotriz.smn_ingresos.smn_ingresos_id=smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id and
	smn_prestacion_servicio_medico_cabecera_id = ${fld:id} 
	


