select
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento  where smn_automotriz.smn_documento.smn_documento_id is not null  and smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_ingresos.smn_documento_id  order by smn_automotriz.smn_documento.doc_nombre ) as smn_documento_id_combo,
	(select smn_base.smn_entidades.ent_codigo || ' - ' ||  smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_automotriz.smn_ingresos.smn_entidades_rf  order by smn_base.smn_entidades.ent_descripcion_corta ) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo || ' - ' ||  smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales  where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_automotriz.smn_ingresos.smn_sucursales_rf  order by smn_base.smn_sucursales.suc_nombre ) as smn_sucursales_rf_combo,
	(select smn_base.smn_areas_servicios.ase_codigo || ' - ' ||  smn_base.smn_areas_servicios.ase_descripcion from  smn_base.smn_areas_servicios  where smn_base.smn_areas_servicios.smn_areas_servicios_id is not null  and smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_automotriz.smn_ingresos.smn_areas_servicios_rf  order by smn_base.smn_areas_servicios.ase_descripcion ) as smn_areas_servicios_rf_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo || ' - ' ||  smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios  where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_automotriz.smn_ingresos.smn_unidades_servicios_rf  order by smn_base.smn_unidades_servicios.uns_descripcion ) as smn_unidades_servicios_rf_combo,
	--(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_automotriz.smn_ingresos.smn_contratante_id  order by smn_base.smn_clase_auxiliar.cla_nombre ) as smn_contratante_id_combo,
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion from smn_automotriz.smn_contratante left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_contratante.smn_auxiliar_rf where smn_automotriz.smn_contratante.smn_contratante_id is not null and smn_automotriz.smn_contratante.smn_contratante_id=smn_automotriz.smn_ingresos.smn_contratante_id) as smn_contratante_id_combo,
	(select smn_base.smn_auxiliar_sucursales.trs_codigo ||' - '|| smn_base.smn_auxiliar_sucursales.trs_nombre from smn_base.smn_auxiliar_sucursales where smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id is not null and smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = smn_automotriz.smn_ingresos.smn_auxiliar_sucursales_rf) as smn_auxiliar_sucursales_rf_combo,
	(select smn_base.smn_auxiliar_areas_servicios.tse_codigo ||' - '|| smn_base.smn_auxiliar_areas_servicios.tse_descripcion from smn_base.smn_auxiliar_areas_servicios where smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id is not null and smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id=smn_automotriz.smn_ingresos.smn_auxiliar_areas_servicios_rf) as smn_auxiliar_areas_servicios_rf_combo,
	(select smn_base.smn_auxiliar_unidades_servicios.tns_codigo ||' - '|| smn_base.smn_auxiliar_unidades_servicios.tns_descripcion from smn_base.smn_auxiliar_unidades_servicios where smn_base.smn_auxiliar_unidades_servicios.smn_auxiliar_unidades_servicios_id is not null and smn_base.smn_auxiliar_unidades_servicios.smn_auxiliar_unidades_servicios_id=smn_auxilia_unidad_servicio_rf) as smn_auxilia_unidad_servicio_rf_combo,
	(select smn_automotriz.smn_motivos.mtv_codigo || ' - ' || smn_automotriz.smn_motivos.mtv_descripcion from  smn_automotriz.smn_motivos  where smn_automotriz.smn_motivos.smn_motivos_id is not null  and smn_automotriz.smn_motivos.smn_motivos_id=smn_automotriz.smn_ingresos.smn_motivos_id  order by smn_automotriz.smn_motivos.mtv_descripcion ) as smn_motivos_id_combo,
	(select smn_automotriz.smn_sintoma.stm_codigo || ' - ' || smn_automotriz.smn_sintoma.stm_descripcion from  smn_automotriz.smn_sintoma  where smn_automotriz.smn_sintoma.smn_sintoma_id is not null  and smn_automotriz.smn_sintoma.smn_sintoma_id=smn_automotriz.smn_ingresos.smn_sintoma_id  order by smn_automotriz.smn_sintoma.stm_descripcion ) as smn_sintoma_id_combo,
	smn_automotriz.smn_ingresos.*,
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from smn_automotriz.smn_documento where smn_automotriz.smn_documento.smn_documento_id is not null and smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_ingresos.smn_doc_orig order by smn_automotriz.smn_documento.doc_nombre) as smn_doc_orig,
	(select smn_base.smn_auxiliar_persona_natural.ant_num_doc_oficial || ' - ' || smn_base.smn_auxiliar_persona_natural.ant_nombres || ' - ' || smn_base.smn_auxiliar_persona_natural.ant_apellidos from smn_base.smn_auxiliar_persona_natural where smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_automotriz.smn_ingresos.smn_auxiliar_rf) as smn_auxiliar_rf,
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_ingresos.smn_clase_rf) as smn_clase_rf,
	case
	when smn_automotriz.smn_ingresos.igs_estatus_financiero='PE' then 'PENDIENTE'
	when smn_automotriz.smn_ingresos.igs_estatus_financiero='PA' then 'PAGADO'
	when smn_automotriz.smn_ingresos.igs_estatus_financiero='AU' then 'AUTORIZADO'
	end as igs_estatus_financiero
from 
	smn_automotriz.smn_ingresos
where
	smn_ingresos_id = ${fld:id}
