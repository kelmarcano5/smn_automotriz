select smn_automotriz.smn_coberturas.smn_coberturas_id as id, smn_automotriz.smn_coberturas.cob_codigo || ' - ' || smn_automotriz.smn_coberturas.cob_descripcion as item from smn_automotriz.smn_coberturas order by smn_automotriz.smn_coberturas.cob_descripcion