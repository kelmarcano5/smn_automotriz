	select
	
	smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id,
	smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf,
	smn_automotriz.smn_contrato_modulo.smn_documento_id,
	smn_automotriz.smn_contrato_modulo.ctm_precio,
	smn_automotriz.smn_contrato_modulo.ctm_monto,
	smn_automotriz.smn_contrato_modulo.ctm_direccion_rf as dir_descripcion,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_renovacion,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_registro,
	smn_automotriz.smn_contrato_modulo.ctm_porcentaje_incremento as ctm_porcentaje_incremento,
	smn_automotriz.smn_contrato_modulo.ctm_cantidad as ctm_cantidad,
	smn_automotriz.smn_contrato_modulo.ctm_dia_factura as ctm_dia_factura
	
from

	smn_base.smn_direccion,
	smn_automotriz.smn_contrato_modulo
where
	smn_base.smn_direccion.smn_direccion_id = smn_automotriz.smn_contrato_modulo.ctm_direccion_rf
