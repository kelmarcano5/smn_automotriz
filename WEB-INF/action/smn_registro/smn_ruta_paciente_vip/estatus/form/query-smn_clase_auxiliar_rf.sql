select smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as id, smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as item from smn_base.smn_clase_auxiliar 
where smn_base.smn_clase_auxiliar.cla_codigo='PA'
order by smn_base.smn_clase_auxiliar.cla_nombre