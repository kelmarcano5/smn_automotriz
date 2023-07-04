with rows as (
	select
		smn_automotriz.smn_ingresos.smn_clase_rf,
		smn_automotriz.smn_ingresos.smn_auxiliar_rf,
		smn_automotriz.smn_ingresos.smn_ingresos_id as id_ingreso
	from 
			smn_automotriz.smn_ingresos
		where 
				smn_automotriz.smn_ingresos.smn_ingresos_id = ${fld:id_ingreso}
	
)
INSERT INTO smn_automotriz.smn_diagnostico_cab_auto
(
	smn_diagnostico_cab_auto_id,
	smn_ingresos_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	dia_estatus,
	dia_idioma,
	dia_usuario,
	dia_fecha_registro,
	dia_hora
)(select ${seq:nextval@smn_automotriz.seq_smn_diagnostico_cab_auto}, 
	rows.id_ingreso, 
	rows.smn_clase_rf, 
	rows.smn_auxiliar_rf, 
	'ED', 
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}' 
		from rows);

UPDATE smn_automotriz.smn_ruta_paciente set rta_estatus='IN'
WHERE rta_estatus='EP' and rta_secuencia='1' and rta_ticket=(select smn_automotriz.smn_ingresos.igs_ticket from smn_automotriz.smn_ingresos where smn_automotriz.smn_ingresos.smn_ingresos_id=${fld:id_ingreso})
