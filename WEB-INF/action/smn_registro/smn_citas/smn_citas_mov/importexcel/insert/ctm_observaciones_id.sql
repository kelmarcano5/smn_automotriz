select 
	smn_automotriz.smn_observaciones.smn_observaciones_id as ctm_observaciones_id_ref 
from   
	smn_automotriz.smn_observaciones 
where  
	upper(smn_automotriz.smn_observaciones.obs_descripcion) = upper(${fld:ctm_observaciones_id_desc})
