select
		smn_automotriz.smn_motivos.mtv_codigo
from
		smn_automotriz.smn_motivos
where
		upper(smn_automotriz.smn_motivos.mtv_codigo) = upper(${fld:mtv_codigo})
