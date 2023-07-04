select
	smn_base.smn_unidad_medida.unm_descripcion,
		smn_automotriz.smn_coberturas.smn_coberturas_id,
	${field}
from
	smn_base.smn_unidad_medida,
	smn_automotriz.smn_coberturas
where
	smn_base.smn_unidad_medida.smn_unidad_medida_id = smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf and
		smn_automotriz.smn_coberturas.smn_coberturas_id is not null
	${filter}
	
	
