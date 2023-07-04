select
	smn_automotriz.smn_diagnostico_cab_auto.smn_diagnostico_cab_auto_id,
	smn_automotriz.smn_ingresos.ctm_observaciones_id as ctm_observaciones_id_pl0,
	case
		when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='RE' then '${lbl:b_registe}'
		when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='GE' then '${lbl:b_generate}'
		when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='ED' then 'En Diagnostico'
			when smn_automotriz.smn_diagnostico_cab_auto.dia_estatus='DI' then 'Diagnosticado'
	end as dia_estatus_combo,
	smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id,
	smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf_combo,
	vh.aux_codigo ||' - '|| vh.aux_descripcion as smn_auxiliar_rf_combo,
	smn_automotriz.smn_diagnostico_cab_auto.dia_fecha_registro,
	smn_automotriz.smn_ingresos.igs_num_ingreso,
	smn_automotriz.smn_ingresos.descripcion_sintoma,
	ps.prs_codigo ||' - '|| ps.prs_descripcion as smn_auxiliar_rf_prest
	
from
	smn_automotriz.smn_diagnostico_cab_auto
	left outer join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_diagnostico_cab_auto.smn_ingresos_id
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_diagnostico_cab_auto.smn_clase_auxiliar_rf
	left outer join smn_base.smn_auxiliar vh on vh.smn_auxiliar_id = smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf
	inner join smn_base.smn_prestadores_servicios ps on ps.smn_prestadores_servicios_id = smn_automotriz.smn_diagnostico_cab_auto.smn_auxiliar_rf_prest
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_auxiliar_rf = ps.prs_auxiliar
	inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
	inner join smn_automotriz.smn_rol on smn_automotriz.smn_rol.smn_usuario_id = smn_base.smn_usuarios.smn_usuarios_id
where
	smn_seguridad.s_user.userlogin='${def:user}' and smn_automotriz.smn_rol.rol_tipo='SO' and smn_automotriz.smn_diagnostico_cab_auto.dia_estatus IN ('DI', 'ED')
order by smn_automotriz.smn_ingresos.igs_num_ingreso asc