select
		smn_automotriz.smn_motivos.mtv_descripcion
from
		smn_automotriz.smn_motivos
where
		upper(smn_automotriz.smn_motivos.mtv_descripcion) = upper(${fld:mtv_descripcion})
