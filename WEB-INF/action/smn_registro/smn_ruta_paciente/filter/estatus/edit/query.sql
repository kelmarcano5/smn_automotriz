select	
	smn_automotriz.smn_ruta_paciente.*
from 
	smn_automotriz.smn_ruta_paciente
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id  = smn_automotriz.smn_ruta_paciente.smn_auxiliar_rf
	left outer join smn_base.smn_tipo_doc_oficial on smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id = smn_base.smn_auxiliar.aux_tipo_doc_oficial_rf
	left outer join smn_automotriz.smn_observaciones on smn_automotriz.smn_observaciones.smn_observaciones_id = smn_automotriz.smn_ruta_paciente.rta_observacion
where 
	smn_ruta_id = ${fld:id}


