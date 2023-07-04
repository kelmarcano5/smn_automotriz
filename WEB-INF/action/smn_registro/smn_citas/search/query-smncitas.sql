select
	smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre  as smn_documento_id,
	smn_base.smn_auxiliar.aux_num_doc_oficial || ' - ' || smn_base.smn_auxiliar.aux_codigo || ' ' || smn_base.smn_auxiliar.aux_descripcion as ant_apellidos,
	smn_automotriz.smn_citas.smn_citas_id,
	smn_automotriz.smn_citas.cts_num_control,
	smn_automotriz.smn_citas.cts_numero_ticket,
	smn_automotriz.smn_citas.cts_auxiliar,
	smn_automotriz.smn_citas.cts_fecha_registro
	
from
	smn_automotriz.smn_citas
	left outer join	smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_citas.cts_auxiliar
	left outer join smn_automotriz.smn_contratante on smn_automotriz.smn_contratante.smn_clase_auxiliar_rf = smn_automotriz.smn_citas.cts_clase_auxiliar
	left outer join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_citas.smn_documento_id
