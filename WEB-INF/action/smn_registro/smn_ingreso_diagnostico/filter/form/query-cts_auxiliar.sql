select 
	smn_base.smn_auxiliar.smn_auxiliar_id as id, 
	smn_base.smn_auxiliar.aux_num_doc_oficial || ' - ' || smn_base.smn_auxiliar.aux_nombres || ' - ' || smn_base.smn_auxiliar.aux_apellidos as item 
from 
	smn_base.smn_auxiliar  
inner join 
	smn_base.smn_clase_auxiliar c 
on 
	smn_base.smn_auxiliar.smn_clase_auxiliar_rf = c.smn_clase_auxiliar_id 
where 
	c.cla_codigo =  upper('VH')  
order by smn_base.smn_auxiliar.aux_num_doc_oficial