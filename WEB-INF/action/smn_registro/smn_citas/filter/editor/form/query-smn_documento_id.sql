select smn_automotriz.smn_documento.smn_documento_id as id, smn_automotriz.smn_documento.doc_codigo || ' - ' || smn_automotriz.smn_documento.doc_nombre as item 
from smn_automotriz.smn_documento 
where upper(smn_automotriz.smn_documento.doc_nombre) = upper('Citas Presenciales')