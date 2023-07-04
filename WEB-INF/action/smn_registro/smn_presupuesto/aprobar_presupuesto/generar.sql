update smn_automotriz.smn_presupuesto set smn_estado_presupuesto_id = 4 where
smn_automotriz.smn_presupuesto.smn_presupuesto_id=${fld:smn_presupuesto_id};

UPDATE smn_automotriz.smn_ingresos SET 
	igs_monto_moneda_local=${fld:montoml},
	igs_monto_moneda_alterna=${fld:montoma}

WHERE
	smn_ingresos_id=${fld:ingreso};