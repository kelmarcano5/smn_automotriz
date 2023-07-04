select 
	smn_automotriz.smn_observaciones.smn_observaciones_id as psd_observaciones_rf_ref 
from   
	smn_automotriz.smn_observaciones 
where  
	upper(smn_automotriz.smn_observaciones.obs_descripcion) = upper(${fld:psd_observaciones_rf_desc})
