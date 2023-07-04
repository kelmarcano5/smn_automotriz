select
	(select smn_automotriz.smn_documento.doc_codigo|| ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento  where smn_automotriz.smn_documento.smn_documento_id is not null  and smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_afiliado_titular.smn_documento_id  order by smn_automotriz.smn_documento.doc_nombre ) as smn_documento_id,
	(select smn_automotriz.smn_contratante.smn_documento_id || ' - ' || smn_automotriz.smn_contratante.cnt_numero_control from  smn_automotriz.smn_contratante  where smn_automotriz.smn_contratante.smn_contratante_id is not null  and smn_automotriz.smn_contratante.smn_contratante_id=smn_automotriz.smn_afiliado_titular.smn_contratante_id  order by smn_automotriz.smn_contratante.cnt_numero_control ) as smn_contratante_id,
	(select smn_base.smn_auxiliar_unidades_negocios.tun_codigo|| ' - ' || smn_base.smn_auxiliar_unidades_negocios.tun_nombre from  smn_base.smn_auxiliar_unidades_negocios  where smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id is not null  and smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id=smn_automotriz.smn_afiliado_titular.smn_auxiliar_unidades_negocios_rf  order by smn_base.smn_auxiliar_unidades_negocios.tun_nombre ) as smn_auxiliar_unidades_negocios_rf,
	(select smn_base.smn_auxiliar_sucursales.trs_codigo|| ' - ' || smn_base.smn_auxiliar_sucursales.trs_nombre from  smn_base.smn_auxiliar_sucursales  where smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id is not null  and smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id=smn_automotriz.smn_afiliado_titular.smn_auxiliar_sucursales_rf  order by smn_base.smn_auxiliar_sucursales.trs_nombre ) as smn_auxiliar_sucursales_rf,
	(select smn_base.smn_auxiliar_areas_servicios.tse_codigo|| ' - ' || smn_base.smn_auxiliar_areas_servicios.tse_descripcion from  smn_base.smn_auxiliar_areas_servicios  where smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id is not null  and smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id=smn_automotriz.smn_afiliado_titular.smn_auxiliar_areas_servicios_rf  order by smn_base.smn_auxiliar_areas_servicios.tse_descripcion ) as smn_auxiliar_areas_servicios_rf,
	(select smn_base.smn_auxiliar_unidades_servicios.tns_codigo|| ' - ' || smn_base.smn_auxiliar_unidades_servicios.tns_descripcion from  smn_base.smn_auxiliar_unidades_servicios  where smn_base.smn_auxiliar_unidades_servicios.smn_auxiliar_unidades_servicios_id is not null  and smn_base.smn_auxiliar_unidades_servicios.smn_auxiliar_unidades_servicios_id=smn_automotriz.smn_afiliado_titular.smn_auxiliar_unidades_servicios_rf  order by smn_base.smn_auxiliar_unidades_servicios.tns_descripcion ) as smn_auxiliar_unidades_servicios_rf,
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_automotriz.smn_afiliado_titular.afi_clase_auxiliar_rf  order by smn_base.smn_clase_auxiliar.cla_nombre ) as cla_nombre,
	(select smn_base.smn_auxiliar_terceros.atr_codigo || ' - ' ||  smn_base.smn_auxiliar_terceros.atr_descripcion from  smn_base.smn_auxiliar_terceros  where smn_base.smn_auxiliar_terceros.smn_auxiliar_terceros_id is not null  and smn_base.smn_auxiliar_terceros.smn_auxiliar_terceros_id=smn_automotriz.smn_afiliado_titular.afi_auxiliar_rf  order by smn_base.smn_auxiliar_terceros.atr_descripcion ) as atr_descripcion,
	case
		when smn_automotriz.smn_afiliado_titular.afi_estatus='A' then '${lbl:b_afi_activo}'
		when smn_automotriz.smn_afiliado_titular.afi_estatus='I' then '${lbl:b_afi_inactivo}'
	end as afi_estatus,
	smn_automotriz.smn_afiliado_titular.*
from 
	smn_automotriz.smn_afiliado_titular
where
	smn_afiliados_id = ${fld:id}
