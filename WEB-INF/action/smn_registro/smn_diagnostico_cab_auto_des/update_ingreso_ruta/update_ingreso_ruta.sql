UPDATE smn_automotriz.smn_diagnostico_cab_auto SET
	dia_estatus='GE'
WHERE
	smn_ingresos_id=${fld:id};


UPDATE smn_automotriz.smn_ingresos SET
	smn_doc_orig=(select smn_automotriz.smn_tipo_documento.smn_tipo_documento_id from smn_automotriz.smn_tipo_documento
	inner join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_tipo_documento_id = smn_automotriz.smn_tipo_documento.smn_tipo_documento_id
	inner join smn_base.smn_documentos_generales on  smn_base.smn_documentos_generales.smn_documentos_generales_id = smn_automotriz.smn_documento.smn_documento_general_rf
	where smn_automotriz.smn_documento.doc_codigo='PRES'),
	igs_doc_origen=${seq:nextval@smn_automotriz.seq_smn_presupuesto}+1

WHERE
	smn_ingresos_id=${fld:id};

