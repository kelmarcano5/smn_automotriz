select smn_base.smn_auxiliar.aux_num_doc_oficial as item 
from smn_base.smn_auxiliar 
left outer join smn_base.smn_tipo_doc_oficial on smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id = smn_base.smn_auxiliar.aux_tipo_doc_oficial_rf
where smn_base.smn_auxiliar.smn_auxiliar_id=${fld:id}