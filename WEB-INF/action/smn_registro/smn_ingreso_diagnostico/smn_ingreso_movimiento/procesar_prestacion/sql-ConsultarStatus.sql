select igs_ticket
from smn_automotriz.smn_ingresos 
where igs_estatus_financiero = 'PE' and smn_ingresos_id = ${fld:id_ingreso}