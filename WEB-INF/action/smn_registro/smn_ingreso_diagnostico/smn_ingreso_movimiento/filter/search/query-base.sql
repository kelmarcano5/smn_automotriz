select	
	(select smn_base.smn_servicios.svc_codigo || ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_automotriz.smn_ingreso_movimiento.smn_servicios_rf  order by smn_base.smn_servicios.svc_descripcion ) as smn_servicios_rf_combo,
	(select smn_base.smn_prestadores_servicios.prs_codigo || ' - ' || smn_base.smn_prestadores_servicios.prs_descripcion  from  smn_base.smn_prestadores_servicios  where smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id is not null  and smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id=smn_automotriz.smn_ingreso_movimiento.smn_prestador_servicio_rf  order by smn_base.smn_prestadores_servicios.prs_descripcion ) as smn_prestador_servicio_rf_combo,
	(select smn_base.smn_grupos_prestadores.gpp_codigo || ' - ' || smn_base.smn_grupos_prestadores.gpp_descripcion from  smn_base.smn_grupos_prestadores  where smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id is not null  and smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=smn_automotriz.smn_ingreso_movimiento.smn_grupo_prestador_servicio_rf  order by smn_base.smn_grupos_prestadores.gpp_descripcion ) as smn_grupo_prestador_servicio_rf_combo,
	smn_automotriz.smn_ingreso_movimiento.inm_num_orden_medica,
	smn_automotriz.smn_ingreso_movimiento.inm_fecha_registro,
	smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id as smn_ingreso_movimiento_id

from
	smn_automotriz.smn_ingreso_movimiento
where
	smn_ingresos_mov_id is not null	and smn_ingreso_id = ${fld:id_ingreso}
 	 	${filter}
order by 
	smn_ingresos_mov_id