select
		smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id,
	smn_base.smn_contrato_base.ctr_codigo ||' - '|| smn_base.smn_contrato_base.ctr_nombre as smn_contrato_base_rf,
	smn_automotriz.smn_documento.doc_codigo ||' - '|| smn_automotriz.smn_documento.doc_nombre as smn_documento_id,
	smn_automotriz.smn_contrato_modulo.ctm_precio,
	smn_automotriz.smn_contrato_modulo.ctm_monto,
		smn_base.smn_direccion.dir_codigo ||' - '|| smn_base.smn_direccion.dir_descripcion as dir_descripcion,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_renovacion,
	smn_automotriz.smn_contrato_modulo.ctm_fecha_registro
	
from
	smn_automotriz.smn_contrato_modulo
	left outer join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id=smn_automotriz.smn_contrato_modulo.ctm_direccion_rf
	left outer join smn_base.smn_contrato_base on smn_base.smn_contrato_base.smn_contrato_base_id=smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf 
	left outer join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_contrato_modulo.smn_documento_id
	
where
	smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id is not null
	${filter}
