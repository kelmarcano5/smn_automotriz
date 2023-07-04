select
		smn_automotriz.smn_documento.doc_nombre
from
		smn_automotriz.smn_documento
where
		upper(smn_automotriz.smn_documento.doc_nombre) = upper(${fld:doc_nombre})
