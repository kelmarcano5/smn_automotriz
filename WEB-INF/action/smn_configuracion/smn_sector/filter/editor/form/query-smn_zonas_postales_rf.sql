select smn_base.smn_zonas_postales.smn_zonas_postales_id as id, smn_base.smn_zonas_postales.zpo_codigo || ' - ' || smn_base.smn_zonas_postales.zpo_sector as item from smn_base.smn_zonas_postales order by smn_base.smn_zonas_postales.zpo_sector