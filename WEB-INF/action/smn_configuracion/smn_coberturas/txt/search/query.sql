
select
	 smn_automotriz.smn_coberturas.cob_codigo,
  smn_automotriz.smn_coberturas.cob_descripcion,
  smn_automotriz.smn_coberturas.cob_descuento,
  smn_automotriz.smn_coberturas.cob_tiempo_servicio,
  smn_automotriz.smn_coberturas.cob_deducible,
  smn_automotriz.smn_coberturas.cob_time_desp_afil,
  smn_automotriz.smn_coberturas.cob_otros_centros,
  smn_automotriz.smn_coberturas.cob_cantidad_servicio,
  smn_automotriz.smn_coberturas.cob_vigencia_desde,
  smn_automotriz.smn_coberturas.cob_vigencia_hasta,
  smn_automotriz.smn_coberturas.cob_cobertura_desde,
  smn_automotriz.smn_coberturas.cob_cobertura_hasta,
  smn_automotriz.smn_coberturas.cob_deducible_centro,
  smn_automotriz.smn_coberturas.cob_porc_deducible,
  smn_automotriz.smn_coberturas.cob_idioma,
  smn_automotriz.smn_coberturas.cob_usuario,
  smn_automotriz.smn_coberturas.cob_fecha_registro,
  smn_automotriz.smn_coberturas.cob_hora,
 (select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_automotriz.smn_coberturas.cob_unidad_tiempo_rf  order by smn_base.smn_unidad_medida.unm_descripcion ) as unm_descripcion

from

	smn_base.smn_unidad_medida,
	smn_automotriz.smn_coberturas
