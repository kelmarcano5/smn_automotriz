select
		smn_automotriz.smn_presupuesto_impuesto.smn_codigo_impuesto_id
from
		smn_automotriz.smn_presupuesto_impuesto
where
		smn_automotriz.smn_presupuesto_impuesto.smn_codigo_impuesto_id = ${fld:smn_codigo_impuesto_id}
