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
	smn_componentes_rf
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_presupuesto_detalle},
	${seq:currval@smn_automotriz.seq_smn_presupuesto},
	${fld:smn_servicios_rf},
	${fld:inm_cantidad},
	${fld:inm_precio_ml},
	${fld:smn_moneda_rf},
	${fld:inm_monto_ml},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	'SE',
	${fld:smn_componentes_rf}
);

