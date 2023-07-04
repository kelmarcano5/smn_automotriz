select smn_automotriz.smn_documento.smn_documento_id as id, 
smn_automotriz.smn_documento.doc_codigo|| ' - ' || smn_automotriz.smn_documento.doc_nombre as item 
from smn_automotriz.smn_documento 
inner join smn_automotriz.smn_tipo_documento on smn_automotriz.smn_tipo_documento.smn_tipo_documento_id = smn_automotriz.smn_documento.smn_tipo_documento_id
where smn_automotriz.smn_tipo_documento.tdc_codigo='AF'
order by smn_automotriz.smn_documento.doc_nombre