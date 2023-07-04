INSERT INTO smn_comercial.smn_pedido_componentes
(
	smn_pedido_componentes_id,
	smn_pedido_detalle_id,
	smn_mov_caja_detalle_id,
	smn_ingresos_rf,
	smn_grupo_componente_rf,
	pco_tipo_componente,
	smn_componente_rf,
	pco_es_prestador_servicio,
	smn_auxiliar_rf,
	pco_naturaleza,
	smn_item_rf,
	smn_servicio_rf,
	pco_cantidad,
	smn_precio_ml_rf,
	pco_monto_ml,
	pco_imprime,
	smn_grupo_titulo_impresion_rf,
	smn_tipo_gasto_rf,
	smn_sub_tipo_gasto_rf,
	pco_estatus,
	pco_idioma,
	pco_usuario,
	pco_fecha_registro,
	pco_hora
)
VALUES
(
	${seq:nextval@smn_comercial.seq_smn_pedido_componentes},
	${fld:pedido_detalle},
	${fld:smn_mov_caja_detalle_id},
	${fld:ingreso},
	${fld:grupo_componente},
	${fld:psd_tipo_componentes},
	${fld:smn_componentes_rf},
	'SI',
	${fld:smn_prestador_servicio_rf},
	'HO',
	${fld:smn_item_rf},
	${fld:smn_servicios_rf},
	${fld:psd_cantidad},
	${fld:nrs_monto_saldo_ml},
	${fld:nrs_monto_ml},
	${fld:imprime},
	${fld:grupo_impresion},
	${fld:tipo_gasto},
	${fld:sub_tipo_gasto},
	'AP',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
