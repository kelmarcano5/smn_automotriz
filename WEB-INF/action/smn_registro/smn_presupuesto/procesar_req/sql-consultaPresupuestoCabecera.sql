SELECT * 
FROM smn_automotriz.smn_presupuesto
inner join smn_automotriz.smn_ingresos on smn_automotriz.smn_ingresos.igs_num_ingreso = smn_automotriz.smn_presupuesto.smn_ingresos_id 
WHERE smn_presupuesto_id =  ${fld:smn_presupuesto_id}