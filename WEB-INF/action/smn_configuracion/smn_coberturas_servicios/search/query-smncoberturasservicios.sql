select	
	smn_automotriz.smn_coberturas.smn_coberturas_id, 
	smn_automotriz.smn_coberturas.cob_codigo as cob_codigo_pl0,
	(select smn_automotriz.smn_coberturas.cob_codigo || ' - ' || smn_automotriz.smn_coberturas.cob_descripcion from  smn_automotriz.smn_coberturas  where smn_automotriz.smn_coberturas.smn_coberturas_id is not null  and smn_automotriz.smn_coberturas.smn_coberturas_id=smn_automotriz.smn_coberturas_servicios.smn_coberturas_id  order by smn_automotriz.smn_coberturas.cob_descripcion ) as smn_coberturas_id_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo || ' - ' || smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios  where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_automotriz.smn_coberturas_servicios.smn_unidades_servicios_id  order by smn_base.smn_unidades_servicios.uns_descripcion ) as smn_unidades_servicios_id_combo,
	smn_automotriz.smn_coberturas_servicios.smn_coberturas_id,
	smn_automotriz.smn_coberturas_servicios.smn_unidades_servicios_id

from
	smn_automotriz.smn_coberturas,
	smn_automotriz.smn_coberturas_servicios 
where
	smn_automotriz.smn_coberturas.smn_coberturas_id=smn_automotriz.smn_coberturas_servicios.smn_coberturas_id 

