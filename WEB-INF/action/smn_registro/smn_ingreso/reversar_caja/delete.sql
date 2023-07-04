update smn_automotriz.smn_ruta_paciente set rta_estatus = 'AT' WHERE smn_ruta_paciente.rta_ticket IN (
         SELECT igs_ticket 
         FROM smn_automotriz.smn_ingresos 
         WHERE smn_ingresos_id = ${fld:ingreso}) and smn_ruta_paciente.rta_secuencia=1;
delete from smn_caja.smn_mov_caja_detalle where smn_mov_caja_cabecera_id = (SELECT smn_caja.smn_mov_caja_detalle.smn_mov_caja_cabecera_id FROM smn_caja.smn_mov_caja_detalle
inner join smn_caja.smn_mov_caja_cabecera on smn_caja.smn_mov_caja_cabecera.smn_mov_caja_cabecera_id = smn_caja.smn_mov_caja_detalle.smn_mov_caja_cabecera_id
where smn_caja.smn_mov_caja_cabecera.smn_num_doc_origen_rf=  ${fld:ingreso} limit 1);

delete from smn_caja.smn_mov_caja_cabecera where smn_num_doc_origen_rf = ${fld:ingreso};



