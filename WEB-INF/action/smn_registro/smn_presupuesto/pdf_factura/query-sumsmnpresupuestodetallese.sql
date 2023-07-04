select  SUM(smn_automotriz.smn_presupuesto_detalle.prd_monto_neto_ma) as montomase
		--SUM(smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna+smn_automotriz.smn_presupuesto_detalle.prd_monto_incremento_ma-smn_automotriz.smn_presupuesto_detalle.prd_monto_descuento_ma) as montomase
	   -- SUM(smn_automotriz.smn_presupuesto_detalle.prd_monto_descuento_ma) as descuentoma,
	   -- SUM(smn_automotriz.smn_presupuesto_detalle.prd_monto_neto_ma) as netoma2
	   --SUM(smn_automotriz.smn_presupuesto_detalle.prd_precio_ma) as precioma,

from smn_automotriz.smn_presupuesto_detalle
	inner join smn_automotriz.smn_presupuesto on smn_automotriz.smn_presupuesto.smn_presupuesto_id = smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id
	inner join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_automotriz.smn_presupuesto_detalle.smn_servicios_rf
	left outer join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_automotriz.smn_presupuesto_detalle.smn_componentes_rf
	left outer join smn_base.smn_grupo_titulo_impresion on smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id =  smn_base.smn_componentes.smn_grupo_titulo_impresion_rf
	left outer join smn_base.smn_descuentos_retenciones on smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id = 
	smn_automotriz.smn_presupuesto_detalle.smn_codigo_descuento_rf
where 
	smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id=${fld:id} and smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf in('SE') and smn_automotriz.smn_presupuesto_detalle.prd_estatus<>'RZ'