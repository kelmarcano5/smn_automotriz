select smn_automotriz.smn_planes.smn_planes_id as id, smn_automotriz.smn_planes.pla_codigo|| ' - ' || smn_automotriz.smn_planes.pla_descripcion as item from smn_automotriz.smn_planes order by smn_automotriz.smn_planes.pla_descripcion