select
		smn_automotriz.smn_relacion_unidad_paso.smn_rel_unidad_paso,
	${field}
from
	smn_automotriz.smn_relacion_unidad_paso
where
		smn_automotriz.smn_relacion_unidad_paso.smn_rel_unidad_paso is not null
	${filter}
	
	
