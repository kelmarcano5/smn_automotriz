
select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_contrato_base.smn_contrato_base_id as smn_contrato_base_rf,
	smn_automotriz.smn_documento.smn_documento_id as smn_documento_id,
	smn_base.smn_direccion.dir_descripcion as dir_descripcion,
	smn_automotriz.smn_contrato_modulo.*
from
	smn_base.smn_direccion,
	smn_base.smn_contrato_base,
	smn_automotriz.smn_documento,
	smn_automotriz.smn_contrato_modulo
where
	smn_base.smn_direccion.smn_direccion_id = smn_automotriz.smn_contrato_modulo.ctm_direccion_rf and
	smn_contrato_modulo_id = ${fld:id}
