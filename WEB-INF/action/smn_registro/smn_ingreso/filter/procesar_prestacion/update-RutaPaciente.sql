UPDATE smn_automotriz.smn_ruta_paciente set rta_estatus =  'SE', rta_hora_salida_unidad = '${def:time}'
     WHERE rta_estatus = 'EG' and rta_secuencia = 1 and rta_ticket IN (
         SELECT igs_ticket 
         FROM smn_automotriz.smn_ingresos 
         WHERE smn_ingresos_id = ${fld:id_ingreso}
     ); --and rta_fecha_registro = current_date;
     
UPDATE smn_automotriz.smn_ruta_paciente set rta_hora_llegada_unidad = '${def:time}'
     WHERE rta_estatus = 'PA' and rta_secuencia = 2 and rta_ticket IN (
         SELECT igs_ticket 
         FROM smn_automotriz.smn_ingresos 
         WHERE smn_ingresos_id = ${fld:id_ingreso}
     ); --and rta_fecha_registro = current_date;

