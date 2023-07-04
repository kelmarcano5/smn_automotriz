INSERT INTO smn_automotriz.smn_planificacion_de_turno
(
	smn_plan_turno_id,
	smn_usuario_id,
	smn_rol_id,
	ptu_fecha,
	smn_serie_id,
	smn_entidades_rf,
	smn_sucursales_rf,
	smn_areas_servicios_rf,
	smn_unidad_servicio_rf,
	ptu_estatus,
	ptu_idioma,
	ptu_usuario,
	ptu_fecha_registro,
	ptu_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_planificacion_de_turno},
	${fld:smn_usuario_id},
	${fld:smn_rol_id},
	${fld:ptu_fecha},
	${fld:smn_serie_id},
	${fld:smn_entidades_rf},
	${fld:smn_sucursales_rf},
	${fld:smn_areas_servicios_rf},
	${fld:smn_unidad_servicio_rf},
	${fld:ptu_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
