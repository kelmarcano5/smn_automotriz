select
		smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf,
	smn_automotriz.smn_contrato_modulo.smn_documento_id,
	smn_automotriz.smn_contrato_modulo.ctm_dia_factura,
	smn_automotriz.smn_contrato_modulo.ctm_cantidad,
	smn_automotriz.smn_contrato_modulo.ctm_precio,
	smn_automotriz.smn_contrato_modulo.ctm_monto,
	smn_automotriz.smn_contrato_modulo.ctm_porcentaje_incremento,
	smn_automotriz.smn_contrato_modulo.ctm_direccion_rf,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_renovacion,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_registro
from
	smn_automotriz.smn_contrato_modulo 
where
	smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id = ${fld:id}
