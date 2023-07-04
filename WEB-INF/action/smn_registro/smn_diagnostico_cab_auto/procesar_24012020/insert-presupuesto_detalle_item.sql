INSERT INTO smn_automotriz.smn_presupuesto_detalle
(
	smn_presupuesto_detalle_id,
	smn_presupuesto_id,
	smn_servicios_rf,
	prd_cantidad,
	prd_precio,
	prd_precio_ma,
	smn_moneda_rf,
	prd_monto_moneda_local,
	prd_idioma,
	prd_usuario,
	prd_fecha_registro,
	prd_hora,
	smn_tipo_componentes_rf,
	smn_componentes_rf,
	smn_item_rf,
	smn_grupo_prestador_rf,
	prd_porcentaje_prestador,
	prd_forma_calculo_rf,
	prd_visible_rf
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_presupuesto_detalle},
	${seq:currval@smn_automotriz.seq_smn_presupuesto},
	${fld:smn_servicios_rf},
	${fld:prd_cantidad},
	${fld:precio},
	${fld:precio_ma},
	${fld:smn_moneda_rf},
	${fld:prd_monto_moneda_local},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:smn_tipo_componente},
	${fld:smn_componentes_rf},
	${fld:smn_item_rf},
	${fld:smn_grupo_prestador_rf},
	${fld:cmp_porcentaje},
	${fld:smn_forma_calculo_rf},
	${fld:smn_visible_rf}

);

