select 
	smn_automotriz.smn_presupuesto.smn_presupuesto_id as id, 
	(select smn_automotriz.smn_documento.doc_nombre from smn_automotriz.smn_documento where smn_automotriz.smn_documento.smn_documento_id is not null and smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_presupuesto.smn_documento_id) || ' N° ' || smn_automotriz.smn_presupuesto.pre_numero_control as item 
from smn_automotriz.smn_presupuesto
where smn_presupuesto_id = ${fld:id_pre}
order by smn_automotriz.smn_presupuesto.pre_numero_control