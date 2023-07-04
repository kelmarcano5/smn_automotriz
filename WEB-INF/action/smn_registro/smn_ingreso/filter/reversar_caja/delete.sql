delete from smn_caja.smn_mov_caja_detalle where smn_mov_caja_cabecera_id = (SELECT smn_caja.smn_mov_caja_detalle.smn_mov_caja_cabecera_id FROM smn_caja.smn_mov_caja_detalle
inner join smn_caja.smn_mov_caja_cabecera on smn_caja.smn_mov_caja_cabecera.smn_mov_caja_cabecera_id = smn_caja.smn_mov_caja_detalle.smn_mov_caja_cabecera_id
where smn_caja.smn_mov_caja_cabecera.smn_num_doc_origen_rf=  ${fld:ingreso} limit 1);

delete from smn_caja.smn_mov_caja_cabecera where smn_num_doc_origen_rf = ${fld:ingreso};



