select smn_base.smn_auxiliar.smn_auxiliar_id as id, smn_base.smn_auxiliar.aux_nombres || '  ' ||  smn_base.smn_auxiliar.aux_apellidos as item 
from smn_base.smn_auxiliar 
inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar.smn_clase_auxiliar_rf
where smn_base.smn_clase_auxiliar.cla_codigo = 'VH'
order by smn_base.smn_auxiliar.smn_auxiliar_id desc
