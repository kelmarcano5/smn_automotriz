select smn_base.smn_unidad_medida.smn_unidad_medida_id as id, smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion as item from smn_base.smn_unidad_medida order by smn_base.smn_unidad_medida.unm_descripcion