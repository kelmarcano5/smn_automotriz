select	
	(select smn_automotriz.smn_documento.doc_codigo|| ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento where smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_presupuesto.smn_documento_id ) as smn_documento_id_combo,
	(select smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_automotriz.smn_presupuesto.smn_entidades_rf  order by smn_base.smn_entidades.ent_descripcion_corta ) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo || ' - ' || smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales  where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_automotriz.smn_presupuesto.smn_sucursales_rf  order by smn_base.smn_sucursales.suc_nombre ) as smn_sucursales_rf_combo,	
	(select smn_base.smn_auxiliar.aux_num_doc_oficial || ' - ' || smn_base.smn_auxiliar.aux_nombres || ' ' || smn_base.smn_auxiliar.aux_apellidos from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null and smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_presupuesto.smn_auxiliar_rf) as smn_auxiliar_rf_combo,
	smn_automotriz.smn_presupuesto.smn_documento_id,
	smn_automotriz.smn_presupuesto.smn_baremo_rf,
	smn_automotriz.smn_presupuesto.pre_numero_control,
	smn_automotriz.smn_presupuesto.smn_entidades_rf,
	smn_automotriz.smn_presupuesto.smn_sucursales_rf,
	smn_automotriz.smn_presupuesto.smn_auxiliar_rf,
	smn_automotriz.smn_presupuesto.pre_fecha_registro,
	case
		when smn_automotriz.smn_presupuesto.pre_monto_ml is null then 0 else smn_automotriz.smn_presupuesto.pre_monto_ml
	end as pre_monto_ml,
	case
		when smn_automotriz.smn_presupuesto.pre_monto_ma is null then 0 else smn_automotriz.smn_presupuesto.pre_monto_ma
	end as pre_monto_ma,
	case
		when smn_automotriz.smn_presupuesto.pre_monto_neto_moneda_local is null then 0 else smn_automotriz.smn_presupuesto.pre_monto_neto_moneda_local
	end as pre_monto_neto_moneda_local,
	case
		when smn_automotriz.smn_presupuesto.pre_monto_neto_moneda_alterna is null then 0 else smn_automotriz.smn_presupuesto.pre_monto_neto_moneda_alterna
	end as pre_monto_neto_moneda_alterna,
	smn_automotriz.smn_presupuesto.smn_presupuesto_id,
	case
		when smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id = 1 then 'Registrado'
		when smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id = 2 then 'Generado' 
		when smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id = 3 then 'Enviado/Entregado'
		when smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id = 4 then 'Aprobado'
		when smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id = 5 then 'Rechazado'
	end as status_combo,
	smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id as status,
	smn_automotriz.smn_ingresos.igs_num_ingreso,
	smn_automotriz.smn_ingresos.smn_ingresos_id
	
from
	smn_automotriz.smn_presupuesto
		inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_presupuesto.smn_ingresos_id
where
	smn_presupuesto_id is not null and smn_automotriz.smn_presupuesto.smn_estado_presupuesto_id in (1,2,3,4)

	${filter}
 	 
order by 
	smn_presupuesto_id desc