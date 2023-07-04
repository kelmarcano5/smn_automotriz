select 
	a.smn_auxiliar_id as id, 
	a.aux_num_doc_oficial || ' - ' || a.aux_nombres || ' - ' || a.aux_apellidos as item 
from 
	smn_base.smn_auxiliar a 
inner join 
	smn_base.smn_clase_auxiliar c 
on 
	a.smn_clase_auxiliar_rf = c.smn_clase_auxiliar_id 
where 
	c.cla_codigo =  upper('VH')  
order by a.aux_num_doc_oficial