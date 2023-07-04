INSERT INTO smn_automotriz.smn_dispositivos
(
	smn_dispositivos_id,
	dis_codigo,
	dis_nombre,
	dis_tipo,
	dis_mac_address,
	smn_usuario_id,
	smn_entidades_rf,
	smn_sucursales_rf,
	smn_areas_servicios_rf,
	smn_unidad_servicio_rf,
	dis_idioma,
	dis_usuario_id,
	dis_fecha_registro,
	dis_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_dispositivos},
	${fld:dis_codigo},
	${fld:dis_nombre},
	${fld:dis_tipo},
	${fld:dis_mac_address},
	${fld:smn_usuario_id},
	${fld:smn_entidades_rf},
	${fld:smn_sucursales_rf},
	${fld:smn_areas_servicios_rf},
	${fld:smn_unidad_servicio_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
