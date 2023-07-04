select
		smn_automotriz.smn_citas_mov.cts_ordenante_descripcion
from
		smn_automotriz.smn_citas_mov
where
		upper(smn_automotriz.smn_citas_mov.cts_ordenante_descripcion) = upper(${fld:cts_ordenante_descripcion})
