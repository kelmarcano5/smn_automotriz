INSERT INTO smn_automotriz.smn_presupuesto_detalle
(
	smn_presupuesto_detalle_id,
	smn_presupuesto_id,
	smn_servicios_rf,
	prd_cantidad,
	prd_precio,
	smn_moneda_rf,
	prd_monto_moneda_local,
	prd_idioma,
	prd_usuario,
	prd_fecha_registro,
	prd_hora,
	smn_tipo_componentes_rf,
	smn_componentes_rf,
	smn_item_rf
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_presupuesto_detalle},
	${seq:currval@smn_automotriz.seq_smn_presupuesto},
	${fld:smn_servicios_rf},
	${fld:prd_cantidad},
	${fld:prd_precio},
	${fld:smn_moneda_rf},
	${fld:prd_monto_moneda_local},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	'IT',
	${fld:smn_componentes_rf},
	${fld:smn_item_rf}

);

