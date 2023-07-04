select
		smn_automotriz.smn_documento.doc_codigo
from
		smn_automotriz.smn_documento
where
		upper(smn_automotriz.smn_documento.doc_codigo) = upper(${fld:doc_codigo})
