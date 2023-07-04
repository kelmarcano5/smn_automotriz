select
		smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_detalle_id,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id,
	smn_comercial.smn_pedido_detalle.smn_pedido_detalle_id as pedido_detalle,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_mov_caja_detalle_id,
	smn_automotriz.smn_ingresos.smn_ingresos_id as ingreso,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_unidades_servicios_rf,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_servicios_rf,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_componentes_rf,
  smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_item_rf,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_cantidad,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_propuesto_ml as nrs_monto_saldo_ml,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_propuesto_ma as nrs_monto_saldo_ma,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_propuesto_ml as nrs_monto_ml,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_monto_propuesto_ma as nrs_monto_ma,
	case
			when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='IT' then '${lbl:b_item}'
			when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='SE' then '${lbl:b_services}'
			when smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='HO' then '${lbl:b_honorary}'
	end as psd_tipo_componentes,
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestador_servicio_rf as smn_prestador_servicio_rf,
	smn_base.smn_componentes.smn_imprime as imprime,
	smn_base.smn_componentes.smn_grupo_titulo_impresion_rf as grupo_impresion,
	smn_base.smn_componentes.smn_tipo_gasto_rf as tipo_gasto,
	smn_base.smn_componentes.smn_sub_tipo_gasto_rf as sub_tipo_gasto,
	smn_base.smn_componentes.smn_grupo_componente_rf as grupo_componente
	
from
	smn_automotriz.smn_prestacion_servicio_medico_detalle
	inner join smn_automotriz.smn_prestacion_servicio_medico_cabecera on smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_prestacion_servicio_medico_cabecera_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id
	inner join smn_automotriz.smn_ingreso_movimiento on smn_automotriz.smn_ingreso_movimiento.smn_ingresos_mov_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_ingresos_mov_id
	inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_ingresos_id
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestador_servicio_rf
	left outer join smn_base.smn_prestadores_servicios on smn_base.smn_prestadores_servicios.prs_auxiliar = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestador_servicio_rf
	left outer join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_componentes_rf
	inner join smn_comercial.smn_pedido_cabecera on smn_comercial.smn_pedido_cabecera.smn_mov_caja_cabecera_id = smn_automotriz.smn_prestacion_servicio_medico_cabecera.smn_mov_caja_cabecera_id
	inner join smn_comercial.smn_pedido_detalle on smn_comercial.smn_pedido_detalle.smn_pedido_cabecera_id = smn_comercial.smn_pedido_cabecera.smn_pedido_cabecera_id
where
	smn_automotriz.smn_prestacion_servicio_medico_detalle.psd_tipo_componentes='HO' and
	smn_automotriz.smn_prestacion_servicio_medico_detalle.smn_prestacion_servicio_medico_cabecera_id = ${fld:id_prestacion}