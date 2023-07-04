select smn_base.smn_auxiliar.aux_num_doc_oficial as placa, smn_base.smn_auxiliar.smn_auxiliar_id as idd
from smn_base.smn_auxiliar 
where smn_base.smn_auxiliar.aux_num_doc_oficial=${fld:idv}