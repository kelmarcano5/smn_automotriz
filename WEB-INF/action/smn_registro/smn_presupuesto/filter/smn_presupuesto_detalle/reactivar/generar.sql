UPDATE smn_automotriz.smn_presupuesto_detalle SET
	prd_observaciones='',
	prd_estatus='GE'

WHERE
	smn_presupuesto_detalle_id=${fld:id}