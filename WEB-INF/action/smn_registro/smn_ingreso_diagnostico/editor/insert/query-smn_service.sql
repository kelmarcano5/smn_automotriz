select * from smn_automotriz.smn_ingreso_sintomas
inner join smn_base.smn_ingresos on smn_base.smn_ingresos.smn_ingresos_id = smn_automotriz.smn_ingreso_sintomas.smn_ingresos_id
