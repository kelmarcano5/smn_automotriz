INSERT INTO smn_automotriz.smn_contrato_modulo
(
	smn_contrato_modulo_id,
	smn_contrato_base_rf,
	smn_documento_id,
	ctm_dia_factura,
	ctm_cantidad,
	ctm_precio,
	ctm_monto,
	ctm_porcentaje_incremento,
	ctm_direccion_rf,
	ctm_fecha_renovacion,
	ctm_idioma,
	ctm_usuario_id,
	ctm_fecha_registro,
	ctm_hora
)
VALUES
(
	${seq:nextval@smn_automotriz.seq_smn_contrato_modulo},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
