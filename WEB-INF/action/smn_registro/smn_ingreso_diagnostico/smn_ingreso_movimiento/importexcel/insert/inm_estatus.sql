select 
	smn_automotriz.smn_estatus_citas.smn_estatus_citas_id as inm_estatus_ref 
from   
	smn_automotriz.smn_estatus_citas 
where  
	upper(smn_automotriz.smn_estatus_citas.eci_descripcion) = upper(${fld:inm_estatus_desc})
