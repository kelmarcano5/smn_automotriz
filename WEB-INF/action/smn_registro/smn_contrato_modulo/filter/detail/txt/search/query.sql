select
select
select
select
	smn_base.smn_direccion.dir_descripcion,
	smn_automotriz.smn_contrato_modulo.*
from
	smn_base.smn_direccion,
	smn_automotriz.smn_contrato_modulo
where
	smn_base.smn_direccion.smn_direccion_id = smn_automotriz.smn_contrato_modulo.ctm_direccion_rf and
	smn_contrato_modulo_id = ${fld:id}
