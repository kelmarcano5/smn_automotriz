select smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id, smn_base.smn_tipo_doc_oficial.tdo_codigo||'-'||smn_base.smn_tipo_doc_oficial.tdo_descripcion as item from smn_base.smn_tipo_doc_oficial
where
	smn_base.smn_tipo_doc_oficial.tdo_codigo='PL'