select smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id as id, 
smn_base.smn_contrato_base.ctr_codigo || ' - ' || smn_base.smn_contrato_base.ctr_nombre as item 
from smn_automotriz.smn_contrato_modulo 
inner join smn_base.smn_contrato_base on smn_base.smn_contrato_base.smn_contrato_base_id = smn_automotriz.smn_contrato_modulo.smn_contrato_base_rf
order by smn_automotriz.smn_contrato_modulo.smn_documento_id