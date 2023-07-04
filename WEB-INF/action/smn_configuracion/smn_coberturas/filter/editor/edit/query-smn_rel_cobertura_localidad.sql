select
	smn_automotriz.smn_rel_cobertura_localidad.*,
	smn_automotriz.smn_localidad.*
from 
	smn_automotriz.smn_rel_cobertura_localidad,
	smn_automotriz.smn_localidad
where 
	smn_automotriz.smn_rel_cobertura_localidad.smn_coberturas_id = ${fld:id} and
	smn_automotriz.smn_rel_cobertura_localidad.smn_localidad_id = smn_automotriz.smn_localidad.smn_localidad_id