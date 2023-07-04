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
	prd_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_presupuesto_detalle},
	${seq:currval@smn_automotriz.seq_smn_presupuesto},
	${fld:smn_servicios_rf},
	${fld:inm_cantidad},
	${fld:inm_precio_ml},
	${fld:smn_moneda_rf},
	${fld:inm_precio_ma},
	${fld:inm_monto_ml},
	${fld:inm_monto_ma},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
);

