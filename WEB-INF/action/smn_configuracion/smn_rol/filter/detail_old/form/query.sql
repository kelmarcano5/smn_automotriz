select
	(select smn_base.smn_usuarios.usr_usuario|| ' - ' || smn_base.smn_usuarios.usr_nombres from  smn_base.smn_usuarios where smn_base.smn_usuarios.smn_usuarios_id is not null  and smn_base.smn_usuarios.smn_usuarios_id=smn_automotriz.smn_rol.smn_usuario_id) as smn_usuario_id_combo,
	case
		when smn_automotriz.smn_rol.rol_tipo='SO' then '${lbl:b_solicitante}'
		when smn_automotriz.smn_rol.rol_tipo='AP' then '${lbl:b_autorizador}'
		when smn_automotriz.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}'
	end as rol_tipo_combo,
	(select smn_base.smn_corporaciones.crp_codigo|| ' - ' || smn_base.smn_corporaciones.crp_direccion from  smn_base.smn_corporaciones where smn_base.smn_corporaciones.smn_corporaciones_id is not null  and smn_base.smn_corporaciones.smn_corporaciones_id=smn_automotriz.smn_rol.smn_corporacion_rf) as smn_corporacion_rf_combo,
	(select smn_base.smn_entidades.ent_codigo|| ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_automotriz.smn_rol.smn_entidad_rf) as smn_entidad_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo|| ' - ' || smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_automotriz.smn_rol.smn_sucursal_rf) as smn_sucursal_rf_combo,
	(select smn_base.smn_areas_servicios.ase_codigo|| ' - ' || smn_base.smn_areas_servicios.ase_descripcion from  smn_base.smn_areas_servicios where smn_base.smn_areas_servicios.smn_areas_servicios_id is not null  and smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_automotriz.smn_rol.smn_area_servicio_rf) as smn_area_servicio_rf_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo|| ' - ' || smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_automotriz.smn_rol.smn_unidad_servicio_rf) as smn_unidad_servicio_rf_combo,
	(select smn_base.smn_estructura_organizacional.eor_codigo|| ' - ' || smn_base.smn_estructura_organizacional.eor_nombre from  smn_base.smn_estructura_organizacional where smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id is not null  and smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id=smn_automotriz.smn_rol.smn_estructura_organizacional_rf) as smn_estructura_organizacional_rf_combo,
	smn_automotriz.smn_rol.*
from 
	smn_automotriz.smn_rol
where
	smn_rol_id = ${fld:id}
