select smn_automotriz.smn_sintoma.smn_sintoma_id as id, smn_automotriz.smn_sintoma.stm_codigo || ' - ' || smn_automotriz.smn_sintoma.stm_descripcion as item from smn_automotriz.smn_sintoma order by smn_automotriz.smn_sintoma.stm_descripcion