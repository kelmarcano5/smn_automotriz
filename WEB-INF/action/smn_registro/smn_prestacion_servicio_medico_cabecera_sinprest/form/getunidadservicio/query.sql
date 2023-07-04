SELECT 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id as id,
	smn_base.smn_unidades_servicios.uns_codigo||'-'||smn_base.smn_unidades_servicios.uns_descripcion as item 
from 
	smn_base.smn_unidades_servicios
	inner join smn_automotriz.smn_rol on smn_automotriz.smn_rol.smn_unidad_servicio_rf = smn_base.smn_unidades_servicios.smn_unidades_servicios_id
	left join smn_base.smn_grupos_prestadores on smn_base.smn_grupos_prestadores.gpp_unidad_servicio = smn_base.smn_unidades_servicios.smn_unidades_servicios_id
	left join smn_base.smn_rel_grupo_prestador_servicio on smn_base.smn_rel_grupo_prestador_servicio.smn_grupos_prestadores_id = smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id
	left join smn_base.smn_prestadores_servicios on smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id =  smn_base.smn_rel_grupo_prestador_servicio.smn_prestadores_servicios_id
	left join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_auxiliar_rf = smn_base.smn_prestadores_servicios.prs_auxiliar
	left join smn_seguridad.s_user on smn_seguridad.s_user.userlogin = '${def:user}'
where 
	smn_automotriz.smn_rol.smn_area_servicio_rf=${fld:id} 
	and smn_base.smn_unidades_servicios.smn_tipo_unidad_administrativa='DS'  
	and smn_seguridad.s_user.userlogin = '${def:user}' GROUP BY id
