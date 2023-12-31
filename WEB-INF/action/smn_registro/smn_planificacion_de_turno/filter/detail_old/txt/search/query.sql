select
	(select smn_base.smn_v_usuarios.usr_nombres || ' - ' || smn_base.smn_v_usuarios.usr_apellidos from smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id = smn_automotriz.smn_planificacion_de_turno.smn_usuario_id  order by smn_base.smn_v_usuarios.usr_nombres) as smn_usuario_id_combo,
	(select smn_automotriz.smn_rol.smn_usuario_id || ' - ' || smn_automotriz.smn_rol.rol_tipo from  smn_automotriz.smn_rol  where smn_automotriz.smn_rol.smn_rol_id is not null  and smn_automotriz.smn_rol.smn_rol_id=smn_automotriz.smn_planificacion_de_turno.smn_rol_id  order by smn_automotriz.smn_rol.rol_tipo ) as smn_rol_id_combo,
	(select smn_automotriz.smn_series.sri_codigo || ' - ' || smn_automotriz.smn_series.sri_nombre from  smn_automotriz.smn_series  where smn_automotriz.smn_series.smn_series_id is not null  and smn_automotriz.smn_series.smn_series_id=smn_automotriz.smn_planificacion_de_turno.smn_serie_id  order by smn_automotriz.smn_series.sri_nombre ) as smn_serie_id_combo,
	(select smn_base.smn_entidades.ent_codigo || ' - ' ||  smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_automotriz.smn_planificacion_de_turno.smn_entidades_rf  order by smn_base.smn_entidades.ent_descripcion_corta ) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo || ' - ' ||  smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales  where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_automotriz.smn_planificacion_de_turno.smn_sucursales_rf  order by smn_base.smn_sucursales.suc_nombre ) as smn_sucursales_rf_combo,
	(select smn_base.smn_areas_servicios.ase_codigo || ' - ' ||  smn_base.smn_areas_servicios.ase_descripcion from  smn_base.smn_areas_servicios  where smn_base.smn_areas_servicios.smn_areas_servicios_id is not null  and smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_automotriz.smn_planificacion_de_turno.smn_areas_servicios_rf  order by smn_base.smn_areas_servicios.ase_descripcion ) as smn_areas_servicios_rf_combo,
	case
	when smn_automotriz.smn_planificacion_de_turno.ptu_estatus=AC then '${lbl:b_active}'
	when smn_automotriz.smn_planificacion_de_turno.ptu_estatus=IN then '${lbl:b_inactivo}'
	end as ptu_estatus_combo,
	smn_automotriz.smn_planificacion_de_turno.*
from
	smn_automotriz.smn_planificacion_de_turno
where
	smn_plan_turno_id = ${fld:id}
