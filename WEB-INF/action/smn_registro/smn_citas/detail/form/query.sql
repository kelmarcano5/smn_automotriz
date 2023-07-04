select
smn_automotriz.smn_citas.*,
	smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre as smn_documento_id,
smn_base.smn_auxiliar.aux_codigo || ' ' || smn_base.smn_auxiliar.aux_descripcion as ant_apellidos,
	smn_base.smn_clase_auxiliar.cla_nombre
from
	smn_automotriz.smn_citas
	left outer join	smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_automotriz.smn_citas.cts_auxiliar
	left outer join smn_automotriz.smn_contratante on smn_automotriz.smn_contratante.smn_clase_auxiliar_rf = smn_automotriz.smn_citas.cts_clase_auxiliar
	left outer join smn_automotriz.smn_documento on smn_automotriz.smn_documento.smn_documento_id = smn_automotriz.smn_citas.smn_documento_id
	inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar.smn_clase_auxiliar_rf
where
	smn_citas_id = ${fld:id}
