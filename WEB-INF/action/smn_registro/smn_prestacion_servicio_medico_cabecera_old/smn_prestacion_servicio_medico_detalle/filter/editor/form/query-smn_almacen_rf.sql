select smn_base.smn_almacen.smn_almacen_id as id, smn_base.smn_almacen.alm_codigo || ' - ' || smn_base.smn_almacen.alm_nombre as item from smn_base.smn_almacen order by smn_base.smn_almacen.alm_nombre