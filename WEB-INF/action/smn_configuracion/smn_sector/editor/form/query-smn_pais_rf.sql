select smn_base.smn_paises.smn_paises_id as id, smn_base.smn_paises.pai_codigo || ' - ' || smn_base.smn_paises.pai_nombre_corto as item from smn_base.smn_paises order by smn_base.smn_paises.pai_nombre_corto