select
smn_automotriz.smn_citas.*,
	(select smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre from  smn_automotriz.smn_documento  where smn_automotriz.smn_documento.smn_documento_id is not null  and smn_automotriz.smn_documento.smn_documento_id=smn_automotriz.smn_citas.smn_documento_id  order by smn_automotriz.smn_documento.doc_nombre ) as smn_documento_id,
	(select smn_base.smn_auxiliar_persona_natural.ant_num_doc_oficial || ' - ' || smn_base.smn_auxiliar_persona_natural.ant_nombres || ' ' || smn_base.smn_auxiliar_persona_natural.ant_apellidos from  smn_base.smn_auxiliar_persona_natural  where smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id is not null  and smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id=smn_automotriz.smn_citas.cts_auxiliar  order by smn_base.smn_auxiliar_persona_natural.ant_num_doc_oficial ) as ant_apellidos,
	smn_base.smn_clase_auxiliar.cla_nombre
	
from
	smn_base.smn_auxiliar_persona_natural,
	smn_base.smn_clase_auxiliar,
	smn_automotriz.smn_citas
where
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_automotriz.smn_citas.cts_auxiliar and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_automotriz.smn_citas.cts_clase_auxiliar and
	smn_citas_id = ${fld:id}
