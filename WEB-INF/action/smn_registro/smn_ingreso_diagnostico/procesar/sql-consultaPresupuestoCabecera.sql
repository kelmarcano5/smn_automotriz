select
	smn_automotriz.smn_ingresos.smn_documento_id,
	smn_automotriz.smn_ingresos.smn_entidades_rf,
	smn_automotriz.smn_ingresos.smn_clase_rf,
	smn_automotriz.smn_ingresos.smn_auxiliar_rf,
	smn_automotriz.smn_ingresos.smn_contratante_id,
	smn_automotriz.smn_ingresos.smn_unidades_servicios_rf,
	smn_automotriz.smn_ingresos.smn_areas_servicios_rf,
	smn_automotriz.smn_ingresos.smn_auxiliar_sucursales_rf,
	smn_automotriz.smn_ingresos.smn_auxiliar_areas_servicios_rf,
	smn_automotriz.smn_ingresos.smn_auxilia_unidad_servicio_rf,
	smn_automotriz.smn_ingresos.igs_monto_moneda_local,
	smn_automotriz.smn_ingresos.smn_moneda_rf,
	smn_automotriz.smn_ingresos.igs_monto_moneda_alterna,
	smn_automotriz.smn_ingresos.igs_estatus_financiero,
	to_char(smn_automotriz.smn_ingresos.igs_fecha_registro, 'YYYY-MM-DD') as igs_fecha_registro
from 
	smn_automotriz.smn_ingresos
where 
	  smn_ingresos_id = ${fld:id_ingreso}
	