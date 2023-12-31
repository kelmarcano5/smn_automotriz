
select
	smn_base.smn_unidad_medida.unm_descripcion,
	case
	when smn_automotriz.smn_coberturas.cob_otros_centros='S' then '${lbl:b_yes}'
	when smn_automotriz.smn_coberturas.cob_otros_centros='N' then '${lbl:b_not}'
	end as cob_otros_centros_combo,
	smn_automotriz.smn_coberturas.*,
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf  order by smn_base.smn_unidad_medida.unm_descripcion ) as unm_descripcion_combo
	
from
	smn_base.smn_unidad_medida,
	smn_automotriz.smn_coberturas
where
	
	smn_coberturas_id = ${fld:id}
