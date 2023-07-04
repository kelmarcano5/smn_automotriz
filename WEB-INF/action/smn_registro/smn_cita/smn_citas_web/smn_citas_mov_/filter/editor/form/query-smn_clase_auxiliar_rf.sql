SELECT 
	distinct(smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre) as item
from 
	smn_base.smn_clase_auxiliar,
	smn_base.smn_auxiliar_medico
where 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_medico.smn_clase_auxiliar_id
