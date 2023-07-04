INSERT INTO smn_automotriz.smn_afiliado_titular
(
	smn_afiliados_id,
	smn_documento_id,
	afi_numero_control,
	smn_contratante_id,
	smn_auxiliar_unidades_negocios_rf,
	smn_auxiliar_sucursales_rf,
	smn_auxiliar_areas_servicios_rf,
	smn_auxiliar_unidades_servicios_rf,
	afi_clase_auxiliar_rf,
	afi_auxiliar_rf,
	afi_fecha_de_registro,
	afi_fecha_de_inicio,
	afi_estatus,
	afi_fecha_desafiliado,
	afi_idioma,
	afi_usuario_id,
	afi_fecha_registro,
	afi_hora
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_afiliado_titular},
	${fld:smn_documento_id},
	${fld:afi_numero_control},
	${fld:smn_contratante_id},
	${fld:smn_auxiliar_unidades_negocios_rf},
	${fld:smn_auxiliar_sucursales_rf},
	${fld:smn_auxiliar_areas_servicios_rf},
	${fld:smn_auxiliar_unidades_servicios_rf},
	${fld:afi_clase_auxiliar_rf},
	${fld:afi_auxiliar_rf},
	${fld:afi_fecha_de_registro},
	${fld:afi_fecha_de_inicio},
	${fld:afi_estatus},
	${fld:afi_fecha_desafiliado},
	'${def:locale}',
	'${def:user}',
	'${def:date}',
	'${def:time}'
)