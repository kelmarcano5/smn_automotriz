select smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento as pordesc, smn_base.smn_descuentos_retenciones.dyr_porcentaje_base as porbase from smn_base.smn_descuentos_retenciones
where smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=${fld:id}
order by smn_base.smn_descuentos_retenciones.dyr_descripcion asc