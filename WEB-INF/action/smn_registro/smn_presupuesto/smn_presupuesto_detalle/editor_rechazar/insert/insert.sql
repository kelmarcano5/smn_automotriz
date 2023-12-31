INSERT INTO smn_automotriz.smn_presupuesto_detalle
(
	smn_presupuesto_detalle_id,
	smn_presupuesto_id,
	smn_servicios_rf,
	prd_cantidad,
	prd_precio,
	smn_moneda_rf,
	prd_precio_ma,
	prd_monto_moneda_local,
	prd_moneda_alterna,
	prd_idioma,
	prd_usuario,
	prd_fecha_registro,
	prd_hora,
	smn_tipo_componentes_rf,
	smn_componentes_rf,
	smn_codigo_descuento_rf,
	smn_tasa_rf,
	prd_observaciones,
	smn_item_rf
)
VALUES
(
	${seq:currval@smn_automotriz.seq_smn_presupuesto_detalle},
	${fld:smn_presupuesto_id},
	${fld:smn_servicios_rf},
	${fld:prd_cantidad},
	${fld:prd_precio},
	${fld:smn_moneda_rf},
	${fld:prd_precio_ma},
	${fld:prd_monto_moneda_local},
	${fld:prd_moneda_alterna},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:smn_tipo_componentes_rf},
	${fld:smn_componentes_rf},
	${fld:smn_codigo_descuento_rf},
	${fld:smn_tasa_rf},
	${fld:prd_observaciones},
	${fld:smn_item_rf}
);


UPDATE smn_automotriz.smn_presupuesto SET
	pre_monto_ml = pre_monto_ml + ${fld:prd_monto_moneda_local}
WHERE smn_presupuesto_id=${fld:smn_presupuesto_id}


-- INSERT INTO smn_automotriz.smn_presupuesto_detalle
-- (
-- 	smn_presupuesto_detalle_id,
-- 	smn_presupuesto_id,
-- 	smn_servicios_rf,
-- 	prd_cantidad,
-- 	prd_precio,
-- 	smn_moneda_rf,
-- 	prd_precio_ma,
-- 	prd_monto_moneda_local,
-- 	prd_moneda_alterna,
-- 	prd_idioma,
-- 	prd_usuario,
-- 	prd_fecha_registro,
-- 	prd_hora,
-- 	smn_tipo_componentes_rf,
-- 	smn_componentes_rf,
-- 	smn_codigo_descuento_rf,
-- 	smn_tasa_rf,
-- 	prd_observaciones,
-- 	smn_item_rf,
-- 	prd_monto_descuento_ml,
-- 	prd_monto_neto_ml,
-- 	prd_monto_impuesto_ml,
-- 	prd_monto_descuento_ma,
-- 	prd_monto_neto_ma,
-- 	prd_monto_impuesto_ma,
-- 	smn_prestadores_servicios_rf,
-- 	smn_grupo_prestador_rf,
-- 	prd_porcentaje_prestador,
-- 	prd_forma_calculo_rf,
-- 	prd_visible_rf,
-- 	prd_monto_incremento_ml,
-- 	prd_monto_incremento_ma
-- )
-- VALUES
-- (
-- 	${seq:nextval@smn_automotriz.seq_smn_presupuesto_detalle},
-- 	${fld:smn_presupuesto_id},
-- 	${fld:smn_servicios_rf},
-- 	${fld:prd_cantidad},
-- 	${fld:prd_precio},
-- 	${fld:smn_moneda_rf},
-- 	${fld:prd_precio_ma},
-- 	${fld:prd_monto_moneda_local},
-- 	${fld:prd_moneda_alterna},
-- 	'${def:locale}',
-- 	'${def:user}',
-- 	{d '${def:date}'},
-- 	'${def:time}',
-- 	${fld:smn_tipo_componentes_rf},
-- 	${fld:smn_componentes_rf},
-- 	${fld:smn_codigo_descuento_rf},
-- 	${fld:smn_tasa_rf},
-- 	${fld:prd_observaciones},
-- 	${fld:smn_item_rf},
-- 	${fld:prd_monto_descuento_ml},
-- 	${fld:prd_monto_neto_ml},
-- 	${fld:prd_monto_impuesto_ml},
-- 	${fld:prd_monto_descuento_ma},
-- 	${fld:prd_monto_neto_ma},
-- 	${fld:prd_monto_impuesto_ma},
-- 	${fld:smn_prestadores_servicios_rf},
-- 	${fld:smn_grupo_prestador_rf},
-- 	${fld:prd_porcentaje_prestador},
-- 	${fld:prd_forma_calculo_rf},
-- 	${fld:prd_visible_rf},
-- 	${fld:prd_monto_incremento_ml},
-- 	${fld:prd_monto_incremento_ma}
-- )
