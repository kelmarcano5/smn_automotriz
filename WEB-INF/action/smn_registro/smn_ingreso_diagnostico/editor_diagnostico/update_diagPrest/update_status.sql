UPDATE smn_automotriz.smn_diagnostico_cab_auto SET
	smn_clase_auxiliar_rf_prest=${fld:smn_clase_auxiliar_rf_prest},
	smn_auxiliar_rf_prest=${fld:smn_auxiliar_rf_prest}

WHERE
	smn_ingresos_id=${fld:id_ingreso};

UPDATE smn_automotriz.smn_ruta_paciente set rta_estatus='ED'
WHERE rta_estatus='PE' and rta_secuencia='1' and rta_ticket=(select smn_automotriz.smn_ingresos.igs_ticket from smn_automotriz.smn_ingresos where smn_automotriz.smn_ingresos.smn_ingresos_id=${fld:id_ingreso})

