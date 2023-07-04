select smn_base.smn_item.smn_item_id as id, smn_base.smn_item.itm_codigo||' - '|| smn_base.smn_item.itm_nombre as item from smn_base.smn_item
inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_item_rf = smn_base.smn_item.smn_nivel_estructura_id
where smn_base.smn_componentes.smn_componentes_id=${fld:id}