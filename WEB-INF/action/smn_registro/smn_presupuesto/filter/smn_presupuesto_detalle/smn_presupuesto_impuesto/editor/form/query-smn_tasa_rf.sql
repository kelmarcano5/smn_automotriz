select smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id as id, smn_base.smn_monedas.mon_codigo ||' - '|| smn_base.smn_monedas.mon_nombre as item from smn_base.smn_tasas_de_cambio left outer join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_tasas_de_cambio.smn_monedas_id