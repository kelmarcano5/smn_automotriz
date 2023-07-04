
select

	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf  order by smn_base.smn_unidad_medida.unm_descripcion ) as unm_descripcion_combo,
	smn_automotriz.smn_coberturas.cob_codigo,
	smn_automotriz.smn_coberturas.cob_descripcion,
	smn_automotriz.smn_coberturas.cob_descuento,
	smn_automotriz.smn_coberturas.cob_tiempo_servicio,
	smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf,
	smn_automotriz.smn_coberturas.cob_deducible,
	smn_automotriz.smn_coberturas.cob_fecha_registro,
		smn_automotriz.smn_coberturas.smn_coberturas_id
	
from
	smn_base.smn_unidad_medida,
	smn_automotriz.smn_coberturas
where
	smn_base.smn_unidad_medida.smn_unidad_medida_id = smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf and
	smn_coberturas_id is not null
	${filter}
order by
		smn_coberturas_id
