select 
	smn_base.smn_baremos.smn_baremos_id as id, 
	smn_base.smn_baremos.bar_codigo || ' - ' ||  smn_base.smn_baremos.bar_descripcion as item 
from 
	smn_base.smn_baremos order by smn_base.smn_baremos.bar_descripcion