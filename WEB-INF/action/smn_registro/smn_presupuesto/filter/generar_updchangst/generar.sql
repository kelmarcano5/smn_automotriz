update smn_automotriz.smn_presupuesto set smn_estado_presupuesto_id = 2 where
smn_automotriz.smn_presupuesto.smn_presupuesto_id=${fld:id};

-- UPDATE smn_automotriz.smn_presupuesto SET
-- 	pre_monto_ml = (select sum(smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local) as monto_local from smn_automotriz.smn_presupuesto_detalle
-- where  smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id=${fld:id} GROUP BY smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local),
-- 	pre_fecha_registro={d '${def:date}'},
-- 	pre_hora='${def:time}'
-- WHERE
-- 	smn_presupuesto_id=${fld:id}$;