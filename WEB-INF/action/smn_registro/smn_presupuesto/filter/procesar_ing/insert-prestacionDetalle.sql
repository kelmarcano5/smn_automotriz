INSERT INTO smn_automotriz.smn_prestacion_servicio_medico_detalle
(
	smn_prestacion_servicio_medico_detalle_id,
	smn_prestacion_servicio_medico_cabecera_id,
	smn_ingresos_mov_id,
	smn_unidades_servicios_rf,
	smn_servicios_rf,
	psd_tipo_componentes,
	smn_componentes_rf,
	smn_item_rf,
	smn_prestador_servicio_rf,
	psd_cantidad,
	psd_precio_propuesto_ml,
	psd_monto_propuesto_ml,
	smn_descuento_ml_rf,
	smn_moneda_rf,
	psd_precio_propuesto_ma,
	psd_monto_propuesto_ma,
	psd_monto_descuento_propuesto_ml,
	psd_monto_descuento_propuesto_ma,
	psd_monto_neto_propuesto_ml,
	psd_monto_neto_propuesto_ma,
	psd_estatus,
	psd_idioma,
	psd_usuario,
	psd_fecha_registro,
	psd_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_prestacion_servicio_medico_detalle},
	${fld:smn_prestacion_servicio_medico_cabecera_id},
 	${fld:smn_ingresos_mov_id},
	(select smn_base.smn_rel_servicio_area_unidad.smn_unidades_servicios_rf from smn_base.smn_rel_servicio_area_unidad where smn_base.smn_rel_servicio_area_unidad.smn_servicios_id = ${fld:smn_servicios_rf}),
	${fld:smn_servicios_rf},
	${fld:smn_tipo_componentes_rf},
	${fld:smn_componentes_rf},
	${fld:smn_item_rf},
	${fld:smn_prestadores_servicios_rf},
	${fld:prd_cantidad},
	${fld:prd_precio},
	${fld:prd_monto_moneda_local},
	${fld:prd_monto_descuento_ml},
	${fld:smn_moneda_rf},
	${fld:prd_precio_ma},
	${fld:prd_moneda_alterna},
	${fld:prd_monto_descuento_ml},
	${fld:prd_monto_descuento_ma},
	${fld:prd_monto_neto_ml},
	${fld:prd_monto_neto_ma},
	'RE',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
);
