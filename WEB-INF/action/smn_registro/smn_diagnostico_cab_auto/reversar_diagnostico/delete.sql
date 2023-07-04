delete from smn_automotriz.smn_presupuesto_detalle where smn_presupuesto_id = (select smn_automotriz.smn_presupuesto.smn_presupuesto_id from smn_automotriz.smn_presupuesto where smn_automotriz.smn_presupuesto.smn_ingresos_id = ${fld:ingreso} limit 1);

	delete from smn_automotriz.smn_presupuesto where smn_automotriz.smn_presupuesto.smn_ingresos_id = ${fld:ingreso};

UPDATE smn_automotriz.smn_diagnostico_cab_auto SET
	dia_estatus='ED'
WHERE
	smn_diagnostico_cab_auto_id=${fld:id}

