select
	smn_automotriz.smn_rel_plan_contrato.*,
	smn_automotriz.smn_contrato_modulo.*
from 
	smn_automotriz.smn_rel_plan_contrato,
	smn_automotriz.smn_contrato_modulo
where 
	smn_automotriz.smn_rel_plan_contrato.smn_planes_id = ${fld:id} and
	smn_automotriz.smn_rel_plan_contrato.smn_contrato_modulo_id = smn_automotriz.smn_contrato_modulo.smn_contrato_modulo_id